.class public Lcom/diotek/ime/framework/input/CompleteHwrInputModule;
.super Lcom/diotek/ime/framework/input/AbstractInputModule;
.source "CompleteHwrInputModule.java"


# instance fields
.field mAddStrokeCallBack:Lcom/diotek/ime/framework/engine/dhwr/AddStroke;

.field mHwrHandler:Landroid/os/Handler;

.field private mRecognizedStringsController:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

.field private mSelectedWord:Ljava/lang/String;

.field private mStrokeCount:I

.field private mThreadRunning:Z

.field private final recognizeThread:Lcom/diotek/ime/framework/input/InputModule$Timer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 171
    invoke-direct {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;-><init>()V

    .line 34
    iput-object v0, p0, Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->mRecognizedStringsController:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    .line 36
    iput v1, p0, Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->mStrokeCount:I

    .line 38
    iput-object v0, p0, Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->mSelectedWord:Ljava/lang/String;

    .line 40
    new-instance v0, Lcom/diotek/ime/framework/input/CompleteHwrInputModule$1;

    invoke-direct {v0, p0}, Lcom/diotek/ime/framework/input/CompleteHwrInputModule$1;-><init>(Lcom/diotek/ime/framework/input/CompleteHwrInputModule;)V

    iput-object v0, p0, Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->mHwrHandler:Landroid/os/Handler;

    .line 127
    iput-boolean v1, p0, Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->mThreadRunning:Z

    .line 128
    new-instance v0, Lcom/diotek/ime/framework/input/CompleteHwrInputModule$2;

    invoke-direct {v0, p0}, Lcom/diotek/ime/framework/input/CompleteHwrInputModule$2;-><init>(Lcom/diotek/ime/framework/input/CompleteHwrInputModule;)V

    iput-object v0, p0, Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->recognizeThread:Lcom/diotek/ime/framework/input/InputModule$Timer;

    .line 901
    new-instance v0, Lcom/diotek/ime/framework/input/CompleteHwrInputModule$3;

    invoke-direct {v0, p0}, Lcom/diotek/ime/framework/input/CompleteHwrInputModule$3;-><init>(Lcom/diotek/ime/framework/input/CompleteHwrInputModule;)V

    iput-object v0, p0, Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->mAddStrokeCallBack:Lcom/diotek/ime/framework/engine/dhwr/AddStroke;

    .line 173
    return-void
.end method

.method static synthetic access$000(Lcom/diotek/ime/framework/input/CompleteHwrInputModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/diotek/ime/framework/input/CompleteHwrInputModule;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->runTheadRecognize()V

    return-void
.end method

.method static synthetic access$100(Lcom/diotek/ime/framework/input/CompleteHwrInputModule;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/framework/input/CompleteHwrInputModule;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->processEnterInput(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/diotek/ime/framework/input/CompleteHwrInputModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/diotek/ime/framework/input/CompleteHwrInputModule;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->clearHwrPath()V

    return-void
.end method

.method static synthetic access$300(Lcom/diotek/ime/framework/input/CompleteHwrInputModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/framework/input/CompleteHwrInputModule;

    .prologue
    .line 33
    iget v0, p0, Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->mStrokeCount:I

    return v0
.end method

.method static synthetic access$302(Lcom/diotek/ime/framework/input/CompleteHwrInputModule;I)I
    .locals 0
    .param p0, "x0"    # Lcom/diotek/ime/framework/input/CompleteHwrInputModule;
    .param p1, "x1"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->mStrokeCount:I

    return p1
.end method

.method static synthetic access$400(Lcom/diotek/ime/framework/input/CompleteHwrInputModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/diotek/ime/framework/input/CompleteHwrInputModule;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->startRecognizeAllTimer()V

    return-void
.end method

.method static synthetic access$500(Lcom/diotek/ime/framework/input/CompleteHwrInputModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/diotek/ime/framework/input/CompleteHwrInputModule;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->recognizeAll()V

    return-void
.end method

.method static synthetic access$602(Lcom/diotek/ime/framework/input/CompleteHwrInputModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/diotek/ime/framework/input/CompleteHwrInputModule;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->mThreadRunning:Z

    return p1
.end method

.method static synthetic access$700(Lcom/diotek/ime/framework/input/CompleteHwrInputModule;)Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/framework/input/CompleteHwrInputModule;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->mRecognizedStringsController:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    return-object v0
.end method

.method static synthetic access$800(Lcom/diotek/ime/framework/input/CompleteHwrInputModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/diotek/ime/framework/input/CompleteHwrInputModule;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->startRecogThreadTimer()V

    return-void
.end method

.method private assembledResultString()Ljava/lang/String;
    .locals 13

    .prologue
    const/4 v12, -0x1

    .line 537
    sget-boolean v10, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v10, :cond_0

    .line 538
    const-string v10, "SamsungIME"

    const-string v11, "assembledResultString start"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    :cond_0
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 542
    .local v5, "resultStringBuffer":Ljava/lang/StringBuffer;
    const/high16 v7, -0x40800000

    .line 543
    .local v7, "stdBottom":F
    iget-object v10, p0, Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->mRecognizedStringsController:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    invoke-virtual {v10}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->getOldRecognizedStringArray()Ljava/util/ArrayList;

    move-result-object v9

    .line 545
    .local v9, "stringArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;>;"
    if-nez v9, :cond_1

    .line 546
    const-string v10, ""

    invoke-virtual {v5, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 547
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    .line 595
    :goto_0
    return-object v10

    .line 549
    :cond_1
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 550
    .local v0, "arraySize":I
    :cond_2
    if-lez v0, :cond_5

    .line 551
    const/4 v6, -0x1

    .line 552
    .local v6, "standardStrIdx":I
    const/4 v8, -0x2

    .line 554
    .local v8, "stdStrIdx":I
    const v1, 0x461c4000

    .line 555
    .local v1, "bottom":F
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 556
    const/4 v3, 0x0

    .local v3, "idx":I
    :goto_1
    if-ge v3, v0, :cond_4

    .line 557
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;

    invoke-virtual {v10}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->getRecognizedStringArea()Landroid/graphics/RectF;

    move-result-object v2

    .line 558
    .local v2, "currentStringRect":Landroid/graphics/RectF;
    iget v10, v2, Landroid/graphics/RectF;->bottom:F

    cmpl-float v10, v1, v10

    if-lez v10, :cond_3

    .line 559
    iget v1, v2, Landroid/graphics/RectF;->bottom:F

    .line 560
    move v6, v3

    .line 556
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 563
    .end local v2    # "currentStringRect":Landroid/graphics/RectF;
    :cond_4
    if-ne v6, v12, :cond_7

    .line 590
    .end local v1    # "bottom":F
    .end local v3    # "idx":I
    .end local v6    # "standardStrIdx":I
    .end local v8    # "stdStrIdx":I
    :cond_5
    sget-boolean v10, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v10, :cond_6

    .line 591
    const-string v10, "SamsungIME"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "assembledResultString resultString : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    :cond_6
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    .line 566
    .restart local v1    # "bottom":F
    .restart local v3    # "idx":I
    .restart local v6    # "standardStrIdx":I
    .restart local v8    # "stdStrIdx":I
    :cond_7
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;

    invoke-virtual {v10}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->getRecognizedStringArea()Landroid/graphics/RectF;

    move-result-object v10

    iget v7, v10, Landroid/graphics/RectF;->bottom:F

    .line 568
    :cond_8
    :goto_2
    if-eq v8, v12, :cond_2

    .line 569
    const/4 v8, -0x1

    .line 570
    const v4, 0x461c4000

    .line 571
    .local v4, "left":F
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 572
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v0, :cond_a

    .line 573
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;

    invoke-virtual {v10}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->getRecognizedStringArea()Landroid/graphics/RectF;

    move-result-object v2

    .line 574
    .restart local v2    # "currentStringRect":Landroid/graphics/RectF;
    iget v10, v2, Landroid/graphics/RectF;->left:F

    cmpl-float v10, v4, v10

    if-lez v10, :cond_9

    iget v10, v2, Landroid/graphics/RectF;->top:F

    cmpg-float v10, v10, v7

    if-gez v10, :cond_9

    .line 576
    iget v4, v2, Landroid/graphics/RectF;->left:F

    .line 577
    move v8, v3

    .line 572
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 580
    .end local v2    # "currentStringRect":Landroid/graphics/RectF;
    :cond_a
    if-eq v8, v12, :cond_8

    .line 581
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;

    invoke-virtual {v10}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->getRecognizedString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 585
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2
.end method

.method private clearHwrPath()V
    .locals 1

    .prologue
    .line 678
    invoke-static {}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->getInstance()Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;

    move-result-object v0

    .line 679
    .local v0, "hwrPathController":Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;
    invoke-virtual {v0}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->clear()V

    .line 680
    return-void
.end method

.method private clearRecognizedStrings()V
    .locals 1

    .prologue
    .line 599
    iget-object v0, p0, Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->mRecognizedStringsController:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->getOldRecognizedStringArray()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 600
    iget-object v0, p0, Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->mRecognizedStringsController:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->getCurrentRecognizedStringArray()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 601
    iget-object v0, p0, Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->mRecognizedStringsController:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->getNewRecognizedStringArray()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 602
    return-void
.end method

.method private processBackSpaceKey()V
    .locals 5

    .prologue
    const/4 v4, -0x5

    const/4 v3, 0x0

    .line 418
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->increaseDeleteCount()V

    .line 419
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 420
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v1, v4}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(I)I

    .line 421
    invoke-virtual {p0, v3, v3}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setHwrCandidateStatus(IZ)V

    .line 422
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 423
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getDeleteCount()I

    move-result v1

    const/16 v2, 0xa

    if-le v1, v2, :cond_2

    invoke-static {}, Lcom/diotek/ime/framework/repository/PackageStatus;->getPackageName()Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    move-result-object v1

    sget-object v2, Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;->CHATON_PACKAGE_NAME:Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    if-eq v1, v2, :cond_2

    .line 425
    if-eqz v0, :cond_0

    .line 426
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getLastWordDividerIndex()I

    move-result v1

    invoke-interface {v0, v1, v3}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 432
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isVOHWRmodeEnable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 437
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->VOHWRInitByCursorMove(I)V

    .line 439
    :cond_1
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isSmartPrediction()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 440
    iput v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mLastKeyCode:I

    .line 441
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v1, v4, v3}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->setUpAutoSpace(IZ)V

    .line 445
    :goto_1
    return-void

    .line 429
    :cond_2
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initWordDividerIndexList()V

    .line 430
    const/16 v1, 0x43

    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->onKeyDownUpHandle(I)V

    goto :goto_0

    .line 443
    :cond_3
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/diotek/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    goto :goto_1
.end method

.method private processEnterInput(Z)Z
    .locals 3
    .param p1, "byGesture"    # Z

    .prologue
    .line 509
    iget-object v0, p0, Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->mRecognizedStringsController:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->getOldRecognizedStringArray()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 510
    if-eqz p1, :cond_0

    .line 511
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/16 v1, 0xa

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/common/InputManager;->onKey(I[I)V

    .line 513
    :cond_0
    const/4 v0, 0x0

    .line 517
    :goto_0
    return v0

    .line 515
    :cond_1
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->inputDisplayedRecognitionString()V

    .line 516
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->invalidateHwrBackgound()V

    .line 517
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private processForwardDelete()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 448
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 449
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v0, :cond_1

    .line 472
    :cond_0
    :goto_0
    return-void

    .line 453
    :cond_1
    const-string v1, ""

    .line 454
    .local v1, "lastChar":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 455
    const/4 v2, 0x1

    invoke-interface {v0, v2, v4}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .end local v1    # "lastChar":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 456
    .restart local v1    # "lastChar":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 457
    const-string v1, ""

    .line 460
    :cond_2
    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setDeleteCount(Ljava/lang/String;)V

    .line 461
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->resetPredictionWord()V

    .line 463
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getDeleteCount()I

    move-result v2

    const/16 v3, 0xa

    if-le v2, v3, :cond_3

    invoke-static {}, Lcom/diotek/ime/framework/repository/PackageStatus;->getPackageName()Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    move-result-object v2

    sget-object v3, Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;->CHATON_PACKAGE_NAME:Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    if-eq v2, v3, :cond_3

    .line 465
    if-eqz v0, :cond_0

    .line 466
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getFirstWordDividerIndex()I

    move-result v2

    invoke-interface {v0, v4, v2}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto :goto_0

    .line 469
    :cond_3
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initWordDividerIndexList()V

    .line 470
    const/16 v2, 0x70

    invoke-virtual {p0, v2}, Lcom/diotek/ime/framework/input/AbstractInputModule;->onKeyDownUpHandle(I)V

    goto :goto_0
.end method

.method private processWordSeparator(I[I)V
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 362
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    .line 363
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v1, v2}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    .line 364
    const/4 v1, 0x1

    new-array v0, v1, [I

    .line 365
    .local v0, "activeIndex":[I
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v1, v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getActiveIndex([I)I

    .line 367
    const/16 v1, 0xa

    if-ne p1, v1, :cond_3

    .line 368
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isVOHWRmodeEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 373
    invoke-virtual {p0, v3}, Lcom/diotek/ime/framework/input/AbstractInputModule;->VOHWRInitByCursorMove(I)V

    .line 375
    :cond_0
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isSmartPrediction()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 376
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 378
    :cond_1
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->sendEnterKeyHandle()V

    .line 379
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isSmartPrediction()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 380
    iput p1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mLastKeyCode:I

    .line 381
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v1, p1, v4}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->setUpAutoSpace(IZ)V

    .line 382
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->updateVOHWRSuggestion()V

    .line 415
    :goto_0
    return-void

    .line 384
    :cond_2
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1, v5}, Lcom/diotek/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 387
    :cond_3
    const/16 v1, 0x20

    if-ne p1, v1, :cond_6

    .line 388
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isVOHWRmodeEnable()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 393
    invoke-virtual {p0, v3}, Lcom/diotek/ime/framework/input/AbstractInputModule;->VOHWRInitByCursorMove(I)V

    .line 398
    :cond_4
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 400
    const-string v1, " "

    invoke-static {v1}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    .line 401
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 403
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isSmartPrediction()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 404
    iput p1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mLastKeyCode:I

    .line 405
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v1, p1, v4}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->setUpAutoSpace(IZ)V

    .line 406
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->updateVOHWRSuggestion()V

    goto :goto_0

    .line 408
    :cond_5
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1, v5}, Lcom/diotek/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 411
    :cond_6
    int-to-char v1, p1

    invoke-static {v1}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(C)V

    .line 412
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private recognizeAll()V
    .locals 10

    .prologue
    const/16 v9, 0xbbb

    const/4 v8, 0x7

    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 605
    iget-boolean v4, p0, Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->mThreadRunning:Z

    if-eqz v4, :cond_1

    .line 606
    sget-boolean v4, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 607
    const-string v4, "SamsungIME"

    const-string v5, "recognizeAll() is running."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    :cond_0
    :goto_0
    return-void

    .line 612
    :cond_1
    iget v4, p0, Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->mStrokeCount:I

    if-lez v4, :cond_0

    .line 616
    iput-boolean v5, p0, Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->mThreadRunning:Z

    .line 618
    const/4 v3, 0x0

    .line 620
    .local v3, "returnValue":I
    iget v4, p0, Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->mStrokeCount:I

    if-ne v4, v5, :cond_2

    .line 621
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v4, v7, v5}, Lcom/diotek/ime/framework/engine/InputEngineManager;->recognize(IZ)I

    move-result v3

    .line 622
    packed-switch v3, :pswitch_data_0

    .line 648
    :cond_2
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v4, v5, v5}, Lcom/diotek/ime/framework/engine/InputEngineManager;->recognize(IZ)I

    move-result v3

    .line 651
    sget-boolean v4, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v4, :cond_3

    .line 652
    const-string v4, "SamsungIME"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hwrRecogAll():retVal="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    :cond_3
    packed-switch v3, :pswitch_data_1

    .line 667
    iget-object v4, p0, Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->mHwrHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8, v9, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 669
    .local v1, "msg1":Landroid/os/Message;
    iget-object v4, p0, Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->mHwrHandler:Landroid/os/Handler;

    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 673
    .end local v1    # "msg1":Landroid/os/Message;
    :goto_1
    iput v7, p0, Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->mStrokeCount:I

    .line 674
    iput-boolean v7, p0, Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->mThreadRunning:Z

    goto :goto_0

    .line 634
    :pswitch_0
    iget-object v4, p0, Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->mHwrHandler:Landroid/os/Handler;

    const/4 v5, 0x6

    invoke-virtual {v4, v5, v3, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 635
    .restart local v1    # "msg1":Landroid/os/Message;
    iget-object v4, p0, Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->mHwrHandler:Landroid/os/Handler;

    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 636
    iput-boolean v7, p0, Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->mThreadRunning:Z

    .line 637
    iput v7, p0, Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->mStrokeCount:I

    .line 638
    iget-object v4, p0, Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->mHwrHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8, v9, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 640
    .local v2, "msg2":Landroid/os/Message;
    iget-object v4, p0, Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->mHwrHandler:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 641
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4, v7}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    goto :goto_0

    .line 657
    .end local v1    # "msg1":Landroid/os/Message;
    .end local v2    # "msg2":Landroid/os/Message;
    :pswitch_1
    iget-object v4, p0, Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->mHwrHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8, v3, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 658
    .local v0, "msg":Landroid/os/Message;
    iget-object v4, p0, Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->mHwrHandler:Landroid/os/Handler;

    invoke-virtual {v4, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 659
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v4, v5}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getHwrSuggestion(Ljava/util/ArrayList;)I

    .line 660
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isInputViewShown()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 661
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v4, v5}, Lcom/diotek/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    goto :goto_1

    .line 663
    :cond_4
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4, v7}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    goto :goto_1

    .line 622
    nop

    :pswitch_data_0
    .packed-switch 0x7d1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 655
    :pswitch_data_1
    .packed-switch 0xbba
        :pswitch_1
    .end packed-switch
.end method

.method private runTheadRecognize()V
    .locals 4

    .prologue
    .line 245
    sget-boolean v1, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 246
    const-string v1, "SamsungIME"

    const-string v2, "runTheadRecognize()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_0
    iget-boolean v1, p0, Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->mThreadRunning:Z

    if-eqz v1, :cond_1

    .line 255
    :goto_0
    return-void

    .line 252
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->mThreadRunning:Z

    .line 253
    new-instance v0, Ljava/lang/Thread;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->recognizeThread:Lcom/diotek/ime/framework/input/InputModule$Timer;

    const-string v3, "RecognizeThread"

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 254
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private startRecogThreadTimer()V
    .locals 4

    .prologue
    .line 235
    sget-boolean v1, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 236
    const-string v1, "SamsungIME"

    const-string v2, "startRecogThreadTimer()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_0
    iget-object v1, p0, Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->mHwrHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 241
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->mHwrHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 242
    return-void
.end method

.method private startRecognizeAllTimer()V
    .locals 5

    .prologue
    .line 258
    sget-boolean v2, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 259
    const-string v2, "SamsungIME"

    const-string v3, "startRecognizeAllTimer()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_0
    iget-object v2, p0, Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->mHwrHandler:Landroid/os/Handler;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 262
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v3, "SETTINGS_DEFAULT_HWR_RECOGNIZE_DELAY"

    const/16 v4, 0x1f4

    invoke-interface {v2, v3, v4}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v1

    .line 264
    .local v1, "recogDelay":I
    iget-object v2, p0, Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->mHwrHandler:Landroid/os/Handler;

    int-to-long v3, v1

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 265
    return-void
.end method

.method private stopRecognizeAllTimer()V
    .locals 2

    .prologue
    .line 268
    iget-object v0, p0, Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->mHwrHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 269
    iget-object v0, p0, Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->mHwrHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 272
    return-void
.end method


# virtual methods
.method public closing()V
    .locals 0

    .prologue
    .line 277
    invoke-direct {p0}, Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->clearRecognizedStrings()V

    .line 278
    invoke-direct {p0}, Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->clearHwrPath()V

    .line 280
    return-void
.end method

.method public endMultitapTimer()V
    .locals 2

    .prologue
    .line 964
    invoke-super {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->endMultitapTimer()V

    .line 965
    iget-boolean v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-eqz v0, :cond_0

    .line 967
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/common/InputManager;->updateCandidates(I)V

    .line 969
    :cond_0
    return-void
.end method

.method public finishAndInitByCursorMove()V
    .locals 1

    .prologue
    .line 957
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isSmartPrediction()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 958
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->updateVOHWRSuggestion()V

    .line 960
    :cond_0
    return-void
.end method

.method public getSelectedWord()Ljava/lang/String;
    .locals 1

    .prologue
    .line 942
    iget-object v0, p0, Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->mSelectedWord:Ljava/lang/String;

    return-object v0
.end method

.method public initialize()V
    .locals 1

    .prologue
    .line 177
    invoke-super {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initialize()V

    .line 178
    invoke-static {}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->getInstance()Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->mRecognizedStringsController:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    .line 179
    return-void
.end method

.method public inputDisplayedRecognitionString()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 523
    invoke-direct {p0}, Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->assembledResultString()Ljava/lang/String;

    move-result-object v0

    .line 525
    .local v0, "orderedString":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 526
    invoke-virtual {p0, v2}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 527
    invoke-static {v0}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(Ljava/lang/String;)V

    .line 528
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setComposingText()V

    .line 529
    invoke-virtual {p0, v2}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 532
    :cond_0
    invoke-direct {p0}, Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->clearRecognizedStrings()V

    .line 534
    return-void
.end method

.method public onCharacterKey(I[I)V
    .locals 8
    .param p1, "keyCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    const/4 v7, 0x7

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 284
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 285
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    iget v4, p0, Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->mStrokeCount:I

    if-lez v4, :cond_0

    .line 286
    invoke-direct {p0}, Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->stopRecognizeAllTimer()V

    .line 287
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v4, v5, v5}, Lcom/diotek/ime/framework/engine/InputEngineManager;->recognize(IZ)I

    move-result v3

    .line 290
    .local v3, "returnValue":I
    packed-switch v3, :pswitch_data_0

    .line 302
    iget-object v4, p0, Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->mHwrHandler:Landroid/os/Handler;

    const/16 v5, 0xbbb

    invoke-virtual {v4, v7, v5, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 304
    .local v2, "msg1":Landroid/os/Message;
    iget-object v4, p0, Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->mHwrHandler:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 306
    .end local v2    # "msg1":Landroid/os/Message;
    :goto_0
    iput v6, p0, Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->mStrokeCount:I

    .line 309
    .end local v3    # "returnValue":I
    :cond_0
    if-eqz v0, :cond_1

    .line 310
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 312
    :cond_1
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v4, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->isTextCharacter(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 313
    const/16 v4, 0xa

    if-ne p1, v4, :cond_2

    .line 314
    invoke-direct {p0, v6}, Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->processEnterInput(Z)Z

    .line 316
    :cond_2
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v4, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(I)I

    .line 320
    :goto_1
    if-eqz v0, :cond_3

    .line 321
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 324
    :cond_3
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->autoPeriod(I)V

    .line 325
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getHanjaStatus()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 326
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4, v6}, Lcom/diotek/ime/framework/common/InputManager;->setHanjaStaus(Z)V

    .line 328
    :cond_4
    return-void

    .line 292
    .restart local v3    # "returnValue":I
    :pswitch_0
    iget-object v4, p0, Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->mHwrHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7, v3, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 293
    .local v1, "msg":Landroid/os/Message;
    iget-object v4, p0, Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->mHwrHandler:Landroid/os/Handler;

    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 294
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v4, v5}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getHwrSuggestion(Ljava/util/ArrayList;)I

    .line 295
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isInputViewShown()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 296
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v4, v5}, Lcom/diotek/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 298
    :cond_5
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4, v6}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    goto :goto_0

    .line 318
    .end local v1    # "msg":Landroid/os/Message;
    .end local v3    # "returnValue":I
    :cond_6
    invoke-virtual {p0, p1, p2}, Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->processSymbolicKey(I[I)V

    goto :goto_1

    .line 290
    nop

    :pswitch_data_0
    .packed-switch 0xbba
        :pswitch_0
    .end packed-switch
.end method

.method public onHwrPanelLongPressed(ILjava/lang/String;)V
    .locals 7
    .param p1, "selectedArrayIndex"    # I
    .param p2, "resultString"    # Ljava/lang/String;

    .prologue
    .line 476
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v2

    .line 477
    .local v2, "info":Landroid/view/inputmethod/EditorInfo;
    if-eqz p2, :cond_3

    iget v4, v2, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    if-eqz v4, :cond_3

    .line 478
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v5, "INPUT_LANGUAGE"

    const/high16 v6, 0x656e0000

    invoke-interface {v4, v5, v6}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v3

    .line 479
    .local v3, "languageId":I
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v4, p1, p2}, Lcom/diotek/ime/framework/engine/InputEngineManager;->onHwrPanelLongPressed(ILjava/lang/String;)I

    .line 480
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    .line 481
    const/high16 v4, 0x6b6f0000

    if-ne v3, v4, :cond_1

    .line 482
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v4, p2}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputCharSequence(Ljava/lang/CharSequence;)I

    .line 487
    :goto_0
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestionCount()I

    move-result v0

    .line 488
    .local v0, "count":I
    sget-boolean v4, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 489
    const-string v4, "SamsungIME"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onHwrPanelLongPressed SUGGESTION_COUNT : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    :cond_0
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    .line 492
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v4, v5}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    .line 494
    sget-boolean v4, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    .line 495
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 496
    const-string v4, "SamsungIME"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onHwrPanelLongPressed suggest["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 484
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_1
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    int-to-short v5, v5

    const/4 v6, 0x1

    invoke-interface {v4, p2, v5, v6}, Lcom/diotek/ime/framework/engine/InputEngineManager;->doRecaptureForXt9(Ljava/lang/String;SZ)I

    goto :goto_0

    .line 500
    .restart local v0    # "count":I
    :cond_2
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isInputViewShown()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 501
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v4, v5}, Lcom/diotek/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    .line 506
    .end local v0    # "count":I
    .end local v3    # "languageId":I
    :cond_3
    :goto_2
    return-void

    .line 503
    .restart local v0    # "count":I
    .restart local v3    # "languageId":I
    :cond_4
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    goto :goto_2
.end method

.method public onHwrTouchCancel(IIJ)Z
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "eventTime"    # J

    .prologue
    .line 230
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    const/4 v1, 0x3

    invoke-interface {v0, p1, p2, v1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputStrokeData(III)Z

    .line 231
    const/4 v0, 0x1

    return v0
.end method

.method public onHwrTouchDown(IIJ)Z
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "eventTime"    # J

    .prologue
    .line 210
    iget v0, p0, Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->mStrokeCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->mStrokeCount:I

    .line 211
    invoke-direct {p0}, Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->stopRecognizeAllTimer()V

    .line 212
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputStrokeData(III)Z

    .line 213
    const/4 v0, 0x1

    return v0
.end method

.method public onHwrTouchMove(IIJ)Z
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "eventTime"    # J

    .prologue
    .line 218
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    const/4 v1, 0x2

    invoke-interface {v0, p1, p2, v1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputStrokeData(III)Z

    .line 219
    const/4 v0, 0x1

    return v0
.end method

.method public onHwrTouchUp(IIJ)Z
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "eventTime"    # J

    .prologue
    const/4 v1, 0x1

    .line 224
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v0, p1, p2, v1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputStrokeData(III)Z

    .line 225
    return v1
.end method

.method public onText(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 947
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isVOHWRmodeEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isEmoticonMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 948
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 949
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->VOHWRappendText(Ljava/lang/CharSequence;)V

    .line 953
    :goto_0
    return-void

    .line 951
    :cond_0
    invoke-super {p0, p1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->onText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public pickSuggestionManually(ILjava/lang/CharSequence;)V
    .locals 16
    .param p1, "index"    # I
    .param p2, "suggestion"    # Ljava/lang/CharSequence;

    .prologue
    .line 686
    invoke-static {}, Lcom/diotek/ime/framework/input/IndianInputModule;->getInstance()Lcom/diotek/ime/framework/input/IndianInputModule;

    move-result-object v13

    .line 687
    .local v13, "mIndianInputModule":Lcom/diotek/ime/framework/input/IndianInputModule;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v7

    .line 688
    .local v7, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz p2, :cond_1

    .line 689
    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 690
    .local v2, "c":C
    move v12, v2

    .line 691
    .local v12, "keycode":I
    invoke-static {v12}, Lcom/diotek/ime/framework/input/IndianInputModule;->getHBScrpt(I)I

    move-result v14

    invoke-virtual {v13, v12, v14}, Lcom/diotek/ime/framework/input/IndianInputModule;->isDependentVowel(II)Z

    move-result v14

    if-nez v14, :cond_0

    invoke-static {v12}, Lcom/diotek/ime/framework/input/IndianInputModule;->getHBScrpt(I)I

    move-result v14

    invoke-virtual {v13, v12, v14}, Lcom/diotek/ime/framework/input/IndianInputModule;->isSpecialVowel(II)Z

    move-result v14

    if-nez v14, :cond_0

    invoke-virtual {v13, v12}, Lcom/diotek/ime/framework/input/IndianInputModule;->isNuktaSymbol(I)Z

    move-result v14

    if-nez v14, :cond_0

    invoke-virtual {v13, v12}, Lcom/diotek/ime/framework/input/IndianInputModule;->isHalant(I)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 842
    .end local v2    # "c":C
    .end local v12    # "keycode":I
    :cond_0
    :goto_0
    return-void

    .line 702
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/InputManager;->isSmartPrediction()Z

    move-result v14

    if-nez v14, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/InputManager;->getHanjaStatus()Z

    move-result v14

    if-nez v14, :cond_5

    .line 703
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v14

    if-eqz v14, :cond_4

    if-eqz p2, :cond_4

    .line 704
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v14, v0, v1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->wordSelected(ILjava/lang/CharSequence;)I

    .line 710
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Lcom/diotek/ime/framework/common/InputManager;->onHwrPanelLongPressed(Landroid/graphics/Point;)Z

    .line 711
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v14}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isVOHWRmodeEnable()Z

    move-result v14

    if-nez v14, :cond_3

    if-eqz p2, :cond_3

    .line 712
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 713
    invoke-direct/range {p0 .. p0}, Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->clearRecognizedStrings()V

    .line 715
    :cond_3
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 716
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/InputManager;->invalidateHwrRect()V

    .line 717
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    .line 718
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    .line 719
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Lcom/diotek/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 706
    :cond_4
    if-eqz p2, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v0, p2

    invoke-interface {v14, v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->VOHWRaddTextToHWRPanel(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 707
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 721
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Lcom/diotek/ime/framework/common/InputManager;->onHwrPanelLongPressed(Landroid/graphics/Point;)Z

    .line 722
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/InputManager;->invalidateHwrRect()V

    .line 723
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v14, :cond_8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    move/from16 v0, p1

    if-le v14, v0, :cond_8

    .line 724
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/CharSequence;

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->mSelectedWord:Ljava/lang/String;

    .line 728
    :cond_6
    :goto_2
    if-eqz v7, :cond_0

    .line 729
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v14

    if-eqz v14, :cond_a

    .line 730
    const/4 v14, 0x2

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setHwrCandidateStatus(IZ)V

    .line 731
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v14, v0, v1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->wordSelected(ILjava/lang/CharSequence;)I

    .line 732
    const/4 v14, 0x2

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setHwrCandidateStatus(IZ)V

    .line 733
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 734
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/diotek/ime/framework/input/AbstractInputModule;->updateSequence(Ljava/lang/StringBuilder;)V

    .line 735
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPickSuggestionIndex:I

    .line 736
    invoke-virtual/range {p0 .. p1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->selectWordInList(I)V

    .line 737
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    .line 738
    if-eqz p2, :cond_9

    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v14

    if-lez v14, :cond_9

    const-string v14, ".,;!?\u061b\u060c\u061f"

    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_9

    .line 740
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v14}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->reset()V

    .line 744
    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v14

    if-eqz v14, :cond_7

    .line 745
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/InputManager;->updateShiftState()V

    .line 747
    :cond_7
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/diotek/ime/framework/input/AbstractInputModule;->doNextWordPrediction(Z)V

    .line 748
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosPrevText:I

    .line 749
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosNextText:I

    .line 751
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/InputManager;->getHanjaStatus()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 752
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Lcom/diotek/ime/framework/common/InputManager;->setHanjaStaus(Z)V

    .line 753
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Lcom/diotek/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 725
    :cond_8
    if-eqz p2, :cond_6

    .line 726
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->mSelectedWord:Ljava/lang/String;

    goto/16 :goto_2

    .line 742
    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v14}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->setUpByPickSuggestion()V

    goto :goto_3

    .line 756
    :cond_a
    const/4 v14, 0x2

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setHwrCandidateStatus(IZ)V

    .line 757
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isAutoCompletitionInput()Z

    move-result v8

    .line 758
    .local v8, "isCompletionOn":Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v9

    .line 759
    .local v9, "isLandscape":Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/InputManager;->getCompletions()[Landroid/view/inputmethod/CompletionInfo;

    move-result-object v5

    .line 760
    .local v5, "completions":[Landroid/view/inputmethod/CompletionInfo;
    if-eqz v8, :cond_b

    if-eqz v9, :cond_b

    if-eqz v5, :cond_b

    .line 761
    if-ltz p1, :cond_0

    array-length v14, v5

    move/from16 v0, p1

    if-ge v0, v14, :cond_0

    .line 762
    aget-object v4, v5, p1

    .line 763
    .local v4, "completion":Landroid/view/inputmethod/CompletionInfo;
    invoke-interface {v7, v4}, Landroid/view/inputmethod/InputConnection;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z

    goto/16 :goto_0

    .line 766
    .end local v4    # "completion":Landroid/view/inputmethod/CompletionInfo;
    :cond_b
    invoke-interface {v7}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 767
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/InputManager;->getCandidateviewStatus()I

    move-result v3

    .line 768
    .local v3, "candidateStatus":I
    const/4 v11, 0x0

    .line 769
    .local v11, "isPickNextWordPrediction":Z
    const/4 v10, 0x0

    .line 770
    .local v10, "isNeedAutoSpace":Z
    const/4 v6, 0x0

    .line 771
    .local v6, "deletedTextLeft":I
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_12

    move-object/from16 v0, p0

    iget v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mStateCandidate:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_12

    if-nez v3, :cond_12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/InputManager;->getInputLanguage()I

    move-result v14

    invoke-static {v14}, Lcom/diotek/ime/framework/util/Utils;->isIndianLanguage(I)Z

    move-result v14

    if-nez v14, :cond_12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/InputManager;->getHanjaStatus()Z

    move-result v14

    if-nez v14, :cond_12

    .line 775
    move-object/from16 v0, p0

    iget v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosPrevText:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosNextText:I

    invoke-interface {v7, v14, v15}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 776
    move-object/from16 v0, p0

    iget v6, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosPrevText:I

    .line 786
    :cond_c
    :goto_4
    if-eqz p2, :cond_d

    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v14

    if-eq v6, v14, :cond_d

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v14

    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v15

    if-eq v14, v15, :cond_d

    .line 788
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setPredictionWord(Z)V

    .line 791
    :cond_d
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 792
    if-eqz v10, :cond_e

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/InputManager;->getHanjaStatus()Z

    move-result v14

    if-nez v14, :cond_e

    .line 793
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/InputManager;->isTalkbackEnabled()Z

    move-result v14

    if-eqz v14, :cond_13

    if-eqz p2, :cond_13

    const-string v14, ".,;!?\u061b\u060c\u061f"

    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    const/4 v15, -0x1

    if-ne v14, v15, :cond_13

    .line 795
    const-string v14, " "

    const/4 v15, 0x1

    invoke-interface {v7, v14, v15}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 800
    :cond_e
    :goto_5
    invoke-static/range {p2 .. p2}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    .line 802
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->replaceSpaceToSymbol(Ljava/lang/StringBuilder;)V

    .line 805
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPickSuggestionIndex:I

    .line 806
    invoke-virtual/range {p0 .. p1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->selectWordInList(I)V

    .line 808
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    .line 809
    if-eqz p2, :cond_14

    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v14

    if-lez v14, :cond_14

    const-string v14, ".,;!?\u061b\u060c\u061f"

    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_14

    .line 811
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v14}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->reset()V

    .line 816
    :goto_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface {v14, v15}, Lcom/diotek/ime/framework/engine/InputEngineManager;->VOHWRaddTextToHWRPanel(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_10

    .line 817
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/InputManager;->getHanjaStatus()Z

    move-result v14

    if-eqz v14, :cond_f

    .line 818
    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-interface {v7, v14, v15}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 820
    :cond_f
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/diotek/ime/framework/input/AbstractInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 823
    :cond_10
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v14

    if-eqz v14, :cond_11

    .line 824
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/InputManager;->updateShiftState()V

    .line 827
    :cond_11
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/diotek/ime/framework/input/AbstractInputModule;->updateSequence(Ljava/lang/StringBuilder;)V

    .line 828
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/diotek/ime/framework/input/AbstractInputModule;->doNextWordPrediction(Z)V

    .line 829
    invoke-interface {v7}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 830
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosPrevText:I

    .line 831
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosNextText:I

    .line 833
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/InputManager;->getHanjaStatus()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 834
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Lcom/diotek/ime/framework/common/InputManager;->setHanjaStaus(Z)V

    .line 835
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Lcom/diotek/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 777
    :cond_12
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_c

    move-object/from16 v0, p0

    iget v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mStateCandidate:I

    const/4 v15, 0x2

    if-ne v14, v15, :cond_c

    if-nez v3, :cond_c

    .line 780
    const/4 v11, 0x1

    .line 781
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v14}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAtNextWordPrediction()Z

    move-result v14

    if-eqz v14, :cond_c

    .line 782
    const/4 v10, 0x1

    goto/16 :goto_4

    .line 797
    :cond_13
    const/16 v14, 0x20

    invoke-static {v14}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    goto/16 :goto_5

    .line 813
    :cond_14
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v14}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->setUpByPickSuggestion()V

    goto/16 :goto_6
.end method

.method public predictionWord()Z
    .locals 1

    .prologue
    .line 866
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->updateVOHWRSuggestion()V

    .line 867
    const/4 v0, 0x0

    return v0
.end method

.method public predictionWordStartInputViewContinue()Z
    .locals 1

    .prologue
    .line 872
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isSmartPrediction()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 873
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->updateVOHWRSuggestion()V

    .line 874
    const/4 v0, 0x1

    .line 876
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected processSymbolicKey(I[I)V
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    const/4 v3, 0x0

    .line 332
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v1, v2}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    .line 333
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    .line 335
    .local v0, "info":Landroid/view/inputmethod/EditorInfo;
    const/16 v1, 0xa

    if-eq p1, v1, :cond_0

    const/16 v1, 0x20

    if-ne p1, v1, :cond_2

    .line 337
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->processWordSeparator(I[I)V

    .line 359
    :cond_1
    :goto_0
    return-void

    .line 339
    :cond_2
    const/4 v1, -0x5

    if-ne p1, v1, :cond_3

    .line 340
    invoke-direct {p0}, Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->processBackSpaceKey()V

    goto :goto_0

    .line 342
    :cond_3
    const/16 v1, -0x3eb

    if-ne p1, v1, :cond_4

    .line 343
    invoke-direct {p0}, Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->processForwardDelete()V

    goto :goto_0

    .line 347
    :cond_4
    int-to-char v1, p1

    invoke-static {v1}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(C)V

    .line 348
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 350
    iget-boolean v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-eqz v1, :cond_1

    .line 351
    invoke-virtual {p0, v3, v3}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setHwrCandidateStatus(IZ)V

    .line 352
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isSmartPrediction()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 353
    iput p1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mLastKeyCode:I

    .line 354
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v1, p1, v3}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->setUpAutoSpace(IZ)V

    goto :goto_0

    .line 356
    :cond_5
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/diotek/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public release()V
    .locals 7

    .prologue
    const/4 v6, 0x7

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 183
    iget v3, p0, Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->mStrokeCount:I

    if-lez v3, :cond_0

    .line 184
    invoke-direct {p0}, Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->stopRecognizeAllTimer()V

    .line 185
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v3, v4, v4}, Lcom/diotek/ime/framework/engine/InputEngineManager;->recognize(IZ)I

    move-result v2

    .line 188
    .local v2, "returnValue":I
    packed-switch v2, :pswitch_data_0

    .line 200
    iget-object v3, p0, Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->mHwrHandler:Landroid/os/Handler;

    const/16 v4, 0xbbb

    invoke-virtual {v3, v6, v4, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 202
    .local v1, "msg1":Landroid/os/Message;
    iget-object v3, p0, Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->mHwrHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 204
    .end local v1    # "msg1":Landroid/os/Message;
    :goto_0
    iput v5, p0, Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->mStrokeCount:I

    .line 206
    .end local v2    # "returnValue":I
    :cond_0
    return-void

    .line 190
    .restart local v2    # "returnValue":I
    :pswitch_0
    iget-object v3, p0, Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->mHwrHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6, v2, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 191
    .local v0, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->mHwrHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 192
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v3, v4}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getHwrSuggestion(Ljava/util/ArrayList;)I

    .line 193
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->isInputViewShown()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 194
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v3, v4}, Lcom/diotek/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 196
    :cond_1
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3, v5}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    goto :goto_0

    .line 188
    nop

    :pswitch_data_0
    .packed-switch 0xbba
        :pswitch_0
    .end packed-switch
.end method

.method protected replaceSpaceToSymbol(Ljava/lang/StringBuilder;)V
    .locals 5
    .param p1, "builder"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v4, 0x0

    .line 845
    if-eqz p1, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 855
    :cond_0
    :goto_0
    return-void

    .line 848
    :cond_1
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    .line 849
    .local v0, "firstChar":C
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    .line 850
    .local v1, "secondChar":C
    const/16 v2, 0x20

    if-ne v0, v2, :cond_0

    const-string v2, ".,;!?\u061b\u060c\u061f"

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 851
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 852
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 853
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public setAddStrokeCallBackOnHWREngine()V
    .locals 2

    .prologue
    .line 881
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    if-eqz v0, :cond_0

    .line 882
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v1, p0, Lcom/diotek/ime/framework/input/CompleteHwrInputModule;->mAddStrokeCallBack:Lcom/diotek/ime/framework/engine/dhwr/AddStroke;

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->setOnInputStrokeCallback(Lcom/diotek/ime/framework/engine/dhwr/AddStroke;)V

    .line 884
    :cond_0
    return-void
.end method

.method public updateVOHWRSuggestion()V
    .locals 2

    .prologue
    .line 888
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    .line 889
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isSmartPrediction()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 890
    iget v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mHWRCandidateStatus:I

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getSuggestionByStatus(I)V

    .line 894
    :goto_0
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 895
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    .line 899
    :goto_1
    return-void

    .line 892
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getHwrSuggestion(Ljava/util/ArrayList;)I

    goto :goto_0

    .line 897
    :cond_1
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    goto :goto_1
.end method
