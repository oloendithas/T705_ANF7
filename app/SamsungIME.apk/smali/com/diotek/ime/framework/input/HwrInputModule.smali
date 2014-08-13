.class public Lcom/diotek/ime/framework/input/HwrInputModule;
.super Lcom/diotek/ime/framework/input/AbstractInputModule;
.source "HwrInputModule.java"


# instance fields
.field mAddStrokeCallBack:Lcom/diotek/ime/framework/engine/dhwr/AddStroke;

.field private final mCurrentCompsing:Ljava/lang/StringBuilder;

.field mHwrHandler:Landroid/os/Handler;

.field private mIsNeedCommitComposing:Z

.field private mIsNeedCommitComposingForHWKeyboard:Z

.field private mStrokeCount:I

.field private final recognizeAll:Lcom/diotek/ime/framework/input/InputModule$Timer;

.field private final recognizeFail:Lcom/diotek/ime/framework/input/InputModule$Timer;

.field private final runRecongnize:Lcom/diotek/ime/framework/input/InputModule$Timer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 256
    invoke-direct {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;-><init>()V

    .line 26
    iput v0, p0, Lcom/diotek/ime/framework/input/HwrInputModule;->mStrokeCount:I

    .line 27
    iput-boolean v0, p0, Lcom/diotek/ime/framework/input/HwrInputModule;->mIsNeedCommitComposing:Z

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/input/HwrInputModule;->mCurrentCompsing:Ljava/lang/StringBuilder;

    .line 30
    new-instance v0, Lcom/diotek/ime/framework/input/HwrInputModule$1;

    invoke-direct {v0, p0}, Lcom/diotek/ime/framework/input/HwrInputModule$1;-><init>(Lcom/diotek/ime/framework/input/HwrInputModule;)V

    iput-object v0, p0, Lcom/diotek/ime/framework/input/HwrInputModule;->mHwrHandler:Landroid/os/Handler;

    .line 120
    new-instance v0, Lcom/diotek/ime/framework/input/HwrInputModule$2;

    invoke-direct {v0, p0}, Lcom/diotek/ime/framework/input/HwrInputModule$2;-><init>(Lcom/diotek/ime/framework/input/HwrInputModule;)V

    iput-object v0, p0, Lcom/diotek/ime/framework/input/HwrInputModule;->runRecongnize:Lcom/diotek/ime/framework/input/InputModule$Timer;

    .line 142
    new-instance v0, Lcom/diotek/ime/framework/input/HwrInputModule$3;

    invoke-direct {v0, p0}, Lcom/diotek/ime/framework/input/HwrInputModule$3;-><init>(Lcom/diotek/ime/framework/input/HwrInputModule;)V

    iput-object v0, p0, Lcom/diotek/ime/framework/input/HwrInputModule;->recognizeAll:Lcom/diotek/ime/framework/input/InputModule$Timer;

    .line 203
    new-instance v0, Lcom/diotek/ime/framework/input/HwrInputModule$4;

    invoke-direct {v0, p0}, Lcom/diotek/ime/framework/input/HwrInputModule$4;-><init>(Lcom/diotek/ime/framework/input/HwrInputModule;)V

    iput-object v0, p0, Lcom/diotek/ime/framework/input/HwrInputModule;->recognizeFail:Lcom/diotek/ime/framework/input/InputModule$Timer;

    .line 514
    new-instance v0, Lcom/diotek/ime/framework/input/HwrInputModule$5;

    invoke-direct {v0, p0}, Lcom/diotek/ime/framework/input/HwrInputModule$5;-><init>(Lcom/diotek/ime/framework/input/HwrInputModule;)V

    iput-object v0, p0, Lcom/diotek/ime/framework/input/HwrInputModule;->mAddStrokeCallBack:Lcom/diotek/ime/framework/engine/dhwr/AddStroke;

    .line 257
    return-void
.end method

.method static synthetic access$000(Lcom/diotek/ime/framework/input/HwrInputModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/diotek/ime/framework/input/HwrInputModule;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/diotek/ime/framework/input/HwrInputModule;->runRecognizeThread()V

    return-void
.end method

.method static synthetic access$100(Lcom/diotek/ime/framework/input/HwrInputModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/diotek/ime/framework/input/HwrInputModule;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/diotek/ime/framework/input/HwrInputModule;->handleRecognizeSuccess()V

    return-void
.end method

.method static synthetic access$200(Lcom/diotek/ime/framework/input/HwrInputModule;)Lcom/diotek/ime/framework/input/InputModule$Timer;
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/framework/input/HwrInputModule;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/diotek/ime/framework/input/HwrInputModule;->recognizeAll:Lcom/diotek/ime/framework/input/InputModule$Timer;

    return-object v0
.end method

.method static synthetic access$300(Lcom/diotek/ime/framework/input/HwrInputModule;)Lcom/diotek/ime/framework/input/InputModule$Timer;
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/framework/input/HwrInputModule;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/diotek/ime/framework/input/HwrInputModule;->recognizeFail:Lcom/diotek/ime/framework/input/InputModule$Timer;

    return-object v0
.end method

.method static synthetic access$400(Lcom/diotek/ime/framework/input/HwrInputModule;)Lcom/diotek/ime/framework/input/InputModule$Timer;
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/framework/input/HwrInputModule;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/diotek/ime/framework/input/HwrInputModule;->runRecongnize:Lcom/diotek/ime/framework/input/InputModule$Timer;

    return-object v0
.end method

.method static synthetic access$500(Lcom/diotek/ime/framework/input/HwrInputModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/framework/input/HwrInputModule;

    .prologue
    .line 24
    iget v0, p0, Lcom/diotek/ime/framework/input/HwrInputModule;->mStrokeCount:I

    return v0
.end method

.method static synthetic access$502(Lcom/diotek/ime/framework/input/HwrInputModule;I)I
    .locals 0
    .param p0, "x0"    # Lcom/diotek/ime/framework/input/HwrInputModule;
    .param p1, "x1"    # I

    .prologue
    .line 24
    iput p1, p0, Lcom/diotek/ime/framework/input/HwrInputModule;->mStrokeCount:I

    return p1
.end method

.method static synthetic access$600(Lcom/diotek/ime/framework/input/HwrInputModule;)Ljava/lang/StringBuilder;
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/framework/input/HwrInputModule;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/diotek/ime/framework/input/HwrInputModule;->mCurrentCompsing:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method private handleRecognizeSuccess()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 53
    iget-object v1, p0, Lcom/diotek/ime/framework/input/HwrInputModule;->recognizeAll:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->stopTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;)V

    .line 54
    iget-object v1, p0, Lcom/diotek/ime/framework/input/HwrInputModule;->recognizeFail:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->stopTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;)V

    .line 56
    iget v1, p0, Lcom/diotek/ime/framework/input/HwrInputModule;->mStrokeCount:I

    if-gtz v1, :cond_0

    .line 97
    :goto_0
    return-void

    .line 60
    :cond_0
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getCurrentLanguageID()I

    move-result v1

    const/high16 v2, 0x74680000

    if-ne v1, v2, :cond_1

    .line 61
    iget-object v1, p0, Lcom/diotek/ime/framework/input/HwrInputModule;->recognizeAll:Lcom/diotek/ime/framework/input/InputModule$Timer;

    const/16 v2, 0x190

    invoke-virtual {p0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputModule;->startTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;I)V

    goto :goto_0

    .line 65
    :cond_1
    iget-boolean v1, p0, Lcom/diotek/ime/framework/input/HwrInputModule;->mIsNeedCommitComposingForHWKeyboard:Z

    if-eqz v1, :cond_2

    .line 66
    iput-boolean v3, p0, Lcom/diotek/ime/framework/input/HwrInputModule;->mIsNeedCommitComposingForHWKeyboard:Z

    .line 67
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->commitHwrTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 70
    :cond_2
    iget-boolean v1, p0, Lcom/diotek/ime/framework/input/HwrInputModule;->mIsNeedCommitComposing:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/diotek/ime/framework/input/HwrInputModule;->mCurrentCompsing:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-gtz v1, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAtText()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 72
    :cond_4
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    .line 73
    iput-boolean v3, p0, Lcom/diotek/ime/framework/input/HwrInputModule;->mIsNeedCommitComposing:Z

    .line 74
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isAutoSpaceOn()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isCurrentLanguageUseSpaceBetweenWords()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 76
    iget-object v1, p0, Lcom/diotek/ime/framework/input/HwrInputModule;->mCurrentCompsing:Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 78
    :cond_5
    iget-object v1, p0, Lcom/diotek/ime/framework/input/HwrInputModule;->mCurrentCompsing:Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->commitHwrTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v1, p0, Lcom/diotek/ime/framework/input/HwrInputModule;->mCurrentCompsing:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 80
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->reset()V

    .line 83
    :cond_6
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v1, v2}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getHwrSuggestion(Ljava/util/ArrayList;)I

    .line 84
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 85
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_7

    .line 86
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    .line 87
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setComposingText()V

    .line 88
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isInputViewShown()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 89
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v1, v2}, Lcom/diotek/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    .line 95
    :cond_7
    :goto_1
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v2, "SETTINGS_DEFAULT_HWR_RECOGNIZE_DELAY"

    const/16 v3, 0x1f4

    invoke-interface {v1, v2, v3}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    .line 96
    .local v0, "recogDelay":I
    iget-object v1, p0, Lcom/diotek/ime/framework/input/HwrInputModule;->recognizeAll:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v1, v0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->startTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;I)V

    goto/16 :goto_0

    .line 91
    .end local v0    # "recogDelay":I
    :cond_8
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1, v3}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    goto :goto_1
.end method

