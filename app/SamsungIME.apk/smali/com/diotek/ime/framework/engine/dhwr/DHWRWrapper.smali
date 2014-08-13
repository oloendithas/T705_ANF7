.class public Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;
.super Lcom/diotek/ime/framework/engine/AbstractInputEngine;
.source "DHWRWrapper.java"


# static fields
.field private static final FIO_BUFFER_SIZE:I = 0x100000

.field private static final MIN_TEXT_FONTSIZE:I = 0x1e

.field private static final SHOW_TOAST:I


# instance fields
.field private final CHINESE_GESTURE_SPACE:I

.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mAddStrokeCallBack:Lcom/diotek/ime/framework/engine/dhwr/AddStroke;

.field private mBSetUserChar:Z

.field private mChangedArrayIndex:I

.field private mChangedTextEndIndex:I

.field private mChangedTextStartIndex:I

.field private mCompleteStringFont:Landroid/graphics/Typeface;

.field private mEngineLang:I

.field private mFontManager:Lcom/diotek/ime/framework/common/FontManager;

.field private mHWInputMode:J

.field private final mHWRAutoSpaceInset:Z

.field private mHWRHangulJohapUse:Z

.field mHandler:Landroid/os/Handler;

.field private mHwrPanelRect:Landroid/graphics/Rect;

.field private mHwrPathController:Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;

.field mInkRect:Landroid/graphics/RectF;

.field protected mIsLoadedHDICfile:Z

.field private mIsMixRecognition:Z

.field private mIsValidModel:Z

.field private mLastKeyTime:J

.field private mRecognizedStringsController:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

.field private mRtThai:Landroid/graphics/RectF;

.field private mSelectedArrayIndex:I

.field private final mStrRect:Landroid/graphics/RectF;

.field private mSuggestions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mThreadWriting:Z

.field mToastHandler:Landroid/os/Handler;

.field private final mWidthSpaceChar:I

