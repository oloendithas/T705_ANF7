.class public Lcom/diotek/ime/framework/input/QwertyIndianInputModule;
.super Lcom/diotek/ime/framework/input/AbstractInputModule;
.source "QwertyIndianInputModule.java"


# instance fields
.field private mIndianInputModule:Lcom/diotek/ime/framework/input/IndianInputModule;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/diotek/ime/framework/input/QwertyIndianInputModule;->mIndianInputModule:Lcom/diotek/ime/framework/input/IndianInputModule;

    .line 22
    invoke-static {}, Lcom/diotek/ime/framework/input/IndianInputModule;->getInstance()Lcom/diotek/ime/framework/input/IndianInputModule;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/input/QwertyIndianInputModule;->mIndianInputModule:Lcom/diotek/ime/framework/input/IndianInputModule;

    .line 23
    return-void
.end method

.method private processBackSpaceKey()V
    .locals 14

    .prologue
    const/16 v13, 0x14

    const/16 v12, 0x43

    const/4 v11, -0x5

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 510
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    .line 511
    .local v2, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v2, :cond_1

    .line 620
    :cond_0
    :goto_0
    return-void

    .line 515
    :cond_1
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    .line 516
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v7, v8}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    .line 517
    new-array v0, v9, [I

    .line 518
    .local v0, "activeIndex":[I
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v7}, Lcom/diotek/ime/framework/input/AbstractInputModule;->stopTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;)V

    .line 520
    invoke-interface {v2, v9, v10}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 521
    .local v5, "lastChar":Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setDeleteCount(Ljava/lang/String;)V

    .line 522
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->resetPredictionWord()V

    .line 523
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_6

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_6

    iget v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mStateCandidate:I

    if-eq v7, v9, :cond_6

    .line 525
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v7

    if-le v7, v9, :cond_4

    .line 526
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v7, v11}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(I)I

    move-result v7

    if-nez v7, :cond_3

    .line 527
    iget-boolean v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-eqz v7, :cond_2

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->isRecapture()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 528
    invoke-virtual {p0, v9}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 529
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initComposingBuffer()V

    .line 530
    invoke-virtual {p0, v11}, Lcom/diotek/ime/framework/input/AbstractInputModule;->processReCaptureForXT9(I)V

    .line 531
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v7, v11}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(I)I

    .line 532
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v7, v8, v10}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getCharSequence(Ljava/lang/StringBuilder;I)I

    .line 544
    :goto_1
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setComposingText()V

    .line 545
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputCharSequence(Ljava/lang/CharSequence;)I

    .line 546
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 547
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v7, v8}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    .line 548
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v7, v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getActiveIndex([I)I

    .line 549
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v7, v8}, Lcom/diotek/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 534
    :cond_2
    invoke-virtual {p0, v9}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 535
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initComposingBuffer()V

    .line 536
    invoke-virtual {p0, v12}, Lcom/diotek/ime/framework/input/AbstractInputModule;->onKeyDownUpHandle(I)V

    goto :goto_1

    .line 539
    :cond_3
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v7, v8, v10}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getCharSequence(Ljava/lang/StringBuilder;I)I

    goto :goto_1

    .line 550
    :cond_4
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 551
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v7, v11}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(I)I

    .line 552
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    .line 553
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 554
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 555
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/diotek/ime/framework/input/AbstractInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 556
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v7, v8}, Lcom/diotek/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 558
    :cond_5
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 559
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/diotek/ime/framework/input/AbstractInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 560
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 561
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v7, v8}, Lcom/diotek/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    .line 562
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    const/4 v8, -0x1

    invoke-interface {v7, v8}, Lcom/diotek/ime/framework/engine/InputEngineManager;->setSuggestionActiveIndex(I)V

    goto/16 :goto_0

    .line 564
    :cond_6
    iget-boolean v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-eqz v7, :cond_7

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->isRecapture()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 568
    invoke-virtual {p0, v11}, Lcom/diotek/ime/framework/input/AbstractInputModule;->processReCaptureForXT9(I)V

    goto/16 :goto_0

    .line 570
    :cond_7
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isAutoCompletitionInput()Z

    move-result v3

    .line 571
    .local v3, "isCompletionOn":Z
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v4

    .line 572
    .local v4, "isLandscape":Z
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->getCompletions()[Landroid/view/inputmethod/CompletionInfo;

    move-result-object v1

    .line 574
    .local v1, "completions":[Landroid/view/inputmethod/CompletionInfo;
    if-eqz v3, :cond_a

    if-eqz v4, :cond_a

    if-eqz v1, :cond_a

    .line 575
    if-eqz v2, :cond_8

    .line 576
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 578
    :cond_8
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 579
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getDeleteCount()I

    move-result v7

    if-le v7, v13, :cond_9

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentPackageName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentPackageName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.sec.chaton"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 583
    if-eqz v2, :cond_0

    .line 584
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getLastWordDividerIndex()I

    move-result v7

    invoke-interface {v2, v7, v10}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto/16 :goto_0

    .line 587
    :cond_9
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initWordDividerIndexList()V

    .line 588
    invoke-virtual {p0, v12}, Lcom/diotek/ime/framework/input/AbstractInputModule;->onKeyDownUpHandle(I)V

    goto/16 :goto_0

    .line 591
    :cond_a
    invoke-virtual {p0, v9}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 592
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initComposingBuffer()V

    .line 593
    iget v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputLanguage:I

    const/high16 v8, 0x76690000

    if-ne v7, v8, :cond_b

    .line 594
    if-eqz v5, :cond_b

    .line 595
    invoke-static {v5}, Lcom/diotek/ime/framework/common/InputSequenceCheck;->normalizedNFD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 596
    .local v6, "nonNormalizedChar":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v9, :cond_b

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lcom/diotek/ime/framework/common/InputSequenceCheck;->isVietameseTone(I)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 599
    invoke-interface {v2, v9, v10}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 600
    invoke-static {v6}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    .line 601
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v2, v7, v9}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 602
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 606
    .end local v6    # "nonNormalizedChar":Ljava/lang/String;
    :cond_b
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v7, v11}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(I)I

    .line 607
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getDeleteCount()I

    move-result v7

    if-le v7, v13, :cond_c

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentPackageName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_c

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentPackageName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.sec.chaton"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_c

    .line 611
    if-eqz v2, :cond_0

    .line 612
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getLastWordDividerIndex()I

    move-result v7

    invoke-interface {v2, v7, v10}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto/16 :goto_0

    .line 615
    :cond_c
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initWordDividerIndexList()V

    .line 616
    invoke-virtual {p0, v12}, Lcom/diotek/ime/framework/input/AbstractInputModule;->onKeyDownUpHandle(I)V

    goto/16 :goto_0