.method private processBackSpaceKey()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 433
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    .line 434
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v4, v5}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getHwrSuggestion(Ljava/util/ArrayList;)I

    .line 436
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 437
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/diotek/ime/framework/input/HwrInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 438
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    const/4 v5, -0x1

    invoke-interface {v4, v5}, Lcom/diotek/ime/framework/engine/InputEngineManager;->setSuggestionActiveIndex(I)V

    .line 440
    :cond_0
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isAutoCompletitionInput()Z

    move-result v2

    .line 441
    .local v2, "isCompletionOn":Z
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v3

    .line 442
    .local v3, "isLandscape":Z
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getCompletions()[Landroid/view/inputmethod/CompletionInfo;

    move-result-object v0

    .line 443
    .local v0, "completions":[Landroid/view/inputmethod/CompletionInfo;
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 444
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->increaseDeleteCount()V

    .line 445
    if-eqz v2, :cond_3

    if-eqz v3, :cond_3

    if-eqz v0, :cond_3

    .line 446
    if-eqz v1, :cond_1

    .line 447
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 449
    :cond_1
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 453
    :goto_0
    iget-object v4, p0, Lcom/diotek/ime/framework/input/HwrInputModule;->mCurrentCompsing:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 454
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    const/4 v5, -0x5

    invoke-interface {v4, v5}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(I)I

    .line 455
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getDeleteCount()I

    move-result v4

    const/16 v5, 0x14

    if-le v4, v5, :cond_4

    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentPackageName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.sec.chaton"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 458
    if-eqz v1, :cond_2

    .line 459
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getLastWordDividerIndex()I

    move-result v4

    invoke-interface {v1, v4, v6}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 465
    :cond_2
    :goto_1
    return-void

    .line 451
    :cond_3
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    goto :goto_0

    .line 462
    :cond_4
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initWordDividerIndexList()V

    .line 463
    const/16 v4, 0x43

    invoke-virtual {p0, v4}, Lcom/diotek/ime/framework/input/AbstractInputModule;->onKeyDownUpHandle(I)V

    goto :goto_1
.end method

.method private processWordSeparator(I[I)V
    .locals 7
    .param p1, "keyCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 393
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    .line 394
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v1, v2}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    .line 395
    new-array v0, v6, [I

    .line 396
    .local v0, "activeIndex":[I
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v1, v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getActiveIndex([I)I

    .line 399
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isVOHWRmodeEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 400
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    const/4 v2, -0x1

    invoke-interface {v1, v2}, Lcom/diotek/ime/framework/engine/InputEngineManager;->VOHWRCommitAndInit(I)V

    .line 403
    :cond_0
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 404
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    aget v3, v0, v5

    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    aget v4, v0, v5

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v2, v3, v1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->wordSelected(ILjava/lang/CharSequence;)I

    .line 405
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    .line 406
    invoke-virtual {p0, v6}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 407
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initComposingBuffer()V

    .line 410
    :cond_1
    const/16 v1, 0xa

    if-ne p1, v1, :cond_3

    .line 411
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 412
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/input/HwrInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 416
    :goto_0
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1, v5}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    .line 417
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->sendEnterKeyHandle()V

    .line 430
    :goto_1
    return-void

    .line 414
    :cond_2
    invoke-virtual {p0, v6}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    goto :goto_0

    .line 419
    :cond_3
    const/16 v1, 0x20

    if-ne p1, v1, :cond_4

    .line 420
    const-string v1, " "

    invoke-static {v1}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    .line 421
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/input/HwrInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 422
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1, v5}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    .line 427
    :goto_2
    iget-object v1, p0, Lcom/diotek/ime/framework/input/HwrInputModule;->recognizeAll:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->stopTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;)V

    .line 428
    iget-object v1, p0, Lcom/diotek/ime/framework/input/HwrInputModule;->recognizeFail:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->stopTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;)V

    .line 429
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->invalidateHwrBackgound()V

    goto :goto_1

    .line 424
    :cond_4
    int-to-char v1, p1

    invoke-static {v1}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(C)V

    .line 425
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/input/HwrInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method private runRecognizeThread()V
    .locals 3

    .prologue
    .line 111
    iget-object v1, p0, Lcom/diotek/ime/framework/input/HwrInputModule;->mHwrHandler:Landroid/os/Handler;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 112
    iget-object v1, p0, Lcom/diotek/ime/framework/input/HwrInputModule;->mHwrHandler:Landroid/os/Handler;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 113
    iget-object v1, p0, Lcom/diotek/ime/framework/input/HwrInputModule;->mHwrHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 114
    iget-object v1, p0, Lcom/diotek/ime/framework/input/HwrInputModule;->mHwrHandler:Landroid/os/Handler;

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 115
    iget-object v1, p0, Lcom/diotek/ime/framework/input/HwrInputModule;->runRecongnize:Lcom/diotek/ime/framework/input/InputModule$Timer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/diotek/ime/framework/input/InputModule$Timer;->setRunning(Z)V

    .line 116
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/diotek/ime/framework/input/HwrInputModule;->runRecongnize:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 117
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 118
    return-void
.end method


# virtual methods
.method public closing()V
    .locals 0

    .prologue
    .line 320
    return-void
.end method

.method public commitTextAndInitComposing(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v3, 0x0

    .line 618
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 619
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 620
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 621
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 622
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1, v3}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    .line 623
    iget-object v1, p0, Lcom/diotek/ime/framework/input/HwrInputModule;->mCurrentCompsing:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 624
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initComposingBuffer()V

    .line 633
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :goto_0
    return-void

    .line 626
    :cond_0
    invoke-super {p0, p1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 627
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isUseDHWRPanel()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 628
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1, v3}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    .line 630
    :cond_1
    iget-object v1, p0, Lcom/diotek/ime/framework/input/HwrInputModule;->mCurrentCompsing:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 631
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initComposingBuffer()V

    goto :goto_0
.end method

.method public handleRecognizeFail()V
    .locals 4

    .prologue
    .line 100
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v2, "SETTINGS_DEFAULT_HWR_RECOGNIZE_DELAY"

    const/16 v3, 0x1f4

    invoke-interface {v1, v2, v3}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    .line 102
    .local v0, "recogDelay":I
    iget-object v1, p0, Lcom/diotek/ime/framework/input/HwrInputModule;->recognizeFail:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v1, v0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->startTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;I)V

    .line 104
    .end local v0    # "recogDelay":I
    :cond_0
    return-void