.field private final pointList:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 180
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/AbstractInputEngine;-><init>()V

    .line 49
    const/16 v0, 0x1f

    iput v0, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->CHINESE_GESTURE_SPACE:I

    .line 52
    iput-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mHwrPathController:Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;

    .line 53
    iput-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mRecognizedStringsController:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    .line 56
    iput-boolean v2, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mHWRAutoSpaceInset:Z

    .line 62
    sget v0, Lcom/diotek/dhwr/DHWR;->DTYPE_CURSIVE:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mHWInputMode:J

    .line 65
    iput v2, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mEngineLang:I

    .line 67
    iput-boolean v2, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mBSetUserChar:Z

    .line 69
    iput-boolean v2, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mIsMixRecognition:Z

    .line 71
    const/16 v0, 0x32

    iput v0, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mWidthSpaceChar:I

    .line 73
    iput-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mFontManager:Lcom/diotek/ime/framework/common/FontManager;

    .line 74
    iput-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mCompleteStringFont:Landroid/graphics/Typeface;

    .line 76
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 78
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mLastKeyTime:J

    .line 80
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->pointList:Ljava/util/Queue;

    .line 83
    iput-boolean v2, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mIsLoadedHDICfile:Z

    .line 84
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mRtThai:Landroid/graphics/RectF;

    .line 86
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mHwrPanelRect:Landroid/graphics/Rect;

    .line 89
    iput-boolean v5, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mIsValidModel:Z

    .line 1001
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mStrRect:Landroid/graphics/RectF;

    .line 1360
    iput-boolean v2, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mThreadWriting:Z

    .line 1361
    new-instance v0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper$2;

    invoke-direct {v0, p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper$2;-><init>(Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;)V

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mHandler:Landroid/os/Handler;

    .line 1455
    new-instance v0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper$3;

    invoke-direct {v0, p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper$3;-><init>(Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;)V

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mToastHandler:Landroid/os/Handler;

    .line 1469
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mInkRect:Landroid/graphics/RectF;

    .line 1964
    iput v2, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mChangedTextStartIndex:I

    .line 1965
    iput v2, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mChangedTextEndIndex:I

    .line 1966
    iput v4, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mChangedArrayIndex:I

    .line 2590
    iput v4, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mSelectedArrayIndex:I

    .line 184
    iput-boolean v5, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mIsLoadedHDICfile:Z

    .line 186
    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->init()I

    .line 187
    return-void
.end method

.method static synthetic access$000(Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->copyAssetDBFiletoSystem(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->isUnitRecongnitionMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;)V
    .locals 0
    .param p0, "x0"    # Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->clearRecognitionResult()V

    return-void
.end method

.method static synthetic access$300(Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;)Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mHwrPathController:Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;

    return-object v0
.end method

.method static synthetic access$400(Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;)I
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->getEngineLanguage()I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;ILandroid/graphics/RectF;)V
    .locals 0
    .param p0, "x0"    # Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/graphics/RectF;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->setGestureOnRecognizedStringWrapper(ILandroid/graphics/RectF;)V

    return-void
.end method

.method static synthetic access$600(Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;)V
    .locals 0
    .param p0, "x0"    # Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->clearHwrPathController()V

    return-void
.end method

.method static synthetic access$700(Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;)Lcom/diotek/ime/framework/common/InputManager;
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;)Lcom/diotek/ime/framework/common/InputManager;
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    return-object v0
.end method

.method private addPoint(SS)Z
    .locals 4
    .param p1, "x"    # S
    .param p2, "y"    # S

    .prologue
    .line 931
    const/4 v0, 0x0

    .line 942
    .local v0, "ret":I
    invoke-static {p1, p2}, Lcom/diotek/dhwr/DHWR;->AddPoint(SS)I

    move-result v0

    .line 943
    if-eqz v0, :cond_0

    .line 944
    sget-boolean v1, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 945
    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DHWR.AddPoint ret : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method private addPoint(SSZ)Z
    .locals 1
    .param p1, "x"    # S
    .param p2, "y"    # S
    .param p3, "isEndStroke"    # Z

    .prologue
    .line 902
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mAddStrokeCallBack:Lcom/diotek/ime/framework/engine/dhwr/AddStroke;

    if-eqz v0, :cond_0

    .line 903
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mAddStrokeCallBack:Lcom/diotek/ime/framework/engine/dhwr/AddStroke;

    invoke-interface {v0, p3}, Lcom/diotek/ime/framework/engine/dhwr/AddStroke;->onStartAddStroke(Z)V

    .line 905
    :cond_0
    if-eqz p3, :cond_2

    .line 907
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->addPoint(SS)Z

    .line 915
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->endStroke()V

    .line 923
    :goto_0
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mAddStrokeCallBack:Lcom/diotek/ime/framework/engine/dhwr/AddStroke;

    if-eqz v0, :cond_1

    .line 924
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mAddStrokeCallBack:Lcom/diotek/ime/framework/engine/dhwr/AddStroke;

    invoke-interface {v0, p3}, Lcom/diotek/ime/framework/engine/dhwr/AddStroke;->onEndAddStroke(Z)V

    .line 927
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 918
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->addPoint(SS)Z

    goto :goto_0
.end method

.method private changeCorrectStringUpperLowerCaseUsingRect(Ljava/lang/String;Landroid/graphics/RectF;IF)Ljava/lang/String;
    .locals 9
    .param p1, "recogStr"    # Ljava/lang/String;
    .param p2, "newRt"    # Landroid/graphics/RectF;
    .param p3, "fontSize"    # I
    .param p4, "baseline"    # F

    .prologue
    const/16 v8, 0x79

    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 2046
    if-nez p1, :cond_1

    .line 2047
    const/4 v2, 0x0

    .line 2082
    :cond_0
    :goto_0
    return-object v2

    .line 2050
    :cond_1
    const-string v2, ""

    .line 2051
    .local v2, "str":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2053
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mRecognizedStringsController:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->getOldRecognizedStringArray()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 2056
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->isConfusedStringUpperAndLowerCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2067
    iget v3, p2, Landroid/graphics/RectF;->bottom:F

    iget v4, p2, Landroid/graphics/RectF;->top:F

    sub-float v1, v3, v4

    .line 2068
    .local v1, "heightOfString":F
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mInkRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mInkRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    sub-float v0, v3, v4

    .line 2069
    .local v0, "heightOfInk":F
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v5, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v8, :cond_3

    .line 2070
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mInkRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    iget v4, p2, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, p4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    .line 2071
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 2073
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 2075
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v5, :cond_5

    div-float v3, v0, v1

    float-to-double v3, v3

    const-wide v5, 0x3fdccccccccccccdL

    cmpl-double v3, v3, v5

    if-gtz v3, :cond_4

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v8, :cond_5

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mInkRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    cmpl-float v3, v3, p4

    if-lez v3, :cond_5

    .line 2077
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 2079
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private changeLastRecognizedStringByForce(Ljava/lang/String;)V
    .locals 13
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 2513
    iget-object v10, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mRecognizedStringsController:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    invoke-virtual {v10}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->getOldRecognizedStringArray()Ljava/util/ArrayList;

    move-result-object v8

    .line 2515
    .local v8, "oldRecognizedStringArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2516
    .local v0, "arraySize":I
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->getEngineLanguage()I

    move-result v3

    .line 2517
    .local v3, "engineLang":I
    const/16 v10, 0x7c

    if-eq v3, v10, :cond_1

    .line 2518
    iget v10, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mChangedArrayIndex:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_1

    .line 2577
    :cond_0
    :goto_0
    return-void

    .line 2522
    :cond_1
    add-int/lit8 v10, v0, -0x1

    iget v11, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mChangedArrayIndex:I

    if-lt v10, v11, :cond_0

    .line 2526
    iget v10, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mChangedArrayIndex:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_3

    .line 2527
    iget-object v10, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v4

    .line 2529
    .local v4, "ic":Landroid/view/inputmethod/InputConnection;
    const-string v5, ""

    .line 2530
    .local v5, "leadingStr":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 2531
    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-interface {v4, v10, v11}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v5

    .end local v5    # "leadingStr":Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 2532
    .restart local v5    # "leadingStr":Ljava/lang/String;
    if-nez v5, :cond_2

    const-string v5, ""

    .line 2535
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v10

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v11

    invoke-static {v10, v11}, Lcom/diotek/ime/framework/common/InputSequenceCheck;->isThaiAcceptable(II)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 2539
    :try_start_0
    iget-object v10, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mRtThai:Landroid/graphics/RectF;

    iget-object v11, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Lcom/diotek/ime/framework/common/InputManager;->getInputView(Z)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v11

    mul-int/lit8 v11, v11, 0x2

    div-int/lit8 v11, v11, 0x5

    int-to-float v11, v11

    iput v11, v10, Landroid/graphics/RectF;->top:F

    .line 2540
    iget-object v10, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mRtThai:Landroid/graphics/RectF;

    iget-object v11, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Lcom/diotek/ime/framework/common/InputManager;->getInputView(Z)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v11

    mul-int/lit8 v11, v11, 0x4

    div-int/lit8 v11, v11, 0x5

    int-to-float v11, v11

    iput v11, v10, Landroid/graphics/RectF;->bottom:F

    .line 2542
    iget-object v10, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mRecognizedStringsController:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    invoke-virtual {v10}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->getCurrentRecognizedStringArray()Ljava/util/ArrayList;

    move-result-object v10

    iget-object v11, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mRtThai:Landroid/graphics/RectF;

    invoke-direct {p0, v10, p1, v11}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->setStringOnRecognizedStringWrapper(Ljava/util/ArrayList;Ljava/lang/String;Landroid/graphics/RectF;)V

    .line 2543
    iget-object v10, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mRecognizedStringsController:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    invoke-virtual {v10}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->getOldRecognizedStringArray()Ljava/util/ArrayList;

    move-result-object v10

    iget-object v11, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mRecognizedStringsController:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    invoke-virtual {v11}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->getCurrentRecognizedStringArray()Ljava/util/ArrayList;

    move-result-object v11

    invoke-direct {p0, v10, v11}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->copyRecognizedStringWrapper(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Lcom/diotek/ime/framework/engine/dhwr/CannotSetStringOnHereException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2550
    .end local v4    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v5    # "leadingStr":Ljava/lang/String;
    :cond_3
    :goto_1
    const-string v1, ""

    .line 2552
    .local v1, "currentString":Ljava/lang/String;
    iget v10, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mChangedArrayIndex:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_4

    .line 2553
    iget v10, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mChangedArrayIndex:I

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;

    invoke-virtual {v10}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->getRecognizedString()Ljava/lang/String;

    move-result-object v1

    .line 2556
    :cond_4
    const-string v6, ""

    .line 2557
    .local v6, "leftString":Ljava/lang/String;
    const-string v9, ""

    .line 2558
    .local v9, "rightString":Ljava/lang/String;
    const/4 v7, 0x0

    .line 2560
    .local v7, "modifiedString":Ljava/lang/String;
    iget v10, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mChangedTextStartIndex:I

    if-nez v10, :cond_6

    iget v10, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mChangedTextEndIndex:I

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v11

    if-ne v10, v11, :cond_6

    .line 2561
    move-object v7, p1

    .line 2572
    :goto_2
    iget v10, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mChangedArrayIndex:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_5

    .line 2573
    iget v10, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mChangedArrayIndex:I

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;

    invoke-virtual {v10, v7}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->setRecognizedString(Ljava/lang/String;)V

    .line 2575
    :cond_5
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->resetChangedTextIndex()V

    .line 2576
    iget-object v10, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/InputManager;->invalidateHwrBackgound()V

    goto/16 :goto_0

    .line 2544
    .end local v1    # "currentString":Ljava/lang/String;
    .end local v6    # "leftString":Ljava/lang/String;
    .end local v7    # "modifiedString":Ljava/lang/String;
    .end local v9    # "rightString":Ljava/lang/String;
    .restart local v4    # "ic":Landroid/view/inputmethod/InputConnection;
    .restart local v5    # "leadingStr":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 2546
    .local v2, "e":Lcom/diotek/ime/framework/engine/dhwr/CannotSetStringOnHereException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 2563
    .end local v2    # "e":Lcom/diotek/ime/framework/engine/dhwr/CannotSetStringOnHereException;
    .end local v4    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v5    # "leadingStr":Ljava/lang/String;
    .restart local v1    # "currentString":Ljava/lang/String;
    .restart local v6    # "leftString":Ljava/lang/String;
    .restart local v7    # "modifiedString":Ljava/lang/String;
    .restart local v9    # "rightString":Ljava/lang/String;
    :cond_6
    iget v10, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mChangedTextStartIndex:I

    if-lez v10, :cond_7

    .line 2564
    const/4 v10, 0x0

    iget v11, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mChangedTextStartIndex:I

    invoke-virtual {v1, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 2566
    :cond_7
    iget v10, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mChangedTextEndIndex:I

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v10, v11, :cond_8

    .line 2567
    iget v10, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mChangedTextEndIndex:I

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v1, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 2570
    :cond_8
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_2
.end method

.method private changeRecognizedStringBySuggestion(Ljava/lang/String;)V
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v3, -0x1

    .line 2580
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mRecognizedStringsController:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->getOldRecognizedStringArray()Ljava/util/ArrayList;

    move-result-object v0

    .line 2582
    .local v0, "oldRecognizedStringArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    iget v1, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mSelectedArrayIndex:I

    if-ne v1, v3, :cond_1

    .line 2588
    :cond_0
    :goto_0
    return-void

    .line 2585
    :cond_1
    iget v1, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mSelectedArrayIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;

    invoke-virtual {v1, p1}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->modifyRecognizedString(Ljava/lang/String;)V

    .line 2586
    iput v3, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mSelectedArrayIndex:I

    .line 2587
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->invalidateHwrBackgound()V

    goto :goto_0
.end method

.method private changeSuggestionForChangeLowerUpper(Ljava/lang/String;)V
    .locals 6
    .param p1, "recognizedString"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 2121
    sget-object v3, Lcom/diotek/dhwr/DHWR;->candidatelist_:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/diotek/dhwr/DHWR$Candidate;

    .line 2122
    .local v0, "cand":Lcom/diotek/dhwr/DHWR$Candidate;
    const/4 v1, 0x1

    .local v1, "m":I
    :goto_0
    sget-object v3, Lcom/diotek/dhwr/DHWR;->candidatelist_:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/diotek/dhwr/DHWR$Candidate;

    iget-object v3, v3, Lcom/diotek/dhwr/DHWR$Candidate;->candlist_:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 2123
    sget-object v3, Lcom/diotek/dhwr/DHWR;->candidatelist_:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/diotek/dhwr/DHWR$Candidate;

    iget-object v3, v3, Lcom/diotek/dhwr/DHWR$Candidate;->candlist_:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2124
    .local v2, "tmpStr":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/diotek/dhwr/DHWR$Candidate;->candlist_:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2125
    sget-object v3, Lcom/diotek/dhwr/DHWR;->candidatelist_:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/diotek/dhwr/DHWR$Candidate;

    iget-object v3, v3, Lcom/diotek/dhwr/DHWR$Candidate;->candlist_:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2126
    sget-object v3, Lcom/diotek/dhwr/DHWR;->candidatelist_:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/diotek/dhwr/DHWR$Candidate;

    iget-object v3, v3, Lcom/diotek/dhwr/DHWR$Candidate;->candlist_:Ljava/util/ArrayList;

    iget-object v4, v0, Lcom/diotek/dhwr/DHWR$Candidate;->candlist_:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2122
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2129
    .end local v2    # "tmpStr":Ljava/lang/String;
    :cond_1
    sget-object v3, Lcom/diotek/dhwr/DHWR;->candidatelist_:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/diotek/dhwr/DHWR$Candidate;

    iget-object v3, v3, Lcom/diotek/dhwr/DHWR$Candidate;->candlist_:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2130
    sget-object v3, Lcom/diotek/dhwr/DHWR;->candidatelist_:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/diotek/dhwr/DHWR$Candidate;

    iget-object v3, v3, Lcom/diotek/dhwr/DHWR$Candidate;->candlist_:Ljava/util/ArrayList;

    invoke-virtual {v3, v5, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2131
    return-void
.end method

.method private changeSuggestionRankOnFirstCandidateIsNumber()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2134
    sget-object v4, Lcom/diotek/dhwr/DHWR;->candidatelist_:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2135
    .local v0, "candListSize":I
    if-gtz v0, :cond_1

    .line 2161
    :cond_0
    return-void

    .line 2139
    :cond_1
    const/4 v2, 0x0

    .line 2141
    .local v2, "index":I
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 2142
    sget-object v4, Lcom/diotek/dhwr/DHWR;->candidatelist_:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/diotek/dhwr/DHWR$Candidate;

    iget-object v4, v4, Lcom/diotek/dhwr/DHWR$Candidate;->candlist_:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gt v4, v6, :cond_3

    .line 2141
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2146
    :cond_3
    sget-object v4, Lcom/diotek/dhwr/DHWR;->candidatelist_:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/diotek/dhwr/DHWR$Candidate;

    iget-object v4, v4, Lcom/diotek/dhwr/DHWR$Candidate;->candlist_:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2147
    .local v1, "firstCandidate":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->isNumberString(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2151
    sget-object v4, Lcom/diotek/dhwr/DHWR;->candidatelist_:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/diotek/dhwr/DHWR$Candidate;

    iget-object v4, v4, Lcom/diotek/dhwr/DHWR$Candidate;->candlist_:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2152
    .local v3, "secondCandidate":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->isNumberString(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 2156
    sget-object v4, Lcom/diotek/dhwr/DHWR;->candidatelist_:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/diotek/dhwr/DHWR$Candidate;

    iget-object v4, v4, Lcom/diotek/dhwr/DHWR$Candidate;->candlist_:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2157
    sget-object v4, Lcom/diotek/dhwr/DHWR;->candidatelist_:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/diotek/dhwr/DHWR$Candidate;

    iget-object v4, v4, Lcom/diotek/dhwr/DHWR$Candidate;->candlist_:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2158
    sget-object v4, Lcom/diotek/dhwr/DHWR;->candidatelist_:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/diotek/dhwr/DHWR$Candidate;

    iget-object v4, v4, Lcom/diotek/dhwr/DHWR$Candidate;->candlist_:Ljava/util/ArrayList;

    invoke-virtual {v4, v5, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2159
    sget-object v4, Lcom/diotek/dhwr/DHWR;->candidatelist_:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/diotek/dhwr/DHWR$Candidate;

    iget-object v4, v4, Lcom/diotek/dhwr/DHWR$Candidate;->candlist_:Ljava/util/ArrayList;

    invoke-virtual {v4, v5, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1
.end method

.method private changeUpperLowerCase()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 2086
    new-instance v2, Ljava/util/ArrayList;

    sget-object v8, Lcom/diotek/dhwr/DHWR;->candidatelist_:Ljava/util/ArrayList;

    invoke-direct {v2, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2087
    .local v2, "candlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/diotek/dhwr/DHWR$Candidate;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 2088
    .local v5, "numWord":I
    if-gtz v5, :cond_1

    .line 2118
    :cond_0
    return-void

    .line 2094
    :cond_1
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    if-ge v3, v5, :cond_0

    .line 2095
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/diotek/dhwr/DHWR$Candidate;

    .line 2096
    .local v0, "cand":Lcom/diotek/dhwr/DHWR$Candidate;
    iget-object v1, v0, Lcom/diotek/dhwr/DHWR$Candidate;->candlist_:Ljava/util/ArrayList;

    .line 2098
    .local v1, "candArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->isConfusedStringUpperAndLowerCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2101
    if-nez v3, :cond_3

    .line 2094
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2104
    :cond_3
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 2105
    .local v6, "str":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v8

    invoke-static {v8}, Lcom/diotek/dhwr/DHWR;->CheckWordInDict([C)I

    move-result v8

    if-nez v8, :cond_2

    .line 2106
    const/4 v4, 0x1

    .local v4, "m":I
    :goto_2
    sget-object v8, Lcom/diotek/dhwr/DHWR;->candidatelist_:Ljava/util/ArrayList;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/diotek/dhwr/DHWR$Candidate;

    iget-object v8, v8, Lcom/diotek/dhwr/DHWR$Candidate;->candlist_:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v4, v8, :cond_5

    .line 2107
    sget-object v8, Lcom/diotek/dhwr/DHWR;->candidatelist_:Ljava/util/ArrayList;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/diotek/dhwr/DHWR$Candidate;

    iget-object v8, v8, Lcom/diotek/dhwr/DHWR$Candidate;->candlist_:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 2108
    .local v7, "tmpStr":Ljava/lang/String;
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, v0, Lcom/diotek/dhwr/DHWR$Candidate;->candlist_:Ljava/util/ArrayList;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 2109
    sget-object v8, Lcom/diotek/dhwr/DHWR;->candidatelist_:Ljava/util/ArrayList;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/diotek/dhwr/DHWR$Candidate;

    iget-object v8, v8, Lcom/diotek/dhwr/DHWR$Candidate;->candlist_:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2110
    sget-object v8, Lcom/diotek/dhwr/DHWR;->candidatelist_:Ljava/util/ArrayList;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/diotek/dhwr/DHWR$Candidate;

    iget-object v8, v8, Lcom/diotek/dhwr/DHWR$Candidate;->candlist_:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v4, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2106
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 2113
    .end local v7    # "tmpStr":Ljava/lang/String;
    :cond_5
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2114
    invoke-virtual {v1, v10, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1
.end method

.method private checkAwayGesture()Z
    .locals 29

    .prologue
    .line 1795
    new-instance v16, Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mHwrPathController:Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->getFirstPoint(I)Landroid/graphics/Point;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    .line 1796
    .local v16, "tempSPoint":Landroid/graphics/Point;
    new-instance v12, Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mHwrPathController:Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->getLastPoint(I)Landroid/graphics/Point;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v12, v0}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    .line 1797
    .local v12, "tempEPoint":Landroid/graphics/Point;
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v19, v0

    iget v0, v12, Landroid/graphics/Point;->x:I

    move/from16 v20, v0

    add-int v19, v19, v20

    div-int/lit8 v5, v19, 0x2

    .line 1798
    .local v5, "centerX":I
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v19, v0

    iget v0, v12, Landroid/graphics/Point;->y:I

    move/from16 v20, v0

    add-int v19, v19, v20

    div-int/lit8 v6, v19, 0x2

    .line 1799
    .local v6, "centerY":I
    new-instance v15, Landroid/graphics/RectF;

    invoke-direct {v15}, Landroid/graphics/RectF;-><init>()V

    .line 1800
    .local v15, "tempRect":Landroid/graphics/RectF;
    int-to-float v0, v5

    move/from16 v19, v0

    int-to-float v0, v6

    move/from16 v20, v0

    add-int/lit8 v21, v5, 0x1

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    add-int/lit8 v22, v6, 0x1

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1802
    const v4, 0x3e4ccccd

    .line 1804
    .local v4, "baseWidth":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mRecognizedStringsController:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->getOldRecognizedStringArray()Ljava/util/ArrayList;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 1806
    .local v17, "textArraySize":I
    const/4 v8, 0x0

    .local v8, "index":I
    :goto_0
    move/from16 v0, v17

    if-ge v8, v0, :cond_5

    .line 1807
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mRecognizedStringsController:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->getOldRecognizedStringArray()Ljava/util/ArrayList;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;

    .line 1809
    .local v14, "tempRecognizedStringClass":Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;
    invoke-virtual {v14, v15}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->isSameArea(Landroid/graphics/RectF;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 1810
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    .line 1811
    .local v13, "tempPaint":Landroid/graphics/Paint;
    invoke-virtual {v14}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->getFontSize()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1812
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mCompleteStringFont:Landroid/graphics/Typeface;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1814
    const/16 v18, 0x0

    .line 1815
    .local v18, "textWidth":F
    invoke-virtual {v14}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->getRecognizedStringArea()Landroid/graphics/RectF;

    move-result-object v19

    move-object/from16 v0, v19

    iget v9, v0, Landroid/graphics/RectF;->left:F

    .line 1816
    .local v9, "leftIndex":F
    invoke-virtual {v14}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->getRecognizedString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v10

    .line 1818
    .local v10, "stringLength":I
    const/4 v7, 0x0

    .local v7, "count":I
    :goto_1
    if-ge v7, v10, :cond_3

    .line 1819
    add-float v9, v9, v18

    .line 1820
    invoke-virtual {v14}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->getRecognizedString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .line 1822
    .local v11, "tempChar":C
    invoke-static {v11}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v18

    .line 1823
    invoke-static {v11}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 1818
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1826
    :cond_1
    iget v0, v15, Landroid/graphics/RectF;->left:F

    move/from16 v19, v0

    mul-float v20, v18, v4

    add-float v20, v20, v9

    cmpl-float v19, v19, v20

    if-lez v19, :cond_2

    iget v0, v15, Landroid/graphics/RectF;->right:F

    move/from16 v19, v0

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v19, v0

    float-to-double v0, v9

    move-wide/from16 v21, v0

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v23, v0

    const-wide/high16 v25, 0x3ff0000000000000L

    float-to-double v0, v4

    move-wide/from16 v27, v0

    sub-double v25, v25, v27

    mul-double v23, v23, v25

    add-double v21, v21, v23

    cmpg-double v19, v19, v21

    if-gez v19, :cond_2

    .line 1828
    const/16 v19, 0x0

    .line 1837
    .end local v7    # "count":I
    .end local v9    # "leftIndex":F
    .end local v10    # "stringLength":I
    .end local v11    # "tempChar":C
    .end local v13    # "tempPaint":Landroid/graphics/Paint;
    .end local v14    # "tempRecognizedStringClass":Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;
    .end local v18    # "textWidth":F
    :goto_2
    return v19

    .line 1830
    .restart local v7    # "count":I
    .restart local v9    # "leftIndex":F
    .restart local v10    # "stringLength":I
    .restart local v11    # "tempChar":C
    .restart local v13    # "tempPaint":Landroid/graphics/Paint;
    .restart local v14    # "tempRecognizedStringClass":Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;
    .restart local v18    # "textWidth":F
    :cond_2
    iget v0, v15, Landroid/graphics/RectF;->right:F

    move/from16 v19, v0

    cmpg-float v19, v19, v9

    if-gez v19, :cond_0

    .line 1834
    .end local v11    # "tempChar":C
    :cond_3
    const/16 v19, 0x1

    goto :goto_2

    .line 1806
    .end local v7    # "count":I
    .end local v9    # "leftIndex":F
    .end local v10    # "stringLength":I
    .end local v13    # "tempPaint":Landroid/graphics/Paint;
    .end local v18    # "textWidth":F
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 1837
    .end local v14    # "tempRecognizedStringClass":Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;
    :cond_5
    const/16 v19, 0x0

    goto :goto_2
.end method

.method private checkSpaceGestureInEmailField()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1785
    new-instance v1, Landroid/graphics/Point;

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mHwrPathController:Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;

    invoke-virtual {v3, v2}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->getFirstPoint(I)Landroid/graphics/Point;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    .line 1786
    .local v1, "tempSPoint":Landroid/graphics/Point;
    new-instance v0, Landroid/graphics/Point;

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mHwrPathController:Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;

    invoke-virtual {v3, v2}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->getLastPoint(I)Landroid/graphics/Point;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    .line 1788
    .local v0, "tempEPoint":Landroid/graphics/Point;
    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v4, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v4

    const/16 v4, 0x32

    if-le v3, v4, :cond_0

    .line 1789
    const/4 v2, 0x1

    .line 1791
    :cond_0
    return v2
.end method

.method private clearHwrPathController()V
    .locals 1

    .prologue
    .line 1953
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mHwrPathController:Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->clear()V

    .line 1954
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mThreadWriting:Z

    .line 1955
    return-void
.end method

.method private clearInk()V
    .locals 0

    .prologue
    .line 967
    invoke-static {}, Lcom/diotek/dhwr/DHWR;->InkClear()I

    .line 968
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->resetInkCount()Z

    .line 969
    return-void
.end method

.method private clearRecognitionResult()V
    .locals 1

    .prologue
    .line 836
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mSuggestions:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 837
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mSuggestions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 839
    :cond_0
    invoke-static {}, Lcom/diotek/dhwr/DHWR;->ClearCandidateList()V

    .line 840
    return-void
.end method

.method private clearRecognizedStringReset()V
    .locals 1

    .prologue
    .line 1347
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mRecognizedStringsController:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->getOldRecognizedStringArray()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1348
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mRecognizedStringsController:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->getCurrentRecognizedStringArray()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1349
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mRecognizedStringsController:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->getNewRecognizedStringArray()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1350
    return-void
.end method

.method private copyAssetDBFiletoSystem(Ljava/lang/String;)V
    .locals 20
    .param p1, "dbListFolderName"    # Ljava/lang/String;

    .prologue
    .line 115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    .line 116
    .local v2, "am":Landroid/content/res/AssetManager;
    const/16 v16, 0x0

    .line 118
    .local v16, "szDBFileList":[Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    .line 119
    .local v11, "fileNameBuffer":Ljava/lang/StringBuffer;
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    const-string v18, "/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 121
    const/4 v4, 0x0

    .line 122
    .local v4, "arrBis":Ljava/io/BufferedInputStream;
    const/4 v6, 0x0

    .line 123
    .local v6, "bos":Ljava/io/BufferedOutputStream;
    const/4 v15, -0x1

    .line 124
    .local v15, "read":I
    invoke-virtual {v11}, Ljava/lang/StringBuffer;->length()I

    move-result v14

    .line 127
    .local v14, "pathLen":I
    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v16

    .line 132
    :goto_0
    const/high16 v17, 0x100000

    move/from16 v0, v17

    new-array v8, v0, [B

    .line 134
    .local v8, "buffer":[B
    if-eqz v16, :cond_9

    .line 135
    move-object/from16 v3, v16

    .local v3, "arr$":[Ljava/lang/String;
    array-length v13, v3

    .local v13, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    move-object v7, v6

    .local v7, "bos":Ljava/lang/Object;
    move-object v5, v4

    .end local v4    # "arrBis":Ljava/io/BufferedInputStream;
    .end local v6    # "bos":Ljava/io/BufferedOutputStream;
    .local v5, "arrBis":Ljava/lang/Object;
    :goto_1
    if-ge v12, v13, :cond_8

    aget-object v10, v3, v12

    .line 136
    .local v10, "fileName":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->isExistFile(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 137
    sget-boolean v17, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v17, :cond_a

    .line 138
    const-string v17, "SamsungIME"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "copyAssetDBFiletoSystem() File exist : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v7

    .end local v7    # "bos":Ljava/lang/Object;
    .local v6, "bos":Ljava/lang/Object;
    move-object v4, v5

    .line 135
    .end local v5    # "arrBis":Ljava/lang/Object;
    .end local v6    # "bos":Ljava/lang/Object;
    :goto_2
    add-int/lit8 v12, v12, 0x1

    move-object v7, v6

    .restart local v7    # "bos":Ljava/lang/Object;
    move-object v5, v4

    .restart local v5    # "arrBis":Ljava/lang/Object;
    goto :goto_1

    .line 128
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v5    # "arrBis":Ljava/lang/Object;
    .end local v7    # "bos":Ljava/lang/Object;
    .end local v8    # "buffer":[B
    .end local v10    # "fileName":Ljava/lang/String;
    .end local v12    # "i$":I
    .end local v13    # "len$":I
    .restart local v4    # "arrBis":Ljava/io/BufferedInputStream;
    .local v6, "bos":Ljava/io/BufferedOutputStream;
    :catch_0
    move-exception v9

    .line 129
    .local v9, "e":Ljava/io/IOException;
    invoke-static {v9}, Lcom/diotek/ime/framework/util/Debug;->printCallStack(Ljava/lang/Exception;)V

    goto :goto_0

    .line 142
    .end local v4    # "arrBis":Ljava/io/BufferedInputStream;
    .end local v6    # "bos":Ljava/io/BufferedOutputStream;
    .end local v9    # "e":Ljava/io/IOException;
    .restart local v3    # "arr$":[Ljava/lang/String;
    .restart local v5    # "arrBis":Ljava/lang/Object;
    .restart local v7    # "bos":Ljava/lang/Object;
    .restart local v8    # "buffer":[B
    .restart local v10    # "fileName":Ljava/lang/String;
    .restart local v12    # "i$":I
    .restart local v13    # "len$":I
    :cond_0
    sget-boolean v17, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v17, :cond_1

    .line 143
    const-string v17, "SamsungIME"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "copyAssetDBFiletoSystem() Copy file : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_1
    invoke-virtual {v11}, Ljava/lang/StringBuffer;->length()I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v11, v14, v0}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 147
    invoke-virtual {v11, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 149
    :try_start_1
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v4, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 150
    .restart local v4    # "arrBis":Ljava/io/BufferedInputStream;
    :try_start_2
    new-instance v6, Ljava/io/BufferedOutputStream;

    .end local v5    # "arrBis":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v17

    const/16 v18, 0x2

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v10, v1}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v6, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 154
    .end local v7    # "bos":Ljava/lang/Object;
    .restart local v6    # "bos":Ljava/io/BufferedOutputStream;
    :goto_3
    const/16 v17, 0x0

    const/high16 v18, 0x100000

    :try_start_3
    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v4, v8, v0, v1}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v15

    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v15, v0, :cond_4

    .line 155
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v6, v8, v0, v15}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    .line 159
    :catch_1
    move-exception v9

    .line 160
    .restart local v9    # "e":Ljava/io/IOException;
    :goto_4
    :try_start_4
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 163
    if-eqz v4, :cond_2

    .line 164
    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V

    .line 166
    :cond_2
    if-eqz v6, :cond_3

    .line 167
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 174
    .end local v9    # "e":Ljava/io/IOException;
    :cond_3
    :goto_5
    const/4 v4, 0x0

    .line 175
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 158
    :cond_4
    :try_start_6
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 163
    if-eqz v4, :cond_5

    .line 164
    :try_start_7
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V

    .line 166
    :cond_5
    if-eqz v6, :cond_3

    .line 167
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_5

    .line 169
    :catch_2
    move-exception v9

    .line 170
    .restart local v9    # "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    .line 169
    :catch_3
    move-exception v9

    .line 170
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    .line 162
    .end local v4    # "arrBis":Ljava/io/BufferedInputStream;
    .end local v6    # "bos":Ljava/io/BufferedOutputStream;
    .end local v9    # "e":Ljava/io/IOException;
    .restart local v5    # "arrBis":Ljava/lang/Object;
    .restart local v7    # "bos":Ljava/lang/Object;
    :catchall_0
    move-exception v17

    move-object v6, v7

    .restart local v6    # "bos":Ljava/io/BufferedOutputStream;
    move-object v4, v5

    .line 163
    .end local v5    # "arrBis":Ljava/lang/Object;
    .end local v7    # "bos":Ljava/lang/Object;
    .restart local v4    # "arrBis":Ljava/io/BufferedInputStream;
    :goto_6
    if-eqz v4, :cond_6

    .line 164
    :try_start_8
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V

    .line 166
    :cond_6
    if-eqz v6, :cond_7

    .line 167
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 171
    :cond_7
    :goto_7
    throw v17

    .line 169
    :catch_4
    move-exception v9

    .line 170
    .restart local v9    # "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_7

    .end local v4    # "arrBis":Ljava/io/BufferedInputStream;
    .end local v6    # "bos":Ljava/io/BufferedOutputStream;
    .end local v9    # "e":Ljava/io/IOException;
    .end local v10    # "fileName":Ljava/lang/String;
    .restart local v5    # "arrBis":Ljava/lang/Object;
    .restart local v7    # "bos":Ljava/lang/Object;
    :cond_8
    move-object v6, v7

    .end local v7    # "bos":Ljava/lang/Object;
    .local v6, "bos":Ljava/lang/Object;
    move-object v4, v5

    .line 178
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v5    # "arrBis":Ljava/lang/Object;
    .end local v6    # "bos":Ljava/lang/Object;
    .end local v12    # "i$":I
    .end local v13    # "len$":I
    :cond_9
    return-void

    .line 162
    .restart local v3    # "arr$":[Ljava/lang/String;
    .restart local v4    # "arrBis":Ljava/io/BufferedInputStream;
    .restart local v7    # "bos":Ljava/lang/Object;
    .restart local v10    # "fileName":Ljava/lang/String;
    .restart local v12    # "i$":I
    .restart local v13    # "len$":I
    :catchall_1
    move-exception v17

    move-object v6, v7

    .local v6, "bos":Ljava/io/BufferedOutputStream;
    goto :goto_6

    .end local v7    # "bos":Ljava/lang/Object;
    :catchall_2
    move-exception v17

    goto :goto_6

    .line 159
    .end local v4    # "arrBis":Ljava/io/BufferedInputStream;
    .end local v6    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v5    # "arrBis":Ljava/lang/Object;
    .restart local v7    # "bos":Ljava/lang/Object;
    :catch_5
    move-exception v9

    move-object v6, v7

    .restart local v6    # "bos":Ljava/io/BufferedOutputStream;
    move-object v4, v5

    .restart local v4    # "arrBis":Ljava/io/BufferedInputStream;
    goto :goto_4

    .end local v5    # "arrBis":Ljava/lang/Object;
    .end local v6    # "bos":Ljava/io/BufferedOutputStream;
    :catch_6
    move-exception v9

    move-object v6, v7

    .restart local v6    # "bos":Ljava/io/BufferedOutputStream;
    goto :goto_4

    .end local v4    # "arrBis":Ljava/io/BufferedInputStream;
    .end local v6    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v5    # "arrBis":Ljava/lang/Object;
    :cond_a
    move-object v6, v7

    .end local v7    # "bos":Ljava/lang/Object;
    .local v6, "bos":Ljava/lang/Object;
    move-object v4, v5

    .end local v5    # "arrBis":Ljava/lang/Object;
    .local v4, "arrBis":Ljava/lang/Object;
    goto/16 :goto_2
.end method

.method private copyRecognizedStringWrapper(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/diotek/ime/framework/engine/dhwr/CannotSetStringOnHereException;
        }
    .end annotation

    .prologue
    .local p1, "listA":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;>;"
    .local p2, "listB":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;>;"
    const/4 v6, 0x0

    .line 1665
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1666
    .local v0, "countOfNewStrArray":I
    sget-boolean v3, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 1667
    const-string v3, "SamsungIME"

    const-string v4, "copyRecognizedClass()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1670
    :cond_0
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 1671
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;

    .line 1672
    .local v2, "tempRecognizedStrClass":Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;
    sget-boolean v3, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 1673
    const-string v3, "SamsungIME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "copyRecognizedString : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->getRecognizedString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", copyRecognizedArea : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->getRecognizedStringArea()Landroid/graphics/RectF;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1678
    :cond_1
    invoke-virtual {v2}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->getRecognizedString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->getRecognizedStringArea()Landroid/graphics/RectF;

    move-result-object v4

    invoke-direct {p0, p1, v3, v4}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->setStringOnRecognizedStringWrapper(Ljava/util/ArrayList;Ljava/lang/String;Landroid/graphics/RectF;)V

    .line 1681
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1670
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1683
    .end local v2    # "tempRecognizedStrClass":Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;
    :cond_2
    return-void
.end method

.method private deleteStrokeOfHwrPathController(I)Landroid/graphics/RectF;
    .locals 4
    .param p1, "num"    # I

    .prologue
    .line 1929
    sget-boolean v1, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1930
    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " -> deleteStrokeOfHwrPathController - num : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / mHwrPathController : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mHwrPathController:Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->getMaxIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1934
    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mHwrPathController:Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/diotek/ime/framework/common/InputManager;->getInputView(Z)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40a00000

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->delete(ID)Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 1936
    .local v0, "rt":Landroid/graphics/RectF;
    return-object v0
.end method

.method private endStroke()V
    .locals 0

    .prologue
    .line 955
    invoke-static {}, Lcom/diotek/dhwr/DHWR;->EndStroke()I

    .line 956
    return-void
.end method

.method private getEngineLanguage()I
    .locals 1

    .prologue
    .line 2005
    iget v0, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mEngineLang:I

    return v0
.end method

.method private getTextFontSize(Ljava/lang/String;Landroid/graphics/RectF;)I
    .locals 13
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "rectf"    # Landroid/graphics/RectF;

    .prologue
    const/4 v12, 0x1

    .line 1286
    const/4 v1, 0x0

    .line 1287
    .local v1, "incr_text_size":I
    const/4 v3, 0x0

    .line 1288
    .local v3, "max_text_size":I
    const/4 v4, 0x0

    .line 1289
    .local v4, "min_text_size":I
    const/4 v6, 0x0

    .line 1290
    .local v6, "pivot_text_size":I
    const/4 v2, 0x1

    .line 1292
    .local v2, "isPivotSmallerThanBefore":Z
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    if-ne v10, v12, :cond_2

    .line 1293
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v10

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v10

    float-to-int v1, v10

    .line 1339
    :cond_0
    :goto_0
    const/16 v10, 0x1e

    if-ge v1, v10, :cond_1

    .line 1340
    const/16 v1, 0x1e

    .line 1343
    :cond_1
    return v1

    .line 1295
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_0

    .line 1297
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v9

    .line 1298
    .local v9, "text_width":F
    const/4 v8, 0x0

    .line 1300
    .local v8, "text_check_w":F
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 1301
    .local v5, "paint":Landroid/graphics/Paint;
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1303
    .local v0, "bounds":Landroid/graphics/Rect;
    move-object v7, p1

    .line 1305
    .local v7, "text":Ljava/lang/String;
    const/16 v4, 0x1e

    move v1, v4

    .line 1306
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v10

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v10

    float-to-int v3, v10

    .line 1307
    add-int v10, v4, v3

    div-int/lit8 v6, v10, 0x2

    .line 1309
    iget-object v10, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mCompleteStringFont:Landroid/graphics/Typeface;

    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1312
    :cond_3
    :goto_1
    int-to-float v10, v6

    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1313
    const/4 v10, 0x0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v5, v7, v10, v11, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 1315
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v10

    int-to-float v8, v10

    .line 1317
    cmpl-float v10, v9, v8

    if-nez v10, :cond_4

    .line 1318
    move v1, v6

    .line 1319
    goto :goto_0

    .line 1320
    :cond_4
    sub-int v10, v4, v3

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    if-gt v10, v12, :cond_6

    .line 1321
    if-eqz v2, :cond_5

    .line 1322
    move v1, v4

    goto :goto_0

    .line 1324
    :cond_5
    move v1, v3

    .line 1326
    goto :goto_0

    .line 1327
    :cond_6
    cmpg-float v10, v9, v8

    if-gez v10, :cond_7

    .line 1328
    move v3, v6

    .line 1329
    add-int v10, v4, v3

    div-int/lit8 v6, v10, 0x2

    .line 1330
    const/4 v2, 0x1

    goto :goto_1

    .line 1331
    :cond_7
    cmpl-float v10, v9, v8

    if-lez v10, :cond_3

    .line 1332
    move v4, v6

    .line 1333
    add-int v10, v4, v3

    div-int/lit8 v6, v10, 0x2

    .line 1334
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private handleAutoSpaceInset()V
    .locals 4

    .prologue
    .line 994
    iget-wide v0, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mHWInputMode:J

    sget v2, Lcom/diotek/dhwr/DHWR;->DTYPE_AUTO_SPACE:I

    int-to-long v2, v2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mHWInputMode:J

    .line 996
    return-void
.end method

.method private handleHangulRecogMode()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x65

    .line 981
    iget-wide v0, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mHWInputMode:J

    and-long/2addr v0, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 982
    iget-boolean v0, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mHWRHangulJohapUse:Z

    if-eqz v0, :cond_1

    .line 983
    iget-wide v0, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mHWInputMode:J

    sget v2, Lcom/diotek/dhwr/DHWR;->DTYPE_JOHAP:I

    int-to-long v2, v2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mHWInputMode:J

    .line 988
    :cond_0
    :goto_0
    return-void

    .line 985
    :cond_1
    iget-wide v0, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mHWInputMode:J

    sget v2, Lcom/diotek/dhwr/DHWR;->DTYPE_JOHAP:I

    xor-int/lit8 v2, v2, -0x1

    int-to-long v2, v2

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mHWInputMode:J

    goto :goto_0
.end method

.method private handleHwrSettingValue()V
    .locals 0

    .prologue
    .line 976
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->handleHangulRecogMode()V

    .line 977
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->handleAutoSpaceInset()V

    .line 978
    return-void
.end method

.method private increaseInkCount(SS)Z
    .locals 1
    .param p1, "x"    # S
    .param p2, "y"    # S

    .prologue
    .line 963
    const/4 v0, 0x1

    return v0
.end method

.method private isConfusedStringUpperAndLowerCase(Ljava/lang/String;)Z
    .locals 11
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v10, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 247
    if-nez p1, :cond_1

    .line 298
    :cond_0
    :goto_0
    return v6

    .line 250
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_0

    .line 254
    const-string v0, "ckmnopsuvwxyz"

    .line 256
    .local v0, "confusionCase":Ljava/lang/String;
    const/4 v4, 0x0

    .line 257
    .local v4, "isUpper":Z
    const/4 v3, 0x0

    .line 258
    .local v3, "isLower":Z
    const/4 v2, 0x0

    .line 259
    .local v2, "isConfusion":Z
    const/4 v1, 0x0

    .line 260
    .local v1, "i":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 262
    .local v5, "strLength":I
    if-ne v5, v7, :cond_3

    .line 263
    const-string v8, "ckmnopsuvwxyz"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-eq v8, v10, :cond_0

    .line 267
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v8

    if-eqz v8, :cond_0

    :cond_2
    move v6, v7

    .line 268
    goto :goto_0

    .line 274
    :cond_3
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v5, :cond_8

    .line 275
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 276
    const/4 v3, 0x1

    .line 279
    :cond_4
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 280
    const/4 v4, 0x1

    .line 283
    :cond_5
    const-string v8, "ckmnopsuvwxyz"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-ne v8, v10, :cond_7

    .line 274
    :cond_6
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 285
    :cond_7
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 286
    const/4 v2, 0x1

    goto :goto_2

    .line 290
    :cond_8
    if-eqz v2, :cond_0

    .line 294
    and-int v8, v4, v3

    if-eqz v8, :cond_0

    move v6, v7

    .line 295
    goto :goto_0
.end method

.method private isExistFile(Ljava/lang/String;)Z
    .locals 6
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 102
    iget-object v5, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->fileList()[Ljava/lang/String;

    move-result-object v2

    .line 104
    .local v2, "fileList":[Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 105
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 106
    .local v1, "existFile":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 107
    const/4 v5, 0x1

    .line 111
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "existFile":Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :goto_1
    return v5

    .line 105
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "existFile":Ljava/lang/String;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 111
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "existFile":Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private isMixRecognition()Z
    .locals 1

    .prologue
    .line 2009
    iget-boolean v0, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mIsMixRecognition:Z

    return v0
.end method

.method private isNumRecognitionMode()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1995
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v0

    .line 1996
    .local v0, "range":I
    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isNumberString(Ljava/lang/String;)Z
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 2164
    if-nez p1, :cond_1

    .line 2177
    :cond_0
    :goto_0
    return v1

    .line 2167
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 2171
    const/4 v0, 0x0

    .line 2172
    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 2173
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2172
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2177
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isUnitRecongnitionMode()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2000
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v3, "SETTINGS_DEFAULT_HWR_RECOGNITION_TYPE"

    invoke-interface {v2, v3, v1}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private loadHDICOnThread()V
    .locals 1

    .prologue
    .line 92
    new-instance v0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper$1;

    invoke-direct {v0, p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper$1;-><init>(Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 99
    return-void
.end method

.method private makeRecongnitionSuggestion()V
    .locals 2

    .prologue
    .line 815
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mSuggestions:Ljava/util/List;

    if-nez v0, :cond_0

    .line 816
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mSuggestions:Ljava/util/List;

    .line 820
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mSuggestions:Ljava/util/List;

    if-nez v0, :cond_2

    .line 833
    :cond_1
    :goto_0
    return-void

    .line 824
    :cond_2
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mSuggestions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 826
    sget-object v0, Lcom/diotek/dhwr/DHWR;->candidatelist_:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 830
    sget-object v0, Lcom/diotek/dhwr/DHWR;->candidatelist_:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 831
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mSuggestions:Ljava/util/List;

    sget-object v1, Lcom/diotek/dhwr/DHWR;->candidatelist_:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->makeSuggestion(Ljava/util/List;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method private makeSuggestion(Ljava/util/List;Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/diotek/dhwr/DHWR$Candidate;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "suggestions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    .local p2, "candidatelist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/diotek/dhwr/DHWR$Candidate;>;"
    const/16 v9, 0x14

    const/4 v8, 0x1

    .line 845
    if-nez p1, :cond_1

    .line 898
    :cond_0
    :goto_0
    return-void

    .line 849
    :cond_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_7

    .line 850
    const/4 v5, 0x0

    .line 851
    .local v5, "smallestCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_4

    .line 852
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/diotek/dhwr/DHWR$Candidate;

    .line 853
    .local v0, "cand":Lcom/diotek/dhwr/DHWR$Candidate;
    if-nez v5, :cond_3

    .line 854
    iget-object v6, v0, Lcom/diotek/dhwr/DHWR$Candidate;->candlist_:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 851
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 856
    :cond_3
    iget-object v6, v0, Lcom/diotek/dhwr/DHWR$Candidate;->candlist_:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v5, v6, :cond_2

    .line 857
    iget-object v6, v0, Lcom/diotek/dhwr/DHWR$Candidate;->candlist_:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    goto :goto_2

    .line 862
    .end local v0    # "cand":Lcom/diotek/dhwr/DHWR$Candidate;
    :cond_4
    const-string v1, ""

    .line 872
    .local v1, "composedSuggestion":Ljava/lang/String;
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v5, :cond_7

    .line 873
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_4
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_6

    .line 874
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/diotek/dhwr/DHWR$Candidate;

    .line 875
    .restart local v0    # "cand":Lcom/diotek/dhwr/DHWR$Candidate;
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v3, v6, :cond_5

    .line 876
    iget-object v6, v0, Lcom/diotek/dhwr/DHWR$Candidate;->candlist_:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 873
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 878
    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v0, Lcom/diotek/dhwr/DHWR$Candidate;->candlist_:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    .line 882
    .end local v0    # "cand":Lcom/diotek/dhwr/DHWR$Candidate;
    :cond_6
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, v9}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 883
    .local v4, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 884
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v2, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 886
    const-string v1, ""

    .line 872
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 892
    .end local v1    # "composedSuggestion":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "j":I
    .end local v4    # "sb":Ljava/lang/StringBuffer;
    .end local v5    # "smallestCount":I
    :cond_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ne v6, v8, :cond_0

    const/4 v6, 0x0

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 894
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, v9}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 895
    .restart local v4    # "sb":Ljava/lang/StringBuffer;
    const-string v6, "_"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 896
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v8, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private recognizeCompleteMode(Z)I
    .locals 19
    .param p1, "complete"    # Z

    .prologue
    .line 1531
    sget-boolean v15, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v15, :cond_0

    .line 1532
    const-string v15, "SamsungIME"

    const-string v16, "recognizeThread()"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1535
    :cond_0
    const/4 v11, 0x0

    .line 1537
    .local v11, "result":I
    const/16 v15, 0x20

    :try_start_0
    const-string v16, "0"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->getBytes()[B

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/diotek/dhwr/DHWR;->SetParam(I[B)I

    .line 1540
    invoke-direct/range {p0 .. p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->setEngineAttribute()V

    .line 1541
    invoke-static {}, Lcom/diotek/dhwr/DHWR;->ClearCandidateList()V

    .line 1542
    const/4 v12, -0x1

    .line 1543
    .local v12, "ret":I
    invoke-direct/range {p0 .. p1}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->threadSafeRecog(Z)I

    move-result v12

    .line 1544
    sget-boolean v15, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v15, :cond_1

    .line 1545
    const-string v15, "SamsungIME"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "threadSafeRecog("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ") ret : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1547
    :cond_1
    if-nez v12, :cond_c

    .line 1548
    sget-object v15, Lcom/diotek/dhwr/DHWR;->candidatelist_:Ljava/util/ArrayList;

    if-nez v15, :cond_3

    .line 1549
    const/16 v11, 0xbbc

    .line 1660
    .end local v11    # "result":I
    .end local v12    # "ret":I
    :cond_2
    :goto_0
    return v11

    .line 1552
    .restart local v11    # "result":I
    .restart local v12    # "ret":I
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->changeUpperLowerCase()V

    .line 1553
    invoke-direct/range {p0 .. p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->getEngineLanguage()I

    move-result v15

    const/16 v16, 0x7c

    move/from16 v0, v16

    if-eq v15, v0, :cond_4

    .line 1554
    invoke-direct/range {p0 .. p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->changeSuggestionRankOnFirstCandidateIsNumber()V

    .line 1557
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->makeRecongnitionSuggestion()V

    .line 1558
    const/4 v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mSelectedArrayIndex:I

    .line 1560
    const/4 v7, 0x0

    .line 1561
    .local v7, "nDelstroke":I
    new-instance v13, Landroid/graphics/RectF;

    invoke-direct {v13}, Landroid/graphics/RectF;-><init>()V

    .line 1562
    .local v13, "rt":Landroid/graphics/RectF;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 1563
    .local v10, "recognizedString":Ljava/lang/StringBuilder;
    const/4 v14, 0x0

    .line 1565
    .local v14, "stroke":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    sget-object v15, Lcom/diotek/dhwr/DHWR;->candidatelist_:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v6, v15, :cond_8

    .line 1566
    sget-object v15, Lcom/diotek/dhwr/DHWR;->candidatelist_:Ljava/util/ArrayList;

    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/diotek/dhwr/DHWR$Candidate;

    .line 1567
    .local v2, "cand":Lcom/diotek/dhwr/DHWR$Candidate;
    sget-boolean v15, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v15, :cond_5

    .line 1568
    const-string v15, "SamsungIME"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "complete : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget v0, v2, Lcom/diotek/dhwr/DHWR$Candidate;->complete_:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1570
    :cond_5
    iget v15, v2, Lcom/diotek/dhwr/DHWR$Candidate;->complete_:I

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_7

    .line 1571
    iget v15, v2, Lcom/diotek/dhwr/DHWR$Candidate;->stroke_:I

    add-int/2addr v14, v15

    .line 1572
    sget-boolean v15, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v15, :cond_6

    .line 1573
    const-string v16, "SamsungIME"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "+ cand.candlist_.get(0) : "

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget-object v15, v2, Lcom/diotek/dhwr/DHWR$Candidate;->candlist_:Ljava/util/ArrayList;

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, " / rt : "

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v16

    invoke-static {v0, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1575
    :cond_6
    iget-object v15, v2, Lcom/diotek/dhwr/DHWR$Candidate;->candlist_:Ljava/util/ArrayList;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1576
    sget-object v15, Lcom/diotek/dhwr/DHWR;->candidatelist_:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    if-ge v6, v15, :cond_7

    .line 1577
    const-string v15, " "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1565
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 1583
    .end local v2    # "cand":Lcom/diotek/dhwr/DHWR$Candidate;
    :cond_8
    if-eqz p1, :cond_e

    .line 1584
    add-int/lit8 v15, v14, 0x1

    sub-int/2addr v15, v7

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->deleteStrokeOfHwrPathController(I)Landroid/graphics/RectF;

    move-result-object v13

    .line 1588
    :goto_2
    add-int/lit8 v7, v14, 0x1

    .line 1590
    invoke-virtual {v13}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_9

    const/4 v15, 0x1

    if-ne v7, v15, :cond_9

    .line 1591
    iget v15, v13, Landroid/graphics/RectF;->right:F

    const/high16 v16, 0x3f800000

    add-float v15, v15, v16

    iput v15, v13, Landroid/graphics/RectF;->right:F

    .line 1592
    iget v15, v13, Landroid/graphics/RectF;->bottom:F

    const/high16 v16, 0x3f800000

    add-float v15, v15, v16

    iput v15, v13, Landroid/graphics/RectF;->bottom:F

    .line 1595
    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mRecognizedStringsController:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    invoke-virtual {v15}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->getOldRecognizedStringArray()Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-nez v15, :cond_11

    .line 1596
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->hashCode()I

    move-result v15

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Lcom/diotek/ime/framework/common/InputSequenceCheck;->isThaiAcceptable(II)Z

    move-result v15

    if-eqz v15, :cond_f

    .line 1597
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mRecognizedStringsController:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    invoke-virtual {v15}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->getCurrentRecognizedStringArray()Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1, v13}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->setStringOnRecognizedStringWrapper(Ljava/util/ArrayList;Ljava/lang/String;Landroid/graphics/RectF;)V

    .line 1609
    :goto_3
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mRtThai:Landroid/graphics/RectF;

    .line 1610
    sget-boolean v15, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v15, :cond_a

    .line 1611
    const-string v15, "SamsungIME"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "rt.top : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget v0, v13, Landroid/graphics/RectF;->top:F

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "rt.left : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget v0, v13, Landroid/graphics/RectF;->left:F

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "rt.bottom : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget v0, v13, Landroid/graphics/RectF;->bottom:F

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "rt.right : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget v0, v13, Landroid/graphics/RectF;->right:F

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1614
    :cond_a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mHwrPathController:Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;

    invoke-virtual {v15}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_b

    .line 1615
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mThreadWriting:Z

    .line 1618
    :cond_b
    if-lez v7, :cond_c

    .line 1619
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mInkRect:Landroid/graphics/RectF;

    .line 1620
    if-eqz p1, :cond_12

    .line 1621
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mRecognizedStringsController:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    invoke-virtual {v15}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->getOldRecognizedStringArray()Ljava/util/ArrayList;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mRecognizedStringsController:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->getCurrentRecognizedStringArray()Ljava/util/ArrayList;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->copyRecognizedStringWrapper(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1624
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mRecognizedStringsController:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    invoke-virtual {v15}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->getNewRecognizedStringArray()Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 1625
    const/16 v11, 0xbba

    .line 1645
    .end local v6    # "i":I
    .end local v7    # "nDelstroke":I
    .end local v10    # "recognizedString":Ljava/lang/StringBuilder;
    .end local v13    # "rt":Landroid/graphics/RectF;
    .end local v14    # "stroke":I
    :cond_c
    :goto_4
    if-gtz v11, :cond_2

    .line 1660
    .end local v12    # "ret":I
    :cond_d
    :goto_5
    const/16 v11, 0xbbc

    goto/16 :goto_0

    .line 1586
    .restart local v6    # "i":I
    .restart local v7    # "nDelstroke":I
    .restart local v10    # "recognizedString":Ljava/lang/StringBuilder;
    .restart local v12    # "ret":I
    .restart local v13    # "rt":Landroid/graphics/RectF;
    .restart local v14    # "stroke":I
    :cond_e
    add-int/lit8 v15, v14, 0x1

    sub-int/2addr v15, v7

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v7}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->rectOfRecognizeStroke(II)Landroid/graphics/RectF;

    move-result-object v13

    goto/16 :goto_2

    .line 1600
    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->resetChangedTextIndex()V
    :try_end_0
    .catch Lcom/diotek/ime/framework/engine/dhwr/CannotSetStringOnHereException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_3

    .line 1648
    .end local v6    # "i":I
    .end local v7    # "nDelstroke":I
    .end local v10    # "recognizedString":Ljava/lang/StringBuilder;
    .end local v12    # "ret":I
    .end local v13    # "rt":Landroid/graphics/RectF;
    .end local v14    # "stroke":I
    :catch_0
    move-exception v3

    .line 1649
    .local v3, "e":Lcom/diotek/ime/framework/engine/dhwr/CannotSetStringOnHereException;
    sget-boolean v15, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    if-eqz v15, :cond_10

    .line 1650
    const-string v15, "SamsungIME"

    const-string v16, "Cannot set string on here"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1652
    :cond_10
    invoke-static {}, Lcom/diotek/dhwr/DHWR;->ClearCandidateList()V

    .line 1653
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mRecognizedStringsController:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    invoke-virtual {v15}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->getOldRecognizedStringArray()Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-nez v15, :cond_d

    goto :goto_5

    .line 1604
    .end local v3    # "e":Lcom/diotek/ime/framework/engine/dhwr/CannotSetStringOnHereException;
    .restart local v6    # "i":I
    .restart local v7    # "nDelstroke":I
    .restart local v10    # "recognizedString":Ljava/lang/StringBuilder;
    .restart local v12    # "ret":I
    .restart local v13    # "rt":Landroid/graphics/RectF;
    .restart local v14    # "stroke":I
    :cond_11
    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mRecognizedStringsController:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    invoke-virtual {v15}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->getCurrentRecognizedStringArray()Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1, v13}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->setStringOnRecognizedStringWrapper(Ljava/util/ArrayList;Ljava/lang/String;Landroid/graphics/RectF;)V
    :try_end_1
    .catch Lcom/diotek/ime/framework/engine/dhwr/CannotSetStringOnHereException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_3

    .line 1655
    .end local v6    # "i":I
    .end local v7    # "nDelstroke":I
    .end local v10    # "recognizedString":Ljava/lang/StringBuilder;
    .end local v12    # "ret":I
    .end local v13    # "rt":Landroid/graphics/RectF;
    .end local v14    # "stroke":I
    :catch_1
    move-exception v4

    .line 1656
    .local v4, "ex":Ljava/lang/Exception;
    sget-boolean v15, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v15, :cond_d

    .line 1657
    const-string v15, "SamsungIME"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "recognizeThread : exception "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1627
    .end local v4    # "ex":Ljava/lang/Exception;
    .restart local v6    # "i":I
    .restart local v7    # "nDelstroke":I
    .restart local v10    # "recognizedString":Ljava/lang/StringBuilder;
    .restart local v12    # "ret":I
    .restart local v13    # "rt":Landroid/graphics/RectF;
    .restart local v14    # "stroke":I
    :cond_12
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 1628
    .local v8, "now":J
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v16, "SETTINGS_DEFAULT_HWR_RECOGNIZE_DELAY"

    const/16 v17, 0x1f4

    invoke-interface/range {v15 .. v17}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v5

    .line 1631
    .local v5, "hwrRecognizeDelay":I
    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mLastKeyTime:J

    sub-long v15, v8, v15

    int-to-long v0, v5

    move-wide/from16 v17, v0

    cmp-long v15, v15, v17

    if-lez v15, :cond_13

    .line 1632
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mRecognizedStringsController:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    invoke-virtual {v15}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->getNewRecognizedStringArray()Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 1633
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mRecognizedStringsController:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    invoke-virtual {v15}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->getNewRecognizedStringArray()Ljava/util/ArrayList;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mRecognizedStringsController:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->getCurrentRecognizedStringArray()Ljava/util/ArrayList;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->copyRecognizedStringWrapper(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1636
    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mLastKeyTime:J

    .line 1637
    const/16 v11, 0xbb9

    goto/16 :goto_4

    .line 1639
    :cond_13
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mRecognizedStringsController:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    invoke-virtual {v15}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->getCurrentRecognizedStringArray()Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V
    :try_end_2
    .catch Lcom/diotek/ime/framework/engine/dhwr/CannotSetStringOnHereException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_4
.end method

.method private recognizeGesture([C)I
    .locals 7
    .param p1, "awResult"    # [C

    .prologue
    const/4 v3, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1841
    if-nez p1, :cond_1

    move v1, v3

    .line 1894
    :cond_0
    :goto_0
    return v1

    .line 1845
    :cond_1
    const/4 v1, -0x1

    .line 1847
    .local v1, "ret":I
    invoke-static {}, Lcom/diotek/dhwr/DHWR;->ClearCandidateList()V

    .line 1853
    invoke-static {v6}, Lcom/diotek/dhwr/DHWR;->Recognize(Z)I

    move-result v1

    .line 1861
    if-eqz v1, :cond_2

    iget-boolean v2, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mIsValidModel:Z

    if-nez v2, :cond_2

    .line 1863
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->showLicenseToast()V

    .line 1866
    :cond_2
    if-nez v1, :cond_0

    sget-object v2, Lcom/diotek/dhwr/DHWR;->candidatelist_:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v6, :cond_0

    .line 1867
    sget-object v2, Lcom/diotek/dhwr/DHWR;->candidatelist_:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/diotek/dhwr/DHWR$Candidate;

    .line 1869
    .local v0, "gestureCand":Lcom/diotek/dhwr/DHWR$Candidate;
    iget v2, v0, Lcom/diotek/dhwr/DHWR$Candidate;->complete_:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    iget-object v2, v0, Lcom/diotek/dhwr/DHWR$Candidate;->candlist_:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v6, :cond_0

    .line 1871
    iget-object v2, v0, Lcom/diotek/dhwr/DHWR$Candidate;->candlist_:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    .line 1883
    :cond_3
    :sswitch_0
    iget-object v2, v0, Lcom/diotek/dhwr/DHWR$Candidate;->candlist_:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    aput-char v2, p1, v5

    .line 1884
    sget-boolean v2, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 1885
    const-string v3, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Gesture:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, v0, Lcom/diotek/dhwr/DHWR$Candidate;->candlist_:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1873
    :sswitch_1
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v2

    if-eqz v2, :cond_3

    move v1, v3

    .line 1874
    goto/16 :goto_0

    .line 1871
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x5 -> :sswitch_0
        0x8 -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0x1f -> :sswitch_0
        0x20 -> :sswitch_1
    .end sparse-switch
.end method

.method private recognizeGestureAll()I
    .locals 11

    .prologue
    const/16 v10, 0x20

    const/16 v9, 0x8

    const/4 v6, 0x0

    .line 1686
    sget-boolean v7, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v7, :cond_0

    .line 1687
    const-string v7, "SamsungIME"

    const-string v8, "recognizeGestureAll()"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1689
    :cond_0
    const/4 v5, 0x0

    .line 1690
    .local v5, "result":I
    const/16 v7, 0xd2

    new-array v0, v7, [C

    .line 1692
    .local v0, "aResult":[C
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->setEngineAttributeGesture()V

    .line 1693
    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->recognizeGesture([C)I

    move-result v5

    .line 1695
    if-eqz v5, :cond_1

    .line 1781
    :goto_0
    return v6

    .line 1699
    :cond_1
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->getEngineLanguage()I

    move-result v3

    .line 1700
    .local v3, "engineLang":I
    const/16 v7, 0x74

    if-eq v3, v7, :cond_2

    const/16 v7, 0x75

    if-eq v3, v7, :cond_2

    const/16 v7, 0x76

    if-eq v3, v7, :cond_2

    const/16 v7, 0x7b

    if-ne v3, v7, :cond_3

    .line 1702
    :cond_2
    aget-char v7, v0, v6

    if-ne v7, v9, :cond_4

    .line 1703
    aput-char v10, v0, v6

    .line 1709
    :cond_3
    :goto_1
    aget-char v6, v0, v6

    sparse-switch v6, :sswitch_data_0

    :goto_2
    move v6, v5

    .line 1781
    goto :goto_0

    .line 1704
    :cond_4
    aget-char v7, v0, v6

    if-ne v7, v10, :cond_3

    .line 1705
    aput-char v9, v0, v6

    goto :goto_1

    .line 1711
    :sswitch_0
    iget-object v6, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mRecognizedStringsController:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->getOldRecognizedStringArray()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1712
    const/16 v5, 0x7d1

    goto :goto_2

    .line 1714
    :cond_5
    const/16 v5, 0x7d2

    .line 1716
    goto :goto_2

    .line 1718
    :sswitch_1
    const/16 v5, 0x7d3

    .line 1719
    goto :goto_2

    .line 1722
    :sswitch_2
    iget-object v6, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v4

    .line 1723
    .local v4, "info":Landroid/view/inputmethod/EditorInfo;
    iget v6, v4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v2, v6, 0xff0

    .line 1724
    .local v2, "currentEditorVariation":I
    iget v6, v4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v1, v6, 0xf

    .line 1727
    .local v1, "currentEditorClass":I
    packed-switch v1, :pswitch_data_0

    .line 1748
    :cond_6
    :goto_3
    :pswitch_0
    iget-object v6, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mRecognizedStringsController:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->getOldRecognizedStringArray()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1749
    const/16 v5, 0x7d4

    goto :goto_2

    .line 1729
    :pswitch_1
    const/4 v5, 0x0

    .line 1730
    goto :goto_3

    .line 1732
    :pswitch_2
    sparse-switch v2, :sswitch_data_1

    goto :goto_3

    .line 1736
    :sswitch_3
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->checkSpaceGestureInEmailField()Z

    move-result v6

    if-nez v6, :cond_6

    .line 1737
    const/4 v5, 0x0

    goto :goto_3

    .line 1751
    :cond_7
    const/16 v5, 0x7d5

    .line 1753
    goto :goto_2

    .line 1755
    .end local v1    # "currentEditorClass":I
    .end local v2    # "currentEditorVariation":I
    .end local v4    # "info":Landroid/view/inputmethod/EditorInfo;
    :sswitch_4
    iget-object v6, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mRecognizedStringsController:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->getOldRecognizedStringArray()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1756
    const/16 v5, 0x7d6

    goto :goto_2

    .line 1758
    :cond_8
    const/16 v5, 0x7d7

    .line 1760
    goto :goto_2

    .line 1762
    :sswitch_5
    iget-object v6, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mRecognizedStringsController:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->getOldRecognizedStringArray()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1763
    const/16 v5, 0x7d8

    goto :goto_2

    .line 1765
    :cond_9
    const/16 v5, 0x7d9

    .line 1767
    goto :goto_2

    .line 1769
    :sswitch_6
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->checkAwayGesture()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1770
    const/16 v5, 0x7db

    goto :goto_2

    .line 1772
    :cond_a
    const/4 v5, 0x0

    goto :goto_2

    .line 1709
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_5
        0x5 -> :sswitch_6
        0x8 -> :sswitch_0
        0xc -> :sswitch_4
        0xd -> :sswitch_1
        0x1f -> :sswitch_2
        0x20 -> :sswitch_2
    .end sparse-switch

    .line 1727
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1732
    :sswitch_data_1
    .sparse-switch
        0x10 -> :sswitch_3
        0x20 -> :sswitch_3
    .end sparse-switch
.end method

.method private recognizeUnitMode(Z)I
    .locals 7
    .param p1, "complete"    # Z

    .prologue
    const/16 v3, 0xbbc

    .line 1472
    sget-boolean v4, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 1473
    const-string v4, "SamsungIME"

    const-string v5, "recognizeThread()"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1476
    :cond_0
    const/4 v1, 0x0

    .line 1477
    .local v1, "result":I
    const/16 v4, 0x20

    :try_start_0
    const-string v5, "1"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-static {v4, v5}, Lcom/diotek/dhwr/DHWR;->SetParam(I[B)I

    .line 1490
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->setEngineAttribute()V

    .line 1491
    invoke-static {}, Lcom/diotek/dhwr/DHWR;->ClearCandidateList()V

    .line 1492
    const/4 v2, -0x1

    .line 1493
    .local v2, "ret":I
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->threadSafeRecog(Z)I

    move-result v2

    .line 1494
    sget-boolean v4, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v4, :cond_1

    .line 1495
    const-string v4, "SamsungIME"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "threadSafeRecog("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") ret : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1497
    :cond_1
    if-nez v2, :cond_6

    .line 1498
    sget-object v4, Lcom/diotek/dhwr/DHWR;->candidatelist_:Ljava/util/ArrayList;

    if-nez v4, :cond_3

    move v1, v3

    .line 1527
    .end local v1    # "result":I
    .end local v2    # "ret":I
    :cond_2
    :goto_0
    return v1

    .line 1502
    .restart local v1    # "result":I
    .restart local v2    # "ret":I
    :cond_3
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->changeUpperLowerCase()V

    .line 1503
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->getEngineLanguage()I

    move-result v4

    const/16 v5, 0x7c

    if-eq v4, v5, :cond_4

    .line 1504
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->changeSuggestionRankOnFirstCandidateIsNumber()V

    .line 1507
    :cond_4
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->makeRecongnitionSuggestion()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1509
    if-eqz p1, :cond_5

    .line 1510
    const/16 v1, 0xbba

    goto :goto_0

    .line 1512
    :cond_5
    const/16 v1, 0xbb9

    goto :goto_0

    .line 1519
    :cond_6
    if-gtz v1, :cond_2

    .end local v2    # "ret":I
    :cond_7
    :goto_1
    move v1, v3

    .line 1527
    goto :goto_0

    .line 1522
    :catch_0
    move-exception v0

    .line 1523
    .local v0, "ex":Ljava/lang/Exception;
    sget-boolean v4, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v4, :cond_7

    .line 1524
    const-string v4, "SamsungIME"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "recognizeThread : exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private rectOfRecognizeStroke(II)Landroid/graphics/RectF;
    .locals 4
    .param p1, "num"    # I
    .param p2, "strart"    # I

    .prologue
    .line 1940
    sget-boolean v1, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1941
    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " -> rectOfRecognizeStroke - num : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / mHwrPathController : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mHwrPathController:Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->getMaxIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1945
    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mHwrPathController:Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/diotek/ime/framework/common/InputManager;->getInputView(Z)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40a00000

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-virtual {v1, p1, v2, v3, p2}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->rectOfRecognizeStroke(IDI)Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 1949
    .local v0, "rt":Landroid/graphics/RectF;
    return-object v0
.end method

.method private releaseDHWRUserCharSet()V
    .locals 1

    .prologue
    .line 624
    iget-boolean v0, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mBSetUserChar:Z

    if-nez v0, :cond_0

    .line 629
    :goto_0
    return-void

    .line 627
    :cond_0
    invoke-static {}, Lcom/diotek/dhwr/DHWR;->FreeUserCharSet()I

    .line 628
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mBSetUserChar:Z

    goto :goto_0
.end method

.method private resetChangedTextIndex()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1985
    iput v0, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mChangedTextStartIndex:I

    .line 1986
    iput v0, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mChangedTextEndIndex:I

    .line 1987
    const/4 v0, -0x1

    iput v0, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mChangedArrayIndex:I

    .line 1988
    return-void
.end method

.method private resetInkCount()Z
    .locals 1

    .prologue
    .line 959
    const/4 v0, 0x1

    return v0
.end method

.method private setChangedTextIndex(III)V
    .locals 1
    .param p1, "textStartIndex"    # I
    .param p2, "textEndIndex"    # I
    .param p3, "arrayIndex"    # I

    .prologue
    .line 1969
    if-gez p1, :cond_0

    .line 1970
    const/4 p1, 0x0

    .line 1972
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mRecognizedStringsController:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->getOldRecognizedStringArray()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->getRecognizedString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le p2, v0, :cond_1

    .line 1975
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mRecognizedStringsController:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->getOldRecognizedStringArray()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->getRecognizedString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p2

    .line 1979
    :cond_1
    iput p1, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mChangedTextStartIndex:I

    .line 1980
    iput p2, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mChangedTextEndIndex:I

    .line 1981
    iput p3, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mChangedArrayIndex:I

    .line 1982
    return-void
.end method

.method private setDHWRUserCharSet()Z
    .locals 12

    .prologue
    .line 498
    const/4 v7, 0x0

    .line 499
    .local v7, "ret":I
    const/4 v0, 0x0

    .line 500
    .local v0, "codeSet":[C
    const/4 v10, 0x7

    new-array v3, v10, [C

    fill-array-data v3, :array_0

    .line 503
    .local v3, "defaultSet":[C
    const/4 v10, 0x6

    new-array v4, v10, [C

    fill-array-data v4, :array_1

    .line 506
    .local v4, "emailCodeSet":[C
    const/4 v10, 0x3

    new-array v9, v10, [C

    fill-array-data v9, :array_2

    .line 509
    .local v9, "webAddressCodeSet":[C
    const/4 v10, 0x4

    new-array v6, v10, [C

    fill-array-data v6, :array_3

    .line 513
    .local v6, "phoneNumberCodeSet":[C
    iget-object v10, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v5

    .line 514
    .local v5, "info":Landroid/view/inputmethod/EditorInfo;
    iget v10, v5, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v2, v10, 0xff0

    .line 515
    .local v2, "currentEditorVariation":I
    iget v10, v5, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v1, v10, 0xf

    .line 517
    .local v1, "currentEditorClass":I
    packed-switch v1, :pswitch_data_0

    .line 537
    :pswitch_0
    move-object v0, v3

    .line 542
    :goto_0
    iget-object v10, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 543
    invoke-static {v0}, Ljava/lang/String;->copyValueOf([C)Ljava/lang/String;

    move-result-object v8

    .line 544
    .local v8, "symbolSet":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x3002

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 545
    invoke-virtual {v8}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 548
    .end local v8    # "symbolSet":Ljava/lang/String;
    :cond_0
    array-length v10, v0

    invoke-static {v0, v10}, Lcom/diotek/dhwr/DHWR;->SetUserCharSet([CI)I

    move-result v7

    .line 550
    if-nez v7, :cond_1

    .line 551
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mBSetUserChar:Z

    .line 556
    :goto_1
    iget-boolean v10, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mBSetUserChar:Z

    return v10

    .line 519
    :pswitch_1
    move-object v0, v6

    .line 520
    goto :goto_0

    .line 522
    :pswitch_2
    sparse-switch v2, :sswitch_data_0

    .line 531
    move-object v0, v3

    .line 533
    goto :goto_0

    .line 525
    :sswitch_0
    move-object v0, v4

    .line 526
    goto :goto_0

    .line 528
    :sswitch_1
    move-object v0, v9

    .line 529
    goto :goto_0

    .line 553
    :cond_1
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mBSetUserChar:Z

    goto :goto_1

    .line 500
    nop

    :array_0
    .array-data 2
        0x3fs
        0x2es
        0x2cs
        0x21s
        0x40s
        0x23s
        0x26s
    .end array-data

    .line 503
    nop

    :array_1
    .array-data 2
        0x40s
        0x2es
        0x3bs
        0x2ds
        0x5fs
        0x2cs
    .end array-data

    .line 506
    :array_2
    .array-data 2
        0x2fs
        0x3as
        0x2es
    .end array-data

    .line 509
    nop

    :array_3
    .array-data 2
        0x2ds
        0x2as
        0x2bs
        0x23s
    .end array-data

    .line 517
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 522
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method private setDHWRUserCharSetOnNumber()Z
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 561
    const/4 v6, 0x0

    .line 562
    .local v6, "ret":I
    const/4 v0, 0x0

    .line 564
    .local v0, "codeSet":[C
    new-array v7, v12, [C

    const/16 v9, 0x2d

    aput-char v9, v7, v11

    .line 567
    .local v7, "signedCodeSet":[C
    new-array v3, v12, [C

    const/16 v9, 0x2e

    aput-char v9, v3, v11

    .line 570
    .local v3, "decimalCodeSet":[C
    const/4 v9, 0x2

    new-array v8, v9, [C

    fill-array-data v8, :array_0

    .line 573
    .local v8, "signedDeciamlCodeSet":[C
    const/16 v9, 0xb

    new-array v5, v9, [C

    fill-array-data v5, :array_1

    .line 577
    .local v5, "phoneCodeSet":[C
    iget-object v9, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v4

    .line 578
    .local v4, "info":Landroid/view/inputmethod/EditorInfo;
    iget v9, v4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const v10, 0xfff000

    and-int v2, v9, v10

    .line 579
    .local v2, "currentEditorFlag":I
    iget v9, v4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v1, v9, 0xf

    .line 581
    .local v1, "currentEditorClass":I
    packed-switch v1, :pswitch_data_0

    .line 602
    const/4 v0, 0x0

    .line 606
    :goto_0
    if-nez v0, :cond_0

    .line 607
    iput-boolean v11, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mBSetUserChar:Z

    .line 608
    iget-boolean v9, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mBSetUserChar:Z

    .line 619
    :goto_1
    return v9

    .line 583
    :pswitch_0
    move-object v0, v5

    .line 584
    goto :goto_0

    .line 586
    :pswitch_1
    sparse-switch v2, :sswitch_data_0

    .line 597
    const/4 v0, 0x0

    .line 598
    goto :goto_0

    .line 588
    :sswitch_0
    move-object v0, v3

    .line 589
    goto :goto_0

    .line 591
    :sswitch_1
    move-object v0, v7

    .line 592
    goto :goto_0

    .line 594
    :sswitch_2
    move-object v0, v8

    .line 595
    goto :goto_0

    .line 611
    :cond_0
    array-length v9, v0

    invoke-static {v0, v9}, Lcom/diotek/dhwr/DHWR;->SetUserCharSet([CI)I

    move-result v6

    .line 613
    if-nez v6, :cond_1

    .line 614
    iput-boolean v12, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mBSetUserChar:Z

    .line 619
    :goto_2
    iget-boolean v9, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mBSetUserChar:Z

    goto :goto_1

    .line 616
    :cond_1
    iput-boolean v11, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mBSetUserChar:Z

    goto :goto_2

    .line 570
    nop

    :array_0
    .array-data 2
        0x2ds
        0x2es
    .end array-data

    .line 573
    :array_1
    .array-data 2
        0x2ds
        0x2as
        0x2bs
        0x23s
        0x28s
        0x29s
        0x2cs
        0x2fs
        0x2es
        0x3bs
        0x4es
    .end array-data

    .line 581
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 586
    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_1
        0x2000 -> :sswitch_0
        0x3000 -> :sswitch_2
    .end sparse-switch
.end method

.method private setEngineArabicLanguageAtrribute(I)V
    .locals 9
    .param p1, "language"    # I

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 357
    const/4 v3, 0x0

    .line 358
    .local v3, "recType":I
    const/4 v4, 0x3

    filled-new-array {v4, v8}, [I

    move-result-object v4

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    .line 359
    .local v0, "arMode":[[I
    const/4 v2, 0x3

    .line 360
    .local v2, "nMode":I
    new-array v1, v7, [I

    .line 363
    .local v1, "mCands":[I
    aget-object v4, v0, v6

    aput p1, v4, v6

    .line 364
    aget-object v4, v0, v6

    sget v5, Lcom/diotek/dhwr/DHWR;->DTYPE_NONE:I

    aput v5, v4, v7

    .line 367
    aget-object v4, v0, v7

    const/16 v5, 0x77

    aput v5, v4, v6

    .line 368
    aget-object v4, v0, v7

    sget v5, Lcom/diotek/dhwr/DHWR;->DTYPE_NONE:I

    aput v5, v4, v7

    .line 371
    aget-object v4, v0, v8

    const/16 v5, 0x85

    aput v5, v4, v6

    .line 372
    aget-object v4, v0, v8

    sget v5, Lcom/diotek/dhwr/DHWR;->DTYPE_NONE:I

    aput v5, v4, v7

    .line 374
    const/16 v4, 0xa

    aput v4, v1, v6

    .line 375
    invoke-static {v3, v0, v2, v1}, Lcom/diotek/dhwr/DHWR;->SetAttribute(I[[II[I)I

    .line 376
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->setDHWRUserCharSet()Z

    .line 377
    return-void
.end method

.method private setEngineAttribute()V
    .locals 1

    .prologue
    .line 400
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->releaseDHWRUserCharSet()V

    .line 402
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->isNumRecognitionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->setEngineAttributeNumberOnly()V

    .line 407
    :goto_0
    return-void

    .line 405
    :cond_0
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->setEngineAttributeByLanguage()V

    goto :goto_0
.end method

.method private setEngineAttributeByLanguage()V
    .locals 2

    .prologue
    .line 410
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->getEngineLanguage()I

    move-result v0

    .line 411
    .local v0, "engineLang":I
    sparse-switch v0, :sswitch_data_0

    .line 492
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->setEngineCursiveLanguageAttribute(I)V

    .line 495
    :goto_0
    return-void

    .line 416
    :sswitch_0
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->isMixRecognition()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 417
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->setEngineAttributeKorEng()V

    goto :goto_0

    .line 419
    :cond_0
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->setEngineAttributeKor()V

    goto :goto_0

    .line 445
    :sswitch_1
    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->setEngineNonCursiveLanguageAtrribute(I)V

    goto :goto_0

    .line 451
    :sswitch_2
    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->setEngineArabicLanguageAtrribute(I)V

    goto :goto_0

    .line 455
    :sswitch_3
    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->setEngineHebrewLanguageAtrribute(I)V

    goto :goto_0

    .line 459
    :sswitch_4
    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->setEngineAttributeThai(I)V

    goto :goto_0

    .line 464
    :sswitch_5
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->setEngineAttributeChinese()V

    goto :goto_0

    .line 467
    :sswitch_6
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->setEngineAttributeHKChinese()V

    goto :goto_0

    .line 481
    :sswitch_7
    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->setEngineCursiveLanguageAttribute(I)V

    goto :goto_0

    .line 484
    :sswitch_8
    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->setEngineAttributeVietnamese(I)V

    goto :goto_0

    .line 488
    :sswitch_9
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->setEngineAttributeJapanese()V

    goto :goto_0

    .line 411
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_7
        0x1 -> :sswitch_7
        0x3 -> :sswitch_7
        0x6 -> :sswitch_1
        0x7 -> :sswitch_1
        0x8 -> :sswitch_7
        0x9 -> :sswitch_7
        0xb -> :sswitch_1
        0xc -> :sswitch_7
        0xd -> :sswitch_1
        0xe -> :sswitch_7
        0xf -> :sswitch_1
        0x11 -> :sswitch_7
        0x12 -> :sswitch_1
        0x13 -> :sswitch_1
        0x14 -> :sswitch_1
        0x15 -> :sswitch_1
        0x16 -> :sswitch_7
        0x17 -> :sswitch_7
        0x18 -> :sswitch_1
        0x19 -> :sswitch_1
        0x1a -> :sswitch_1
        0x1b -> :sswitch_1
        0x1c -> :sswitch_1
        0x1d -> :sswitch_1
        0x1e -> :sswitch_8
        0x22 -> :sswitch_1
        0x23 -> :sswitch_1
        0x24 -> :sswitch_1
        0x25 -> :sswitch_1
        0x27 -> :sswitch_1
        0x29 -> :sswitch_1
        0x65 -> :sswitch_0
        0x67 -> :sswitch_5
        0x6b -> :sswitch_5
        0x6f -> :sswitch_6
        0x70 -> :sswitch_9
        0x71 -> :sswitch_9
        0x74 -> :sswitch_2
        0x75 -> :sswitch_2
        0x76 -> :sswitch_2
        0x7b -> :sswitch_3
        0x7c -> :sswitch_4
    .end sparse-switch
.end method

.method private setEngineAttributeChinese()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 633
    const/4 v3, 0x1

    .line 634
    .local v3, "recType":I
    const/4 v4, 0x3

    filled-new-array {v4, v8}, [I

    move-result-object v4

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    .line 635
    .local v0, "arMode":[[I
    const/4 v2, 0x2

    .line 636
    .local v2, "nMode":I
    new-array v1, v7, [I

    .line 638
    .local v1, "mCands":[I
    aget-object v4, v0, v6

    const/16 v5, 0x67

    aput v5, v4, v6

    .line 639
    aget-object v4, v0, v6

    sget v5, Lcom/diotek/dhwr/DHWR;->DTYPE_NONE:I

    aput v5, v4, v7

    .line 641
    aget-object v4, v0, v7

    const/16 v5, 0x6b

    aput v5, v4, v6

    .line 642
    aget-object v4, v0, v7

    sget v5, Lcom/diotek/dhwr/DHWR;->DTYPE_NONE:I

    aput v5, v4, v7

    .line 644
    const/16 v4, 0xa

    aput v4, v1, v6

    .line 646
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->setDHWRUserCharSet()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 647
    aget-object v4, v0, v8

    const/16 v5, 0x85

    aput v5, v4, v6

    .line 648
    aget-object v4, v0, v8

    sget v5, Lcom/diotek/dhwr/DHWR;->DTYPE_NONE:I

    aput v5, v4, v7

    .line 649
    const/4 v2, 0x3

    .line 652
    :cond_0
    invoke-static {v3, v0, v2, v1}, Lcom/diotek/dhwr/DHWR;->SetAttribute(I[[II[I)I

    .line 653
    return-void
.end method

.method private setEngineAttributeGesture()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 302
    const/4 v3, 0x1

    .line 303
    .local v3, "recType":I
    const/4 v2, 0x1

    .line 304
    .local v2, "nMode":I
    const/4 v4, 0x2

    filled-new-array {v7, v4}, [I

    move-result-object v4

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    .line 305
    .local v0, "arMode":[[I
    new-array v1, v7, [I

    .line 307
    .local v1, "mCands":[I
    aget-object v4, v0, v6

    const/16 v5, 0x80

    aput v5, v4, v6

    .line 308
    aget-object v4, v0, v6

    sget v5, Lcom/diotek/dhwr/DHWR;->DTYPE_NONE:I

    aput v5, v4, v7

    .line 310
    const/16 v4, 0xa

    aput v4, v1, v6

    .line 312
    invoke-static {v3, v0, v2, v1}, Lcom/diotek/dhwr/DHWR;->SetAttribute(I[[II[I)I

    .line 313
    return-void
.end method

.method private setEngineAttributeHKChinese()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 657
    const/4 v3, 0x1

    .line 658
    .local v3, "recType":I
    const/4 v4, 0x4

    filled-new-array {v4, v8}, [I

    move-result-object v4

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    .line 659
    .local v0, "arMode":[[I
    const/4 v2, 0x3

    .line 660
    .local v2, "nMode":I
    new-array v1, v6, [I

    .line 662
    .local v1, "mCands":[I
    aget-object v4, v0, v7

    const/16 v5, 0x67

    aput v5, v4, v7

    .line 663
    aget-object v4, v0, v7

    sget v5, Lcom/diotek/dhwr/DHWR;->DTYPE_NONE:I

    aput v5, v4, v6

    .line 665
    aget-object v4, v0, v6

    const/16 v5, 0x6b

    aput v5, v4, v7

    .line 666
    aget-object v4, v0, v6

    sget v5, Lcom/diotek/dhwr/DHWR;->DTYPE_NONE:I

    aput v5, v4, v6

    .line 668
    aget-object v4, v0, v8

    const/16 v5, 0x6f

    aput v5, v4, v7

    .line 669
    aget-object v4, v0, v8

    sget v5, Lcom/diotek/dhwr/DHWR;->DTYPE_NONE:I

    aput v5, v4, v6

    .line 671
    const/16 v4, 0xa

    aput v4, v1, v7

    .line 673
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->setDHWRUserCharSet()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 674
    aget-object v4, v0, v6

    const/16 v5, 0x85

    aput v5, v4, v7

    .line 675
    aget-object v4, v0, v6

    sget v5, Lcom/diotek/dhwr/DHWR;->DTYPE_NONE:I

    aput v5, v4, v6

    .line 676
    const/4 v2, 0x4

    .line 679
    :cond_0
    invoke-static {v3, v0, v2, v1}, Lcom/diotek/dhwr/DHWR;->SetAttribute(I[[II[I)I

    .line 680
    return-void
.end method

.method private setEngineAttributeJapanese()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 729
    const/4 v3, 0x1

    .line 730
    .local v3, "recType":I
    const/4 v4, 0x3

    filled-new-array {v4, v8}, [I

    move-result-object v4

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    .line 731
    .local v0, "arMode":[[I
    const/4 v2, 0x2

    .line 732
    .local v2, "nMode":I
    new-array v1, v7, [I

    .line 734
    .local v1, "mCands":[I
    aget-object v4, v0, v6

    const/16 v5, 0x70

    aput v5, v4, v6

    .line 735
    aget-object v4, v0, v6

    sget v5, Lcom/diotek/dhwr/DHWR;->DTYPE_NONE:I

    aput v5, v4, v7

    .line 737
    aget-object v4, v0, v7

    const/16 v5, 0x71

    aput v5, v4, v6

    .line 738
    aget-object v4, v0, v7

    sget v5, Lcom/diotek/dhwr/DHWR;->DTYPE_NONE:I

    aput v5, v4, v7

    .line 740
    const/16 v4, 0xa

    aput v4, v1, v6

    .line 742
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->setDHWRUserCharSet()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 743
    aget-object v4, v0, v8

    const/16 v5, 0x85

    aput v5, v4, v6

    .line 744
    aget-object v4, v0, v8

    sget v5, Lcom/diotek/dhwr/DHWR;->DTYPE_NONE:I

    aput v5, v4, v7

    .line 745
    const/4 v2, 0x3

    .line 748
    :cond_0
    invoke-static {v3, v0, v2, v1}, Lcom/diotek/dhwr/DHWR;->SetAttribute(I[[II[I)I

    .line 749
    return-void
.end method

.method private setEngineAttributeKor()V
    .locals 9

    .prologue
    const/4 v4, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 684
    const/4 v3, 0x1

    .line 685
    .local v3, "recType":I
    filled-new-array {v4, v4}, [I

    move-result-object v4

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    .line 686
    .local v0, "arMode":[[I
    const/4 v2, 0x1

    .line 687
    .local v2, "nMode":I
    new-array v1, v8, [I

    .line 689
    .local v1, "mCands":[I
    aget-object v4, v0, v7

    const/16 v5, 0x65

    aput v5, v4, v7

    .line 690
    aget-object v4, v0, v7

    sget v5, Lcom/diotek/dhwr/DHWR;->DTYPE_JOHAP:I

    sget v6, Lcom/diotek/dhwr/DHWR;->DTYPE_AUTO_SPACE:I

    or-int/2addr v5, v6

    sget v6, Lcom/diotek/dhwr/DHWR;->DTYPE_VOWEL:I

    or-int/2addr v5, v6

    sget v6, Lcom/diotek/dhwr/DHWR;->DTYPE_CONSONANT:I

    or-int/2addr v5, v6

    aput v5, v4, v8

    .line 693
    const/16 v4, 0xa

    aput v4, v1, v7

    .line 695
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->setDHWRUserCharSet()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 696
    aget-object v4, v0, v8

    const/16 v5, 0x85

    aput v5, v4, v7

    .line 697
    aget-object v4, v0, v8

    sget v5, Lcom/diotek/dhwr/DHWR;->DTYPE_NONE:I

    aput v5, v4, v8

    .line 698
    const/4 v2, 0x2

    .line 701
    :cond_0
    invoke-static {v3, v0, v2, v1}, Lcom/diotek/dhwr/DHWR;->SetAttribute(I[[II[I)I

    .line 702
    return-void
.end method

.method private setEngineAttributeKorEng()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 705
    const/4 v3, 0x3

    filled-new-array {v3, v8}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    .line 706
    .local v0, "arMode":[[I
    new-array v1, v7, [I

    .line 707
    .local v1, "mCands":[I
    const/4 v2, 0x2

    .line 709
    .local v2, "nMode":I
    aget-object v3, v0, v6

    const/16 v4, 0x65

    aput v4, v3, v6

    .line 710
    aget-object v3, v0, v6

    sget v4, Lcom/diotek/dhwr/DHWR;->DTYPE_JOHAP:I

    sget v5, Lcom/diotek/dhwr/DHWR;->DTYPE_AUTO_SPACE:I

    or-int/2addr v4, v5

    aput v4, v3, v7

    .line 712
    aget-object v3, v0, v7

    aput v6, v3, v6

    .line 713
    aget-object v3, v0, v7

    sget v4, Lcom/diotek/dhwr/DHWR;->DTYPE_UPPERCASE:I

    sget v5, Lcom/diotek/dhwr/DHWR;->DTYPE_LOWERCASE:I

    or-int/2addr v4, v5

    sget v5, Lcom/diotek/dhwr/DHWR;->DTYPE_AUTO_SPACE:I

    or-int/2addr v4, v5

    aput v4, v3, v7

    .line 716
    aget-object v3, v0, v8

    const/16 v4, 0x85

    aput v4, v3, v6

    .line 717
    aget-object v3, v0, v8

    sget v4, Lcom/diotek/dhwr/DHWR;->DTYPE_NONE:I

    aput v4, v3, v7

    .line 718
    const/4 v2, 0x3

    .line 721
    const/16 v3, 0xa

    aput v3, v1, v6

    .line 723
    invoke-static {v7, v0, v2, v1}, Lcom/diotek/dhwr/DHWR;->SetAttribute(I[[II[I)I

    .line 724
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->setDHWRUserCharSet()Z

    .line 726
    return-void
.end method

.method private setEngineAttributeNumberOnly()V
    .locals 8

    .prologue
    const/4 v4, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 753
    const/4 v3, 0x1

    .line 754
    .local v3, "recType":I
    filled-new-array {v4, v4}, [I

    move-result-object v4

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    .line 755
    .local v0, "arMode":[[I
    const/4 v2, 0x1

    .line 756
    .local v2, "nMode":I
    new-array v1, v7, [I

    .line 758
    .local v1, "mCands":[I
    aget-object v4, v0, v6

    const/16 v5, 0x83

    aput v5, v4, v6

    .line 759
    aget-object v4, v0, v6

    sget v5, Lcom/diotek/dhwr/DHWR;->DTYPE_NONE:I

    aput v5, v4, v7

    .line 761
    const/16 v4, 0xa

    aput v4, v1, v6

    .line 763
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->setDHWRUserCharSetOnNumber()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 764
    const/4 v2, 0x2

    .line 765
    aget-object v4, v0, v7

    const/16 v5, 0x85

    aput v5, v4, v6

    .line 766
    aget-object v4, v0, v7

    sget v5, Lcom/diotek/dhwr/DHWR;->DTYPE_NONE:I

    aput v5, v4, v7

    .line 769
    :cond_0
    invoke-static {v3, v0, v2, v1}, Lcom/diotek/dhwr/DHWR;->SetAttribute(I[[II[I)I

    .line 770
    return-void
.end method

.method private setEngineAttributeThai(I)V
    .locals 10
    .param p1, "language"    # I

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 794
    const/4 v3, 0x0

    .line 795
    .local v3, "recType":I
    const/4 v4, 0x3

    filled-new-array {v4, v9}, [I

    move-result-object v4

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    .line 796
    .local v0, "arMode":[[I
    const/4 v2, 0x1

    .line 797
    .local v2, "nMode":I
    new-array v1, v8, [I

    .line 800
    .local v1, "mCands":[I
    aget-object v4, v0, v7

    const/16 v5, 0x7c

    aput v5, v4, v7

    .line 801
    aget-object v4, v0, v7

    sget v5, Lcom/diotek/dhwr/DHWR;->DTYPE_CONSONANT:I

    sget v6, Lcom/diotek/dhwr/DHWR;->DTYPE_VOWEL:I

    or-int/2addr v5, v6

    sget v6, Lcom/diotek/dhwr/DHWR;->DTYPE_TONE:I

    or-int/2addr v5, v6

    sget v6, Lcom/diotek/dhwr/DHWR;->DTYPE_CURRENCY:I

    or-int/2addr v5, v6

    aput v5, v4, v8

    .line 802
    aget-object v4, v0, v8

    const/16 v5, 0x7d

    aput v5, v4, v7

    .line 803
    aget-object v4, v0, v8

    sget v5, Lcom/diotek/dhwr/DHWR;->DTYPE_NONE:I

    aput v5, v4, v8

    .line 804
    aget-object v4, v0, v9

    const/16 v5, 0x7e

    aput v5, v4, v7

    .line 805
    aget-object v4, v0, v9

    sget v5, Lcom/diotek/dhwr/DHWR;->DTYPE_NONE:I

    aput v5, v4, v8

    .line 807
    const/4 v2, 0x3

    .line 809
    const/16 v4, 0xa

    aput v4, v1, v7

    .line 810
    invoke-static {v3, v0, v2, v1}, Lcom/diotek/dhwr/DHWR;->SetAttribute(I[[II[I)I

    .line 811
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->setDHWRUserCharSet()Z

    .line 812
    return-void
.end method

.method private setEngineAttributeVietnamese(I)V
    .locals 9
    .param p1, "language"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 773
    const/4 v3, 0x1

    .line 774
    .local v3, "recType":I
    filled-new-array {v4, v4}, [I

    move-result-object v4

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    .line 775
    .local v0, "arMode":[[I
    const/4 v2, 0x1

    .line 776
    .local v2, "nMode":I
    new-array v1, v8, [I

    .line 778
    .local v1, "mCands":[I
    aget-object v4, v0, v7

    aput p1, v4, v7

    .line 779
    aget-object v4, v0, v7

    sget v5, Lcom/diotek/dhwr/DHWR;->DTYPE_UPPERCASE:I

    sget v6, Lcom/diotek/dhwr/DHWR;->DTYPE_LOWERCASE:I

    or-int/2addr v5, v6

    sget v6, Lcom/diotek/dhwr/DHWR;->DTYPE_TONE:I

    or-int/2addr v5, v6

    aput v5, v4, v8

    .line 782
    const/4 v2, 0x2

    .line 783
    aget-object v4, v0, v8

    const/16 v5, 0x85

    aput v5, v4, v7

    .line 784
    aget-object v4, v0, v8

    sget v5, Lcom/diotek/dhwr/DHWR;->DTYPE_NONE:I

    aput v5, v4, v8

    .line 787
    const/16 v4, 0xa

    aput v4, v1, v7

    .line 788
    invoke-static {v3, v0, v2, v1}, Lcom/diotek/dhwr/DHWR;->SetAttribute(I[[II[I)I

    .line 789
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->setDHWRUserCharSet()Z

    .line 790
    return-void
.end method

.method private setEngineCursiveLanguageAttribute(I)V
    .locals 9
    .param p1, "language"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 319
    const/4 v3, 0x1

    .line 320
    .local v3, "recType":I
    filled-new-array {v4, v4}, [I

    move-result-object v4

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    .line 321
    .local v0, "arMode":[[I
    const/4 v2, 0x1

    .line 322
    .local v2, "nMode":I
    new-array v1, v8, [I

    .line 324
    .local v1, "mCands":[I
    aget-object v4, v0, v7

    aput p1, v4, v7

    .line 325
    aget-object v4, v0, v7

    sget v5, Lcom/diotek/dhwr/DHWR;->DTYPE_UPPERCASE:I

    sget v6, Lcom/diotek/dhwr/DHWR;->DTYPE_LOWERCASE:I

    or-int/2addr v5, v6

    sget v6, Lcom/diotek/dhwr/DHWR;->DTYPE_CURSIVE:I

    or-int/2addr v5, v6

    aput v5, v4, v8

    .line 327
    const/16 v4, 0xa

    aput v4, v1, v7

    .line 328
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->setDHWRUserCharSet()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 329
    aget-object v4, v0, v8

    const/16 v5, 0x85

    aput v5, v4, v7

    .line 330
    aget-object v4, v0, v8

    sget v5, Lcom/diotek/dhwr/DHWR;->DTYPE_NONE:I

    aput v5, v4, v8

    .line 331
    const/4 v2, 0x2

    .line 333
    :cond_0
    invoke-static {v3, v0, v2, v1}, Lcom/diotek/dhwr/DHWR;->SetAttribute(I[[II[I)I

    .line 334
    return-void
.end method

.method private setEngineHebrewLanguageAtrribute(I)V
    .locals 8
    .param p1, "language"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 380
    const/4 v3, 0x1

    .line 381
    .local v3, "recType":I
    filled-new-array {v4, v4}, [I

    move-result-object v4

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    .line 382
    .local v0, "arMode":[[I
    const/4 v2, 0x2

    .line 383
    .local v2, "nMode":I
    new-array v1, v7, [I

    .line 386
    .local v1, "mCands":[I
    aget-object v4, v0, v6

    aput p1, v4, v6

    .line 387
    aget-object v4, v0, v6

    sget v5, Lcom/diotek/dhwr/DHWR;->DTYPE_CONSONANT:I

    aput v5, v4, v7

    .line 390
    aget-object v4, v0, v7

    const/16 v5, 0x85

    aput v5, v4, v6

    .line 391
    aget-object v4, v0, v7

    sget v5, Lcom/diotek/dhwr/DHWR;->DTYPE_NONE:I

    aput v5, v4, v7

    .line 393
    const/16 v4, 0xa

    aput v4, v1, v6

    .line 394
    invoke-static {v3, v0, v2, v1}, Lcom/diotek/dhwr/DHWR;->SetAttribute(I[[II[I)I

    .line 395
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->setDHWRUserCharSet()Z

    .line 396
    return-void
.end method

.method private setEngineLanguage(I)V
    .locals 6
    .param p1, "engineLang"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2017
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v2

    .line 2018
    .local v2, "info":Landroid/view/inputmethod/EditorInfo;
    if-eqz v2, :cond_0

    .line 2019
    iget v3, v2, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v1, v3, 0xff0

    .line 2020
    .local v1, "currentEditorVariation":I
    iget v3, v2, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v0, v3, 0xf

    .line 2022
    .local v0, "currentEditorClass":I
    if-ne v0, v5, :cond_0

    .line 2023
    sparse-switch v1, :sswitch_data_0

    .line 2034
    invoke-direct {p0, v4}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->setMixRecognition(Z)V

    .line 2039
    .end local v0    # "currentEditorClass":I
    .end local v1    # "currentEditorVariation":I
    :cond_0
    :goto_0
    iput p1, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mEngineLang:I

    .line 2042
    return-void

    .line 2027
    .restart local v0    # "currentEditorClass":I
    .restart local v1    # "currentEditorVariation":I
    :sswitch_0
    const/16 v3, 0x65

    if-ne p1, v3, :cond_1

    .line 2028
    invoke-direct {p0, v5}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->setMixRecognition(Z)V

    goto :goto_0

    .line 2030
    :cond_1
    invoke-direct {p0, v4}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->setMixRecognition(Z)V

    goto :goto_0

    .line 2023
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method private setEngineNonCursiveLanguageAtrribute(I)V
    .locals 9
    .param p1, "language"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 337
    const/4 v3, 0x1

    .line 338
    .local v3, "recType":I
    filled-new-array {v4, v4}, [I

    move-result-object v4

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    .line 339
    .local v0, "arMode":[[I
    const/4 v2, 0x1

    .line 340
    .local v2, "nMode":I
    new-array v1, v8, [I

    .line 342
    .local v1, "mCands":[I
    aget-object v4, v0, v7

    aput p1, v4, v7

    .line 343
    aget-object v4, v0, v7

    sget v5, Lcom/diotek/dhwr/DHWR;->DTYPE_UPPERCASE:I

    sget v6, Lcom/diotek/dhwr/DHWR;->DTYPE_LOWERCASE:I

    or-int/2addr v5, v6

    sget v6, Lcom/diotek/dhwr/DHWR;->DTYPE_AUTO_SPACE:I

    or-int/2addr v5, v6

    aput v5, v4, v8

    .line 346
    const/4 v2, 0x2

    .line 347
    aget-object v4, v0, v8

    const/16 v5, 0x85

    aput v5, v4, v7

    .line 348
    aget-object v4, v0, v8

    sget v5, Lcom/diotek/dhwr/DHWR;->DTYPE_NONE:I

    aput v5, v4, v8

    .line 351
    const/16 v4, 0xa

    aput v4, v1, v7

    .line 352
    invoke-static {v3, v0, v2, v1}, Lcom/diotek/dhwr/DHWR;->SetAttribute(I[[II[I)I

    .line 353
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->setDHWRUserCharSet()Z

    .line 354
    return-void
.end method

.method private setGestureOnRecognizedStringWrapper(ILandroid/graphics/RectF;)V
    .locals 7
    .param p1, "gesture"    # I
    .param p2, "resultRect"    # Landroid/graphics/RectF;

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x20

    .line 1224
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->resetChangedTextIndex()V

    .line 1226
    invoke-virtual {p2}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1283
    :cond_0
    :goto_0
    return-void

    .line 1229
    :cond_1
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mStrRect:Landroid/graphics/RectF;

    invoke-virtual {v3, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 1231
    const/4 v2, 0x0

    .line 1232
    .local v2, "success":Z
    const/4 v3, -0x1

    if-eq p1, v3, :cond_0

    .line 1233
    if-eq p1, v5, :cond_2

    const/16 v3, 0x1f

    if-ne p1, v3, :cond_4

    .line 1234
    :cond_2
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_1
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mRecognizedStringsController:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->getOldRecognizedStringArray()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 1236
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mRecognizedStringsController:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->getOldRecognizedStringArray()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mStrRect:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->handleSpaceGesture(Landroid/graphics/RectF;)Z

    move-result v2

    .line 1235
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1239
    :cond_3
    if-nez v2, :cond_0

    .line 1240
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3, v5, v6}, Lcom/diotek/ime/framework/common/InputManager;->onKey(I[I)V

    goto :goto_0

    .line 1243
    .end local v0    # "index":I
    :cond_4
    const/16 v3, 0x8

    if-eq p1, v3, :cond_5

    const/16 v3, 0xc

    if-ne p1, v3, :cond_9

    .line 1245
    :cond_5
    const/4 v1, -0x1

    .line 1246
    .local v1, "indexOfSuccesed":I
    const/4 v0, 0x0

    .restart local v0    # "index":I
    :goto_2
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mRecognizedStringsController:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->getOldRecognizedStringArray()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_7

    .line 1248
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mRecognizedStringsController:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->getOldRecognizedStringArray()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mStrRect:Landroid/graphics/RectF;

    invoke-virtual {v3, v4, p1}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->handleDeleteGesture(Landroid/graphics/RectF;I)Z

    move-result v2

    .line 1250
    if-eqz v2, :cond_6

    .line 1251
    move v1, v0

    .line 1247
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1254
    :cond_7
    if-eqz v2, :cond_8

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mRecognizedStringsController:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->getOldRecognizedStringArray()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->getRecognizedString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_8

    .line 1258
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mRecognizedStringsController:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->getOldRecognizedStringArray()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1260
    :cond_8
    if-nez v2, :cond_0

    .line 1261
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v4, -0x5

    invoke-interface {v3, v4, v6}, Lcom/diotek/ime/framework/common/InputManager;->onKey(I[I)V

    goto/16 :goto_0

    .line 1265
    .end local v0    # "index":I
    .end local v1    # "indexOfSuccesed":I
    :cond_9
    const/4 v3, 0x2

    if-ne p1, v3, :cond_a

    .line 1266
    const/4 v0, 0x0

    .restart local v0    # "index":I
    :goto_3
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mRecognizedStringsController:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->getOldRecognizedStringArray()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 1268
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mRecognizedStringsController:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->getOldRecognizedStringArray()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mStrRect:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->handleMergeGesture(Landroid/graphics/RectF;)Z

    move-result v2

    .line 1267
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1272
    .end local v0    # "index":I
    :cond_a
    const/4 v3, 0x5

    if-ne p1, v3, :cond_0

    .line 1273
    const/4 v0, 0x0

    .restart local v0    # "index":I
    :goto_4
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mRecognizedStringsController:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->getOldRecognizedStringArray()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 1275
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mRecognizedStringsController:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->getOldRecognizedStringArray()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mCompleteStringFont:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->setFont(Landroid/graphics/Typeface;)V

    .line 1277
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mRecognizedStringsController:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->getOldRecognizedStringArray()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mStrRect:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->handleAwayGesture(Landroid/graphics/RectF;)Z

    move-result v2

    .line 1274
    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method private setMixRecognition(Z)V
    .locals 0
    .param p1, "isMixRecognition"    # Z

    .prologue
    .line 2013
    iput-boolean p1, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mIsMixRecognition:Z

    .line 2014
    return-void
.end method

.method private setNewStringOnRecognizedStringWrapper(Ljava/util/ArrayList;Ljava/lang/String;I)V
    .locals 14
    .param p2, "recognizedString"    # Ljava/lang/String;
    .param p3, "fontSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/diotek/ime/framework/engine/dhwr/CannotSetStringOnHereException;
        }
    .end annotation

    .prologue
    .line 1186
    .local p1, "recognizedStringArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;>;"
    const/4 v0, 0x0

    .line 1188
    .local v0, "newRecognizedString":Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;
    new-instance v0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;

    .end local v0    # "newRecognizedString":Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mStrRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mHwrPanelRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mHwrPanelRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v1

    :goto_0
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mStrRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mHwrPanelRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mHwrPanelRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v4, v1

    :goto_1
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mHwrPanelRect:Landroid/graphics/Rect;

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mHwrPanelRect:Landroid/graphics/Rect;

    iget v6, v1, Landroid/graphics/Rect;->right:I

    iget-object v7, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mCompleteStringFont:Landroid/graphics/Typeface;

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct/range {v0 .. v7}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;-><init>(Ljava/lang/String;IFFIILandroid/graphics/Typeface;)V

    .line 1196
    .restart local v0    # "newRecognizedString":Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1198
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mRecognizedStringsController:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->getOldRecognizedStringArray()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1200
    const/4 v12, 0x0

    .line 1201
    .local v12, "startIndex":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v11, v1, -0x1

    .line 1202
    .local v11, "resultArraySize":I
    invoke-virtual {p1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->getRecognizedString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    .line 1204
    .local v9, "endIndex":I
    sget-object v1, Lcom/diotek/dhwr/DHWR;->candidatelist_:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    .line 1205
    sget-object v1, Lcom/diotek/dhwr/DHWR;->candidatelist_:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_4

    .line 1206
    const/4 v13, 0x0

    .line 1207
    .local v13, "suggestionLength":I
    sget-object v1, Lcom/diotek/dhwr/DHWR;->candidatelist_:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 1208
    .local v8, "candidateListSize":I
    const/4 v10, 0x0

    .local v10, "idx":I
    :goto_2
    if-ge v10, v8, :cond_3

    .line 1209
    sget-object v1, Lcom/diotek/dhwr/DHWR;->candidatelist_:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/diotek/dhwr/DHWR$Candidate;

    iget-object v1, v1, Lcom/diotek/dhwr/DHWR$Candidate;->candlist_:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v13, v1

    .line 1210
    add-int/lit8 v1, v8, -0x1

    if-ge v10, v1, :cond_0

    .line 1211
    add-int/lit8 v13, v13, 0x1

    .line 1208
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 1188
    .end local v0    # "newRecognizedString":Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;
    .end local v8    # "candidateListSize":I
    .end local v9    # "endIndex":I
    .end local v10    # "idx":I
    .end local v11    # "resultArraySize":I
    .end local v12    # "startIndex":I
    .end local v13    # "suggestionLength":I
    :cond_1
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mStrRect:Landroid/graphics/RectF;

    iget v3, v1, Landroid/graphics/RectF;->left:F

    goto/16 :goto_0

    :cond_2
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mStrRect:Landroid/graphics/RectF;

    iget v4, v1, Landroid/graphics/RectF;->top:F

    goto :goto_1

    .line 1214
    .restart local v0    # "newRecognizedString":Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;
    .restart local v8    # "candidateListSize":I
    .restart local v9    # "endIndex":I
    .restart local v10    # "idx":I
    .restart local v11    # "resultArraySize":I
    .restart local v12    # "startIndex":I
    .restart local v13    # "suggestionLength":I
    :cond_3
    sub-int v12, v9, v13

    .line 1219
    .end local v8    # "candidateListSize":I
    .end local v10    # "idx":I
    .end local v13    # "suggestionLength":I
    :cond_4
    invoke-direct {p0, v12, v9, v11}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->setChangedTextIndex(III)V

    .line 1221
    .end local v9    # "endIndex":I
    .end local v11    # "resultArraySize":I
    .end local v12    # "startIndex":I
    :cond_5
    return-void
.end method

.method private setSettingValues()V
    .locals 0

    .prologue
    .line 972
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->handleHwrSettingValue()V

    .line 973
    return-void
.end method

.method private setStringOnRecognizedStringWrapper(Ljava/util/ArrayList;Ljava/lang/String;Landroid/graphics/RectF;)V
    .locals 34
    .param p2, "string"    # Ljava/lang/String;
    .param p3, "resultRect"    # Landroid/graphics/RectF;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/graphics/RectF;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/diotek/ime/framework/engine/dhwr/CannotSetStringOnHereException;
        }
    .end annotation

    .prologue
    .line 1006
    .local p1, "recognizedStringWrapperList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;>;"
    sget-boolean v30, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v30, :cond_0

    .line 1007
    const-string v30, "SamsungIME"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "setStringOnRecognizedStringClass : "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " / "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " / "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mThreadWriting:Z

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " isOldRecognizedStringArray : "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mRecognizedStringsController:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->getOldRecognizedStringArray()Ljava/util/ArrayList;

    move-result-object v32

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->resetChangedTextIndex()V

    .line 1020
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v30

    if-eqz v30, :cond_2

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    move-result v30

    invoke-static/range {v30 .. v30}, Lcom/diotek/ime/framework/common/InputSequenceCheck;->getThaiCharType(I)I

    move-result v30

    const/16 v31, 0x6

    move/from16 v0, v30

    move/from16 v1, v31

    if-gt v0, v1, :cond_2

    .line 1180
    :cond_1
    :goto_0
    return-void

    .line 1023
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mStrRect:Landroid/graphics/RectF;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 1027
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 1028
    .local v17, "listSize":I
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 1029
    .local v15, "listForRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    move/from16 v0, v17

    if-ge v7, v0, :cond_4

    .line 1030
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;

    .line 1031
    .local v23, "recognizedStringWrapper":Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;
    invoke-virtual/range {v23 .. v23}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->isEmpty()Z

    move-result v30

    if-eqz v30, :cond_3

    .line 1032
    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1029
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1035
    .end local v23    # "recognizedStringWrapper":Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;
    :cond_4
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 1036
    .local v16, "listForRemoveSize":I
    const/4 v7, 0x0

    :goto_2
    move/from16 v0, v16

    if-ge v7, v0, :cond_5

    .line 1037
    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1036
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1039
    :cond_5
    const/4 v15, 0x0

    .line 1041
    move-object/from16 v22, p2

    .line 1043
    .local v22, "recognizedString":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->getTextFontSize(Ljava/lang/String;Landroid/graphics/RectF;)I

    move-result v6

    .line 1045
    .local v6, "fontSize":I
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v30

    if-eqz v30, :cond_15

    .line 1046
    const/4 v11, 0x0

    .line 1047
    .local v11, "isSameStrArea":Z
    const/4 v12, 0x0

    .line 1048
    .local v12, "isSameStrLine":Z
    const-wide/high16 v18, -0x4010000000000000L

    .line 1049
    .local v18, "maxSizeOfOverlap":D
    const/4 v9, -0x1

    .line 1050
    .local v9, "indexOfMaxSizeOfOverlap":I
    const/4 v10, -0x1

    .line 1052
    .local v10, "indexOfSameLine":I
    const/4 v8, 0x0

    .line 1054
    .local v8, "index":I
    :goto_3
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v30

    move/from16 v0, v30

    if-ge v8, v0, :cond_a

    .line 1055
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;

    .line 1058
    .local v29, "tempRecognizedStringWrapper":Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mStrRect:Landroid/graphics/RectF;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->isSameArea(Landroid/graphics/RectF;)Z

    move-result v30

    if-eqz v30, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mThreadWriting:Z

    move/from16 v30, v0

    if-nez v30, :cond_6

    .line 1059
    const/4 v11, 0x1

    .line 1060
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mStrRect:Landroid/graphics/RectF;

    move-object/from16 v30, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->setOverlapStartAndEndPoint(Landroid/graphics/RectF;Ljava/lang/String;)V

    .line 1061
    invoke-virtual/range {v29 .. v29}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->getCalculatedOverlap()D

    move-result-wide v30

    cmpl-double v30, v30, v18

    if-lez v30, :cond_6

    .line 1062
    invoke-virtual/range {v29 .. v29}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->getCalculatedOverlap()D

    move-result-wide v18

    .line 1063
    move v9, v8

    .line 1071
    :cond_6
    if-nez v11, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mStrRect:Landroid/graphics/RectF;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->isSameLine(Landroid/graphics/RectF;)Z

    move-result v30

    if-nez v30, :cond_7

    invoke-direct/range {p0 .. p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->getEngineLanguage()I

    move-result v30

    const/16 v31, 0x7c

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_9

    .line 1072
    :cond_7
    const/4 v12, 0x1

    .line 1073
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v29}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->getRecognizedStringArea()Landroid/graphics/RectF;

    move-result-object v31

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v31, v0

    cmpl-float v30, v30, v31

    if-gez v30, :cond_8

    const/16 v30, -0x1

    move/from16 v0, v30

    if-ne v10, v0, :cond_9

    .line 1075
    :cond_8
    move v10, v8

    .line 1078
    :cond_9
    add-int/lit8 v8, v8, 0x1

    .line 1079
    goto :goto_3

    .line 1082
    .end local v29    # "tempRecognizedStringWrapper":Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;
    :cond_a
    if-eqz v11, :cond_10

    .line 1083
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;

    .line 1086
    .local v28, "tempRecognizedStringClass":Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mRecognizedStringsController:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->getOldRecognizedStringArray()Ljava/util/ArrayList;

    move-result-object v30

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_f

    .line 1088
    invoke-virtual/range {v28 .. v28}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->getStartIndexOfChangeString()I

    move-result v25

    .line 1090
    .local v25, "startIndexOfChangeString":I
    if-eqz v25, :cond_b

    .line 1091
    sget-object v30, Lcom/diotek/dhwr/DHWR;->candidatelist_:Ljava/util/ArrayList;

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/diotek/dhwr/DHWR$Candidate;

    .line 1092
    .local v5, "cand":Lcom/diotek/dhwr/DHWR$Candidate;
    iget-object v0, v5, Lcom/diotek/dhwr/DHWR$Candidate;->candlist_:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/String;

    invoke-virtual/range {v28 .. v28}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->getRecognizedStringArea()Landroid/graphics/RectF;

    move-result-object v31

    invoke-virtual/range {v28 .. v28}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->getFontSize()I

    move-result v32

    invoke-virtual/range {v28 .. v28}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->getBaseline()F

    move-result v33

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    move/from16 v3, v32

    move/from16 v4, v33

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->changeCorrectStringUpperLowerCaseUsingRect(Ljava/lang/String;Landroid/graphics/RectF;IF)Ljava/lang/String;

    move-result-object v26

    .line 1097
    .local v26, "str":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->changeSuggestionForChangeLowerUpper(Ljava/lang/String;)V

    .line 1099
    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v30

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v31

    move-object/from16 v0, v22

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v27

    .line 1101
    .local v27, "strSub":Ljava/lang/String;
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 1103
    .end local v5    # "cand":Lcom/diotek/dhwr/DHWR$Candidate;
    .end local v26    # "str":Ljava/lang/String;
    .end local v27    # "strSub":Ljava/lang/String;
    :cond_b
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v30

    add-int v30, v30, v25

    add-int/lit8 v30, v30, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v30

    invoke-direct {v0, v1, v2, v9}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->setChangedTextIndex(III)V

    .line 1123
    .end local v25    # "startIndexOfChangeString":I
    :cond_c
    :goto_4
    const-string v30, " "

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v13

    .line 1124
    .local v13, "lastWordIndex":I
    const/16 v30, -0x1

    move/from16 v0, v30

    if-eq v13, v0, :cond_d

    .line 1125
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v30

    sub-int v14, v30, v13

    .line 1126
    .local v14, "length":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mChangedTextStartIndex:I

    move/from16 v30, v0

    add-int v30, v30, v14

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mChangedTextStartIndex:I

    .line 1127
    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mChangedTextEndIndex:I

    move/from16 v30, v0

    add-int v30, v30, v14

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mChangedTextEndIndex:I

    .line 1129
    .end local v14    # "length":I
    :cond_d
    move-object/from16 v0, v28

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->modifyRecognizedString(Ljava/lang/String;)V

    .line 1179
    .end local v8    # "index":I
    .end local v9    # "indexOfMaxSizeOfOverlap":I
    .end local v10    # "indexOfSameLine":I
    .end local v11    # "isSameStrArea":Z
    .end local v12    # "isSameStrLine":Z
    .end local v13    # "lastWordIndex":I
    .end local v18    # "maxSizeOfOverlap":D
    .end local v28    # "tempRecognizedStringClass":Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;
    :cond_e
    :goto_5
    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mThreadWriting:Z

    goto/16 :goto_0

    .line 1108
    .restart local v8    # "index":I
    .restart local v9    # "indexOfMaxSizeOfOverlap":I
    .restart local v10    # "indexOfSameLine":I
    .restart local v11    # "isSameStrArea":Z
    .restart local v12    # "isSameStrLine":Z
    .restart local v18    # "maxSizeOfOverlap":D
    .restart local v28    # "tempRecognizedStringClass":Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;
    :cond_f
    sget-object v30, Lcom/diotek/dhwr/DHWR;->candidatelist_:Ljava/util/ArrayList;

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/diotek/dhwr/DHWR$Candidate;

    .line 1109
    .restart local v5    # "cand":Lcom/diotek/dhwr/DHWR$Candidate;
    iget-object v0, v5, Lcom/diotek/dhwr/DHWR$Candidate;->candlist_:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/String;

    invoke-virtual/range {v28 .. v28}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->getRecognizedStringArea()Landroid/graphics/RectF;

    move-result-object v31

    invoke-virtual/range {v28 .. v28}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->getFontSize()I

    move-result v32

    invoke-virtual/range {v28 .. v28}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->getBaseline()F

    move-result v33

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    move/from16 v3, v32

    move/from16 v4, v33

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->changeCorrectStringUpperLowerCaseUsingRect(Ljava/lang/String;Landroid/graphics/RectF;IF)Ljava/lang/String;

    move-result-object v26

    .line 1114
    .restart local v26    # "str":Ljava/lang/String;
    if-eqz v26, :cond_c

    .line 1115
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->changeSuggestionForChangeLowerUpper(Ljava/lang/String;)V

    .line 1117
    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v30

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v31

    move-object/from16 v0, v22

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v27

    .line 1119
    .restart local v27    # "strSub":Ljava/lang/String;
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_4

    .line 1131
    .end local v5    # "cand":Lcom/diotek/dhwr/DHWR$Candidate;
    .end local v26    # "str":Ljava/lang/String;
    .end local v27    # "strSub":Ljava/lang/String;
    .end local v28    # "tempRecognizedStringClass":Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;
    :cond_10
    if-eqz v12, :cond_14

    .line 1132
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;

    .line 1134
    .restart local v28    # "tempRecognizedStringClass":Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;
    invoke-virtual/range {v28 .. v28}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->getRecognizedString()Ljava/lang/String;

    move-result-object v21

    .line 1136
    .local v21, "preString":Ljava/lang/String;
    sget-object v30, Lcom/diotek/dhwr/DHWR;->candidatelist_:Ljava/util/ArrayList;

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v30

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_11

    .line 1137
    sget-object v30, Lcom/diotek/dhwr/DHWR;->candidatelist_:Ljava/util/ArrayList;

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/diotek/dhwr/DHWR$Candidate;

    .line 1138
    .restart local v5    # "cand":Lcom/diotek/dhwr/DHWR$Candidate;
    iget-object v0, v5, Lcom/diotek/dhwr/DHWR$Candidate;->candlist_:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/String;

    invoke-virtual/range {v28 .. v28}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->getRecognizedStringArea()Landroid/graphics/RectF;

    move-result-object v31

    invoke-virtual/range {v28 .. v28}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->getFontSize()I

    move-result v32

    invoke-virtual/range {v28 .. v28}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->getBaseline()F

    move-result v33

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    move/from16 v3, v32

    move/from16 v4, v33

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->changeCorrectStringUpperLowerCaseUsingRect(Ljava/lang/String;Landroid/graphics/RectF;IF)Ljava/lang/String;

    move-result-object v26

    .line 1143
    .restart local v26    # "str":Ljava/lang/String;
    if-eqz v26, :cond_1

    .line 1146
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->changeSuggestionForChangeLowerUpper(Ljava/lang/String;)V

    .line 1148
    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v30

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v31

    move-object/from16 v0, v22

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v27

    .line 1150
    .restart local v27    # "strSub":Ljava/lang/String;
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 1153
    .end local v5    # "cand":Lcom/diotek/dhwr/DHWR$Candidate;
    .end local v26    # "str":Ljava/lang/String;
    .end local v27    # "strSub":Ljava/lang/String;
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mStrRect:Landroid/graphics/RectF;

    move-object/from16 v30, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v22

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->addNewString(Ljava/lang/String;Landroid/graphics/RectF;)I

    move-result v20

    .line 1156
    .local v20, "position":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mRecognizedStringsController:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->getOldRecognizedStringArray()Ljava/util/ArrayList;

    move-result-object v30

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_e

    .line 1158
    invoke-virtual/range {v28 .. v28}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->getRecognizedString()Ljava/lang/String;

    move-result-object v24

    .line 1159
    .local v24, "resultString":Ljava/lang/String;
    const/16 v30, 0x1

    move/from16 v0, v20

    move/from16 v1, v30

    if-ne v0, v1, :cond_12

    .line 1160
    const/16 v30, 0x0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v31

    add-int/lit8 v31, v31, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2, v10}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->setChangedTextIndex(III)V

    goto/16 :goto_5

    .line 1161
    :cond_12
    const/16 v30, 0x3

    move/from16 v0, v20

    move/from16 v1, v30

    if-ne v0, v1, :cond_13

    .line 1162
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v30

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v31

    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2, v10}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->setChangedTextIndex(III)V

    goto/16 :goto_5

    .line 1165
    :cond_13
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v30

    add-int/lit8 v30, v30, 0x1

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v31

    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2, v10}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->setChangedTextIndex(III)V

    goto/16 :goto_5

    .line 1170
    .end local v20    # "position":I
    .end local v21    # "preString":Ljava/lang/String;
    .end local v24    # "resultString":Ljava/lang/String;
    .end local v28    # "tempRecognizedStringClass":Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;
    :cond_14
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2, v6}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->setNewStringOnRecognizedStringWrapper(Ljava/util/ArrayList;Ljava/lang/String;I)V

    goto/16 :goto_5

    .line 1175
    .end local v8    # "index":I
    .end local v9    # "indexOfMaxSizeOfOverlap":I
    .end local v10    # "indexOfSameLine":I
    .end local v11    # "isSameStrArea":Z
    .end local v12    # "isSameStrLine":Z
    .end local v18    # "maxSizeOfOverlap":D
    :cond_15
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->clear()V

    .line 1176
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2, v6}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->setNewStringOnRecognizedStringWrapper(Ljava/util/ArrayList;Ljava/lang/String;I)V

    goto/16 :goto_5
.end method

.method private showLicenseToast()V
    .locals 4

    .prologue
    .line 1898
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mToastHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    const-string v3, "Invalid license"

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1899
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mToastHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1900
    return-void
.end method

.method private threadSafeRecog(Z)I
    .locals 3
    .param p1, "complete"    # Z

    .prologue
    .line 1903
    sget-boolean v1, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1904
    const-string v1, "SamsungIME"

    const-string v2, "threadSafeRecog()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1907
    :cond_0
    iget-boolean v1, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mIsLoadedHDICfile:Z

    if-nez v1, :cond_1

    .line 1908
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "not loaded hdic files"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1914
    :cond_1
    invoke-static {p1}, Lcom/diotek/dhwr/DHWR;->Recognize(Z)I

    move-result v0

    .line 1915
    .local v0, "ret":I
    if-eqz p1, :cond_2

    .line 1916
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->clearInk()V

    .line 1918
    :cond_2
    return v0
.end method


# virtual methods
.method public clearContext()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2414
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->clearInk()V

    .line 2415
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mHwrPathController:Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->clear()V

    .line 2416
    iput v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mActiveIndex:I

    .line 2417
    iput v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mSuggestionCount:I

    .line 2418
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mSuggestions:Ljava/util/List;

    .line 2419
    return v1
.end method

.method public clearInkContext()I
    .locals 1

    .prologue
    .line 2424
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->clearInk()V

    .line 2425
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mHwrPathController:Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->clear()V

    .line 2426
    const/4 v0, 0x0

    return v0
.end method

.method public freeResources()I
    .locals 1

    .prologue
    .line 2431
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mSuggestions:Ljava/util/List;

    .line 2432
    const/4 v0, 0x0

    return v0
.end method

.method public getAvailableLanguages()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 2611
    iget-boolean v10, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mIsValidModel:Z

    if-nez v10, :cond_1

    move-object v8, v9

    .line 2644
    :cond_0
    return-object v8

    .line 2615
    :cond_1
    invoke-static {}, Lcom/diotek/dhwr/DHWR;->AvailableLanguageList()Ljava/lang/String;

    move-result-object v1

    .line 2616
    .local v1, "availableLanguageList":Ljava/lang/String;
    const-string v10, ","

    invoke-virtual {v1, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 2618
    .local v2, "engineSupportLanguageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2620
    .local v8, "supportLanguageIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2621
    .local v0, "availableLanguage":Ljava/lang/String;
    const-string v10, "_"

    invoke-virtual {v0, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 2622
    .local v4, "index":I
    const/4 v10, -0x1

    if-eq v4, v10, :cond_5

    .line 2623
    const/4 v10, 0x0

    invoke-virtual {v0, v10, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 2624
    .local v6, "language":Ljava/lang/String;
    add-int/lit8 v10, v4, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v0, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 2625
    .local v7, "locale":Ljava/lang/String;
    if-eqz v6, :cond_3

    .line 2626
    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v6, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    .line 2628
    :cond_3
    if-eqz v7, :cond_4

    .line 2629
    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v7, v10}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    .line 2631
    :cond_4
    invoke-static {v6, v7}, Lcom/diotek/ime/framework/common/LanguageID;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 2632
    .local v5, "languadeId":I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2634
    .end local v5    # "languadeId":I
    .end local v6    # "language":Ljava/lang/String;
    .end local v7    # "locale":Ljava/lang/String;
    :cond_5
    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 2635
    const-string v10, "no"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 2636
    const-string v0, "nb"

    .line 2640
    :cond_6
    invoke-static {v0, v9}, Lcom/diotek/ime/framework/common/LanguageID;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 2641
    .restart local v5    # "languadeId":I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2637
    .end local v5    # "languadeId":I
    :cond_7
    const-string v10, "bn"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    const-string v10, "hi"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    goto :goto_0
.end method

.method public getContextAwareUniqueID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2656
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHwrSuggestion(Ljava/util/ArrayList;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p1, "outCharSequences":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v1, 0x0

    .line 2382
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mSuggestions:Ljava/util/List;

    if-nez v0, :cond_1

    .line 2389
    :cond_0
    :goto_0
    return v1

    .line 2385
    :cond_1
    if-eqz p1, :cond_0

    .line 2386
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 2387
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mSuggestions:Ljava/util/List;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public getLanguageIDForEngine(I)I
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 2182
    const/4 v0, 0x0

    .line 2184
    .local v0, "engineLang":I
    sparse-switch p1, :sswitch_data_0

    .line 2336
    :goto_0
    return v0

    .line 2186
    :sswitch_0
    const/16 v0, 0x74

    .line 2187
    goto :goto_0

    .line 2189
    :sswitch_1
    const/16 v0, 0x76

    .line 2190
    goto :goto_0

    .line 2192
    :sswitch_2
    const/16 v0, 0x75

    .line 2193
    goto :goto_0

    .line 2195
    :sswitch_3
    const/16 v0, 0x7b

    .line 2196
    goto :goto_0

    .line 2198
    :sswitch_4
    const/16 v0, 0xa

    .line 2199
    goto :goto_0

    .line 2201
    :sswitch_5
    const/16 v0, 0x10

    .line 2202
    goto :goto_0

    .line 2204
    :sswitch_6
    const/16 v0, 0x7c

    .line 2205
    goto :goto_0

    .line 2207
    :sswitch_7
    const/16 v0, 0x1e

    .line 2208
    goto :goto_0

    .line 2210
    :sswitch_8
    const/16 v0, 0x8

    .line 2211
    goto :goto_0

    .line 2213
    :sswitch_9
    const/4 v0, 0x6

    .line 2214
    goto :goto_0

    .line 2216
    :sswitch_a
    const/16 v0, 0x12

    .line 2217
    goto :goto_0

    .line 2219
    :sswitch_b
    const/16 v0, 0x13

    .line 2220
    goto :goto_0

    .line 2222
    :sswitch_c
    const/16 v0, 0xf

    .line 2223
    goto :goto_0

    .line 2225
    :sswitch_d
    const/16 v0, 0x14

    .line 2226
    goto :goto_0

    .line 2228
    :sswitch_e
    const/16 v0, 0x18

    .line 2229
    goto :goto_0

    .line 2231
    :sswitch_f
    const/16 v0, 0x1a

    .line 2232
    goto :goto_0

    .line 2234
    :sswitch_10
    const/16 v0, 0x1b

    .line 2235
    goto :goto_0

    .line 2237
    :sswitch_11
    const/16 v0, 0xb

    .line 2238
    goto :goto_0

    .line 2240
    :sswitch_12
    const/16 v0, 0x1c

    .line 2241
    goto :goto_0

    .line 2243
    :sswitch_13
    const/16 v0, 0x23

    .line 2244
    goto :goto_0

    .line 2246
    :sswitch_14
    const/16 v0, 0x22

    .line 2247
    goto :goto_0

    .line 2249
    :sswitch_15
    const/16 v0, 0x27

    .line 2250
    goto :goto_0

    .line 2252
    :sswitch_16
    const/16 v0, 0x24

    .line 2253
    goto :goto_0

    .line 2255
    :sswitch_17
    const/16 v0, 0x19

    .line 2256
    goto :goto_0

    .line 2258
    :sswitch_18
    const/16 v0, 0x29

    .line 2259
    goto :goto_0

    .line 2265
    :sswitch_19
    const/4 v0, 0x0

    .line 2266
    goto :goto_0

    .line 2268
    :sswitch_1a
    const/16 v0, 0x65

    .line 2269
    goto :goto_0

    .line 2271
    :sswitch_1b
    const/4 v0, 0x3

    .line 2272
    goto :goto_0

    .line 2274
    :sswitch_1c
    const/16 v0, 0x9

    .line 2275
    goto :goto_0

    .line 2277
    :sswitch_1d
    const/16 v0, 0x15

    .line 2278
    goto :goto_0

    .line 2282
    :sswitch_1e
    const/16 v0, 0xc

    .line 2283
    goto :goto_0

    .line 2285
    :sswitch_1f
    const/4 v0, 0x7

    .line 2286
    goto :goto_0

    .line 2290
    :sswitch_20
    const/16 v0, 0xe

    .line 2291
    goto :goto_0

    .line 2293
    :sswitch_21
    const/16 v0, 0x11

    .line 2294
    goto :goto_0

    .line 2297
    :sswitch_22
    const/16 v0, 0x16

    .line 2298
    goto :goto_0

    .line 2300
    :sswitch_23
    const/16 v0, 0x17

    .line 2301
    goto :goto_0

    .line 2303
    :sswitch_24
    const/16 v0, 0x1d

    .line 2304
    goto :goto_0

    .line 2306
    :sswitch_25
    const/16 v0, 0x67

    .line 2307
    goto :goto_0

    .line 2309
    :sswitch_26
    const/16 v0, 0x6f

    .line 2310
    goto :goto_0

    .line 2312
    :sswitch_27
    const/16 v0, 0x67

    .line 2313
    goto :goto_0

    .line 2315
    :sswitch_28
    const/16 v0, 0x6b

    .line 2316
    goto :goto_0

    .line 2318
    :sswitch_29
    const/4 v0, 0x4

    .line 2319
    goto :goto_0

    .line 2321
    :sswitch_2a
    const/4 v0, 0x5

    .line 2322
    goto :goto_0

    .line 2324
    :sswitch_2b
    const/16 v0, 0x3a

    .line 2325
    goto :goto_0

    .line 2327
    :sswitch_2c
    const/16 v0, 0x25

    .line 2328
    goto/16 :goto_0

    .line 2330
    :sswitch_2d
    const/16 v0, 0xd

    .line 2331
    goto/16 :goto_0

    .line 2333
    :sswitch_2e
    const/16 v0, 0x70

    goto/16 :goto_0

    .line 2184
    nop

    :sswitch_data_0
    .sparse-switch
        0x61720000 -> :sswitch_0
        0x62670000 -> :sswitch_14
        0x63610000 -> :sswitch_2a
        0x63730000 -> :sswitch_1f
        0x64610000 -> :sswitch_8
        0x64650000 -> :sswitch_1b
        0x656c0000 -> :sswitch_13
        0x656e0000 -> :sswitch_19
        0x656e4742 -> :sswitch_19
        0x656e5553 -> :sswitch_19
        0x65730000 -> :sswitch_20
        0x65734553 -> :sswitch_20
        0x65735553 -> :sswitch_20
        0x65740000 -> :sswitch_4
        0x65750000 -> :sswitch_29
        0x66610000 -> :sswitch_2
        0x66690000 -> :sswitch_11
        0x66720000 -> :sswitch_1e
        0x66724341 -> :sswitch_1e
        0x66724652 -> :sswitch_1e
        0x67610000 -> :sswitch_2d
        0x676c0000 -> :sswitch_2b
        0x68720000 -> :sswitch_9
        0x68750000 -> :sswitch_c
        0x69640000 -> :sswitch_19
        0x69730000 -> :sswitch_5
        0x69740000 -> :sswitch_21
        0x69770000 -> :sswitch_3
        0x6a610000 -> :sswitch_2e
        0x6b6b0000 -> :sswitch_16
        0x6b6f0000 -> :sswitch_1a
        0x6c740000 -> :sswitch_b
        0x6c760000 -> :sswitch_a
        0x6d6b0000 -> :sswitch_2c
        0x6d730000 -> :sswitch_19
        0x6e620000 -> :sswitch_d
        0x6e6c0000 -> :sswitch_1c
        0x706c0000 -> :sswitch_1d
        0x70740000 -> :sswitch_22
        0x70744252 -> :sswitch_23
        0x70745054 -> :sswitch_22
        0x726f0000 -> :sswitch_e
        0x72750000 -> :sswitch_15
        0x736b0000 -> :sswitch_f
        0x736c0000 -> :sswitch_10
        0x73720000 -> :sswitch_17
        0x73760000 -> :sswitch_12
        0x74680000 -> :sswitch_6
        0x74720000 -> :sswitch_24
        0x756b0000 -> :sswitch_18
        0x75720000 -> :sswitch_1
        0x76690000 -> :sswitch_7
        0x7a680000 -> :sswitch_25
        0x7a68434e -> :sswitch_27
        0x7a68484b -> :sswitch_26
        0x7a685457 -> :sswitch_28
    .end sparse-switch
.end method

.method public init()I
    .locals 6

    .prologue
    const/16 v4, 0x8

    const/4 v5, 0x0

    .line 191
    sget-boolean v2, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 192
    const-string v2, "SamsungIME"

    const-string v3, "DHWR Wrapper.init()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_0
    const/4 v1, 0x0

    .line 196
    .local v1, "errorCode":I
    new-array v0, v4, [B

    .line 197
    .local v0, "debugLebel":[B
    const/4 v2, 0x1

    aput-byte v2, v0, v5

    .line 199
    invoke-static {v4, v0}, Lcom/diotek/dhwr/DHWR;->SetParam(I[B)I

    move-result v1

    .line 200
    if-eqz v1, :cond_1

    .line 201
    sget-boolean v2, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    if-eqz v2, :cond_1

    .line 202
    const-string v2, "SamsungIME"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DHWRWrapper SetParam LOG_LEVEL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_1
    const-string v2, "/system/hdic/"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-static {v2}, Lcom/diotek/dhwr/DHWR;->SetExternalResourcePath([C)I

    .line 213
    invoke-static {}, Lcom/diotek/dhwr/DHWR;->Create()I

    move-result v1

    .line 214
    if-eqz v1, :cond_4

    .line 215
    sget-boolean v2, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    if-eqz v2, :cond_2

    .line 216
    const-string v2, "SamsungIME"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DHWRWrapper create.Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_2
    const/4 v2, 0x7

    if-eq v1, v2, :cond_3

    const/4 v2, 0x6

    if-eq v1, v2, :cond_3

    const/16 v2, 0xd

    if-ne v1, v2, :cond_4

    .line 221
    :cond_3
    iput-boolean v5, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mIsValidModel:Z

    .line 225
    :cond_4
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->clearInk()V

    .line 227
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mSuggestions:Ljava/util/List;

    if-nez v2, :cond_5

    .line 228
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mSuggestions:Ljava/util/List;

    .line 230
    :cond_5
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->setSettingValues()V

    .line 231
    invoke-static {}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->getInstance()Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;

    move-result-object v2

    iput-object v2, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mHwrPathController:Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;

    .line 232
    invoke-static {}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->getInstance()Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    move-result-object v2

    iput-object v2, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mRecognizedStringsController:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    .line 233
    invoke-static {}, Lcom/diotek/ime/framework/common/FontManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/FontManager;

    move-result-object v2

    iput-object v2, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mFontManager:Lcom/diotek/ime/framework/common/FontManager;

    .line 234
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mFontManager:Lcom/diotek/ime/framework/common/FontManager;

    const-string v3, "ROSEMARY"

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-interface {v2, v3, v4}, Lcom/diotek/ime/framework/common/FontManager;->getFont(Ljava/lang/String;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-result-object v2

    iput-object v2, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mCompleteStringFont:Landroid/graphics/Typeface;

    .line 237
    return v5
.end method

.method public inputKey(I)I
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 2347
    packed-switch p1, :pswitch_data_0

    .line 2351
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 2349
    :pswitch_0
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->clearRecognizedStringReset()V

    goto :goto_0

    .line 2347
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method

.method public inputStrokeData(III)Z
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "action"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2356
    packed-switch p3, :pswitch_data_0

    .line 2377
    :goto_0
    return v4

    .line 2358
    :pswitch_0
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mHwrPathController:Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2, v4}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->addPoint(FFI)Z

    .line 2360
    int-to-short v0, p1

    int-to-short v1, p2

    invoke-direct {p0, v0, v1, v4}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->addPoint(SSZ)Z

    goto :goto_0

    .line 2363
    :pswitch_1
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mHwrPathController:Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2, v5}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->addPoint(FFI)Z

    .line 2365
    int-to-short v0, p1

    int-to-short v1, p2

    invoke-direct {p0, v0, v1, v4}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->addPoint(SSZ)Z

    goto :goto_0

    .line 2368
    :pswitch_2
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mHwrPathController:Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;

    int-to-float v1, p1

    int-to-float v2, p2

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->addPoint(FFI)Z

    .line 2370
    int-to-short v0, p1

    int-to-short v1, p2

    invoke-direct {p0, v0, v1, v5}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->addPoint(SSZ)Z

    goto :goto_0

    .line 2373
    :pswitch_3
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mHwrPathController:Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->clear()V

    .line 2374
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->clearInk()V

    goto :goto_0

    .line 2356
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public isContainInLanguageDB(Ljava/lang/String;)Z
    .locals 1
    .param p1, "word"    # Ljava/lang/String;

    .prologue
    .line 2661
    const/4 v0, 0x0

    return v0
.end method

.method public isSentenceTermPunct(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 2671
    const/4 v0, 0x0

    return v0
.end method

.method public isSentenceTermPunct(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p1, "buffer"    # Ljava/lang/CharSequence;

    .prologue
    .line 2666
    const/4 v0, 0x0

    return v0
.end method

.method public isTextCharacter(I)Z
    .locals 6
    .param p1, "code"    # I

    .prologue
    const/16 v5, 0xa

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2444
    sget-boolean v0, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2445
    const-string v3, "SamsungIME"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isTextCharacter() : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mRecognizedStringsController:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->getOldRecognizedStringArray()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    if-ne p1, v5, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2451
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mRecognizedStringsController:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->getOldRecognizedStringArray()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    if-ne p1, v5, :cond_2

    .line 2455
    :goto_1
    return v1

    :cond_1
    move v0, v2

    .line 2445
    goto :goto_0

    :cond_2
    move v1, v2

    .line 2455
    goto :goto_1
.end method

.method public onHwrPanelLongPressed(ILjava/lang/String;)I
    .locals 1
    .param p1, "selectedArrayIndex"    # I
    .param p2, "resultString"    # Ljava/lang/String;

    .prologue
    .line 2594
    iput p1, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mSelectedArrayIndex:I

    .line 2595
    const/4 v0, 0x0

    return v0
.end method

.method public recognize(IZ)I
    .locals 6
    .param p1, "type"    # I
    .param p2, "complete"    # Z

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x0

    .line 2460
    const/4 v2, 0x0

    .line 2462
    .local v2, "returnValue":I
    packed-switch p1, :pswitch_data_0

    .line 2509
    :cond_0
    :goto_0
    return v2

    .line 2464
    :pswitch_0
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->recognizeGestureAll()I

    move-result v2

    .line 2465
    packed-switch v2, :pswitch_data_1

    goto :goto_0

    .line 2468
    :pswitch_1
    if-eqz p2, :cond_0

    .line 2469
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->clearHwrPathController()V

    .line 2470
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->clearInk()V

    goto :goto_0

    .line 2477
    :pswitch_2
    if-eqz p2, :cond_0

    .line 2478
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->clearHwrPathController()V

    .line 2479
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->clearInk()V

    goto :goto_0

    .line 2485
    :pswitch_3
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5, v2, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 2486
    .local v0, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2487
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->clearInk()V

    goto :goto_0

    .line 2491
    .end local v0    # "msg":Landroid/os/Message;
    :pswitch_4
    if-eqz p2, :cond_0

    .line 2492
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5, v2, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 2493
    .local v1, "msg1":Landroid/os/Message;
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2494
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->clearInk()V

    goto :goto_0

    .line 2501
    .end local v1    # "msg1":Landroid/os/Message;
    :pswitch_5
    invoke-direct {p0, p2}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->recognizeCompleteMode(Z)I

    move-result v2

    .line 2502
    goto :goto_0

    .line 2504
    :pswitch_6
    invoke-direct {p0, p2}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->recognizeUnitMode(Z)I

    move-result v2

    .line 2505
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mHwrPathController:Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->clear()V

    goto :goto_0

    .line 2462
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 2465
    :pswitch_data_1
    .packed-switch 0x7d1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public setContextAwareUniqueID(Ljava/lang/String;)V
    .locals 0
    .param p1, "contextAwareUniqueID"    # Ljava/lang/String;

    .prologue
    .line 2651
    return-void
.end method

.method public setHwrPanelRect(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 2600
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mHwrPanelRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2601
    const/16 v0, 0x28

    invoke-static {p1, p2, p3, p4, v0}, Lcom/diotek/dhwr/DHWR;->SetWritingArea(IIIII)I

    .line 2602
    return-void
.end method

.method public setOnInputStrokeCallback(Lcom/diotek/ime/framework/engine/dhwr/AddStroke;)V
    .locals 0
    .param p1, "callBack"    # Lcom/diotek/ime/framework/engine/dhwr/AddStroke;

    .prologue
    .line 2606
    iput-object p1, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mAddStrokeCallBack:Lcom/diotek/ime/framework/engine/dhwr/AddStroke;

    .line 2607
    return-void
.end method

.method public setUsingLanguage(I)I
    .locals 1
    .param p1, "languageCode"    # I

    .prologue
    .line 2341
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->getLanguageIDForEngine(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->setEngineLanguage(I)V

    .line 2342
    const/4 v0, 0x0

    return v0
.end method

.method public updateEngine()I
    .locals 3

    .prologue
    .line 2437
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mFontManager:Lcom/diotek/ime/framework/common/FontManager;

    const-string v1, "ROSEMARY"

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/common/FontManager;->getFont(Ljava/lang/String;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mCompleteStringFont:Landroid/graphics/Typeface;

    .line 2439
    const/4 v0, 0x0

    return v0
.end method

.method public wordSelected(ILjava/lang/CharSequence;)I
    .locals 5
    .param p1, "index"    # I
    .param p2, "candidate"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v4, 0x0

    .line 2394
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v2, "SETTINGS_DEFAULT_HWR_RECOGNITION_TYPE"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    .line 2396
    .local v0, "recogMode":I
    if-nez p2, :cond_0

    .line 2409
    :goto_0
    return v4

    .line 2399
    :cond_0
    if-nez v0, :cond_2

    .line 2400
    iget v1, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mSelectedArrayIndex:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 2401
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->changeLastRecognizedStringByForce(Ljava/lang/String;)V

    goto :goto_0

    .line 2403
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->changeRecognizedStringBySuggestion(Ljava/lang/String;)V

    goto :goto_0

    .line 2406
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->changeLastRecognizedStringByForce(Ljava/lang/String;)V

    goto :goto_0
.end method