.end method

.method private processMultiTap(I[I)V
    .locals 8
    .param p1, "keyCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 163
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    .line 164
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v6, v7}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    .line 165
    new-array v0, v4, [I

    .line 167
    .local v0, "activeIndex":[I
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v6}, Lcom/diotek/ime/framework/input/AbstractInputModule;->isTimerRunning(Lcom/diotek/ime/framework/input/InputModule$Timer;)Z

    move-result v3

    .line 168
    .local v3, "isTimerRunning":Z
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v6}, Lcom/diotek/ime/framework/input/AbstractInputModule;->stopTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;)V

    .line 169
    iget v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mLastKeyCode:I

    if-ne v6, p1, :cond_4

    move v1, v4

    .line 170
    .local v1, "isEqualKey":Z
    :goto_0
    iget-boolean v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_1

    .line 172
    :cond_0
    if-eqz v3, :cond_5

    if-eqz v1, :cond_5

    .line 181
    :cond_1
    :goto_1
    const/4 v2, 0x0

    .line 182
    .local v2, "isThaiMultitapComposing":Z
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasOneChar()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 183
    const/4 v2, 0x1

    .line 186
    :cond_2
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v4, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(I)I

    .line 187
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v4, v6, v5}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getCharSequence(Ljava/lang/StringBuilder;I)I

    .line 189
    invoke-virtual {p0, v2}, Lcom/diotek/ime/framework/input/AbstractInputModule;->isThaiAcceptable(Z)Z

    move-result v4

    if-nez v4, :cond_3

    .line 190
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 192
    :cond_3
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setComposingText()V

    .line 194
    iget-boolean v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v4, :cond_6

    .line 195
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 196
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v4, v5}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    .line 197
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v4, v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getActiveIndex([I)I

    .line 198
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v4, v5}, Lcom/diotek/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    .line 203
    :goto_2
    return-void

    .end local v1    # "isEqualKey":Z
    .end local v2    # "isThaiMultitapComposing":Z
    :cond_4
    move v1, v5

    .line 169
    goto :goto_0

    .line 175
    .restart local v1    # "isEqualKey":Z
    :cond_5
    invoke-virtual {p0, v4}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 176
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initComposingBuffer()V

    .line 177
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    goto :goto_1

    .line 200
    .restart local v2    # "isThaiMultitapComposing":Z
    :cond_6
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    const/16 v5, 0x5dc

    invoke-virtual {p0, v4, v5}, Lcom/diotek/ime/framework/input/AbstractInputModule;->startTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;I)V

    goto :goto_2
.end method

