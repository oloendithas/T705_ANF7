.class public abstract Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;
.super Lcom/diotek/ime/framework/input/AbstractInputModule;
.source "AbstractXt9InputModule.java"


# instance fields
.field protected mAutoPeriod:Lcom/diotek/ime/framework/input/InputModule$Timer;

.field protected mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

.field protected mBackupCandidate:Ljava/lang/StringBuilder;

.field protected final mCandidates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field protected mDeleteCount:I

.field protected mDirtyComposing:Z

.field protected mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

.field protected mIgnorePredictionWord:Z

.field protected mInputLanguage:I

.field protected mInputManager:Lcom/diotek/ime/framework/common/InputManager;

.field protected mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

.field protected mIsBeforeTraceInput:Z

.field protected mIsDisableAddwordbyCSC:Z

.field protected mIsDisableAddwordbyCheckLDB:Z

.field protected mIsKorMode:Z

.field protected mIsPredictionOn:Z

.field protected mIsRecapturingProcessed:Z

.field protected mIsTraceOn:Z

.field protected mLastKeyCode:I

.field protected mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

.field protected mPickSuggestionIndex:I

.field protected mRepository:Lcom/diotek/ime/framework/repository/Repository;

.field protected mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

.field protected mStateCandidate:I

.field private mTimeoutComposingLength:I

.field protected mTimmerHandler:Landroid/os/Handler;

.field protected mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

