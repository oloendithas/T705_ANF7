.class public abstract Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;
.super Lcom/diotek/ime/framework/input/AbstractInputModule;
.source "AbstractSwiftkeyInputModule.java"


# static fields
.field protected static mCommitHistory:Ljava/lang/StringBuilder;


# instance fields
.field protected bSymbolMultitapKeyPressed:Z

.field protected mHandler:Landroid/os/Handler;

.field private mLimitLengthOfFlowTouchHistory:I

.field private mLimitLengthOfFlowTouchHistoryCHN:I

.field private mLimitLengthOfPreviewFlowCandidate:I

.field private mPreviewCandidate:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mSamplingRateFlowTouchHistory:I

.field protected mSecondaryKeyManager:Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyManager;

.field private mSkipLimitationCountFlowTouchHistory:I

.field protected mSwiftKeyKeyLearningManager:Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->mCommitHistory:Ljava/lang/StringBuilder;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 82
    invoke-direct {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;-><init>()V

    .line 32
    iput-object v1, p0, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->mSecondaryKeyManager:Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyManager;

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->bSymbolMultitapKeyPressed:Z

    .line 34
    iput-object v1, p0, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->mSwiftKeyKeyLearningManager:Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->mPreviewCandidate:Ljava/util/ArrayList;

    .line 38
    const/16 v0, 0x23

    iput v0, p0, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->mLimitLengthOfPreviewFlowCandidate:I

    .line 39
    const/16 v0, 0x15e

    iput v0, p0, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->mLimitLengthOfFlowTouchHistory:I

    .line 40
    const/16 v0, 0xfa

    iput v0, p0, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->mLimitLengthOfFlowTouchHistoryCHN:I

    .line 41
    const/16 v0, 0xa

    iput v0, p0, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->mSamplingRateFlowTouchHistory:I

    .line 42
    const/16 v0, 0x1e

    iput v0, p0, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->mSkipLimitationCountFlowTouchHistory:I

    .line 44
    new-instance v0, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule$1;

    invoke-direct {v0, p0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule$1;-><init>(Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;)V

    iput-object v0, p0, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->mHandler:Landroid/os/Handler;

    .line 83
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;->getInstance(Landroid/content/Context;)Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->mSwiftKeyKeyLearningManager:Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;

    .line 84
    new-instance v0, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule$2;

    invoke-direct {v0, p0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule$2;-><init>(Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;)V

    iput-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    .line 108
    return-void
.end method

.method private setText(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x1

    .line 742
    invoke-virtual {p0, v2}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 743
    invoke-static {p1}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    .line 744
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAfterPunctuation(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 745
    const/16 v0, 0x20

    invoke-static {v0}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    .line 746
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->disableSetUpAutoSpace()V

    .line 748
    :cond_0
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 749
    iget v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputLanguage:I

    const/high16 v1, 0x6b6f0000

    if-eq v0, v1, :cond_1

    .line 750
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v0, p1}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->setUpAutoSpace(Ljava/lang/CharSequence;)V

    .line 752
    :cond_1
    invoke-virtual {p0, v2}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setPredictionWord(Z)V

    .line 753
    return-void
.end method


# virtual methods
.method protected addCurrentTextToCandidate(Ljava/util/ArrayList;Ljava/lang/StringBuilder;)V
    .locals 5
    .param p2, "currentText"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/lang/StringBuilder;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "candidate":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 675
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    const v2, 0xfffc

    if-ne v1, v2, :cond_1

    .line 696
    :cond_0
    :goto_0
    return-void

    .line 679
    :cond_1
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 680
    .local v0, "index":I
    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setIndexOfInputBuffer(I)V

    .line 682
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 683
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 684
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 685
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 686
    if-ne v0, v3, :cond_3

    .line 687
    invoke-static {p2}, Lcom/diotek/ime/framework/util/Utils;->isEmojiCharacter(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 688
    invoke-virtual {p1, v4, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 690
    :cond_3
    if-eq v0, v3, :cond_0

    if-eqz v0, :cond_0

    .line 691
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 692
    invoke-virtual {p1, v4, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method protected appendChunjiinInComposing(I)V
    .locals 3
    .param p1, "keyCode"    # I

    .prologue
    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 381
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/diotek/ime/framework/engine/InputEngineManager;->splitHangul(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    int-to-char v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 383
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/diotek/ime/framework/engine/InputEngineManager;->joinHangul(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(Ljava/lang/String;)V

    .line 384
    return-void
.end method

.method protected appendJamoInComposing(I)V
    .locals 3
    .param p1, "keyCode"    # I

    .prologue
    .line 371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 373
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/diotek/ime/framework/engine/InputEngineManager;->splitHangul(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    int-to-char v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 376
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/diotek/ime/framework/engine/InputEngineManager;->joinHangul(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(Ljava/lang/String;)V

    .line 377
    return-void
.end method

.method public cancelPreviewTrace()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 175
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    .line 176
    .local v0, "inputMode":I
    iget-boolean v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsTraceOn:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isKoreaLanguage()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputMethodOnKor()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 178
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1, v3}, Lcom/diotek/ime/framework/common/InputManager;->setCandidateviewStatus(I)V

    .line 179
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSuggestion()V

    .line 182
    :cond_1
    iget-boolean v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsTraceOn:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->cancelTrace()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 183
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1, v3}, Lcom/diotek/ime/framework/common/InputManager;->setCandidateviewStatus(I)V

    .line 184
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSuggestion()V

    .line 186
    :cond_2
    return-void
.end method

.method public cancelUpdateSequenceAndSuggestionDelayForRecapture()V
    .locals 2

    .prologue
    .line 448
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 449
    return-void
.end method

.method public cancelUpdateSuggestionDelay()V
    .locals 2

    .prologue
    .line 430
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 431
    return-void
.end method

.method protected checkAcceptableThai(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "leadingStr"    # Ljava/lang/String;
    .param p2, "keyCode"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 519
    iget v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputLanguage:I

    const/high16 v3, 0x74680000

    if-ne v2, v3, :cond_1

    .line 520
    const/4 v0, 0x0

    .line 521
    .local v0, "leadingChar":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v1, :cond_2

    .line 522
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 530
    :cond_0
    :goto_0
    invoke-static {p2, v0}, Lcom/diotek/ime/framework/common/InputSequenceCheck;->isThaiAcceptable(II)Z

    move-result v1

    .line 532
    .end local v0    # "leadingChar":I
    :cond_1
    return v1

    .line 523
    .restart local v0    # "leadingChar":I
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 524
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v2, v3}, Lcom/diotek/ime/framework/common/InputSequenceCheck;->isThaiComposable(II)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 525
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0

    .line 527
    :cond_3
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0
.end method

.method public commitTextAndInitComposing(Ljava/lang/CharSequence;)V
    .locals 13
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/high16 v12, 0x76690000

    const v11, 0x6d795a57

    const/high16 v10, 0x6b6d0000

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 191
    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->isKoreaLanguage()Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v8}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputMethodOnKor()I

    move-result v8

    if-ne v8, v6, :cond_1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-lez v8, :cond_1

    .line 195
    invoke-interface {p1, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    const v9, 0xff8b

    if-eq v8, v9, :cond_0

    invoke-interface {p1, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    const v9, 0xff9a

    if-ne v8, v9, :cond_1

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 200
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_b

    .line 201
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 202
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 203
    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    if-eqz v8, :cond_2

    .line 204
    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v8, v6}, Lcom/diotek/ime/framework/common/ShiftStateController;->setNextShiftState(Z)V

    .line 208
    :cond_2
    const/4 v1, 0x1

    .line 209
    .local v1, "isTACcomposible":Z
    const/4 v2, 0x1

    .line 210
    .local v2, "isZawComposable":Z
    iget v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputLanguage:I

    if-eq v8, v12, :cond_3

    iget v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputLanguage:I

    const/high16 v9, 0x74680000

    if-eq v8, v9, :cond_3

    iget v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputLanguage:I

    const/high16 v9, 0x6c6f0000

    if-eq v8, v9, :cond_3

    iget v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputLanguage:I

    if-eq v8, v11, :cond_3

    iget v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputLanguage:I

    if-ne v8, v10, :cond_9

    .line 212
    :cond_3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-ne v8, v6, :cond_9

    .line 213
    const-string v3, ""

    .line 214
    .local v3, "leadingChar":Ljava/lang/String;
    invoke-interface {v0, v6, v7}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v3

    .end local v3    # "leadingChar":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 215
    .restart local v3    # "leadingChar":Ljava/lang/String;
    if-nez v3, :cond_4

    const-string v3, ""

    .line 217
    :cond_4
    const-string v5, ""

    .line 218
    .local v5, "leadingStr2":Ljava/lang/String;
    const/4 v4, 0x0

    .line 219
    .local v4, "leadingChar2":I
    iget v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputLanguage:I

    if-ne v8, v11, :cond_6

    .line 220
    const/4 v8, 0x2

    invoke-interface {v0, v8, v7}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v5

    .end local v5    # "leadingStr2":Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 221
    .restart local v5    # "leadingStr2":Ljava/lang/String;
    if-nez v5, :cond_5

    const-string v5, ""

    .line 222
    :cond_5
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v6, :cond_6

    .line 223
    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 227
    :cond_6
    if-eqz v3, :cond_7

    .line 228
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v8

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v9

    invoke-static {v8, v9}, Lcom/diotek/ime/framework/common/InputSequenceCheck;->isThaiAcceptable(II)Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v8

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v9

    invoke-static {v8, v9}, Lcom/diotek/ime/framework/common/InputSequenceCheck;->isLaoAcceptable(II)Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v8

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v9

    invoke-static {v8, v9}, Lcom/diotek/ime/framework/common/InputSequenceCheck;->isKhmerAcceptale(II)Z

    move-result v8

    if-eqz v8, :cond_d

    move v1, v6

    .line 231
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v8

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v9

    invoke-static {v8, v9, v4}, Lcom/diotek/ime/framework/common/InputSequenceCheck;->isZawgyiAcceptable(III)Z

    move-result v2

    .line 233
    :cond_7
    iget v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputLanguage:I

    if-ne v8, v10, :cond_8

    .line 234
    if-eqz v1, :cond_e

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v8

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v9

    invoke-static {v8, v9}, Lcom/diotek/ime/framework/common/InputSequenceCheck;->isKhmerAcceptale(II)Z

    move-result v8

    if-eqz v8, :cond_e

    move v1, v6

    .line 237
    :cond_8
    :goto_2
    iget v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputLanguage:I

    if-ne v8, v12, :cond_9

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v8

    invoke-static {v8}, Lcom/diotek/ime/framework/common/InputSequenceCheck;->isVietameseTone(I)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 239
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Ljava/text/Normalizer$Form;->NFC:Ljava/text/Normalizer$Form;

    invoke-static {v8, v9}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object p1

    .line 240
    invoke-interface {v0, v6, v7}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 244
    .end local v3    # "leadingChar":Ljava/lang/String;
    .end local v4    # "leadingChar2":I
    .end local v5    # "leadingStr2":Ljava/lang/String;
    :cond_9
    if-eqz v1, :cond_a

    if-eqz v2, :cond_a

    .line 245
    invoke-interface {v0, p1, v6}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 247
    :cond_a
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 250
    .end local v1    # "isTACcomposible":Z
    .end local v2    # "isZawComposable":Z
    :cond_b
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 251
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->clear()V

    .line 252
    invoke-static {v7}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->setBlockPrediction(Z)V

    .line 255
    :cond_c
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 256
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    goto/16 :goto_0

    .restart local v1    # "isTACcomposible":Z
    .restart local v2    # "isZawComposable":Z
    .restart local v3    # "leadingChar":Ljava/lang/String;
    .restart local v4    # "leadingChar2":I
    .restart local v5    # "leadingStr2":Ljava/lang/String;
    :cond_d
    move v1, v7

    .line 228
    goto :goto_1

    :cond_e
    move v1, v7

    .line 234
    goto :goto_2
.end method

.method protected deleteLastJamoInComposing()V
    .locals 5

    .prologue
    .line 387
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 388
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/diotek/ime/framework/engine/InputEngineManager;->splitHangul(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 390
    .local v2, "length":I
    if-lez v2, :cond_0

    .line 391
    add-int/lit8 v3, v2, -0x1

    invoke-virtual {v0, v3, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 393
    :cond_0
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 394
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/diotek/ime/framework/engine/InputEngineManager;->joinHangul(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 395
    .local v1, "joinedHangul":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 396
    invoke-static {v1}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    .line 398
    :cond_1
    return-void
.end method

.method public endMultitapTimer()V
    .locals 1

    .prologue
    .line 112
    invoke-super {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->endMultitapTimer()V

    .line 113
    iget-boolean v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-eqz v0, :cond_0

    .line 114
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSequence(Ljava/lang/StringBuilder;)V

    .line 115
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSuggestion()V

    .line 117
    :cond_0
    return-void
.end method

.method public getSecondaryChar(I)I
    .locals 9
    .param p1, "keyCode"    # I

    .prologue
    .line 589
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v4

    .line 590
    .local v4, "shiftState":Z
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->isAcuteAccentState()Z

    move-result v0

    .line 591
    .local v0, "accentState":Z
    move v3, p1

    .line 592
    .local v3, "secondaryKeyCode":I
    invoke-static {}, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyManager;->getInstance()Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyManager;

    move-result-object v2

    .line 593
    .local v2, "secKeyManager":Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyManager;
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v7, "SETTINGS_BULGARIAN_KEYBOARD_TYPE"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v1

    .line 594
    .local v1, "bulgarianKeyboardType":I
    iget v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputLanguage:I

    const/high16 v7, 0x6b610000

    if-ne v6, v7, :cond_0

    if-nez v4, :cond_9

    :cond_0
    iget v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputLanguage:I

    const/high16 v7, 0x656c0000

    if-ne v6, v7, :cond_1

    if-nez v0, :cond_9

    :cond_1
    iget v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputLanguage:I

    const/high16 v7, 0x6c760000

    if-ne v6, v7, :cond_2

    if-nez v0, :cond_9

    :cond_2
    iget v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputLanguage:I

    const/high16 v7, 0x61720000

    if-ne v6, v7, :cond_3

    if-nez v4, :cond_9

    :cond_3
    iget v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputLanguage:I

    const/high16 v7, 0x66610000

    if-ne v6, v7, :cond_4

    if-nez v4, :cond_9

    :cond_4
    iget v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputLanguage:I

    const/high16 v7, 0x75720000

    if-ne v6, v7, :cond_5

    if-nez v4, :cond_9

    :cond_5
    iget v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputLanguage:I

    const/high16 v7, 0x74680000

    if-ne v6, v7, :cond_6

    if-nez v4, :cond_9

    :cond_6
    iget v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputLanguage:I

    const/high16 v7, 0x6b6d0000

    if-ne v6, v7, :cond_7

    if-nez v4, :cond_9

    :cond_7
    iget v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputLanguage:I

    const/high16 v7, 0x6c6f0000

    if-ne v6, v7, :cond_8

    if-nez v4, :cond_9

    :cond_8
    iget v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputLanguage:I

    const/high16 v7, 0x62670000

    if-ne v6, v7, :cond_a

    if-eqz v4, :cond_a

    const/4 v6, 0x1

    if-eq v1, v6, :cond_a

    .line 605
    :cond_9
    invoke-virtual {v2, p1}, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyManager;->getSecondaryKey(I)I

    move-result v5

    .line 606
    .local v5, "tempKeyCode":I
    const/16 v6, -0xff

    if-eq v5, v6, :cond_a

    .line 607
    move v3, v5

    .line 610
    .end local v5    # "tempKeyCode":I
    :cond_a
    return v3
.end method

.method public getSelectedWord()Ljava/lang/String;
    .locals 1

    .prologue
    .line 762
    const/4 v0, 0x0

    return-object v0
.end method

.method public initialize()V
    .locals 2

    .prologue
    .line 121
    invoke-super {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initialize()V

    .line 122
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->setHandler(Landroid/os/Handler;)V

    .line 123
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->mSwiftKeyKeyLearningManager:Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;->clearTouchPoints()V

    .line 124
    return-void
.end method

.method public isLaoAcceptable(I)Z
    .locals 9
    .param p1, "keyCode"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 536
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getCurrentLanguageID()I

    move-result v7

    const/high16 v8, 0x6c6f0000

    if-ne v7, v8, :cond_4

    .line 537
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 538
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v1, :cond_0

    .line 559
    .end local v1    # "ic":Landroid/view/inputmethod/InputConnection;
    :goto_0
    return v5

    .line 542
    .restart local v1    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_0
    invoke-interface {v1, v6, v5}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 543
    .local v3, "leadingStr":Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .line 544
    .local v2, "leadingChar":I
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v6

    if-lez v6, :cond_3

    .line 545
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    .line 550
    :cond_1
    :goto_1
    move v0, p1

    .line 552
    .local v0, "followingChar":I
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 553
    invoke-static {}, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyManager;->getInstance()Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyManager;

    move-result-object v4

    .line 554
    .local v4, "secKeyManager":Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyManager;
    invoke-virtual {v4, p1}, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyManager;->getSecondaryKey(I)I

    move-result v0

    .line 557
    .end local v4    # "secKeyManager":Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyManager;
    :cond_2
    invoke-static {v0, v2}, Lcom/diotek/ime/framework/common/InputSequenceCheck;->isLaoAcceptable(II)Z

    move-result v5

    goto :goto_0

    .line 546
    .end local v0    # "followingChar":I
    :cond_3
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 547
    invoke-interface {v3, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    goto :goto_1

    .end local v1    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v2    # "leadingChar":I
    .end local v3    # "leadingStr":Ljava/lang/CharSequence;
    :cond_4
    move v5, v6

    .line 559
    goto :goto_0
.end method

.method public isSwiftPhonepadInput()Z
    .locals 1

    .prologue
    .line 757
    invoke-super {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->isSwiftPhonepadInput()Z

    move-result v0

    return v0
.end method

.method public isZawgyiAcceptable(I)Z
    .locals 10
    .param p1, "keyCode"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 562
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getCurrentLanguageID()I

    move-result v8

    const v9, 0x6d795a57

    if-ne v8, v9, :cond_5

    .line 563
    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 564
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v1, :cond_0

    .line 585
    .end local v1    # "ic":Landroid/view/inputmethod/InputConnection;
    :goto_0
    return v6

    .line 567
    .restart local v1    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_0
    invoke-interface {v1, v7, v6}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v4

    .line 568
    .local v4, "leadingStr":Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .line 569
    .local v2, "leadingChar":I
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 570
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    .line 575
    :cond_1
    :goto_1
    const/4 v8, 0x2

    invoke-interface {v1, v8, v6}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v5

    .line 576
    .local v5, "leadingStr2":Ljava/lang/CharSequence;
    const/4 v3, 0x0

    .line 577
    .local v3, "leadingChar2":I
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 578
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    .line 582
    :cond_2
    :goto_2
    move v0, p1

    .line 583
    .local v0, "followingChar":I
    invoke-static {v0, v2, v3}, Lcom/diotek/ime/framework/common/InputSequenceCheck;->isZawgyiAcceptable(III)Z

    move-result v6

    goto :goto_0

    .line 571
    .end local v0    # "followingChar":I
    .end local v3    # "leadingChar2":I
    .end local v5    # "leadingStr2":Ljava/lang/CharSequence;
    :cond_3
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-lez v8, :cond_1

    .line 572
    invoke-interface {v4, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    goto :goto_1

    .line 579
    .restart local v3    # "leadingChar2":I
    .restart local v5    # "leadingStr2":Ljava/lang/CharSequence;
    :cond_4
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-le v8, v7, :cond_2

    .line 580
    invoke-interface {v5, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    goto :goto_2

    .end local v1    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v2    # "leadingChar":I
    .end local v3    # "leadingChar2":I
    .end local v4    # "leadingStr":Ljava/lang/CharSequence;
    .end local v5    # "leadingStr2":Ljava/lang/CharSequence;
    :cond_5
    move v6, v7

    .line 585
    goto :goto_0
.end method

.method protected makeComposingText(Landroid/view/inputmethod/InputConnection;IZ)V
    .locals 6
    .param p1, "ic"    # Landroid/view/inputmethod/InputConnection;
    .param p2, "textLength"    # I
    .param p3, "setComposing"    # Z

    .prologue
    const/4 v5, 0x0

    .line 478
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v3, "IS_RECAPTURING"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    .line 479
    const/4 v0, 0x0

    .line 480
    .local v0, "et":Landroid/view/inputmethod/ExtractedText;
    if-eqz p1, :cond_2

    .line 481
    new-instance v2, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v2}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    invoke-interface {p1, v2, v5}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v0

    .line 482
    invoke-interface {p1}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 483
    const/4 v1, 0x0

    .line 484
    .local v1, "extractedTextLength":I
    if-eqz v0, :cond_1

    .line 485
    iget v2, v0, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    iget v3, v0, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    add-int v1, v2, v3

    .line 486
    if-lt v1, p2, :cond_0

    .line 487
    sub-int v2, v1, p2

    invoke-interface {p1, v2, v1}, Landroid/view/inputmethod/InputConnection;->setComposingRegion(II)Z

    .line 494
    :goto_0
    invoke-interface {p1}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 495
    if-eqz v0, :cond_2

    iget-object v2, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    if-eqz v2, :cond_2

    if-lt v1, p2, :cond_2

    iget v2, v0, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    if-lt v2, p2, :cond_2

    iget-object v2, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    iget v3, v0, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    sub-int/2addr v3, p2

    iget v4, v0, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    invoke-interface {v2, v3, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 502
    .end local v1    # "extractedTextLength":I
    :goto_1
    return-void

    .line 489
    .restart local v1    # "extractedTextLength":I
    :cond_0
    invoke-interface {p1, p2, v5}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto :goto_0

    .line 492
    :cond_1
    invoke-interface {p1, p2, v5}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto :goto_0

    .line 501
    .end local v1    # "extractedTextLength":I
    :cond_2
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setComposingText()V

    goto :goto_1
.end method

.method public onText(Ljava/lang/CharSequence;)V
    .locals 8
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 700
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_1

    .line 739
    :cond_0
    :goto_0
    return-void

    .line 703
    :cond_1
    iget-boolean v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-eqz v6, :cond_8

    .line 704
    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-virtual {p0, v6}, Lcom/diotek/ime/framework/input/AbstractInputModule;->isEnableAutoCorrection(C)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 705
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 706
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v1, :cond_0

    .line 709
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v2

    .line 710
    .local v2, "inputMode":I
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputLanguageCode()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputLanguageCode()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ko"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    if-eq v2, v4, :cond_2

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isKorTabletCji()Z

    move-result v6

    if-nez v6, :cond_2

    const/16 v6, 0x8

    if-ne v2, v6, :cond_6

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_2
    move v3, v4

    .line 716
    .local v3, "isKorPhonepad":Z
    :goto_1
    if-eqz v3, :cond_3

    .line 717
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->endMultitapTimer()V

    .line 719
    :cond_3
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    .line 720
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v6, v7, v5}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;Z)I

    .line 721
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_4

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 722
    new-array v0, v4, [I

    .line 723
    .local v0, "activeIndex":[I
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v4, v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getActiveIndex([I)I

    .line 724
    invoke-virtual {p0, v1, v0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->doAutoCorrection(Landroid/view/inputmethod/InputConnection;[I)V

    .line 726
    .end local v0    # "activeIndex":[I
    :cond_4
    if-nez v3, :cond_5

    .line 727
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->endMultitapTimer()V

    .line 729
    :cond_5
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->setText(Ljava/lang/CharSequence;)V

    .line 734
    .end local v1    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v2    # "inputMode":I
    .end local v3    # "isKorPhonepad":Z
    :goto_2
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/diotek/ime/framework/engine/InputEngineManager;->wordSelected(ILjava/lang/CharSequence;)I

    goto/16 :goto_0

    .restart local v1    # "ic":Landroid/view/inputmethod/InputConnection;
    .restart local v2    # "inputMode":I
    :cond_6
    move v3, v5

    .line 710
    goto :goto_1

    .line 731
    .end local v1    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v2    # "inputMode":I
    :cond_7
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->endMultitapTimer()V

    .line 732
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 736
    :cond_8
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->endMultitapTimer()V

    .line 737
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public postUpdateSequence(I)V
    .locals 4
    .param p1, "time"    # I

    .prologue
    const/16 v3, 0x15

    .line 411
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 412
    if-lez p1, :cond_0

    .line 413
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->mHandler:Landroid/os/Handler;

    int-to-long v1, p1

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 417
    :goto_0
    return-void

    .line 415
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public postUpdateSequenceAndSuggestionDelay(I)V
    .locals 4
    .param p1, "time"    # I

    .prologue
    const/16 v3, 0x2b

    .line 420
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 421
    if-lez p1, :cond_0

    .line 422
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->mHandler:Landroid/os/Handler;

    int-to-long v1, p1

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 426
    :goto_0
    return-void

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public postUpdateSequenceAndSuggestionDelayForRecapture(I)V
    .locals 4
    .param p1, "time"    # I

    .prologue
    const/16 v3, 0x2d

    .line 435
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 436
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x2b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 437
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 439
    if-lez p1, :cond_0

    .line 440
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->mHandler:Landroid/os/Handler;

    int-to-long v1, p1

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 444
    :goto_0
    return-void

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public predictionWord()Z
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x0

    .line 275
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    if-nez v3, :cond_1

    .line 315
    :cond_0
    :goto_0
    return v2

    .line 278
    :cond_1
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v3

    iput-boolean v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    .line 279
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3, v2}, Lcom/diotek/ime/framework/common/InputManager;->getInputView(Z)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 282
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3, v2}, Lcom/diotek/ime/framework/common/InputManager;->getInputView(Z)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->isShown()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->isDeviceHasHardwareKeypad()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->isHWKeyboardOpen()Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->isEmoticonMode()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 287
    :cond_4
    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->isEnableDefaultCandidateview()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 288
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3, v5}, Lcom/diotek/ime/framework/common/InputManager;->setCandidateviewStatus(I)V

    goto :goto_0

    .line 292
    :cond_5
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    .line 293
    .local v0, "inputMode":I
    const/16 v3, 0x8

    if-eq v0, v3, :cond_6

    const/4 v3, 0x7

    if-ne v0, v3, :cond_7

    .line 294
    :cond_6
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v1

    .line 295
    .local v1, "popupKeyboardView":Lcom/diotek/ime/framework/view/PopupKeyboardView;
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->isPopKeyboardShown()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 299
    .end local v1    # "popupKeyboardView":Lcom/diotek/ime/framework/view/PopupKeyboardView;
    :cond_7
    iget-boolean v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getHanjaStatus()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 300
    :cond_8
    invoke-virtual {p0, v2}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->postUpdateSequenceAndSuggestionDelay(I)V

    .line 301
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 304
    :cond_9
    iget-boolean v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-nez v3, :cond_a

    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getSwiftkeyVersion()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_a

    .line 305
    invoke-virtual {p0, v2}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->postUpdateSequenceAndSuggestionDelay(I)V

    .line 308
    :cond_a
    iput v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mStateCandidate:I

    .line 309
    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->isEnableDefaultCandidateview()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 310
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3, v5}, Lcom/diotek/ime/framework/common/InputManager;->setCandidateviewStatus(I)V

    .line 312
    :cond_b
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    .line 313
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3, v2}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    .line 314
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    goto/16 :goto_0
.end method

.method public predictionWordStartInputViewContinue()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 322
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    if-nez v1, :cond_1

    .line 342
    :cond_0
    :goto_0
    return v3

    .line 326
    :cond_1
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isForcePredictionOff()Z

    move-result v0

    .line 327
    .local v0, "isForcePredictionOff":Z
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    .line 328
    iget-boolean v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-eqz v1, :cond_3

    .line 329
    const/16 v1, 0x64

    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->postUpdateSequenceAndSuggestionDelay(I)V

    move v3, v2

    .line 330
    goto :goto_0

    :cond_2
    move v1, v3

    .line 327
    goto :goto_1

    .line 333
    :cond_3
    iput v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mStateCandidate:I

    .line 335
    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->isEnableDefaultCandidateview()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 336
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/diotek/ime/framework/common/InputManager;->setCandidateviewStatus(I)V

    .line 339
    :cond_4
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    .line 340
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1, v3}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    .line 341
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    goto :goto_0
.end method

.method public previewTrace(I)V
    .locals 5
    .param p1, "count"    # I

    .prologue
    const/4 v2, 0x0

    .line 129
    iget-boolean v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->isEnableTraceInPassword()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_0
    const/4 v0, 0x1

    .line 130
    .local v0, "isEnableTraceInput":Z
    :goto_0
    const/4 v1, 0x0

    .line 131
    .local v1, "tracePointCount":I
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    if-eqz v3, :cond_1

    .line 132
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v1

    .line 135
    :cond_1
    iget v3, p0, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->mSkipLimitationCountFlowTouchHistory:I

    if-le v1, v3, :cond_4

    iget v3, p0, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->mSamplingRateFlowTouchHistory:I

    div-int v3, v1, v3

    rem-int v3, v1, v3

    if-eqz v3, :cond_4

    .line 169
    :cond_2
    :goto_1
    return-void

    .end local v0    # "isEnableTraceInput":Z
    .end local v1    # "tracePointCount":I
    :cond_3
    move v0, v2

    .line 129
    goto :goto_0

    .line 139
    .restart local v0    # "isEnableTraceInput":Z
    .restart local v1    # "tracePointCount":I
    :cond_4
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->mPreviewCandidate:Ljava/util/ArrayList;

    if-eqz v3, :cond_5

    .line 140
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->mPreviewCandidate:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 141
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->mPreviewCandidate:Ljava/util/ArrayList;

    invoke-interface {v3, v4}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    .line 144
    :cond_5
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    if-eqz v3, :cond_7

    .line 145
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 146
    iget v2, p0, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->mLimitLengthOfFlowTouchHistoryCHN:I

    if-le v1, v2, :cond_7

    .line 147
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->clearTouchPoint()Z

    .line 148
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->clearTraceInfo()V

    .line 149
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->cancelPreviewTrace()V

    goto :goto_1

    .line 152
    :cond_6
    iget v3, p0, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->mLimitLengthOfFlowTouchHistory:I

    if-le v1, v3, :cond_7

    .line 153
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->mPreviewCandidate:Ljava/util/ArrayList;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->mPreviewCandidate:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_7

    .line 154
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->mPreviewCandidate:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iget v3, p0, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->mLimitLengthOfPreviewFlowCandidate:I

    if-le v2, v3, :cond_7

    .line 155
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->clearTouchPoint()Z

    .line 156
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->clearTraceInfo()V

    .line 157
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->cancelPreviewTrace()V

    goto :goto_1

    .line 164
    :cond_7
    if-eqz v0, :cond_2

    iget-boolean v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsTraceOn:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    if-eqz v2, :cond_2

    const/4 v2, 0x2

    if-le v1, v2, :cond_2

    .line 166
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v3, 0x4

    invoke-interface {v2, v3}, Lcom/diotek/ime/framework/common/InputManager;->setCandidateviewStatus(I)V

    .line 167
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTracePoint()[Landroid/graphics/PointF;

    move-result-object v3

    int-to-byte v4, p1

    invoke-interface {v2, v3, v1, v4}, Lcom/diotek/ime/framework/engine/InputEngineManager;->processTrace([Landroid/graphics/PointF;IB)S

    goto/16 :goto_1
.end method

.method protected processKeyForHwKeyboard(I[I)V
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    const/4 v4, 0x1

    .line 640
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 641
    invoke-static {p1}, Lcom/diotek/ime/framework/util/Utils;->getHangleShiftedChar(I)I

    move-result p1

    .line 643
    :cond_0
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAtText()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 644
    invoke-virtual {p0, v4}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 645
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initComposingBuffer()V

    .line 649
    :cond_1
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getPreferenceInputMethodOnKor()I

    move-result v1

    .line 650
    .local v1, "hangulModule":I
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputStatus;->getLastInputProcess()I

    move-result v2

    sget v3, Lcom/diotek/ime/framework/repository/InputStatus;->INPUT_PROCESS_KEY:I

    if-eq v2, v3, :cond_2

    iget v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputLanguage:I

    const/high16 v3, 0x6b6f0000

    if-ne v2, v3, :cond_2

    if-eqz v1, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 653
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getInputController()Lcom/diotek/ime/framework/input/InputController;

    move-result-object v2

    invoke-interface {v2}, Lcom/diotek/ime/framework/input/InputController;->isMultiTapRnunnig()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 654
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getInputController()Lcom/diotek/ime/framework/input/InputController;

    move-result-object v2

    invoke-interface {v2}, Lcom/diotek/ime/framework/input/InputController;->endMultitapTimer()V

    .line 662
    :cond_2
    :goto_0
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->appendJamoInComposing(I)V

    .line 663
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v2

    if-le v2, v4, :cond_4

    .line 664
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->getLastChar()C

    move-result v0

    .line 665
    .local v0, "composing":C
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Lcom/diotek/ime/framework/input/ComposingTextManager;->setLength(I)V

    .line 666
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/diotek/ime/framework/input/AbstractInputModule;->commitText(Ljava/lang/CharSequence;)V

    .line 667
    invoke-static {v0}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(C)V

    .line 668
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setComposingText()V

    .line 672
    .end local v0    # "composing":C
    :goto_1
    return-void

    .line 656
    :cond_3
    invoke-virtual {p0, v4}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 657
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initComposingBuffer()V

    goto :goto_0

    .line 670
    :cond_4
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setComposingText()V

    goto :goto_1
.end method

.method public removeTerm(I)V
    .locals 3
    .param p1, "idx"    # I

    .prologue
    const/4 v2, 0x1

    .line 506
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->isEnableAutoCorrection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 507
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getIndexOfInputBuffer()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    if-eq p1, v2, :cond_1

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 509
    if-le p1, v2, :cond_0

    add-int/lit8 p1, p1, -0x1

    .line 514
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->removeTerm(I)V

    .line 515
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSuggestion()V

    .line 516
    return-void

    .line 510
    :cond_1
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isEnableAutoCorrectionDA()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getIndexOfInputBuffer()I

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    .line 511
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method protected replaceSpaceToSymbol(Ljava/lang/StringBuilder;)V
    .locals 5
    .param p1, "builder"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v4, 0x0

    .line 260
    if-eqz p1, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 271
    :cond_0
    :goto_0
    return-void

    .line 263
    :cond_1
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    .line 264
    .local v0, "firstChar":C
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    .line 265
    .local v1, "secondChar":C
    const/16 v2, 0x20

    if-ne v0, v2, :cond_0

    const-string v2, ".,;!?\u061b\u060c\u061f"

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 267
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 268
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 269
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method protected setVerbatimToEngine()V
    .locals 2

    .prologue
    .line 474
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->setVerbatim(Ljava/lang/String;)V

    .line 475
    return-void
.end method

.method public updateCandidates()V
    .locals 0

    .prologue
    .line 453
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSuggestion()V

    .line 454
    return-void
.end method

.method protected updateSequence(Ljava/lang/StringBuilder;)V
    .locals 6
    .param p1, "currentWord"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 350
    iput v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosPrevText:I

    .line 351
    iput v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosNextText:I

    .line 352
    new-array v1, v5, [I

    .line 353
    .local v1, "posPrevText":[I
    new-array v0, v5, [I

    .line 355
    .local v0, "posNextText":[I
    if-nez p1, :cond_0

    .line 356
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCurrentSequenceString:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 360
    :goto_0
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCurrentSequenceString:Ljava/lang/StringBuilder;

    invoke-interface {v2, v3, v1, v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->checkCurrentSequence(Ljava/lang/StringBuilder;[I[I)V

    .line 361
    aget v2, v1, v4

    iput v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosPrevText:I

    .line 362
    aget v2, v0, v4

    iput v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosNextText:I

    .line 363
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCurrentSequenceString:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 364
    iput v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mStateCandidate:I

    .line 368
    :goto_1
    return-void

    .line 358
    :cond_0
    iput-object p1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCurrentSequenceString:Ljava/lang/StringBuilder;

    goto :goto_0

    .line 366
    :cond_1
    const/4 v2, 0x2

    iput v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mStateCandidate:I

    goto :goto_1
.end method

.method public updateSuggestion()V
    .locals 2

    .prologue
    .line 458
    iget-boolean v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isDeviceHasHardwareKeypad()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isHWKeyboardOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 471
    :cond_0
    :goto_0
    return-void

    .line 462
    :cond_1
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 464
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    .line 465
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-eqz v0, :cond_2

    .line 466
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCurrentSequenceString:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 468
    :cond_2
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->setSuggestionActiveIndex(I)V

    .line 469
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public updateSuggestionDelay()V
    .locals 4

    .prologue
    const/16 v3, 0x26

    .line 402
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getIsPendingUpdateCandidateView()Z

    move-result v0

    if-nez v0, :cond_0

    .line 403
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSuggestion()V

    .line 408
    :goto_0
    return-void

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 406
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public updateSuggestionForSwiftKey()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 614
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 615
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getCurrentWord()Ljava/lang/String;

    move-result-object v0

    .line 616
    .local v0, "currentWord":Ljava/lang/String;
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 617
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    const/4 v2, 0x0

    .line 618
    .local v2, "lastChar":Ljava/lang/String;
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->isClipboardShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 619
    if-eqz v1, :cond_0

    .line 620
    const/4 v3, 0x1

    invoke-interface {v1, v3, v4}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v2

    .end local v2    # "lastChar":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 623
    .restart local v2    # "lastChar":Ljava/lang/String;
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_2

    :cond_1
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_3

    .line 625
    :cond_2
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->setUpByPickSuggestion()V

    .line 627
    :cond_3
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 628
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/engine/InputEngineManager;->checkChineseSequence()V

    .line 630
    :cond_4
    iget-boolean v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-eqz v3, :cond_5

    .line 631
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSequence(Ljava/lang/StringBuilder;)V

    .line 633
    :cond_5
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/engine/InputEngineManager;->updateSelectList()I

    .line 634
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSuggestion()V

    .line 635
    const/4 v3, 0x2

    iput v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mStateCandidate:I

    .line 637
    .end local v0    # "currentWord":Ljava/lang/String;
    .end local v1    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v2    # "lastChar":Ljava/lang/String;
    :cond_6
    return-void
.end method