.method private processSingleTap(I[I)V
    .locals 13
    .param p1, "keyCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    .line 207
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v9, v10}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    .line 208
    const/4 v9, 0x1

    new-array v0, v9, [I

    .line 209
    .local v0, "activeIndex":[I
    const/4 v8, 0x0

    .line 210
    .local v8, "isTraceInput":Z
    iget-boolean v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->isEnableTraceInPassword()Z

    move-result v9

    if-eqz v9, :cond_5

    :cond_0
    const/4 v6, 0x1

    .line 212
    .local v6, "isEnableTraceInput":Z
    :goto_0
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v9}, Lcom/diotek/ime/framework/input/AbstractInputModule;->isTimerRunning(Lcom/diotek/ime/framework/input/InputModule$Timer;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 215
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v9}, Lcom/diotek/ime/framework/input/AbstractInputModule;->stopTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;)V

    .line 216
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_1

    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_2

    .line 217
    :cond_1
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 218
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initComposingBuffer()V

    .line 221
    :cond_2
    if-eqz v6, :cond_d

    iget-boolean v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsTraceOn:Z

    if-eqz v9, :cond_d

    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    if-eqz v9, :cond_d

    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v9}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v9

    const/4 v10, 0x2

    if-le v9, v10, :cond_d

    .line 222
    const/4 v9, 0x1

    new-array v1, v9, [Z

    .line 223
    .local v1, "bAddSpace":[Z
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v10}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTracePoint()[Landroid/graphics/PointF;

    move-result-object v10

    iget-object v11, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v11}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v11

    invoke-interface {v9, v10, v11, v1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->isAutoAcceptBeforeTrace([Landroid/graphics/PointF;I[Z)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 225
    const/4 v9, 0x0

    aget-boolean v9, v1, v9

    if-eqz v9, :cond_6

    .line 226
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v9, v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getActiveIndex([I)I

    .line 227
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v9, :cond_3

    .line 228
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    const/4 v10, 0x0

    aget v10, v0, v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    invoke-static {v9}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(Ljava/lang/CharSequence;)V

    .line 230
    :cond_3
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setComposingText()V

    .line 231
    const/4 v9, 0x0

    aget v9, v0, v9

    invoke-virtual {p0, v9}, Lcom/diotek/ime/framework/input/AbstractInputModule;->selectWordInList(I)V

    .line 232
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 233
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initComposingBuffer()V

    .line 234
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v9}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isAutoSpaceOn()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 235
    const/16 v9, 0x20

    invoke-static {v9}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(C)V

    .line 236
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/diotek/ime/framework/input/AbstractInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 237
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v9

    if-nez v9, :cond_4

    .line 238
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 239
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->updateShiftState()V

    .line 247
    :cond_4
    :goto_1
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v10}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTracePoint()[Landroid/graphics/PointF;

    move-result-object v10

    iget-object v11, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v11}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v11

    const/4 v12, -0x1

    invoke-interface {v9, v10, v11, v12}, Lcom/diotek/ime/framework/engine/InputEngineManager;->processTrace([Landroid/graphics/PointF;IB)S

    move-result v9

    if-eqz v9, :cond_7

    .line 249
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v9}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->clearTraceInfo()V

    .line 250
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->resetPredictionWord()V

    .line 344
    .end local v1    # "bAddSpace":[Z
    :goto_2
    return-void

    .line 210
    .end local v6    # "isEnableTraceInput":Z
    :cond_5
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 244
    .restart local v1    # "bAddSpace":[Z
    .restart local v6    # "isEnableTraceInput":Z
    :cond_6
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    goto :goto_1

    .line 253
    :cond_7
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v9}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->clearTraceInfo()V

    .line 254
    const/4 v8, 0x1

    .line 304
    .end local v1    # "bAddSpace":[Z
    :goto_3
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getCharSequence(Ljava/lang/StringBuilder;I)I

    .line 305
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_8

    if-eqz v8, :cond_8

    .line 306
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v9}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->disableSetUpAutoSpace()V

    .line 307
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->resetPredictionWord()V

    .line 310
    :cond_8
    iget-boolean v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-eqz v9, :cond_9

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->isAvailablePrediction()Z

    move-result v9

    if-nez v9, :cond_a

    if-nez v8, :cond_a

    .line 311
    :cond_9
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    .line 316
    :cond_a
    iget v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputLanguage:I

    const/high16 v10, 0x76690000

    if-ne v9, v10, :cond_b

    .line 317
    iget-boolean v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    invoke-virtual {p0, p1, v9}, Lcom/diotek/ime/framework/input/AbstractInputModule;->processVietnameseTone(IZ)V

    .line 320
    :cond_b
    iget-boolean v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-eqz v9, :cond_16

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->isAvailablePrediction()Z

    move-result v9

    if-nez v9, :cond_c

    if-eqz v8, :cond_16

    :cond_c
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v9, :cond_16

    .line 322
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setComposingText()V

    .line 323
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v9, v10}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputCharSequence(Ljava/lang/CharSequence;)I

    .line 324
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 325
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v9, v10}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    .line 326
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v9, v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getActiveIndex([I)I

    .line 327
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v9, v10}, Lcom/diotek/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    goto :goto_2

    .line 256
    :cond_d
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v9

    if-eqz v9, :cond_f

    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v9}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAtText()Z

    move-result v9

    if-eqz v9, :cond_f

    .line 257
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/diotek/ime/framework/input/AbstractInputModule;->selectWordInList(I)V

    .line 258
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 259
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initComposingBuffer()V

    .line 260
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v9}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isAutoSpaceOn()Z

    move-result v9

    if-eqz v9, :cond_e

    .line 261
    const/16 v9, 0x20

    invoke-static {v9}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(C)V

    .line 262
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/diotek/ime/framework/input/AbstractInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 263
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v9

    if-nez v9, :cond_e

    .line 264
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v9

    if-eqz v9, :cond_e

    .line 265
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->updateShiftState()V

    .line 269
    :cond_e
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v9, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(I)I

    move-result v9

    if-nez v9, :cond_12

    .line 270
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->resetPredictionWord()V

    goto/16 :goto_2

    .line 273
    :cond_f
    iget-boolean v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-eqz v9, :cond_13

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->isRecapture()Z

    move-result v9

    if-eqz v9, :cond_13

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_13

    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v9, :cond_10

    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_10

    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_10

    iget v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mStateCandidate:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_13

    .line 277
    :cond_10
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v9, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(I)I

    move-result v9

    if-nez v9, :cond_11

    .line 278
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->resetPredictionWord()V

    goto/16 :goto_2

    .line 281
    :cond_11
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getCharSequence(Ljava/lang/StringBuilder;I)I

    .line 282
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/diotek/ime/framework/input/AbstractInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 283
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->processReCaptureForXT9(I)V

    .line 302
    :cond_12
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearAction()V

    goto/16 :goto_3

    .line 285
    :cond_13
    iget-boolean v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-eqz v9, :cond_15

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v9

    if-nez v9, :cond_15

    .line 286
    iget-object v9, p0, Lcom/diotek/ime/framework/input/QwertyIndianInputModule;->mIndianInputModule:Lcom/diotek/ime/framework/input/IndianInputModule;

    iget-object v10, p0, Lcom/diotek/ime/framework/input/QwertyIndianInputModule;->mIndianInputModule:Lcom/diotek/ime/framework/input/IndianInputModule;

    invoke-virtual {v10}, Lcom/diotek/ime/framework/input/IndianInputModule;->getLangScriptId()I

    move-result v10

    invoke-virtual {v9, p1, v10}, Lcom/diotek/ime/framework/input/IndianInputModule;->isDependentVowel(II)Z

    move-result v9

    if-nez v9, :cond_14

    iget-object v9, p0, Lcom/diotek/ime/framework/input/QwertyIndianInputModule;->mIndianInputModule:Lcom/diotek/ime/framework/input/IndianInputModule;

    iget-object v10, p0, Lcom/diotek/ime/framework/input/QwertyIndianInputModule;->mIndianInputModule:Lcom/diotek/ime/framework/input/IndianInputModule;

    invoke-virtual {v10}, Lcom/diotek/ime/framework/input/IndianInputModule;->getLangScriptId()I

    move-result v10

    invoke-virtual {v9, p1, v10}, Lcom/diotek/ime/framework/input/IndianInputModule;->isSpecialVowel(II)Z

    move-result v9

    if-eqz v9, :cond_15

    .line 290
    :cond_14
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 291
    .local v3, "dependentChar":Ljava/lang/StringBuilder;
    int-to-char v9, p1

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 292
    invoke-virtual {p0, v3}, Lcom/diotek/ime/framework/input/AbstractInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 297
    .end local v3    # "dependentChar":Ljava/lang/StringBuilder;
    :cond_15
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v9, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(I)I

    move-result v9

    if-nez v9, :cond_12

    .line 298
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->resetPredictionWord()V

    goto/16 :goto_2

    .line 329
    :cond_16
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isAutoCompletitionInput()Z

    move-result v5

    .line 330
    .local v5, "isCompletionOn":Z
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v7

    .line 331
    .local v7, "isLandscape":Z
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->getCompletions()[Landroid/view/inputmethod/CompletionInfo;

    move-result-object v2

    .line 332
    .local v2, "completions":[Landroid/view/inputmethod/CompletionInfo;
    if-eqz v5, :cond_18

    if-eqz v7, :cond_18

    if-eqz v2, :cond_18

    .line 333
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v4

    .line 334
    .local v4, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v4, :cond_17

    .line 335
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x1

    invoke-interface {v4, v9, v10}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 337
    :cond_17
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    goto/16 :goto_2

    .line 339
    .end local v4    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_18
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/diotek/ime/framework/input/AbstractInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 340
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 341
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    goto/16 :goto_2
.end method

.method private processWordSeparator(I[I)V
    .locals 11
    .param p1, "keyCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    .line 421
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    .line 422
    .local v2, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v2, :cond_1

    .line 507
    :cond_0
    :goto_0
    return-void

    .line 425
    :cond_1
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    .line 426
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v8, "SETTINGS_DEFAULT_NEXTWORDPREDICTION"

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v5

    .line 428
    .local v5, "isNextWordPredictionOn":Z
    const/4 v3, 0x0

    .line 429
    .local v3, "isActiveIndex":Z
    const/4 v0, 0x0

    .line 431
    .local v0, "ActiveText":Ljava/lang/CharSequence;
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v7, v8}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    .line 432
    const/4 v7, 0x1

    new-array v1, v7, [I

    .line 433
    .local v1, "activeIndex":[I
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v7, v1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getActiveIndex([I)I

    .line 434
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_3

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_3

    const/4 v7, 0x0

    aget v7, v1, v7

    if-ltz v7, :cond_3

    const/4 v7, 0x0

    aget v7, v1, v7

    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_3

    .line 436
    iget v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mStateCandidate:I

    if-nez v7, :cond_2

    .line 437
    iget v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPickSuggestionIndex:I

    .line 438
    .local v6, "pickeSuggestionIndex":I
    const/4 v7, -0x1

    if-eq v6, v7, :cond_5

    .line 439
    invoke-virtual {p0, v6}, Lcom/diotek/ime/framework/input/AbstractInputModule;->selectWordInList(I)V

    .line 444
    .end local v6    # "pickeSuggestionIndex":I
    :cond_2
    :goto_1
    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    const/4 v7, 0x0

    aget v9, v1, v7

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    const/4 v10, 0x0

    aget v10, v1, v10

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-interface {v8, v9, v7}, Lcom/diotek/ime/framework/engine/InputEngineManager;->wordSelected(ILjava/lang/CharSequence;)I

    .line 445
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    .line 447
    const/4 v7, 0x0

    aget v7, v1, v7

    if-eqz v7, :cond_6

    .line 448
    const/4 v3, 0x1

    .line 449
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    const/4 v8, 0x0

    aget v8, v1, v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "ActiveText":Ljava/lang/CharSequence;
    check-cast v0, Ljava/lang/CharSequence;

    .line 456
    .restart local v0    # "ActiveText":Ljava/lang/CharSequence;
    :cond_3
    :goto_2
    const/16 v7, 0xa

    if-ne p1, v7, :cond_7

    .line 457
    if-eqz v3, :cond_4

    .line 458
    invoke-static {v0}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(Ljava/lang/CharSequence;)V

    .line 459
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setComposingText()V

    .line 460
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 461
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initComposingBuffer()V

    .line 463
    :cond_4
    const/4 v7, 0x0

    invoke-static {v7}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->setToggleIndianVoMatraAvailable(Z)V

    .line 464
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->updateIndianToggleState()V

    .line 465
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->sendEnterKeyHandle()V

    .line 466
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/engine/InputEngineManager;->breakContext()V

    goto/16 :goto_0

    .line 441
    .restart local v6    # "pickeSuggestionIndex":I
    :cond_5
    const/4 v7, 0x0

    aget v7, v1, v7

    invoke-virtual {p0, v7}, Lcom/diotek/ime/framework/input/AbstractInputModule;->selectWordInList(I)V

    goto :goto_1

    .line 451
    .end local v6    # "pickeSuggestionIndex":I
    :cond_6
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 452
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initComposingBuffer()V

    goto :goto_2

    .line 469
    :cond_7
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->isInMultiTapInput()Z

    move-result v4

    .line 470
    .local v4, "isInMultiTap":Z
    if-eqz v4, :cond_8

    .line 471
    invoke-virtual {p0, p1, p2}, Lcom/diotek/ime/framework/input/AbstractInputModule;->processMultiTapSymbolicKey(I[I)V

    goto/16 :goto_0

    .line 474
    :cond_8
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v7, p1}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAtSymbol(I)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 475
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 476
    const/16 v7, 0x20

    invoke-static {v7}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(C)V

    .line 477
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/diotek/ime/framework/input/AbstractInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 480
    :cond_9
    if-eqz v3, :cond_b

    .line 481
    invoke-static {v0}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(Ljava/lang/CharSequence;)V

    .line 486
    :goto_3
    int-to-char v7, p1

    invoke-static {v7}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    .line 487
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v7, p1}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAfterPunctuation(I)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 488
    const/16 v7, 0x20

    invoke-static {v7}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    .line 492
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->disableSetUpAutoSpace()V

    .line 494
    :cond_a
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/diotek/ime/framework/input/AbstractInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 496
    const/16 v7, 0x2e

    if-eq p1, v7, :cond_0

    const/16 v7, 0x2c

    if-eq p1, v7, :cond_0

    const/16 v7, 0x3f

    if-eq p1, v7, :cond_0

    const/16 v7, 0x21

    if-eq p1, v7, :cond_0

    .line 503
    iget-boolean v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-eqz v7, :cond_0

    if-eqz v5, :cond_0

    iget v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mStateCandidate:I

    if-nez v7, :cond_0

    .line 505
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/diotek/ime/framework/input/AbstractInputModule;->doNextWordPrediction(Z)V

    goto/16 :goto_0

    .line 483
    :cond_b
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 484
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    goto :goto_3
.end method


# virtual methods
.method public closing()V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->stopTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;)V

    .line 38
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    .line 39
    invoke-super {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->closing()V

    .line 40
    return-void
.end method

.method public initialize()V
    .locals 0

    .prologue
    .line 27
    invoke-super {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initialize()V

    .line 28
    return-void
.end method

.method public onCharacterKey(I[I)V
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    const/4 v2, 0x0

    .line 44
    iget-object v0, p0, Lcom/diotek/ime/framework/input/QwertyIndianInputModule;->mIndianInputModule:Lcom/diotek/ime/framework/input/IndianInputModule;

    invoke-virtual {v0, p1}, Lcom/diotek/ime/framework/input/IndianInputModule;->validCharToProcess(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 45
    iget-object v0, p0, Lcom/diotek/ime/framework/input/QwertyIndianInputModule;->mIndianInputModule:Lcom/diotek/ime/framework/input/IndianInputModule;

    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-virtual {v0, p0, v1, p1}, Lcom/diotek/ime/framework/input/IndianInputModule;->init(Lcom/diotek/ime/framework/input/QwertyIndianInputModule;Lcom/diotek/ime/framework/common/InputManager;I)V

    .line 46
    iget-object v0, p0, Lcom/diotek/ime/framework/input/QwertyIndianInputModule;->mIndianInputModule:Lcom/diotek/ime/framework/input/IndianInputModule;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/input/IndianInputModule;->getLangScriptId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 47
    invoke-static {p1}, Ljava/lang/Character;->isDigit(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    invoke-static {v2}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->setToggleIndianVoMatraAvailable(Z)V

    .line 50
    :cond_0
    invoke-virtual {p0, p1, p2, v2}, Lcom/diotek/ime/framework/input/QwertyIndianInputModule;->onCharacterKey(I[IZ)V

    .line 70
    :goto_0
    return-void

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/diotek/ime/framework/input/QwertyIndianInputModule;->mIndianInputModule:Lcom/diotek/ime/framework/input/IndianInputModule;

    invoke-virtual {v0, p2}, Lcom/diotek/ime/framework/input/IndianInputModule;->handleRegionalCharacter([I)V

    goto :goto_0

    .line 54
    :cond_2
    iget-object v0, p0, Lcom/diotek/ime/framework/input/QwertyIndianInputModule;->mIndianInputModule:Lcom/diotek/ime/framework/input/IndianInputModule;

    invoke-virtual {v0, p1}, Lcom/diotek/ime/framework/input/IndianInputModule;->isIndianFunctionKey(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 55
    iget-object v0, p0, Lcom/diotek/ime/framework/input/QwertyIndianInputModule;->mIndianInputModule:Lcom/diotek/ime/framework/input/IndianInputModule;

    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-virtual {v0, p0, v1, p1}, Lcom/diotek/ime/framework/input/IndianInputModule;->init(Lcom/diotek/ime/framework/input/QwertyIndianInputModule;Lcom/diotek/ime/framework/common/InputManager;I)V

    goto :goto_0

    .line 57
    :cond_3
    const/16 v0, 0x20

    if-ne p1, v0, :cond_5

    .line 58
    invoke-static {v2}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->setToggleIndianVoMatraAvailable(Z)V

    .line 59
    invoke-static {v2}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->setCombinationAvailable(Z)V

    .line 60
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->setVowelRowMax(I)V

    .line 61
    invoke-static {v2}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->setVowelRowState(I)V

    .line 62
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->setVowelRowShifted(Z)V

    .line 63
    sget-boolean v0, Lcom/diotek/ime/framework/input/IndianInputModule;->IS_QVGA:Z

    if-eqz v0, :cond_4

    .line 64
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->updateIndianVowelRowState()V

    .line 66
    :cond_4
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->updateIndianToggleState()V

    .line 68
    :cond_5
    invoke-virtual {p0, p1, p2, v2}, Lcom/diotek/ime/framework/input/QwertyIndianInputModule;->onCharacterKey(I[IZ)V

    goto :goto_0
.end method

.method public onCharacterKey(I[IZ)V
    .locals 12
    .param p1, "keyCode"    # I
    .param p2, "keyCodes"    # [I
    .param p3, "overloaded"    # Z

    .prologue
    const/16 v11, 0x20

    const/4 v10, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 73
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v1

    .line 74
    .local v1, "inputMethod":I
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v2

    .line 76
    .local v2, "inputRange":I
    invoke-virtual {p0, v5}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setPredictionWord(Z)V

    .line 77
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    iget v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mStateCandidate:I

    if-ne v7, v5, :cond_0

    .line 79
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    .line 81
    :cond_0
    iget-boolean v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsTraceOn:Z

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v7

    if-le v7, v10, :cond_a

    move v4, v5

    .line 82
    .local v4, "isTraceInput":Z
    :goto_0
    iget-boolean v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->isEnableTraceInPassword()Z

    move-result v7

    if-eqz v7, :cond_b

    :cond_1
    move v3, v5

    .line 83
    .local v3, "isEnableTraceInput":Z
    :goto_1
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v7, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->isTextCharacter(I)Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/diotek/ime/framework/input/QwertyIndianInputModule;->mIndianInputModule:Lcom/diotek/ime/framework/input/IndianInputModule;

    invoke-virtual {v7, p1}, Lcom/diotek/ime/framework/input/IndianInputModule;->validCharToProcess(I)Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_2
    iget-object v7, p0, Lcom/diotek/ime/framework/input/QwertyIndianInputModule;->mIndianInputModule:Lcom/diotek/ime/framework/input/IndianInputModule;

    invoke-virtual {v7, p1}, Lcom/diotek/ime/framework/input/IndianInputModule;->validCharToProcess(I)Z

    move-result v7

    if-eqz v7, :cond_3

    if-eq v2, v10, :cond_5

    :cond_3
    if-eqz v2, :cond_5

    :cond_4
    if-eqz v3, :cond_11

    if-eqz v4, :cond_11

    .line 87
    :cond_5
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v7, p1, v4}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpace(IZ)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 89
    invoke-static {v11}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(C)V

    .line 90
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/diotek/ime/framework/input/AbstractInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v7

    if-nez v7, :cond_6

    .line 92
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 93
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->updateShiftState()V

    .line 97
    :cond_6
    if-nez v1, :cond_f

    .line 98
    iget-boolean v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-nez v7, :cond_c

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v7

    if-nez v7, :cond_c

    iget v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputLanguage:I

    invoke-static {v7, p1}, Lcom/diotek/ime/framework/util/Utils;->isMultitapKey(II)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 100
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/input/QwertyIndianInputModule;->processMultiTap(I[I)V

    .line 154
    :cond_7
    :goto_2
    if-ne p1, v11, :cond_8

    iget v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mStateCandidate:I

    if-eq v5, v10, :cond_9

    .line 156
    :cond_8
    iput v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mStateCandidate:I

    .line 158
    :cond_9
    iput p1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mLastKeyCode:I

    .line 159
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v5, p1, v4}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->setUpAutoSpace(IZ)V

    .line 160
    return-void

    .end local v3    # "isEnableTraceInput":Z
    .end local v4    # "isTraceInput":Z
    :cond_a
    move v4, v6

    .line 81
    goto/16 :goto_0

    .restart local v4    # "isTraceInput":Z
    :cond_b
    move v3, v6

    .line 82
    goto :goto_1

    .line 101
    .restart local v3    # "isEnableTraceInput":Z
    :cond_c
    iget-boolean v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-nez v7, :cond_d

    iget v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputLanguage:I

    const/high16 v8, 0x74680000

    if-ne v7, v8, :cond_d

    .line 102
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/input/QwertyIndianInputModule;->processMultiTap(I[I)V

    goto :goto_2

    .line 114
    :cond_d
    if-eqz p2, :cond_e

    array-length v7, p2

    if-le v7, v5, :cond_e

    .line 115
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    array-length v7, p2

    if-ge v0, v7, :cond_7

    .line 116
    aget v7, p2, v0

    new-array v8, v5, [I

    aget v9, p2, v0

    aput v9, v8, v6

    invoke-direct {p0, v7, v8}, Lcom/diotek/ime/framework/input/QwertyIndianInputModule;->processSingleTap(I[I)V

    .line 115
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 121
    .end local v0    # "i":I
    :cond_e
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/input/QwertyIndianInputModule;->processSingleTap(I[I)V

    goto :goto_2

    .line 124
    :cond_f
    if-ne v1, v5, :cond_10

    .line 125
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/input/QwertyIndianInputModule;->processMultiTap(I[I)V

    goto :goto_2

    .line 127
    :cond_10
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/input/QwertyIndianInputModule;->processSingleTap(I[I)V

    goto :goto_2

    .line 130
    :cond_11
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v7, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->isNumericCharacter(I)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 131
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_12

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAtNumeric()Z

    move-result v5

    if-eqz v5, :cond_12

    .line 133
    invoke-static {v11}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(C)V

    .line 134
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/diotek/ime/framework/input/AbstractInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 136
    :cond_12
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/input/QwertyIndianInputModule;->processSingleTap(I[I)V

    .line 152
    :cond_13
    :goto_4
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->autoPeriod(I)V

    goto :goto_2

    .line 139
    :cond_14
    if-eqz p2, :cond_15

    const/16 v7, 0x2e

    if-eq p1, v7, :cond_15

    array-length v7, p2

    if-lez v7, :cond_15

    .line 140
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_5
    array-length v7, p2

    if-ge v0, v7, :cond_13

    .line 141
    aget v7, p2, v0

    new-array v8, v5, [I

    aget v9, p2, v0

    aput v9, v8, v6

    invoke-virtual {p0, v7, v8}, Lcom/diotek/ime/framework/input/QwertyIndianInputModule;->processSymbolicKey(I[I)V

    .line 140
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 146
    .end local v0    # "i":I
    :cond_15
    invoke-virtual {p0, p1, p2}, Lcom/diotek/ime/framework/input/QwertyIndianInputModule;->processSymbolicKey(I[I)V

    goto :goto_4
.end method

.method public onHwrPanelLongPressed(ILjava/lang/String;)V
    .locals 0
    .param p1, "selectedArrayIndex"    # I
    .param p2, "resultString"    # Ljava/lang/String;

    .prologue
    .line 626
    return-void
.end method

.method protected processSymbolicKey(I[I)V
    .locals 12
    .param p1, "keyCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    const/16 v11, 0x20

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 347
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    .line 348
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v6, v7}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    .line 349
    new-array v0, v10, [I

    .line 350
    .local v0, "activeIndex":[I
    const/4 v3, 0x0

    .line 352
    .local v3, "isActiveIndex":Z
    const-string v6, " .,;:!?\n()[]*&@{}/<>_-+=|\'\u061b\u060c\u061f\""

    invoke-virtual {v6, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    .line 353
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/input/QwertyIndianInputModule;->processWordSeparator(I[I)V

    .line 418
    :cond_0
    :goto_0
    return-void

    .line 355
    :cond_1
    const/16 v6, 0xa

    if-eq p1, v6, :cond_2

    if-ne p1, v11, :cond_3

    .line 356
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/input/QwertyIndianInputModule;->processWordSeparator(I[I)V

    goto :goto_0

    .line 358
    :cond_3
    const/4 v6, -0x5

    if-ne p1, v6, :cond_6

    .line 359
    invoke-direct {p0}, Lcom/diotek/ime/framework/input/QwertyIndianInputModule;->processBackSpaceKey()V

    .line 360
    sget-boolean v6, Lcom/diotek/ime/framework/input/IndianInputModule;->IS_QVGA:Z

    if-eqz v6, :cond_0

    .line 361
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    .line 362
    .local v2, "inputConnection":Landroid/view/inputmethod/InputConnection;
    const/4 v5, 0x0

    .line 363
    .local v5, "nextLeadingChar":Ljava/lang/CharSequence;
    if-eqz v2, :cond_4

    .line 365
    invoke-interface {v2, v10, v9}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v5

    .line 367
    :cond_4
    invoke-static {}, Lcom/diotek/ime/framework/input/IndianInputModule;->getInstance()Lcom/diotek/ime/framework/input/IndianInputModule;

    move-result-object v1

    .line 368
    .local v1, "indianInputModule":Lcom/diotek/ime/framework/input/IndianInputModule;
    if-eqz v5, :cond_5

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-ne v6, v10, :cond_5

    invoke-interface {v5, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-virtual {v1}, Lcom/diotek/ime/framework/input/IndianInputModule;->getLangScriptId()I

    move-result v7

    invoke-virtual {v1, v6, v7}, Lcom/diotek/ime/framework/input/IndianInputModule;->isConsonant(II)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 369
    invoke-static {v10}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->setCombinationAvailable(Z)V

    .line 370
    const/4 v6, 0x4

    invoke-static {v6}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->setVowelRowMax(I)V

    .line 371
    invoke-static {v10}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->setVowelRowShifted(Z)V

    .line 378
    :goto_1
    invoke-static {v9}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->setVowelRowState(I)V

    .line 380
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->updateIndianVowelRowState()V

    goto :goto_0

    .line 374
    :cond_5
    invoke-static {v9}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->setCombinationAvailable(Z)V

    .line 375
    const/4 v6, 0x2

    invoke-static {v6}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->setVowelRowMax(I)V

    .line 376
    invoke-static {v9}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->setVowelRowShifted(Z)V

    goto :goto_1

    .line 383
    .end local v1    # "indianInputModule":Lcom/diotek/ime/framework/input/IndianInputModule;
    .end local v2    # "inputConnection":Landroid/view/inputmethod/InputConnection;
    .end local v5    # "nextLeadingChar":Ljava/lang/CharSequence;
    :cond_6
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_7

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 385
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 386
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v6, v7}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    .line 387
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v6, v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getActiveIndex([I)I

    .line 388
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v6, v7}, Lcom/diotek/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    .line 390
    aget v6, v0, v9

    if-eqz v6, :cond_8

    .line 391
    const/4 v3, 0x1

    .line 399
    :cond_7
    :goto_2
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->isInMultiTapInput()Z

    move-result v4

    .line 400
    .local v4, "isInMultiTap":Z
    if-eqz v4, :cond_9

    .line 401
    invoke-virtual {p0, p1, p2}, Lcom/diotek/ime/framework/input/AbstractInputModule;->processMultiTapSymbolicKey(I[I)V

    goto/16 :goto_0

    .line 393
    .end local v4    # "isInMultiTap":Z
    :cond_8
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    int-to-char v7, p1

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputCharSequence(Ljava/lang/CharSequence;)I

    .line 394
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, v0, v9

    invoke-interface {v6, v7, v8}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getCharSequence(Ljava/lang/StringBuilder;I)I

    .line 395
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setComposingText()V

    goto :goto_2

    .line 405
    .restart local v4    # "isInMultiTap":Z
    :cond_9
    if-eqz v3, :cond_b

    .line 406
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    aget v7, v0, v9

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v6}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(Ljava/lang/CharSequence;)V

    .line 413
    :goto_3
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v6, p1}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAtSymbol(I)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 414
    invoke-static {v11}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    .line 416
    :cond_a
    int-to-char v6, p1

    invoke-static {v6}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    .line 417
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/diotek/ime/framework/input/AbstractInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 408
    :cond_b
    invoke-virtual {p0, v10}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 409
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initComposingBuffer()V

    .line 410
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    goto :goto_3
.end method

.method public release()V
    .locals 0

    .prologue
    .line 33
    return-void
.end method

.method public setAddStrokeCallBackOnHWREngine()V
    .locals 0

    .prologue
    .line 631
    return-void
.end method

.method public updateVOHWRSuggestion()V
    .locals 0

    .prologue
    .line 635
    return-void
.end method