.field protected mXt9Version:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 148
    invoke-direct {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;-><init>()V

    .line 49
    iput-object v0, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 50
    iput-object v0, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    .line 51
    iput-object v0, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    .line 52
    iput-object v0, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    .line 53
    iput-object v0, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    .line 54
    iput-object v0, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    .line 55
    iput-object v0, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    .line 56
    iput-boolean v1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mIgnorePredictionWord:Z

    .line 57
    iput v1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mStateCandidate:I

    .line 58
    iput-boolean v1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mIsKorMode:Z

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mCandidates:Ljava/util/ArrayList;

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mBackupCandidate:Ljava/lang/StringBuilder;

    .line 66
    iput v2, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mLastKeyCode:I

    .line 67
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mTimmerHandler:Landroid/os/Handler;

    .line 69
    iput v1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mDeleteCount:I

    .line 70
    const/high16 v0, 0x656e0000

    iput v0, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputLanguage:I

    .line 71
    iput-boolean v1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mIsPredictionOn:Z

    .line 72
    iput-boolean v1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mIsTraceOn:Z

    .line 73
    iput v1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mXt9Version:I

    .line 76
    iput v1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mTimeoutComposingLength:I

    .line 77
    iput-boolean v1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mIsDisableAddwordbyCSC:Z

    .line 78
    iput-boolean v1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mIsDisableAddwordbyCheckLDB:Z

    .line 79
    iput-boolean v1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mDirtyComposing:Z

    .line 82
    iput-boolean v1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mIsBeforeTraceInput:Z

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mIsRecapturingProcessed:Z

    .line 85
    iput v2, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mPickSuggestionIndex:I

    .line 123
    new-instance v0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule$1;

    invoke-direct {v0, p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule$1;-><init>(Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;)V

    iput-object v0, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    .line 141
    new-instance v0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule$2;

    invoke-direct {v0, p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule$2;-><init>(Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;)V

    iput-object v0, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mAutoPeriod:Lcom/diotek/ime/framework/input/InputModule$Timer;

    .line 149
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 151
    iget-object v0, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getRepository()Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    .line 153
    iget-object v0, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getShiftStateController()Lcom/diotek/ime/framework/common/ShiftStateController;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    .line 154
    iget-object v0, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getInputModeManager()Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    .line 157
    :cond_0
    invoke-static {}, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->getInstance()Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    .line 158
    invoke-static {}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getInstance()Lcom/diotek/ime/framework/trace/KeyboardTrace;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    .line 160
    invoke-static {}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->newInstance()Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    .line 162
    iget-object v0, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v0, :cond_1

    .line 163
    iget-object v0, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isKorMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mIsKorMode:Z

    .line 165
    :cond_1
    return-void
.end method

.method private checkXT9WordWrappingRule(C)Z
    .locals 3
    .param p1, "letter"    # C

    .prologue
    const/4 v0, 0x1

    .line 1416
    invoke-static {p1}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1421
    :cond_0
    :goto_0
    return v0

    .line 1418
    :cond_1
    const-string v1, "\'-#_"

    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 1421
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getWordOfContextBuffer(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;[I)Ljava/lang/StringBuilder;
    .locals 5
    .param p1, "beforeBuffer"    # Ljava/lang/StringBuilder;
    .param p2, "afterBuffer"    # Ljava/lang/StringBuilder;
    .param p3, "preWordLen"    # [I

    .prologue
    const/4 v4, 0x0

    .line 1391
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1393
    .local v2, "word":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 1394
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "lastIndexOfSpecialChar":I
    :goto_0
    if-ltz v1, :cond_0

    .line 1395
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    invoke-direct {p0, v3}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->checkXT9WordWrappingRule(C)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1399
    :cond_0
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1400
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    aput v3, p3, v4

    .line 1404
    .end local v1    # "lastIndexOfSpecialChar":I
    :cond_1
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 1405
    const/4 v0, 0x0

    .local v0, "firstIndexOfSpecialChar":I
    :goto_1
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 1406
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    invoke-direct {p0, v3}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->checkXT9WordWrappingRule(C)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1410
    :cond_2
    invoke-virtual {p2, v4, v0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1412
    .end local v0    # "firstIndexOfSpecialChar":I
    :cond_3
    return-object v2

    .line 1394
    .restart local v1    # "lastIndexOfSpecialChar":I
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1405
    .end local v1    # "lastIndexOfSpecialChar":I
    .restart local v0    # "firstIndexOfSpecialChar":I
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private hasPrevNextButton()Z
    .locals 2

    .prologue
    .line 1585
    invoke-static {}, Lcom/diotek/ime/framework/common/PrivateImeOptionsControllerImpl;->getInstance()Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    move-result-object v0

    .line 1586
    .local v0, "mPrivateImeOptionsController":Lcom/diotek/ime/framework/common/PrivateImeOptionsController;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/PrivateImeOptionsController;->getPrevNextTypeOfPrivateImeOptions()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isPopupInputMethod()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setAddwordbyCheckLDB(Z)V
    .locals 0
    .param p1, "isAddword"    # Z

    .prologue
    .line 1494
    iput-boolean p1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mIsDisableAddwordbyCheckLDB:Z

    .line 1495
    return-void
.end method


# virtual methods
.method public addMyWord(Ljava/lang/CharSequence;)I
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 1429
    iget-object v0, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->addMyWord(Ljava/lang/CharSequence;)I

    move-result v0

    return v0
.end method

.method protected autoPeriod(I)V
    .locals 14
    .param p1, "keyCode"    # I

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/16 v10, 0x20

    const/4 v9, 0x0

    .line 722
    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v8, "SETTINGS_DEFAULT_AUTO_PERIOD"

    invoke-interface {v7, v8, v9}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_0

    if-eq p1, v10, :cond_1

    .line 775
    :cond_0
    :goto_0
    return-void

    .line 726
    :cond_1
    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 727
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v1, :cond_0

    .line 731
    invoke-interface {v1, v13, v9}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v5

    .line 732
    .local v5, "text":Ljava/lang/CharSequence;
    if-eqz v5, :cond_0

    .line 736
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 738
    .local v2, "length":I
    if-ge v2, v13, :cond_3

    .line 739
    if-ne v2, v12, :cond_0

    .line 740
    invoke-interface {v5, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 741
    .local v0, "firstChar":C
    invoke-interface {v5, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 742
    .local v4, "secondChar":C
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v7

    if-eqz v7, :cond_0

    :cond_2
    if-ne v4, v10, :cond_0

    .line 744
    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mAutoPeriod:Lcom/diotek/ime/framework/input/InputModule$Timer;

    const/16 v8, 0x1f4

    invoke-virtual {p0, v7, v8}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->startTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;I)V

    goto :goto_0

    .line 750
    .end local v0    # "firstChar":C
    .end local v4    # "secondChar":C
    :cond_3
    invoke-interface {v5, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 751
    .restart local v0    # "firstChar":C
    invoke-interface {v5, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 752
    .restart local v4    # "secondChar":C
    invoke-interface {v5, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .line 754
    .local v6, "thirdChar":C
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-static {v0}, Ljava/lang/Character;->isUnicodeIdentifierPart(C)Z

    move-result v7

    if-eqz v7, :cond_6

    :cond_4
    if-ne v4, v10, :cond_6

    if-ne v6, v10, :cond_6

    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mAutoPeriod:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/input/InputModule$Timer;->isRunning()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 759
    iget v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputLanguage:I

    const/high16 v8, 0x68690000

    if-eq v7, v8, :cond_5

    iget v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputLanguage:I

    const/high16 v8, 0x6d720000

    if-eq v7, v8, :cond_5

    iget v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputLanguage:I

    const/high16 v8, 0x626e0000

    if-ne v7, v8, :cond_8

    .line 761
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "\u8a93\ufffd"

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 765
    .local v3, "sb":Ljava/lang/StringBuilder;
    :goto_1
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 766
    invoke-interface {v1, v12, v9}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 767
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7, v11}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 768
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 769
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->predictionWord()Z

    .line 771
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_6
    invoke-static {v4}, Ljava/lang/Character;->isLetter(C)Z

    move-result v7

    if-nez v7, :cond_7

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v7

    if-nez v7, :cond_7

    invoke-static {v0}, Ljava/lang/Character;->isUnicodeIdentifierPart(C)Z

    move-result v7

    if-eqz v7, :cond_0

    :cond_7
    if-ne v6, v10, :cond_0

    .line 773
    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mAutoPeriod:Lcom/diotek/ime/framework/input/InputModule$Timer;

    const/16 v8, 0x1f4

    invoke-virtual {p0, v7, v8}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->startTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;I)V

    goto/16 :goto_0

    .line 763
    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, ". "

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .restart local v3    # "sb":Ljava/lang/StringBuilder;
    goto :goto_1
.end method

.method public buildSuggestions()V
    .locals 1

    .prologue
    .line 1571
    iget-object v0, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->updateSelectList()I

    .line 1572
    return-void
.end method

.method public cancelPreviewTrace()V
    .locals 0

    .prologue
    .line 1471
    return-void
.end method

.method public clearAction()V
    .locals 1

    .prologue
    .line 792
    iget-object v0, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->reset()V

    .line 793
    return-void
.end method

.method protected clearCandidateList()V
    .locals 1

    .prologue
    .line 778
    iget-object v0, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 779
    iget-object v0, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 781
    :cond_0
    return-void
.end method

.method public closing()V
    .locals 1

    .prologue
    .line 785
    const/4 v0, 0x0

    iput v0, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mStateCandidate:I

    .line 786
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->clearAction()V

    .line 787
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->resetPredictionWord()V

    .line 788
    return-void
.end method

.method public commitHwrTextAndInitComposing(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 367
    iget-object v1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 368
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 369
    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 371
    :cond_0
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 372
    iget-object v1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 373
    return-void
.end method

.method protected commitText(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 1558
    iget-object v1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1559
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 1560
    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1562
    :cond_0
    return-void
.end method

.method public commitTextAndInitComposing(Ljava/lang/CharSequence;)V
    .locals 7
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 312
    iget-object v3, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 313
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_5

    .line 314
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 315
    const/4 v1, 0x1

    .line 316
    .local v1, "isTACcomposible":Z
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 317
    iget-object v3, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    if-eqz v3, :cond_0

    .line 318
    iget-object v3, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v3, v5}, Lcom/diotek/ime/framework/common/ShiftStateController;->setNextShiftState(Z)V

    .line 321
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ne v3, v5, :cond_3

    .line 322
    const-string v2, ""

    .line 323
    .local v2, "leadingChar":Ljava/lang/String;
    invoke-interface {v0, v5, v6}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v2

    .end local v2    # "leadingChar":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 324
    .restart local v2    # "leadingChar":Ljava/lang/String;
    if-nez v2, :cond_1

    const-string v2, ""

    .line 326
    :cond_1
    if-eqz v2, :cond_2

    .line 327
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-static {v3, v4}, Lcom/diotek/ime/framework/common/InputSequenceCheck;->isThaiAcceptable(II)Z

    move-result v1

    .line 331
    :cond_2
    iget v3, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputLanguage:I

    const/high16 v4, 0x76690000

    if-ne v3, v4, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Lcom/diotek/ime/framework/common/InputSequenceCheck;->isVietameseTone(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 332
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/text/Normalizer$Form;->NFC:Ljava/text/Normalizer$Form;

    invoke-static {v3, v4}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object p1

    .line 333
    invoke-interface {v0, v5, v6}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 336
    .end local v2    # "leadingChar":Ljava/lang/String;
    :cond_3
    if-eqz v1, :cond_4

    .line 337
    invoke-interface {v0, p1, v5}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 338
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 340
    :cond_4
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 343
    .end local v1    # "isTACcomposible":Z
    :cond_5
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_6

    .line 344
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 347
    :cond_6
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->clearCandidateList()V

    .line 349
    iget-object v3, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3, v6}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    .line 350
    iget-object v3, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    .line 351
    return-void
.end method

.method public commitTextAndInitComposingForThai(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 354
    iget-object v1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 355
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 356
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 357
    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 358
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 360
    :cond_0
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 361
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->clearCandidateList()V

    .line 362
    iget-object v1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    .line 363
    iget-object v1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    .line 364
    return-void
.end method

.method protected convertComposingIToUpperCase()V
    .locals 6

    .prologue
    const/16 v5, 0x69

    const/16 v4, 0x49

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1446
    iget v0, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputLanguage:I

    const/high16 v1, 0x656e0000

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputLanguage:I

    const v1, 0x656e4742

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputLanguage:I

    const v1, 0x656e5553

    if-ne v0, v1, :cond_1

    .line 1448
    :cond_0
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasOneChar()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->getFirstChar()C

    move-result v0

    if-ne v0, v5, :cond_2

    .line 1449
    invoke-static {v2, v4}, Lcom/diotek/ime/framework/input/ComposingTextManager;->setCharAt(IC)V

    .line 1450
    iput-boolean v3, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mDirtyComposing:Z

    .line 1456
    :cond_1
    :goto_0
    return-void

    .line 1451
    :cond_2
    iget-boolean v0, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mDirtyComposing:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v0

    if-le v0, v3, :cond_1

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->getFirstChar()C

    move-result v0

    if-ne v0, v4, :cond_1

    .line 1452
    invoke-static {v2, v5}, Lcom/diotek/ime/framework/input/ComposingTextManager;->setCharAt(IC)V

    .line 1453
    iput-boolean v2, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mDirtyComposing:Z

    goto :goto_0
.end method

.method protected doNextWordPrediction(Z)V
    .locals 1
    .param p1, "bCommitSpace"    # Z

    .prologue
    .line 1004
    iget-object v0, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->doNextWordPredictionForXt9(Z)I

    .line 1005
    const/4 v0, 0x2

    iput v0, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mStateCandidate:I

    .line 1006
    return-void
.end method

.method public endMultitapTimer()V
    .locals 2

    .prologue
    .line 396
    iget-object v0, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/InputModule$Timer;->setRunning(Z)V

    .line 397
    iget-object v0, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mTimmerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 398
    const/4 v0, -0x1

    iput v0, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mLastKeyCode:I

    .line 399
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->finishComposing(Z)V

    .line 400
    return-void
.end method

.method public findWordInUDB(Ljava/lang/CharSequence;)I
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 1425
    iget-object v0, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->findWordInUDB(Ljava/lang/CharSequence;)I

    move-result v0

    return v0
.end method

.method public finishAndInitByCursorMove()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 834
    iget-object v2, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestionCount()I

    move-result v1

    .line 835
    .local v1, "totalWordsCount":I
    iget-object v2, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    .line 836
    .local v0, "inputMethod":I
    if-ne v0, v3, :cond_1

    .line 837
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->endMultitapTimer()V

    .line 854
    :cond_0
    :goto_0
    return-void

    .line 839
    :cond_1
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v2

    if-nez v2, :cond_2

    if-lez v1, :cond_0

    .line 840
    :cond_2
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 843
    :cond_3
    invoke-virtual {p0, v3}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->finishComposing(Z)V

    goto :goto_0
.end method

.method public finishComposing(Z)V
    .locals 2
    .param p1, "resetComposing"    # Z

    .prologue
    .line 237
    iget-object v1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 238
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 239
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 241
    :cond_0
    if-eqz p1, :cond_1

    .line 242
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->resetTimeoutComposingLength()V

    .line 244
    :cond_1
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->initComposingBuffer()V

    .line 245
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mDirtyComposing:Z

    .line 246
    return-void
.end method

.method public finishComposingWithoutInit()V
    .locals 2

    .prologue
    .line 249
    iget-object v1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 250
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 251
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 253
    :cond_0
    return-void
.end method

.method protected getCurrentChineseModeMaxLength()I
    .locals 3

    .prologue
    .line 1028
    const/4 v0, 0x0

    .line 1030
    .local v0, "length":I
    iget v1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputLanguage:I

    const v2, 0x7a685457

    if-ne v1, v2, :cond_0

    .line 1031
    const/16 v0, 0x1e

    .line 1040
    :goto_0
    return v0

    .line 1032
    :cond_0
    iget v1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputLanguage:I

    const v2, 0x7a68434e

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputLanguage:I

    const/high16 v2, 0x7a680000

    if-ne v1, v2, :cond_2

    .line 1034
    :cond_1
    const/16 v0, 0x19

    goto :goto_0

    .line 1035
    :cond_2
    iget v1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputLanguage:I

    const v2, 0x7a68484b

    if-ne v1, v2, :cond_3

    .line 1036
    const/16 v0, 0xf

    goto :goto_0

    .line 1038
    :cond_3
    const/16 v0, 0x1e

    goto :goto_0
.end method

.method public getCurrentLanguageID()I
    .locals 1

    .prologue
    .line 1122
    iget v0, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputLanguage:I

    return v0
.end method

.method public getDeleteCount()I
    .locals 1

    .prologue
    .line 1089
    iget v0, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mDeleteCount:I

    return v0
.end method

.method protected getEditorClass()I
    .locals 3

    .prologue
    .line 200
    const/4 v0, 0x0

    .line 202
    .local v0, "editorClass":I
    iget-object v2, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v1

    .line 204
    .local v1, "ei":Landroid/view/inputmethod/EditorInfo;
    if-eqz v1, :cond_0

    .line 205
    iget v2, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v0, v2, 0xf

    .line 208
    :cond_0
    return v0
.end method

.method public getLastWordDividerIndex()I
    .locals 13

    .prologue
    const/16 v12, 0x20

    const/16 v11, 0xa

    const/4 v10, -0x1

    const/4 v8, 0x0

    .line 1045
    const/4 v1, -0x1

    .line 1046
    .local v1, "lastDividerIndex":I
    iget-object v9, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1047
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v0, :cond_1

    .line 1083
    :cond_0
    :goto_0
    return v8

    .line 1051
    :cond_1
    const/16 v9, 0x40

    invoke-interface {v0, v9, v8}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1052
    .local v7, "text":Ljava/lang/String;
    if-nez v7, :cond_2

    .line 1053
    sget-boolean v9, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    if-eqz v9, :cond_0

    .line 1054
    const-string v9, "SamsungIME"

    const-string v10, "ERROR : getTextBeforeCursor retuen null !!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1058
    :cond_2
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v5

    .line 1059
    .local v5, "length":I
    invoke-virtual {v7, v12}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 1060
    .local v4, "lastSpaceIndex":I
    invoke-virtual {v7, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 1062
    .local v2, "lastEnterIndex":I
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1064
    .local v3, "lastIndexOfDevider":I
    if-nez v5, :cond_3

    .line 1065
    const/4 v1, 0x0

    :goto_1
    move v8, v1

    .line 1083
    goto :goto_0

    .line 1066
    :cond_3
    if-ne v3, v10, :cond_4

    .line 1067
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_1

    .line 1068
    :cond_4
    add-int/lit8 v9, v5, -0x1

    if-ne v3, v9, :cond_7

    .line 1069
    const/4 v6, 0x0

    .line 1070
    .local v6, "numberOfDeletingChar":I
    :goto_2
    add-int/lit8 v9, v5, -0x1

    if-ne v3, v9, :cond_5

    if-ltz v3, :cond_5

    .line 1071
    invoke-virtual {v7, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 1072
    invoke-virtual {v7, v12}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 1073
    invoke-virtual {v7, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 1074
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1075
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v5

    .line 1076
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1078
    :cond_5
    if-ne v3, v10, :cond_6

    :goto_3
    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int v1, v8, v6

    .line 1080
    goto :goto_1

    .line 1078
    :cond_6
    add-int/lit8 v8, v3, 0x1

    goto :goto_3

    .line 1081
    .end local v6    # "numberOfDeletingChar":I
    :cond_7
    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_1
.end method

.method public getStateCandidate()I
    .locals 1

    .prologue
    .line 1499
    iget v0, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mStateCandidate:I

    return v0
.end method

.method public getTimeoutComposingLength()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mTimeoutComposingLength:I

    return v0
.end method

.method public getWordToAddMyWordList()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1474
    iget-object v2, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1475
    iget-object v2, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v3, "ADDWORD_BACKUP_CADIDATE"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1476
    .local v0, "backupCadidate":Ljava/lang/String;
    const-string v2, " + Add \"%s\" to my word list"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1477
    .local v1, "myWord":Ljava/lang/String;
    iget-object v2, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1478
    iget-object v2, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mCandidates:Ljava/util/ArrayList;

    return-object v2
.end method

.method public getXt9Version()I
    .locals 1

    .prologue
    .line 1490
    iget v0, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mXt9Version:I

    return v0
.end method

.method public increaseDeleteCount()V
    .locals 1

    .prologue
    .line 1105
    iget v0, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mDeleteCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mDeleteCount:I

    .line 1106
    return-void
.end method

.method public initCandidates(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1576
    .local p1, "defaultCandidateList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    iget-boolean v0, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mIsPredictionOn:Z

    if-eqz v0, :cond_1

    .line 1577
    iget-object v0, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/16 v1, 0x19

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/common/InputManager;->buildSuggestions(I)V

    .line 1583
    :cond_0
    :goto_0
    return-void

    .line 1578
    :cond_1
    invoke-direct {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->hasPrevNextButton()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1580
    iget-object v0, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesDelayed(Ljava/util/ArrayList;I)V

    goto :goto_0
.end method

.method public initComposingBuffer()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 213
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 214
    iget-object v0, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    .line 215
    invoke-direct {p0, v2}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->setAddwordbyCheckLDB(Z)V

    .line 216
    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->isEnableDefaultCandidateview()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 217
    iget-object v0, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getCandidateviewStatus()I

    move-result v0

    if-nez v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0, v2}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    .line 224
    :cond_0
    :goto_0
    invoke-static {}, Lcom/diotek/ime/framework/repository/KeyboardStatus;->isPhoneticSpellLayout()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 225
    iget-object v0, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isSpellViewShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 226
    iget-object v0, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0, v3, v2}, Lcom/diotek/ime/framework/common/InputManager;->updateSpellView(Ljava/lang/CharSequence;Z)V

    .line 228
    :cond_1
    iget-object v0, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "CHINESE_PHONETIC_SPELL_LAYOUT_SHOWN"

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 229
    iget-object v0, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0, v3, v2}, Lcom/diotek/ime/framework/common/InputManager;->setPhoneticSpellLayout(Ljava/util/ArrayList;Z)V

    .line 230
    iget-object v0, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "CHINESE_PHONETIC_SELECT_SPELL_INDEX"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;I)V

    .line 233
    :cond_2
    return-void

    .line 221
    :cond_3
    iget-object v0, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0, v2}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    goto :goto_0
.end method

.method public initDeleteCount()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1095
    iget-object v0, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isSwiftKeyMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mIsPredictionOn:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mDeleteCount:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->isRecapture()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1097
    iput v2, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mDeleteCount:I

    .line 1098
    iget-object v0, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0, v2}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    .line 1102
    :goto_0
    return-void

    .line 1100
    :cond_0
    iput v2, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mDeleteCount:I

    goto :goto_0
.end method

.method public initInputEngineAndComposing(IIII)V
    .locals 0
    .param p1, "oldSelStart"    # I
    .param p2, "oldSelEnd"    # I
    .param p3, "newSelStart"    # I
    .param p4, "newSelEnd"    # I

    .prologue
    .line 858
    return-void
.end method

.method public initialize()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 89
    const-string v0, ""

    .line 91
    .local v0, "addWordType":Ljava/lang/String;
    iget-object v1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v2, "XT9_VERSION"

    invoke-interface {v1, v2, v5}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mXt9Version:I

    .line 93
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Sip_AddWordType"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 94
    iput-boolean v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mIsDisableAddwordbyCSC:Z

    .line 95
    const-string v1, "Prompt"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mXt9Version:I

    if-nez v1, :cond_0

    .line 96
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mIsDisableAddwordbyCSC:Z

    .line 98
    :cond_0
    iget-object v1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v2, "INPUT_LANGUAGE"

    const v3, 0x656e4742

    invoke-interface {v1, v2, v3}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputLanguage:I

    .line 99
    iget-object v1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v1

    iput-boolean v1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mIsPredictionOn:Z

    .line 100
    iget-object v1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v2, "SETTINGS_DEFAULT_TRACE"

    invoke-interface {v1, v2, v5}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mIsTraceOn:Z

    .line 101
    iget-object v1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    iget v2, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputLanguage:I

    iget-object v3, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v4, "AUTO_SPACE"

    invoke-interface {v3, v4, v5}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->init(IZ)V

    .line 102
    return-void
.end method

.method public inputDisplayedRecognitionString()V
    .locals 0

    .prologue
    .line 378
    return-void
.end method

.method protected isAvailablePrediction()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 896
    iget-object v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-nez v4, :cond_1

    .line 911
    :cond_0
    :goto_0
    return v2

    .line 899
    :cond_1
    iget-object v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 900
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 901
    invoke-interface {v0, v3, v2}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 903
    .local v1, "nextChar":Ljava/lang/String;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, " .,;:!?\n()[]*&@{}/<>_-+=|\'\u061b\u060c\u061f\""

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    move v2, v3

    .line 905
    goto :goto_0

    .line 906
    :cond_3
    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isLetter(C)Z

    move-result v4

    if-nez v4, :cond_0

    iget v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mStateCandidate:I

    if-ne v4, v3, :cond_0

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->isRecapture()Z

    move-result v4

    if-nez v4, :cond_0

    move v2, v3

    .line 908
    goto :goto_0
.end method

.method public isBeforeTraceInput()Z
    .locals 1

    .prologue
    .line 1482
    iget-boolean v0, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mIsBeforeTraceInput:Z

    return v0
.end method

.method public isMultiTapRnunnig()Z
    .locals 1

    .prologue
    .line 1195
    iget-object v0, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    if-eqz v0, :cond_0

    .line 1196
    iget-object v0, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/input/InputModule$Timer;->isRunning()Z

    move-result v0

    .line 1198
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNeedToAddUDB(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v3, 0x0

    .line 1433
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 1434
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->findWordInUDB(Ljava/lang/CharSequence;)I

    move-result v0

    .line 1435
    .local v0, "retCode":I
    if-nez v0, :cond_1

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1436
    iget-object v1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Lcom/diotek/ime/framework/common/InputManager;->setCandidateviewStatus(I)V

    .line 1437
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->setAddwordbyCheckLDB(Z)V

    .line 1443
    .end local v0    # "retCode":I
    :cond_0
    :goto_0
    return-void

    .line 1439
    .restart local v0    # "retCode":I
    :cond_1
    iget-object v1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/diotek/ime/framework/common/InputManager;->setCandidateviewStatus(I)V

    .line 1440
    invoke-direct {p0, v3}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->setAddwordbyCheckLDB(Z)V

    goto :goto_0
.end method

.method public isPredictionWord()Z
    .locals 1

    .prologue
    .line 1210
    iget-boolean v0, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mIgnorePredictionWord:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isRecapture()Z
    .locals 9

    .prologue
    const/4 v8, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 861
    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    if-nez v6, :cond_1

    .line 892
    :cond_0
    :goto_0
    return v4

    .line 864
    :cond_1
    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 865
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v7, "SETTINGS_DEFAULT_RECAPTURE"

    invoke-interface {v6, v7, v4}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v1

    .line 866
    .local v1, "isRecaptureOn":Z
    if-eqz v0, :cond_0

    .line 867
    invoke-interface {v0, v4}, Landroid/view/inputmethod/InputConnection;->getSelectedText(I)Ljava/lang/CharSequence;

    move-result-object v6

    if-nez v6, :cond_0

    .line 871
    invoke-interface {v0, v5, v4}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 872
    .local v2, "lastChar":Ljava/lang/String;
    invoke-interface {v0, v5, v4}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 874
    .local v3, "nextChar":Ljava/lang/String;
    iget v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputLanguage:I

    const/high16 v7, 0x6b6f0000

    if-ne v6, v7, :cond_4

    .line 875
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isLetter(C)Z

    move-result v6

    if-nez v6, :cond_3

    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isLetter(C)Z

    move-result v6

    if-eqz v6, :cond_0

    :cond_3
    if-eqz v1, :cond_0

    move v4, v5

    .line 880
    goto :goto_0

    .line 883
    :cond_4
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "\'-#_"

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ne v6, v8, :cond_6

    :cond_5
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "\'-#_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-eq v6, v8, :cond_0

    :cond_6
    if-eqz v1, :cond_0

    move v4, v5

    .line 888
    goto/16 :goto_0
.end method

.method public isThaiAcceptable()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1150
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->getCurrentLanguageID()I

    move-result v4

    const/high16 v5, 0x74680000

    if-ne v4, v5, :cond_2

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasOneChar()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1152
    iget-object v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1153
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v0, :cond_0

    .line 1162
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :goto_0
    return v2

    .line 1156
    .restart local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_0
    const-string v1, ""

    .line 1157
    .local v1, "leadingStr":Ljava/lang/String;
    invoke-interface {v0, v3, v2}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .end local v1    # "leadingStr":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 1158
    .restart local v1    # "leadingStr":Ljava/lang/String;
    if-nez v1, :cond_1

    const-string v1, ""

    .line 1160
    :cond_1
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->getHashCode()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v2, v3}, Lcom/diotek/ime/framework/common/InputSequenceCheck;->isThaiAcceptable(II)Z

    move-result v2

    goto :goto_0

    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v1    # "leadingStr":Ljava/lang/String;
    :cond_2
    move v2, v3

    .line 1162
    goto :goto_0
.end method

.method public isThaiAcceptable(Z)Z
    .locals 9
    .param p1, "isThaiMultitapComposing"    # Z

    .prologue
    const/4 v8, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1166
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->getCurrentLanguageID()I

    move-result v6

    const/high16 v7, 0x74680000

    if-ne v6, v7, :cond_5

    .line 1167
    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 1168
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v1, :cond_0

    .line 1190
    .end local v1    # "ic":Landroid/view/inputmethod/InputConnection;
    :goto_0
    return v4

    .line 1171
    .restart local v1    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_0
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->getHashCode()I

    move-result v0

    .line 1172
    .local v0, "follwingChar":I
    const-string v3, ""

    .line 1173
    .local v3, "leadingStr":Ljava/lang/String;
    invoke-interface {v1, v8, v4}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v3

    .end local v3    # "leadingStr":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 1174
    .restart local v3    # "leadingStr":Ljava/lang/String;
    if-nez v3, :cond_1

    const-string v3, ""

    .line 1176
    :cond_1
    const/4 v2, 0x0

    .line 1177
    .local v2, "leadingChar":I
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v6, v5, :cond_3

    .line 1178
    if-nez p1, :cond_2

    .line 1179
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v2

    .line 1188
    :cond_2
    :goto_1
    invoke-static {v0, v2}, Lcom/diotek/ime/framework/common/InputSequenceCheck;->isThaiAcceptable(II)Z

    move-result v4

    goto :goto_0

    .line 1181
    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v6, v8, :cond_2

    .line 1182
    if-eqz p1, :cond_4

    .line 1183
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    goto :goto_1

    .line 1185
    :cond_4
    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    goto :goto_1

    .end local v0    # "follwingChar":I
    .end local v1    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v2    # "leadingChar":I
    .end local v3    # "leadingStr":Ljava/lang/String;
    :cond_5
    move v4, v5

    .line 1190
    goto :goto_0
.end method

.method protected isTimerRunning(Lcom/diotek/ime/framework/input/InputModule$Timer;)Z
    .locals 1
    .param p1, "run"    # Lcom/diotek/ime/framework/input/InputModule$Timer;

    .prologue
    .line 391
    invoke-virtual {p1}, Lcom/diotek/ime/framework/input/InputModule$Timer;->isRunning()Z

    move-result v0

    return v0
.end method

.method public makeCompoingTextCursoroWrod()V
    .locals 7

    .prologue
    .line 1644
    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v3

    .line 1645
    .local v3, "ic":Landroid/view/inputmethod/InputConnection;
    const/4 v4, 0x0

    .line 1646
    .local v4, "startPosition":I
    const/4 v1, 0x0

    .line 1647
    .local v1, "endPosition":I
    const/4 v0, 0x0

    .line 1649
    .local v0, "currentCorsorPosition":I
    if-eqz v3, :cond_2

    .line 1650
    iget v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosPrevText:I

    if-nez v5, :cond_0

    iget v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosNextText:I

    if-eqz v5, :cond_2

    .line 1651
    :cond_0
    new-instance v5, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v5}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    const/4 v6, 0x0

    invoke-interface {v3, v5, v6}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v2

    .line 1653
    .local v2, "et":Landroid/view/inputmethod/ExtractedText;
    if-eqz v2, :cond_1

    iget-object v5, v2, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    if-eqz v5, :cond_1

    .line 1654
    iget v5, v2, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    iget v6, v2, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    add-int v0, v5, v6

    .line 1656
    :cond_1
    iget v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosPrevText:I

    if-ltz v5, :cond_2

    iget v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosNextText:I

    if-ltz v5, :cond_2

    .line 1657
    iget v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosPrevText:I

    sub-int v4, v0, v5

    .line 1658
    iget v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosNextText:I

    add-int v1, v0, v5

    .line 1660
    invoke-interface {v3, v4, v1}, Landroid/view/inputmethod/InputConnection;->setComposingRegion(II)Z

    .line 1665
    .end local v2    # "et":Landroid/view/inputmethod/ExtractedText;
    :cond_2
    return-void
.end method

.method protected nomalizerFormNFC()V
    .locals 3

    .prologue
    .line 306
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/text/Normalizer$Form;->NFC:Ljava/text/Normalizer$Form;

    invoke-static {v1, v2}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v0

    .line 307
    .local v0, "normalizedString":Ljava/lang/String;
    invoke-static {v0}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(Ljava/lang/String;)V

    .line 308
    return-void
.end method

.method public onCharacterKeyForHwKeyboard(I[I)V
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    .line 1517
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1518
    iget-object v0, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContextForHwKeyboard()V

    .line 1520
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->isTextCharacterForHwKeyboard(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1521
    invoke-virtual {p0, p1, p2}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->processKeyForHwKeyboard(I[I)V

    .line 1525
    :goto_0
    iput p1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mLastKeyCode:I

    .line 1526
    return-void

    .line 1523
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->processSymbolicKey(I[I)V

    goto :goto_0
.end method

.method public onHwrTouchCancel(IIJ)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "eventTime"    # J

    .prologue
    .line 184
    const/4 v0, 0x0

    return v0
.end method

.method public onHwrTouchDown(IIJ)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "eventTime"    # J

    .prologue
    .line 169
    const/4 v0, 0x0

    return v0
.end method

.method public onHwrTouchMove(IIJ)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "eventTime"    # J

    .prologue
    .line 174
    const/4 v0, 0x0

    return v0
.end method

.method public onHwrTouchUp(IIJ)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "eventTime"    # J

    .prologue
    .line 179
    const/4 v0, 0x0

    return v0
.end method

.method protected onKeyDownUpHandle(I)V
    .locals 1
    .param p1, "keyCodes"    # I

    .prologue
    .line 1000
    iget-object v0, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/common/InputManager;->sendDownUpKeyEvents(I)V

    .line 1001
    return-void
.end method

.method public onText(Ljava/lang/CharSequence;)V
    .locals 6
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 189
    iget-object v1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v0

    .line 190
    .local v0, "isPrediction":Z
    if-eqz p1, :cond_0

    .line 191
    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 192
    iget-object v1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    new-array v3, v3, [I

    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    aput v4, v3, v5

    invoke-interface {v1, v2, v3}, Lcom/diotek/ime/framework/common/InputManager;->onKey(I[I)V

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    invoke-super {p0, p1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->onText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public pickSuggestionManually(ILjava/lang/CharSequence;)V
    .locals 26
    .param p1, "index"    # I
    .param p2, "suggestion"    # Ljava/lang/CharSequence;

    .prologue
    .line 419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->isSentenceTermPunct(I)Z

    move-result v18

    .line 421
    .local v18, "isTermPunct":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v13

    .line 422
    .local v13, "ic":Landroid/view/inputmethod/InputConnection;
    const/16 v17, 0x0

    .line 423
    .local v17, "isOnlyDoAddword":Z
    if-eqz v13, :cond_0

    .line 424
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isAutoCompletitionInput()Z

    move-result v14

    .line 425
    .local v14, "isCompletionOn":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v15

    .line 426
    .local v15, "isLandscape":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/diotek/ime/framework/common/InputManager;->getCompletions()[Landroid/view/inputmethod/CompletionInfo;

    move-result-object v7

    .line 427
    .local v7, "completions":[Landroid/view/inputmethod/CompletionInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-interface/range {v23 .. v24}, Lcom/diotek/ime/framework/common/InputManager;->setXt9NextWordPrediction(Z)V

    .line 428
    if-eqz v14, :cond_1

    if-eqz v15, :cond_1

    if-eqz v7, :cond_1

    .line 429
    if-ltz p1, :cond_0

    array-length v0, v7

    move/from16 v23, v0

    move/from16 v0, p1

    move/from16 v1, v23

    if-ge v0, v1, :cond_0

    .line 430
    aget-object v6, v7, p1

    .line 431
    .local v6, "completion":Landroid/view/inputmethod/CompletionInfo;
    invoke-interface {v13, v6}, Landroid/view/inputmethod/InputConnection;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z

    .line 619
    .end local v6    # "completion":Landroid/view/inputmethod/CompletionInfo;
    .end local v7    # "completions":[Landroid/view/inputmethod/CompletionInfo;
    .end local v14    # "isCompletionOn":Z
    .end local v15    # "isLandscape":Z
    :cond_0
    :goto_0
    return-void

    .line 434
    .restart local v7    # "completions":[Landroid/view/inputmethod/CompletionInfo;
    .restart local v14    # "isCompletionOn":Z
    .restart local v15    # "isLandscape":Z
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->getCurrentLanguageID()I

    move-result v23

    const/high16 v24, 0x74680000

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_2

    .line 435
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasOneChar()Z

    move-result v23

    if-eqz v23, :cond_2

    .line 436
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 437
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v23

    const/16 v24, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-interface {v13, v0, v1}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 440
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/diotek/ime/framework/common/InputManager;->getCandidateviewStatus()I

    move-result v5

    .line 441
    .local v5, "candidateStatus":I
    const/4 v10, 0x0

    .line 443
    .local v10, "enableAutoSpaceForNextWordPrediction":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mIsDisableAddwordbyCSC:Z

    move/from16 v23, v0

    if-eqz v23, :cond_3

    .line 444
    if-nez v5, :cond_f

    .line 445
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->isNeedToAddUDB(Ljava/lang/CharSequence;)V

    .line 453
    :cond_3
    :goto_1
    if-nez v17, :cond_20

    .line 454
    invoke-interface {v13}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 455
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v23

    if-eqz v23, :cond_13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mStateCandidate:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_13

    if-nez v5, :cond_13

    .line 457
    new-instance v23, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct/range {v23 .. v23}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-interface {v13, v0, v1}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v12

    .line 458
    .local v12, "et":Landroid/view/inputmethod/ExtractedText;
    if-eqz v12, :cond_11

    iget-object v0, v12, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    move-object/from16 v23, v0

    if-eqz v23, :cond_11

    .line 459
    iget v0, v12, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    move/from16 v23, v0

    iget v0, v12, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    move/from16 v24, v0

    add-int v9, v23, v24

    .line 460
    .local v9, "cursorLocation":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosNextText:I

    move/from16 v23, v0

    add-int v11, v9, v23

    .line 462
    .local v11, "endOfselectedText":I
    if-gt v9, v11, :cond_10

    .line 463
    move/from16 v22, v9

    .line 464
    .local v22, "startPosition":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosPrevText:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    .line 465
    move/from16 v0, v22

    invoke-interface {v13, v0, v11}, Landroid/view/inputmethod/InputConnection;->setComposingRegion(II)Z

    .line 473
    .end local v9    # "cursorLocation":I
    .end local v11    # "endOfselectedText":I
    .end local v22    # "startPosition":I
    :goto_2
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosPrevText:I

    .line 474
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosNextText:I

    .line 475
    if-eqz p2, :cond_12

    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v23

    if-lez v23, :cond_12

    .line 476
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->setPredictionWord(Z)V

    .line 480
    :goto_3
    const/16 v23, 0x2

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mStateCandidate:I

    .line 491
    .end local v12    # "et":Landroid/view/inputmethod/ExtractedText;
    :cond_4
    :goto_4
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 492
    if-eqz v10, :cond_16

    if-nez v18, :cond_16

    .line 493
    const/16 v23, 0x20

    invoke-static/range {v23 .. v23}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    .line 507
    :cond_5
    :goto_5
    invoke-static/range {p2 .. p2}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    .line 509
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->isThaiAcceptable()Z

    move-result v23

    if-nez v23, :cond_6

    .line 510
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 513
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->setComposingText()V

    .line 514
    invoke-interface {v13}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 515
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mPickSuggestionIndex:I

    .line 516
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->processWhenPickSuggestionManually(I)I

    .line 517
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->clearCandidateList()V

    .line 519
    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mPickSuggestionIndex:I

    move/from16 v21, v0

    .line 520
    .local v21, "pickSuggestionIndex":I
    const/16 v23, -0x1

    move/from16 v0, v21

    move/from16 v1, v23

    if-eq v0, v1, :cond_17

    .line 521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mBackupCandidate:Ljava/lang/StringBuilder;

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getCharSequence(Ljava/lang/StringBuilder;I)I

    .line 522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v23, v0

    const-string v24, "ADDWORD_BACKUP_CADIDATE"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mBackupCandidate:Ljava/lang/StringBuilder;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-interface/range {v23 .. v25}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestionCount()I

    move-result v23

    if-lez v23, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mIsDisableAddwordbyCheckLDB:Z

    move/from16 v23, v0

    if-nez v23, :cond_7

    .line 530
    const/16 v23, -0x1

    move/from16 v0, v21

    move/from16 v1, v23

    if-eq v0, v1, :cond_18

    .line 531
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v21

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->doNoteWordDoneForXt9(I)I

    .line 535
    :goto_7
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    .line 536
    .local v20, "outCharSequence":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getCharSequence(Ljava/lang/StringBuilder;I)I

    .line 537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move/from16 v1, v21

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/engine/InputEngineManager;->wordSelected(ILjava/lang/CharSequence;)I

    .line 538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    .line 540
    .end local v20    # "outCharSequence":Ljava/lang/StringBuilder;
    :cond_7
    const/16 v23, 0x2

    move/from16 v0, v23

    if-ne v5, v0, :cond_1b

    .line 541
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasOneChar()Z

    move-result v23

    if-eqz v23, :cond_1a

    .line 542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    move-object/from16 v23, v0

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->getFirstChar()C

    move-result v24

    invoke-virtual/range {v23 .. v24}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAfterPunctuation(I)Z

    move-result v23

    if-eqz v23, :cond_19

    .line 543
    const/16 v23, 0x20

    invoke-static/range {v23 .. v23}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    .line 544
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->reset()V

    .line 557
    :goto_8
    const/4 v8, 0x0

    .line 558
    .local v8, "composingText":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosPrevText:I

    move/from16 v23, v0

    if-lez v23, :cond_1c

    if-eqz v13, :cond_1c

    .line 559
    const/16 v23, 0x40

    const/16 v24, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-interface {v13, v0, v1}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v8

    .end local v8    # "composingText":Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .line 564
    .restart local v8    # "composingText":Ljava/lang/String;
    :goto_9
    if-nez v8, :cond_8

    .line 565
    const-string v8, ""

    .line 567
    :cond_8
    const/16 v19, 0x0

    .line 568
    .local v19, "lastIndexOfSpecialChar":I
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v23

    if-lez v23, :cond_1e

    .line 569
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v23

    add-int/lit8 v19, v23, -0x1

    :goto_a
    if-ltz v19, :cond_9

    .line 570
    move/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->charAt(I)C

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v23

    if-nez v23, :cond_1d

    const-string v23, "\'-#_"

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->charAt(I)C

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->indexOf(I)I

    move-result v23

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1d

    .line 575
    :cond_9
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v23

    sub-int v23, v23, v19

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosPrevText:I

    .line 581
    :goto_b
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->getCurrentLanguageID()I

    move-result v23

    const/high16 v24, 0x74680000

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1f

    .line 582
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->commitTextAndInitComposingForThai(Ljava/lang/CharSequence;)V

    .line 587
    :goto_c
    const/16 v23, 0x2

    move/from16 v0, v23

    if-ne v5, v0, :cond_a

    .line 588
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->replaceSpaceToSymbol()V

    .line 591
    :cond_a
    const/16 v23, -0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mPickSuggestionIndex:I

    .line 592
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 593
    invoke-static {}, Lcom/diotek/ime/framework/repository/KeyboardStatus;->isPhoneticSpellLayout()Z

    move-result v23

    if-eqz v23, :cond_c

    .line 594
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/diotek/ime/framework/common/InputManager;->isSpellViewShown()Z

    move-result v23

    if-eqz v23, :cond_b

    .line 595
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-interface/range {v23 .. v25}, Lcom/diotek/ime/framework/common/InputManager;->updateSpellView(Ljava/lang/CharSequence;Z)V

    .line 597
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v23, v0

    const-string v24, "CHINESE_PHONETIC_SPELL_LAYOUT_SHOWN"

    const/16 v25, 0x0

    invoke-interface/range {v23 .. v25}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v23

    if-eqz v23, :cond_c

    .line 598
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-interface/range {v23 .. v25}, Lcom/diotek/ime/framework/common/InputManager;->setPhoneticSpellLayout(Ljava/util/ArrayList;Z)V

    .line 599
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v23, v0

    const-string v24, "CHINESE_PHONETIC_SELECT_SPELL_INDEX"

    const/16 v25, -0x1

    invoke-interface/range {v23 .. v25}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;I)V

    .line 602
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v23, v0

    const-string v24, "SETTINGS_DEFAULT_NEXTWORDPREDICTION"

    const/16 v25, 0x0

    invoke-interface/range {v23 .. v25}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v16

    .line 604
    .local v16, "isNextWordPredictionOn":Z
    if-eqz v16, :cond_d

    .line 607
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->doNextWordPrediction(Z)V

    .line 613
    .end local v8    # "composingText":Ljava/lang/String;
    .end local v16    # "isNextWordPredictionOn":Z
    .end local v19    # "lastIndexOfSpecialChar":I
    .end local v21    # "pickSuggestionIndex":I
    :cond_d
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/diotek/ime/framework/common/ShiftStateController;->getShiftPressedState()Z

    move-result v23

    if-nez v23, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/diotek/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v23

    if-eqz v23, :cond_e

    .line 614
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/diotek/ime/framework/common/InputManager;->updateShiftState()V

    .line 616
    :cond_e
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->setBeforeTraceInput(Z)V

    goto/16 :goto_0

    .line 446
    :cond_f
    const/16 v23, 0x3

    move/from16 v0, v23

    if-ne v5, v0, :cond_3

    .line 447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    invoke-interface/range {v23 .. v24}, Lcom/diotek/ime/framework/common/InputManager;->setCandidateviewStatus(I)V

    .line 448
    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->setPredictionWord(Z)V

    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-interface/range {v23 .. v24}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    .line 450
    const/16 v17, 0x1

    goto/16 :goto_1

    .line 467
    .restart local v9    # "cursorLocation":I
    .restart local v11    # "endOfselectedText":I
    .restart local v12    # "et":Landroid/view/inputmethod/ExtractedText;
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosPrevText:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosNextText:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-interface {v13, v0, v1}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto/16 :goto_2

    .line 470
    .end local v9    # "cursorLocation":I
    .end local v11    # "endOfselectedText":I
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosPrevText:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosNextText:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-interface {v13, v0, v1}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto/16 :goto_2

    .line 478
    :cond_12
    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->setPredictionWord(Z)V

    goto/16 :goto_3

    .line 481
    .end local v12    # "et":Landroid/view/inputmethod/ExtractedText;
    :cond_13
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v23

    if-eqz v23, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mStateCandidate:I

    move/from16 v23, v0

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_15

    if-nez v5, :cond_15

    .line 483
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAtNextWordPrediction()Z

    move-result v23

    if-eqz v23, :cond_14

    .line 484
    const/4 v10, 0x1

    .line 486
    :cond_14
    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->setPredictionWord(Z)V

    goto/16 :goto_4

    .line 487
    :cond_15
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v23

    if-eqz v23, :cond_4

    const/16 v23, 0x2

    move/from16 v0, v23

    if-ne v5, v0, :cond_4

    .line 488
    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->setPredictionWord(Z)V

    goto/16 :goto_4

    .line 495
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isAutoSpaceOn()Z

    move-result v23

    if-eqz v23, :cond_5

    if-eqz v18, :cond_5

    .line 496
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 497
    .local v3, "beforeContextBuffer":Ljava/lang/StringBuilder;
    const/16 v23, 0x40

    const/16 v24, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-interface {v13, v0, v1}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 498
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    .line 499
    .local v4, "bufferLength":I
    if-lez v4, :cond_5

    add-int/lit8 v23, v4, -0x1

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v23

    const/16 v24, 0x20

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_5

    .line 500
    const/16 v23, 0x1

    const/16 v24, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-interface {v13, v0, v1}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto/16 :goto_5

    .line 524
    .end local v3    # "beforeContextBuffer":Ljava/lang/StringBuilder;
    .end local v4    # "bufferLength":I
    .restart local v21    # "pickSuggestionIndex":I
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mBackupCandidate:Ljava/lang/StringBuilder;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-interface/range {v23 .. v25}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getCharSequence(Ljava/lang/StringBuilder;I)I

    .line 525
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v23, v0

    const-string v24, "ADDWORD_BACKUP_CADIDATE"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mBackupCandidate:Ljava/lang/StringBuilder;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-interface/range {v23 .. v25}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 533
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-interface/range {v23 .. v24}, Lcom/diotek/ime/framework/engine/InputEngineManager;->doNoteWordDoneForXt9(I)I

    goto/16 :goto_7

    .line 546
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    move-object/from16 v23, v0

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->getFirstChar()C

    move-result v24

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v25}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->setUpAutoSpace(IZ)V

    goto/16 :goto_8

    .line 549
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->setUpByPickSuggestion()V

    goto/16 :goto_8

    .line 552
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->setUpByPickSuggestion()V

    goto/16 :goto_8

    .line 561
    .restart local v8    # "composingText":Ljava/lang/String;
    :cond_1c
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_9

    .line 569
    .restart local v19    # "lastIndexOfSpecialChar":I
    :cond_1d
    add-int/lit8 v19, v19, -0x1

    goto/16 :goto_a

    .line 577
    :cond_1e
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosPrevText:I

    goto/16 :goto_b

    .line 584
    :cond_1f
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    goto/16 :goto_c

    .line 610
    .end local v8    # "composingText":Ljava/lang/String;
    .end local v19    # "lastIndexOfSpecialChar":I
    .end local v21    # "pickSuggestionIndex":I
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mBackupCandidate:Ljava/lang/StringBuilder;

    move-object/from16 v24, v0

    invoke-interface/range {v23 .. v24}, Lcom/diotek/ime/framework/engine/InputEngineManager;->addMyWord(Ljava/lang/CharSequence;)I

    goto/16 :goto_d
.end method

.method public predictionWord()Z
    .locals 12

    .prologue
    const/4 v11, -0x1

    const/4 v10, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1214
    const/4 v2, 0x0

    .line 1216
    .local v2, "isPredictSelectWord":Z
    iget-object v8, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    if-nez v8, :cond_2

    :cond_0
    move v6, v7

    .line 1288
    :cond_1
    :goto_0
    return v6

    .line 1219
    :cond_2
    iget-object v8, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v8

    iput-boolean v8, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mIsPredictionOn:Z

    .line 1220
    iget-object v8, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v8}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v1

    .line 1222
    .local v1, "inputRange":I
    iget-object v8, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8, v7}, Lcom/diotek/ime/framework/common/InputManager;->getInputView(Z)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->isShown()Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v8}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v8

    if-nez v8, :cond_3

    if-ne v1, v6, :cond_6

    .line 1224
    :cond_3
    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->isEnableDefaultCandidateview()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1225
    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1226
    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6, v7}, Lcom/diotek/ime/framework/common/InputManager;->setCandidateviewStatus(I)V

    :cond_4
    :goto_1
    move v6, v7

    .line 1231
    goto :goto_0

    .line 1228
    :cond_5
    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6, v10}, Lcom/diotek/ime/framework/common/InputManager;->setCandidateviewStatus(I)V

    goto :goto_1

    .line 1234
    :cond_6
    iget-object v8, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1235
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_a

    .line 1236
    invoke-interface {v0, v7}, Landroid/view/inputmethod/InputConnection;->getSelectedText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 1237
    .local v5, "selectedText":Ljava/lang/CharSequence;
    if-eqz v5, :cond_9

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-lez v8, :cond_9

    .line 1238
    iget-object v8, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputCharSequence(Ljava/lang/CharSequence;)I

    move-result v8

    if-nez v8, :cond_7

    .line 1239
    iget-object v8, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/16 v9, 0x19

    invoke-interface {v8, v9}, Lcom/diotek/ime/framework/common/InputManager;->updateCandidates(I)V

    .line 1240
    iput v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosPrevText:I

    .line 1241
    iput v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosNextText:I

    .line 1242
    iput v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mStateCandidate:I

    goto :goto_0

    .line 1245
    :cond_7
    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->isEnableDefaultCandidateview()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1246
    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6, v10}, Lcom/diotek/ime/framework/common/InputManager;->setCandidateviewStatus(I)V

    .line 1248
    :cond_8
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->clearCandidateList()V

    .line 1249
    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6, v7}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    .line 1250
    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    move v6, v7

    .line 1251
    goto/16 :goto_0

    .line 1255
    :cond_9
    invoke-interface {v0, v6, v7}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1256
    .local v3, "lastChar":Ljava/lang/String;
    invoke-interface {v0, v6, v7}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1258
    .local v4, "nextChar":Ljava/lang/String;
    iget v8, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputLanguage:I

    const/high16 v9, 0x6b6f0000

    if-ne v8, v9, :cond_d

    .line 1259
    iget-boolean v8, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mIsPredictionOn:Z

    if-eqz v8, :cond_a

    if-eqz v4, :cond_a

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_a

    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isLetter(C)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 1262
    const/4 v2, 0x1

    .line 1276
    .end local v3    # "lastChar":Ljava/lang/String;
    .end local v4    # "nextChar":Ljava/lang/String;
    .end local v5    # "selectedText":Ljava/lang/CharSequence;
    :cond_a
    :goto_2
    if-eqz v2, :cond_b

    .line 1277
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->processPredictionWordXT9()Z

    move-result v8

    if-nez v8, :cond_1

    .line 1281
    :cond_b
    iput v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mStateCandidate:I

    .line 1282
    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->isEnableDefaultCandidateview()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 1283
    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6, v10}, Lcom/diotek/ime/framework/common/InputManager;->setCandidateviewStatus(I)V

    .line 1285
    :cond_c
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->clearCandidateList()V

    .line 1286
    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6, v7}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    .line 1287
    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    move v6, v7

    .line 1288
    goto/16 :goto_0

    .line 1265
    .restart local v3    # "lastChar":Ljava/lang/String;
    .restart local v4    # "nextChar":Ljava/lang/String;
    .restart local v5    # "selectedText":Ljava/lang/CharSequence;
    :cond_d
    iget-boolean v8, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mIsPredictionOn:Z

    if-eqz v8, :cond_a

    if-eqz v3, :cond_e

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_e

    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v8

    if-nez v8, :cond_f

    const-string v8, "\'-#_"

    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-ne v8, v11, :cond_f

    :cond_e
    if-eqz v4, :cond_a

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_a

    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v8

    if-nez v8, :cond_f

    const-string v8, "\'-#_"

    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-eq v8, v11, :cond_a

    .line 1272
    :cond_f
    const/4 v2, 0x1

    goto :goto_2
.end method

.method public predictionWordStartInputViewContinue()Z
    .locals 10

    .prologue
    const/16 v8, 0x27

    const/4 v9, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1292
    const/4 v1, 0x0

    .line 1294
    .local v1, "isPredictSelectWord":Z
    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    if-nez v5, :cond_1

    .line 1345
    :cond_0
    :goto_0
    return v7

    .line 1297
    :cond_1
    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v5

    if-nez v5, :cond_2

    move v5, v6

    :goto_1
    iput-boolean v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mIsPredictionOn:Z

    .line 1298
    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1299
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_6

    .line 1300
    invoke-interface {v0, v7}, Landroid/view/inputmethod/InputConnection;->getSelectedText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 1301
    .local v4, "selectedText":Ljava/lang/CharSequence;
    iget-boolean v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mIsPredictionOn:Z

    if-eqz v5, :cond_5

    if-eqz v4, :cond_5

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_5

    .line 1302
    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputCharSequence(Ljava/lang/CharSequence;)I

    move-result v5

    if-nez v5, :cond_3

    .line 1303
    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/16 v8, 0x64

    invoke-interface {v5, v8}, Lcom/diotek/ime/framework/common/InputManager;->updateCandidates(I)V

    .line 1304
    iput v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosPrevText:I

    .line 1305
    iput v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosNextText:I

    .line 1306
    iput v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mStateCandidate:I

    move v7, v6

    .line 1307
    goto :goto_0

    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v4    # "selectedText":Ljava/lang/CharSequence;
    :cond_2
    move v5, v7

    .line 1297
    goto :goto_1

    .line 1309
    .restart local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    .restart local v4    # "selectedText":Ljava/lang/CharSequence;
    :cond_3
    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->isEnableDefaultCandidateview()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1310
    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5, v9}, Lcom/diotek/ime/framework/common/InputManager;->setCandidateviewStatus(I)V

    .line 1312
    :cond_4
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->clearCandidateList()V

    .line 1313
    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5, v7}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    .line 1314
    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    goto :goto_0

    .line 1319
    :cond_5
    invoke-interface {v0, v6, v7}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1320
    .local v2, "lastChar":Ljava/lang/String;
    invoke-interface {v0, v6, v7}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1322
    .local v3, "nextChar":Ljava/lang/String;
    iget-boolean v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mIsPredictionOn:Z

    if-eqz v5, :cond_7

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_7

    .line 1334
    .end local v2    # "lastChar":Ljava/lang/String;
    .end local v3    # "nextChar":Ljava/lang/String;
    .end local v4    # "selectedText":Ljava/lang/CharSequence;
    :cond_6
    :goto_2
    if-eqz v1, :cond_a

    .line 1335
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->processPredictionWordXT9()Z

    move-result v5

    if-eqz v5, :cond_a

    move v7, v6

    .line 1336
    goto/16 :goto_0

    .line 1324
    .restart local v2    # "lastChar":Ljava/lang/String;
    .restart local v3    # "nextChar":Ljava/lang/String;
    .restart local v4    # "selectedText":Ljava/lang/CharSequence;
    :cond_7
    iget-boolean v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mIsPredictionOn:Z

    if-eqz v5, :cond_6

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_8

    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isLetter(C)Z

    move-result v5

    if-nez v5, :cond_9

    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v8, :cond_9

    :cond_8
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_6

    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isLetter(C)Z

    move-result v5

    if-nez v5, :cond_9

    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v8, :cond_6

    .line 1331
    :cond_9
    const/4 v1, 0x1

    goto :goto_2

    .line 1339
    .end local v2    # "lastChar":Ljava/lang/String;
    .end local v3    # "nextChar":Ljava/lang/String;
    .end local v4    # "selectedText":Ljava/lang/CharSequence;
    :cond_a
    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->isEnableDefaultCandidateview()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1340
    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5, v9}, Lcom/diotek/ime/framework/common/InputManager;->setCandidateviewStatus(I)V

    .line 1342
    :cond_b
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->clearCandidateList()V

    .line 1343
    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5, v7}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    .line 1344
    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    goto/16 :goto_0
.end method

.method public previewTrace(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 1466
    return-void
.end method

.method protected processKeyForHwKeyboard(I[I)V
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    const/4 v3, 0x1

    .line 1531
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1533
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1534
    invoke-static {p1}, Lcom/diotek/ime/framework/util/Utils;->getHangleShiftedChar(I)I

    move-result p1

    .line 1536
    :cond_0
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAtText()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1537
    invoke-virtual {p0, v3}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->finishComposing(Z)V

    .line 1538
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->initComposingBuffer()V

    .line 1541
    :cond_1
    iget-object v2, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v2, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKeyForHwKeyboard(I)I

    .line 1542
    iget-object v2, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v2, v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getCharSequenceForHwKeyboard(Ljava/lang/StringBuilder;)I

    .line 1544
    invoke-static {v0}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(Ljava/lang/StringBuilder;)V

    .line 1546
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v2

    if-le v2, v3, :cond_2

    .line 1547
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->getLastChar()C

    move-result v1

    .line 1548
    .local v1, "composing":C
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Lcom/diotek/ime/framework/input/ComposingTextManager;->setLength(I)V

    .line 1549
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->commitText(Ljava/lang/CharSequence;)V

    .line 1550
    invoke-static {v1}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(C)V

    .line 1551
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->setComposingText()V

    .line 1555
    .end local v1    # "composing":C
    :goto_0
    return-void

    .line 1553
    :cond_2
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->setComposingText()V

    goto :goto_0
.end method

.method protected processMultiTapSymbolicKey(I[I)V
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    const/4 v5, 0x1

    .line 796
    const/4 v2, 0x0

    .line 797
    .local v2, "nIndex":I
    const/4 v1, 0x0

    .line 799
    .local v1, "nCodeLength":I
    if-nez p2, :cond_1

    .line 830
    :cond_0
    :goto_0
    return-void

    .line 803
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, p2

    if-ge v0, v3, :cond_4

    .line 804
    aget v3, p2, v0

    if-ne p1, v3, :cond_3

    .line 805
    move v2, v0

    .line 810
    :cond_2
    add-int/lit8 v1, v0, 0x1

    .line 803
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 806
    :cond_3
    aget v3, p2, v0

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 807
    move v1, v0

    .line 812
    :cond_4
    iget-object v3, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 813
    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(I)I

    move-result p1

    .line 816
    :cond_5
    if-le v1, v5, :cond_0

    .line 817
    if-nez v2, :cond_6

    .line 818
    iget v3, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mLastKeyCode:I

    add-int/lit8 v4, v1, -0x1

    aget v4, p2, v4

    if-ne v3, v4, :cond_7

    .line 824
    :cond_6
    :goto_2
    int-to-char v3, p1

    invoke-static {v3}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(C)V

    .line 825
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->setComposingText()V

    .line 826
    iget-object v3, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v3}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->stopTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;)V

    .line 827
    iget-object v3, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    const/16 v4, 0x5dc

    invoke-virtual {p0, v3, v4}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->startTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;I)V

    goto :goto_0

    .line 821
    :cond_7
    invoke-virtual {p0, v5}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->finishComposing(Z)V

    goto :goto_2
.end method

.method protected processPredictionWordXT9()Z
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/16 v8, 0x40

    const/4 v5, 0x0

    .line 1349
    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    .line 1351
    .local v2, "ic":Landroid/view/inputmethod/InputConnection;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1352
    .local v1, "beforeContextBuffer":Ljava/lang/StringBuilder;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1353
    .local v0, "aftercontextBuffer":Ljava/lang/StringBuilder;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1354
    .local v4, "wrappingWord":Ljava/lang/StringBuilder;
    new-array v3, v6, [I

    .line 1356
    .local v3, "posPrevText":[I
    if-eqz v2, :cond_1

    .line 1357
    invoke-interface {v2, v8, v5}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1358
    invoke-interface {v2, v8, v5}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1364
    :goto_0
    invoke-direct {p0, v1, v0, v3}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->getWordOfContextBuffer(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;[I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1365
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-le v7, v8, :cond_0

    .line 1369
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1372
    :cond_0
    if-eqz v4, :cond_2

    const-string v7, ""

    invoke-virtual {v4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1373
    iput v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mStateCandidate:I

    .line 1386
    :goto_1
    return v5

    .line 1360
    :cond_1
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1361
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0

    .line 1376
    :cond_2
    if-eqz v4, :cond_3

    .line 1377
    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v7, v4}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputCharSequence(Ljava/lang/CharSequence;)I

    move-result v7

    if-nez v7, :cond_3

    .line 1378
    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/16 v8, 0x19

    invoke-interface {v7, v8}, Lcom/diotek/ime/framework/common/InputManager;->updateCandidates(I)V

    .line 1379
    aget v5, v3, v5

    iput v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosPrevText:I

    .line 1380
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    iget v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosPrevText:I

    sub-int/2addr v5, v7

    iput v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosNextText:I

    .line 1381
    iput v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mStateCandidate:I

    move v5, v6

    .line 1382
    goto :goto_1

    .line 1385
    :cond_3
    iput v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mStateCandidate:I

    goto :goto_1
.end method

.method protected processReCaptureForXT9(I)V
    .locals 12
    .param p1, "keyCode"    # I

    .prologue
    .line 915
    iget-object v8, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 921
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mIsRecapturingProcessed:Z

    .line 922
    if-eqz v1, :cond_5

    .line 923
    const/16 v8, 0x40

    const/4 v9, 0x0

    invoke-interface {v1, v8, v9}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 924
    .local v4, "longText":Ljava/lang/String;
    if-nez v4, :cond_0

    .line 925
    const-string v4, ""

    .line 930
    :cond_0
    :goto_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_7

    .line 931
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v2, v8, -0x1

    .local v2, "lastIndexOfSpecialChar":I
    :goto_1
    if-ltz v2, :cond_1

    .line 932
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v8

    if-nez v8, :cond_6

    const-string v8, "\'-#_"

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_6

    .line 937
    :cond_1
    add-int/lit8 v8, v2, 0x1

    invoke-virtual {v4, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 946
    .end local v2    # "lastIndexOfSpecialChar":I
    .local v6, "shortText":Ljava/lang/String;
    :goto_2
    if-eqz v1, :cond_8

    .line 947
    const/16 v8, 0x40

    const/4 v9, 0x0

    invoke-interface {v1, v8, v9}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 948
    .local v3, "longAfterText":Ljava/lang/String;
    if-nez v3, :cond_2

    .line 949
    const-string v3, ""

    .line 954
    :cond_2
    :goto_3
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_a

    .line 955
    const/4 v0, 0x0

    .local v0, "firstIndexOfSpecialChar":I
    :goto_4
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v0, v8, :cond_3

    .line 956
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v8

    if-nez v8, :cond_9

    const-string v8, "\'-#_"

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_9

    .line 961
    :cond_3
    const/4 v8, 0x0

    invoke-virtual {v3, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 965
    .end local v0    # "firstIndexOfSpecialChar":I
    .local v5, "shortAfterText":Ljava/lang/String;
    :goto_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 968
    .local v7, "text":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    iput v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosPrevText:I

    .line 969
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    iput v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosNextText:I

    .line 972
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x1

    if-lt v8, v9, :cond_4

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_b

    :cond_4
    const/4 v8, -0x5

    if-ne p1, v8, :cond_b

    .line 974
    const/16 v8, 0x43

    invoke-virtual {p0, v8}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->onKeyDownUpHandle(I)V

    .line 997
    :goto_6
    return-void

    .line 928
    .end local v3    # "longAfterText":Ljava/lang/String;
    .end local v4    # "longText":Ljava/lang/String;
    .end local v5    # "shortAfterText":Ljava/lang/String;
    .end local v6    # "shortText":Ljava/lang/String;
    .end local v7    # "text":Ljava/lang/String;
    :cond_5
    const-string v4, ""

    .restart local v4    # "longText":Ljava/lang/String;
    goto/16 :goto_0

    .line 931
    .restart local v2    # "lastIndexOfSpecialChar":I
    :cond_6
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_1

    .line 939
    .end local v2    # "lastIndexOfSpecialChar":I
    :cond_7
    const-string v6, ""

    .restart local v6    # "shortText":Ljava/lang/String;
    goto :goto_2

    .line 952
    :cond_8
    const-string v3, ""

    .restart local v3    # "longAfterText":Ljava/lang/String;
    goto :goto_3

    .line 955
    .restart local v0    # "firstIndexOfSpecialChar":I
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 963
    .end local v0    # "firstIndexOfSpecialChar":I
    :cond_a
    const-string v5, ""

    .restart local v5    # "shortAfterText":Ljava/lang/String;
    goto :goto_5

    .line 976
    .restart local v7    # "text":Ljava/lang/String;
    :cond_b
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 977
    invoke-static {v7}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    .line 978
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->trim()V

    .line 980
    if-eqz v6, :cond_c

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_d

    .line 981
    :cond_c
    iget-object v8, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputCharSequence(Ljava/lang/CharSequence;)I

    .line 982
    iget-object v8, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/16 v9, 0x19

    invoke-interface {v8, v9}, Lcom/diotek/ime/framework/common/InputManager;->updateCandidates(I)V

    .line 992
    :goto_7
    const/4 v8, 0x1

    iput v8, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mStateCandidate:I

    .line 994
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    goto :goto_6

    .line 984
    :cond_d
    iget-object v8, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v10

    int-to-short v10, v10

    const/4 v11, 0x0

    invoke-interface {v8, v9, v10, v11}, Lcom/diotek/ime/framework/engine/InputEngineManager;->doRecaptureForXt9(Ljava/lang/String;SZ)I

    move-result v8

    if-eqz v8, :cond_e

    .line 986
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->finishComposing(Z)V

    .line 987
    iget-object v8, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Lcom/diotek/ime/framework/common/InputManager;->setXt9Recapture(Z)V

    .line 989
    :cond_e
    iget-object v8, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/16 v9, 0x19

    invoke-interface {v8, v9}, Lcom/diotek/ime/framework/common/InputManager;->buildSuggestions(I)V

    goto :goto_7
.end method

.method public processRecaptureXT9()V
    .locals 1

    .prologue
    .line 1513
    const/4 v0, -0x5

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->processReCaptureForXT9(I)V

    .line 1514
    return-void
.end method

.method protected abstract processSymbolicKey(I[I)V
.end method

.method public processVietnameseTone(IZ)V
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "isPrediction"    # Z

    .prologue
    const/4 v5, 0x1

    .line 1126
    iget-object v3, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v1

    .line 1128
    .local v1, "inputMethod":I
    iget v3, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputLanguage:I

    const/high16 v4, 0x76690000

    if-ne v3, v4, :cond_1

    if-eqz p2, :cond_1

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasOneChar()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1129
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->getHashCode()I

    move-result v3

    invoke-static {v3}, Lcom/diotek/ime/framework/common/InputSequenceCheck;->isVietameseTone(I)Z

    move-result v3

    if-nez v3, :cond_0

    if-ne v1, v5, :cond_1

    const/16 v3, 0x30

    if-ne p1, v3, :cond_1

    .line 1131
    :cond_0
    iget-object v3, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1132
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v0, :cond_2

    .line 1147
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_1
    :goto_0
    return-void

    .line 1136
    .restart local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_2
    const/4 v3, 0x0

    invoke-interface {v0, v5, v3}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1137
    .local v2, "leadingChar":Ljava/lang/String;
    if-nez v2, :cond_3

    const-string v2, ""

    .line 1139
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    .line 1140
    iget-object v3, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    const/4 v4, -0x5

    invoke-interface {v3, v4}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(I)I

    .line 1141
    iget-object v3, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(I)I

    .line 1142
    iget-object v3, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v3, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(I)I

    goto :goto_0
.end method

.method public removeTerm(I)V
    .locals 0
    .param p1, "idx"    # I

    .prologue
    .line 1461
    return-void
.end method

.method protected replaceSpaceToSymbol()V
    .locals 12

    .prologue
    const/4 v8, 0x3

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x2

    .line 678
    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 679
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v1, :cond_1

    .line 718
    :cond_0
    :goto_0
    return-void

    .line 683
    :cond_1
    invoke-interface {v1, v8, v10}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v5

    .line 684
    .local v5, "text":Ljava/lang/CharSequence;
    if-eqz v5, :cond_0

    .line 688
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 690
    .local v2, "length":I
    if-lt v2, v8, :cond_0

    .line 694
    invoke-interface {v5, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 695
    .local v0, "firstChar":C
    invoke-interface {v5, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 696
    .local v4, "secondChar":C
    invoke-interface {v5, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .line 698
    .local v6, "thirdChar":C
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v7, 0x20

    if-ne v4, v7, :cond_0

    .line 700
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 702
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-interface {v5, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    const/16 v8, 0x21

    if-eq v7, v8, :cond_2

    invoke-interface {v5, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    const/16 v8, 0x3f

    if-eq v7, v8, :cond_2

    invoke-interface {v5, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    const/16 v8, 0x2c

    if-ne v7, v8, :cond_4

    .line 703
    :cond_2
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 704
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 709
    :goto_1
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 710
    invoke-interface {v1, v9, v10}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 711
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7, v11}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 712
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 713
    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 714
    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->updateShiftState()V

    .line 716
    :cond_3
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->clearAction()V

    goto :goto_0

    .line 706
    :cond_4
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public resetPredictionWord()V
    .locals 1

    .prologue
    .line 1206
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mIgnorePredictionWord:Z

    .line 1207
    return-void
.end method

.method public resetTimeoutComposingLength()V
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->setTimeoutComposingLength(I)V

    .line 121
    return-void
.end method

.method protected selectWordInList(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 403
    iget-object v1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    .line 405
    .local v0, "inputMethod":I
    iget-object v1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v1, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->processWhenPickSuggestionManually(I)I

    .line 407
    iget-boolean v1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mIsDisableAddwordbyCSC:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mIsDisableAddwordbyCheckLDB:Z

    if-eqz v1, :cond_1

    .line 408
    iget-object v1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Lcom/diotek/ime/framework/common/InputManager;->setCandidateviewStatus(I)V

    .line 409
    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 410
    iget-object v1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    .line 415
    :cond_0
    :goto_0
    return-void

    .line 413
    :cond_1
    iget-object v1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v1, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->doNoteWordDoneForXt9(I)I

    goto :goto_0
.end method

.method protected sendEnterKeyHandle()V
    .locals 4

    .prologue
    .line 1009
    iget-object v2, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getEditorEnterAction()I

    move-result v0

    .line 1010
    .local v0, "action":I
    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/high16 v2, 0x40000000

    and-int/2addr v2, v0

    if-nez v2, :cond_2

    .line 1013
    iget-object v2, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 1014
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v1, :cond_0

    .line 1015
    iget-object v2, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isEnterForWebNavigation()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1016
    const-string v2, "com.sec.android.inputmethod.axt9.MoveFocusNext"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/view/inputmethod/InputConnection;->performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 1024
    .end local v1    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_0
    :goto_0
    return-void

    .line 1018
    .restart local v1    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_1
    invoke-interface {v1, v0}, Landroid/view/inputmethod/InputConnection;->performEditorAction(I)Z

    goto :goto_0

    .line 1022
    .end local v1    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_2
    const/16 v2, 0x42

    invoke-virtual {p0, v2}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->onKeyDownUpHandle(I)V

    goto :goto_0
.end method

.method public setAddStrokeCallBackOnHWREngine()V
    .locals 0

    .prologue
    .line 1119
    return-void
.end method

.method public setBeforeTraceInput(Z)V
    .locals 0
    .param p1, "traceInput"    # Z

    .prologue
    .line 1486
    iput-boolean p1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mIsBeforeTraceInput:Z

    .line 1487
    return-void
.end method

.method public setComposingText()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 256
    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 257
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v1, :cond_1

    .line 258
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 259
    const/4 v2, 0x1

    .line 260
    .local v2, "isComposible":Z
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasOneChar()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->getHashCode()I

    move-result v5

    invoke-static {v5}, Lcom/diotek/ime/framework/common/InputSequenceCheck;->isVietameseTone(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 261
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 262
    invoke-interface {v1, v9, v10}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 263
    .local v3, "leadingChar":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 264
    invoke-static {v3}, Lcom/diotek/ime/framework/common/InputSequenceCheck;->getVietnameseLeadingChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 265
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->getHashCode()I

    move-result v5

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v6

    invoke-static {v5, v6}, Lcom/diotek/ime/framework/common/InputSequenceCheck;->isVietnameseAcceptable(II)Z

    move-result v2

    .line 267
    if-eqz v2, :cond_2

    .line 268
    invoke-interface {v1, v9, v10}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 269
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 270
    .local v4, "normalizedChar":Ljava/lang/String;
    invoke-static {v4}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(Ljava/lang/String;)V

    .line 277
    .end local v3    # "leadingChar":Ljava/lang/String;
    .end local v4    # "normalizedChar":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->nomalizerFormNFC()V

    .line 279
    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->isEnableAutoCorrectionDA()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 280
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getXt9AutoReplacementCondition()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 281
    new-instance v0, Landroid/text/SpannableString;

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 282
    .local v0, "SpannableText":Landroid/text/SpannableString;
    new-instance v5, Landroid/text/style/SuggestionSpan;

    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v6

    new-array v7, v9, [Ljava/lang/String;

    const-string v8, ""

    aput-object v8, v7, v10

    const/4 v8, 0x4

    invoke-direct {v5, v6, v7, v8}, Landroid/text/style/SuggestionSpan;-><init>(Landroid/content/Context;[Ljava/lang/String;I)V

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v6

    const/16 v7, 0x11

    invoke-virtual {v0, v5, v10, v6, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 284
    invoke-interface {v1, v0, v9}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 294
    .end local v0    # "SpannableText":Landroid/text/SpannableString;
    :goto_1
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 296
    .end local v2    # "isComposible":Z
    :cond_1
    return-void

    .line 272
    .restart local v2    # "isComposible":Z
    .restart local v3    # "leadingChar":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->initComposingBuffer()V

    goto :goto_0

    .line 287
    .end local v3    # "leadingChar":Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v1, v5, v9}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    goto :goto_1

    .line 291
    :cond_4
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v1, v5, v9}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    goto :goto_1
.end method

.method public setComposingTextWithoutBatch(Landroid/view/inputmethod/InputConnection;)V
    .locals 2
    .param p1, "ic"    # Landroid/view/inputmethod/InputConnection;

    .prologue
    .line 299
    if-eqz p1, :cond_0

    .line 300
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->nomalizerFormNFC()V

    .line 301
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 303
    :cond_0
    return-void
.end method

.method public setDeleteCount(Ljava/lang/String;)V
    .locals 1
    .param p1, "lastChar"    # Ljava/lang/String;

    .prologue
    .line 1109
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1110
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->initDeleteCount()V

    .line 1114
    :goto_0
    return-void

    .line 1112
    :cond_0
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->increaseDeleteCount()V

    goto :goto_0
.end method

.method public setPredictionWord(Z)V
    .locals 0
    .param p1, "bool"    # Z

    .prologue
    .line 1202
    iput-boolean p1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mIgnorePredictionWord:Z

    .line 1203
    return-void
.end method

.method public setTimeoutComposingLength(I)V
    .locals 0
    .param p1, "len"    # I

    .prologue
    .line 112
    iput p1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mTimeoutComposingLength:I

    .line 113
    return-void
.end method

.method protected showDefaultSymbolCandidate()V
    .locals 2

    .prologue
    .line 1503
    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->isEnableDefaultCandidateview()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1504
    iget-object v0, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/common/InputManager;->setCandidateviewStatus(I)V

    .line 1506
    :cond_0
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->clearCandidateList()V

    .line 1507
    iget-object v0, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    .line 1508
    iget-object v0, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    .line 1509
    return-void
.end method

.method protected startTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;I)V
    .locals 3
    .param p1, "timer"    # Lcom/diotek/ime/framework/input/InputModule$Timer;
    .param p2, "msec"    # I

    .prologue
    .line 386
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/diotek/ime/framework/input/InputModule$Timer;->setRunning(Z)V

    .line 387
    iget-object v0, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mTimmerHandler:Landroid/os/Handler;

    int-to-long v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 388
    return-void
.end method

.method protected stopTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;)V
    .locals 1
    .param p1, "timer"    # Lcom/diotek/ime/framework/input/InputModule$Timer;

    .prologue
    .line 381
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/diotek/ime/framework/input/InputModule$Timer;->setRunning(Z)V

    .line 382
    iget-object v0, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mTimmerHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 383
    return-void
.end method

.method protected swapPunctuation(I)V
    .locals 12
    .param p1, "keyCode"    # I

    .prologue
    const/4 v8, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 643
    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 644
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v1, :cond_1

    .line 675
    :cond_0
    :goto_0
    return-void

    .line 648
    :cond_1
    invoke-interface {v1, v8, v9}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v5

    .line 649
    .local v5, "text":Ljava/lang/CharSequence;
    if-eqz v5, :cond_0

    .line 653
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 655
    .local v2, "length":I
    if-lt v2, v8, :cond_0

    .line 659
    invoke-interface {v5, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 660
    .local v0, "firstChar":C
    invoke-interface {v5, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 661
    .local v4, "secondChar":C
    invoke-interface {v5, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .line 663
    .local v6, "thirdChar":C
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v7, 0x20

    if-ne v4, v7, :cond_0

    const-string v7, ".,;!?\u061b\u060c\u061f"

    invoke-virtual {v7, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    .line 666
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 667
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 668
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 670
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 671
    invoke-interface {v1, v11, v9}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 672
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7, v10}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 673
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto :goto_0
.end method

.method public updateCandidates()V
    .locals 3

    .prologue
    .line 623
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 624
    .local v0, "backUp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    iget-object v1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 625
    iget-object v1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v1, v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getHwrSuggestion(Ljava/util/ArrayList;)I

    .line 629
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 630
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->clearCandidateList()V

    .line 631
    iget-object v1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 632
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 634
    :cond_0
    const/4 v0, 0x0

    .line 635
    iget-object v1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v2, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v1, v2}, Lcom/diotek/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    .line 637
    iget-object v1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isEnableAutoCorrectionDA()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getXt9AutoReplacementCondition()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 638
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->setComposingText()V

    .line 640
    :cond_1
    return-void

    .line 627
    :cond_2
    iget-object v1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v1, v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    goto :goto_0
.end method

.method public updatePredictionSettingAndEngine()V
    .locals 3

    .prologue
    .line 106
    iget-object v0, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mIsPredictionOn:Z

    .line 107
    iget-object v0, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "SETTINGS_DEFAULT_TRACE"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mIsTraceOn:Z

    .line 108
    iget-object v0, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->updateEngine()I

    .line 109
    return-void
.end method

.method public updateSuggestionForSwiftKey()V
    .locals 0

    .prologue
    .line 1567
    return-void
.end method

.method public wordSeparatorPretreatment(I)V
    .locals 9
    .param p1, "keyCode"    # I

    .prologue
    const/16 v6, 0xa

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1592
    if-ne p1, v6, :cond_1

    iget v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputLanguage:I

    const/high16 v5, 0x6b6f0000

    if-ne v4, v5, :cond_1

    .line 1641
    :cond_0
    :goto_0
    return-void

    .line 1596
    :cond_1
    new-array v0, v8, [I

    .line 1597
    .local v0, "activeIndex":[I
    aput v7, v0, v7

    .line 1598
    int-to-char v4, p1

    invoke-virtual {p0, v4}, Lcom/diotek/ime/framework/input/AbstractInputModule;->isEnableAutoCorrection(C)Z

    move-result v3

    .line 1599
    .local v3, "isEnableAutoCorrection":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1600
    .local v1, "bestCandidate":Ljava/lang/StringBuilder;
    if-eqz v3, :cond_2

    .line 1601
    iget-object v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v4, v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getActiveIndex([I)I

    .line 1604
    :cond_2
    iget-object v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isEnableAutoCorrection()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-boolean v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mIsTraceOn:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v4

    if-le v4, v6, :cond_4

    .line 1605
    iget-object v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isEnableAutoCorrection()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1606
    iget-object v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v4, v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getActiveIndex([I)I

    .line 1609
    :cond_3
    iget-object v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    aget v5, v0, v7

    invoke-interface {v4, v5}, Lcom/diotek/ime/framework/engine/InputEngineManager;->processWhenPickSuggestionManually(I)I

    .line 1610
    iget-object v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    aget v5, v0, v7

    invoke-interface {v4, v1, v5}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getCharSequence(Ljava/lang/StringBuilder;I)I

    .line 1612
    iget-object v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    .line 1613
    .local v2, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_0

    .line 1616
    invoke-static {v1, v2}, Lcom/diotek/ime/framework/input/autoCorrection/AutoCorrection;->doAutoCorrectionByTrace(Ljava/lang/CharSequence;Landroid/view/inputmethod/InputConnection;)Z

    .line 1617
    iget-object v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    aget v5, v0, v7

    invoke-interface {v4, v5}, Lcom/diotek/ime/framework/engine/InputEngineManager;->doNoteWordDoneForXt9(I)I

    goto :goto_0

    .line 1619
    .end local v2    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_4
    iget-object v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isEnableAutoCorrection()Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getInputSequenceCount()I

    move-result v4

    if-lez v4, :cond_7

    .line 1620
    iget-object v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestionCount()I

    move-result v4

    if-lez v4, :cond_6

    .line 1621
    iget-object v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    aget v5, v0, v7

    invoke-interface {v4, v5}, Lcom/diotek/ime/framework/engine/InputEngineManager;->processWhenPickSuggestionManually(I)I

    .line 1622
    aget v4, v0, v7

    if-lez v4, :cond_5

    .line 1623
    iget-object v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v0, v7

    invoke-interface {v4, v5, v6}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getCharSequence(Ljava/lang/StringBuilder;I)I

    .line 1624
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->setComposingText()V

    .line 1626
    :cond_5
    iget-object v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    aget v5, v0, v7

    invoke-interface {v4, v5}, Lcom/diotek/ime/framework/engine/InputEngineManager;->doNoteWordDoneForXt9(I)I

    .line 1628
    :cond_6
    invoke-virtual {p0, v8}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->finishComposing(Z)V

    goto/16 :goto_0

    .line 1629
    :cond_7
    iget-object v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getInputSequenceCount()I

    move-result v4

    if-lez v4, :cond_0

    .line 1630
    iget-object v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    aget v5, v0, v7

    invoke-interface {v4, v5}, Lcom/diotek/ime/framework/engine/InputEngineManager;->processWhenPickSuggestionManually(I)I

    .line 1631
    iget-object v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    aget v5, v0, v7

    invoke-interface {v4, v5}, Lcom/diotek/ime/framework/engine/InputEngineManager;->doNoteWordDoneForXt9(I)I

    .line 1632
    iget-object v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getBestCandidate()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1633
    iget-object v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    .line 1634
    .restart local v2    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_0

    .line 1637
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1638
    iget v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosPrevText:I

    iget v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosNextText:I

    invoke-static {v1, v4, v5, v2}, Lcom/diotek/ime/framework/input/autoCorrection/AutoCorrection;->doAutoCorrection(Ljava/lang/CharSequence;IILandroid/view/inputmethod/InputConnection;)Z

    goto/16 :goto_0
.end method