.end method

.method public handleRecognizeGesture()V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/diotek/ime/framework/input/HwrInputModule;->recognizeFail:Lcom/diotek/ime/framework/input/InputModule$Timer;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->startTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;I)V

    .line 108
    return-void
.end method

.method public initialize()V
    .locals 0

    .prologue
    .line 261
    invoke-super {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initialize()V

    .line 262
    return-void
.end method

.method public onCharacterKey(I[I)V
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    const/4 v5, 0x0

    .line 324
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 326
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v1

    .line 327
    .local v1, "inputRange":I
    if-eqz v0, :cond_0

    .line 328
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 330
    :cond_0
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v3, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->isTextCharacter(I)Z

    move-result v3

    if-eqz v3, :cond_3

    if-nez v1, :cond_3

    .line 332
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v3, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(I)I

    .line 337
    :goto_0
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->autoPeriod(I)V

    .line 338
    if-eqz v0, :cond_1

    .line 339
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 341
    :cond_1
    iget v3, p0, Lcom/diotek/ime/framework/input/HwrInputModule;->mStrokeCount:I

    if-lez v3, :cond_2

    .line 342
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    const/4 v4, 0x2

    invoke-interface {v3, v4, v5}, Lcom/diotek/ime/framework/engine/InputEngineManager;->recognize(IZ)I

    move-result v2

    .line 344
    .local v2, "returnValue":I
    iget-object v3, p0, Lcom/diotek/ime/framework/input/HwrInputModule;->recognizeAll:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v3}, Lcom/diotek/ime/framework/input/AbstractInputModule;->stopTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;)V

    .line 345
    const/16 v3, 0xbb9

    if-ne v2, v3, :cond_4

    .line 346
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    .line 347
    iput-boolean v5, p0, Lcom/diotek/ime/framework/input/HwrInputModule;->mIsNeedCommitComposing:Z

    .line 348
    iget-object v3, p0, Lcom/diotek/ime/framework/input/HwrInputModule;->mCurrentCompsing:Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Lcom/diotek/ime/framework/input/AbstractInputModule;->commitHwrTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 349
    iget-object v3, p0, Lcom/diotek/ime/framework/input/HwrInputModule;->mCurrentCompsing:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 350
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->invalidateHwrBackgound()V

    .line 351
    iput v5, p0, Lcom/diotek/ime/framework/input/HwrInputModule;->mStrokeCount:I

    .line 357
    .end local v2    # "returnValue":I
    :cond_2
    :goto_1
    return-void

    .line 334
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/diotek/ime/framework/input/HwrInputModule;->processSymbolicKey(I[I)V

    goto :goto_0

    .line 353
    .restart local v2    # "returnValue":I
    :cond_4
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->invalidateHwrBackgound()V

    .line 354
    iput v5, p0, Lcom/diotek/ime/framework/input/HwrInputModule;->mStrokeCount:I

    goto :goto_1
.end method

.method public onHwrPanelLongPressed(ILjava/lang/String;)V
    .locals 0
    .param p1, "selectedArrayIndex"    # I
    .param p2, "resultString"    # Ljava/lang/String;

    .prologue
    .line 496
    return-void
.end method

.method public onHwrTouchCancel(IIJ)Z
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "eventTime"    # J

    .prologue
    .line 313
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    const/4 v1, 0x3

    invoke-interface {v0, p1, p2, v1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputStrokeData(III)Z

    .line 314
    const/4 v0, 0x1

    return v0
.end method

.method public onHwrTouchDown(IIJ)Z
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "eventTime"    # J

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 287
    iget-object v0, p0, Lcom/diotek/ime/framework/input/HwrInputModule;->recognizeAll:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->isTimerRunning(Lcom/diotek/ime/framework/input/InputModule$Timer;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    iput-boolean v2, p0, Lcom/diotek/ime/framework/input/HwrInputModule;->mIsNeedCommitComposing:Z

    .line 290
    :cond_0
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 291
    iget-object v0, p0, Lcom/diotek/ime/framework/input/HwrInputModule;->mCurrentCompsing:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 293
    :cond_1
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v0, p1, p2, v1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputStrokeData(III)Z

    .line 294
    iget v0, p0, Lcom/diotek/ime/framework/input/HwrInputModule;->mStrokeCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/diotek/ime/framework/input/HwrInputModule;->mStrokeCount:I

    .line 295
    return v2
.end method

.method public onHwrTouchMove(IIJ)Z
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "eventTime"    # J

    .prologue
    .line 300
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    const/4 v1, 0x2

    invoke-interface {v0, p1, p2, v1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputStrokeData(III)Z

    .line 301
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

    .line 306
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v0, p1, p2, v1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputStrokeData(III)Z

    .line 308
    return v1
.end method

.method public predictionWord()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 481
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    .line 482
    return v1
.end method

.method public predictionWordStartInputViewContinue()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 487
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    .line 488
    return v1
.end method

.method protected processSymbolicKey(I[I)V
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 360
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    .line 361
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v2, v3}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    .line 362
    new-array v0, v5, [I

    .line 363
    .local v0, "activeIndex":[I
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v1

    .line 365
    .local v1, "info":Landroid/view/inputmethod/EditorInfo;
    const/16 v2, 0xa

    if-eq p1, v2, :cond_0

    const/16 v2, 0x20

    if-ne p1, v2, :cond_1

    .line 367
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/input/HwrInputModule;->processWordSeparator(I[I)V

    .line 390
    :goto_0
    return-void

    .line 369
    :cond_1
    const/4 v2, -0x5

    if-ne p1, v2, :cond_2

    .line 370
    invoke-direct {p0}, Lcom/diotek/ime/framework/input/HwrInputModule;->processBackSpaceKey()V

    goto :goto_0

    .line 372
    :cond_2
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    iget v2, v1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    if-eqz v2, :cond_3

    .line 374
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    int-to-char v3, p1

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputCharSequence(Ljava/lang/CharSequence;)I

    .line 375
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getCharSequence(Ljava/lang/StringBuilder;)I

    .line 376
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setComposingText()V

    .line 377
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 378
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v2, v3}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    .line 379
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v2, v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getActiveIndex([I)I

    .line 380
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isInputViewShown()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 381
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v2, v3}, Lcom/diotek/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    .line 386
    :cond_3
    :goto_1
    invoke-virtual {p0, v5}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 387
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initComposingBuffer()V

    .line 388
    int-to-char v2, p1

    invoke-static {v2}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(C)V

    .line 389
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/diotek/ime/framework/input/HwrInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 383
    :cond_4
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2, v4}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    goto :goto_1
.end method

.method public release()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 266
    iget v1, p0, Lcom/diotek/ime/framework/input/HwrInputModule;->mStrokeCount:I

    if-lez v1, :cond_0

    .line 267
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    const/4 v2, 0x2

    invoke-interface {v1, v2, v3}, Lcom/diotek/ime/framework/engine/InputEngineManager;->recognize(IZ)I

    move-result v0

    .line 269
    .local v0, "returnValue":I
    iget-object v1, p0, Lcom/diotek/ime/framework/input/HwrInputModule;->recognizeAll:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->stopTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;)V

    .line 270
    const/16 v1, 0xbb9

    if-ne v0, v1, :cond_1

    .line 271
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    .line 272
    iput-boolean v3, p0, Lcom/diotek/ime/framework/input/HwrInputModule;->mIsNeedCommitComposing:Z

    .line 273
    iget-object v1, p0, Lcom/diotek/ime/framework/input/HwrInputModule;->mCurrentCompsing:Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->commitHwrTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 274
    iget-object v1, p0, Lcom/diotek/ime/framework/input/HwrInputModule;->mCurrentCompsing:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 275
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->invalidateHwrBackgound()V

    .line 276
    iput v3, p0, Lcom/diotek/ime/framework/input/HwrInputModule;->mStrokeCount:I

    .line 283
    .end local v0    # "returnValue":I
    :cond_0
    :goto_0
    return-void

    .line 279
    .restart local v0    # "returnValue":I
    :cond_1
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->invalidateHwrBackgound()V

    .line 280
    iput v3, p0, Lcom/diotek/ime/framework/input/HwrInputModule;->mStrokeCount:I

    goto :goto_0
.end method

.method public setAddStrokeCallBackOnHWREngine()V
    .locals 2

    .prologue
    .line 500
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v1, p0, Lcom/diotek/ime/framework/input/HwrInputModule;->mAddStrokeCallBack:Lcom/diotek/ime/framework/engine/dhwr/AddStroke;

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->setOnInputStrokeCallback(Lcom/diotek/ime/framework/engine/dhwr/AddStroke;)V

    .line 503
    :cond_0
    return-void
.end method

.method public updateVOHWRSuggestion()V
    .locals 3

    .prologue
    .line 506
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    .line 507
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v1, v2}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getHwrSuggestion(Ljava/util/ArrayList;)I

    .line 508
    const/4 v1, 0x1

    new-array v0, v1, [I

    .line 509
    .local v0, "activeIndex":[I
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v1, v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getActiveIndex([I)I

    .line 510
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v1, v2}, Lcom/diotek/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    .line 511
    return-void
.end method
