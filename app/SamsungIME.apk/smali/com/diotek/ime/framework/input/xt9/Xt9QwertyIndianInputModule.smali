.class public Lcom/diotek/ime/framework/input/xt9/Xt9QwertyIndianInputModule;
.super Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;
.source "Xt9QwertyIndianInputModule.java"


# instance fields
.field private mIndianInputModule:Lcom/diotek/ime/framework/input/IndianInputModule;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/diotek/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mIndianInputModule:Lcom/diotek/ime/framework/input/IndianInputModule;

    .line 24
    invoke-static {}, Lcom/diotek/ime/framework/input/IndianInputModule;->getInstance()Lcom/diotek/ime/framework/input/IndianInputModule;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mIndianInputModule:Lcom/diotek/ime/framework/input/IndianInputModule;

    .line 25
    return-void
.end method

.method private processBackSpaceKey()V
    .locals 13

    .prologue
    const/16 v12, 0x43

    const/16 v11, 0x19

    const/4 v10, 0x0

    const/4 v9, -0x5

    const/4 v8, 0x1

    .line 500
    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 501
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v1, :cond_1

    .line 603
    :cond_0
    :goto_0
    return-void

    .line 505
    :cond_1
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->clearCandidateList()V

    .line 506
    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v6}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->stopTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;)V

    .line 508
    const-string v4, ""

    .line 509
    .local v4, "lastChar":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 510
    invoke-interface {v1, v8, v10}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v4

    .end local v4    # "lastChar":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 511
    .restart local v4    # "lastChar":Ljava/lang/String;
    if-nez v4, :cond_2

    .line 512
    const-string v4, ""

    .line 515
    :cond_2
    invoke-virtual {p0, v4}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->setDeleteCount(Ljava/lang/String;)V

    .line 516
    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/engine/InputEngineManager;->hasInputSequence()Z

    move-result v6

    if-eqz v6, :cond_8

    iget v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mStateCandidate:I

    if-nez v6, :cond_8

    .line 518
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v6

    if-le v6, v8, :cond_6

    .line 519
    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v6, v9}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(I)I

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->isBeforeTraceInput()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 520
    :cond_3
    iget-boolean v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mIsPredictionOn:Z

    if-eqz v6, :cond_4

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->isRecapture()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 521
    invoke-virtual {p0, v8}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->finishComposing(Z)V

    .line 522
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->initComposingBuffer()V

    .line 523
    invoke-virtual {p0, v9}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->processReCaptureForXT9(I)V

    .line 524
    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v6, v9}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(I)I

    .line 525
    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getExactCharSequence(Ljava/lang/StringBuilder;)I

    .line 537
    :goto_1
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->setComposingText()V

    .line 538
    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6, v11}, Lcom/diotek/ime/framework/common/InputManager;->buildSuggestions(I)V

    goto :goto_0

    .line 527
    :cond_4
    invoke-virtual {p0, v8}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->finishComposing(Z)V

    .line 528
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->initComposingBuffer()V

    .line 529
    invoke-virtual {p0, v12}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->onKeyDownUpHandle(I)V

    goto :goto_1

    .line 532
    :cond_5
    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getExactCharSequence(Ljava/lang/StringBuilder;)I

    goto :goto_1

    .line 539
    :cond_6
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 540
    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v6, v9}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(I)I

    .line 541
    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    .line 542
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 543
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 544
    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6, v11}, Lcom/diotek/ime/framework/common/InputManager;->buildSuggestions(I)V

    goto/16 :goto_0

    .line 546
    :cond_7
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 547
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 548
    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6, v11}, Lcom/diotek/ime/framework/common/InputManager;->buildSuggestions(I)V

    .line 549
    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    const/4 v7, -0x1

    invoke-interface {v6, v7}, Lcom/diotek/ime/framework/engine/InputEngineManager;->setSuggestionActiveIndex(I)V

    goto/16 :goto_0

    .line 552
    :cond_8
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isAutoCompletitionInput()Z

    move-result v2

    .line 553
    .local v2, "isCompletionOn":Z
    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v3

    .line 554
    .local v3, "isLandscape":Z
    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->getCompletions()[Landroid/view/inputmethod/CompletionInfo;

    move-result-object v0

    .line 555
    .local v0, "completions":[Landroid/view/inputmethod/CompletionInfo;
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->resetPredictionWord()V

    .line 556
    if-eqz v2, :cond_b

    if-eqz v3, :cond_b

    if-eqz v0, :cond_b

    .line 557
    if-eqz v1, :cond_9

    .line 558
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 560
    :cond_9
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 561
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->getDeleteCount()I

    move-result v6

    const/16 v7, 0x14

    if-le v6, v7, :cond_a

    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->isCHAT_ON()Z

    move-result v6

    if-nez v6, :cond_a

    .line 562
    if-eqz v1, :cond_0

    .line 563
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->getLastWordDividerIndex()I

    move-result v6

    invoke-interface {v1, v6, v10}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto/16 :goto_0

    .line 566
    :cond_a
    invoke-virtual {p0, v12}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->onKeyDownUpHandle(I)V

    goto/16 :goto_0

    .line 569
    :cond_b
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 570
    invoke-virtual {p0, v8}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->finishComposing(Z)V

    .line 571
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->initComposingBuffer()V

    .line 573
    :cond_c
    iget v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputLanguage:I

    const/high16 v7, 0x76690000

    if-ne v6, v7, :cond_d

    .line 574
    if-eqz v4, :cond_d

    .line 575
    invoke-static {v4}, Lcom/diotek/ime/framework/common/InputSequenceCheck;->normalizedNFD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 576
    .local v5, "nonNormalizedChar":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v8, :cond_d

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/diotek/ime/framework/common/InputSequenceCheck;->isVietameseTone(I)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 580
    invoke-interface {v1, v8, v10}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 581
    invoke-static {v5}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    .line 582
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1, v6, v8}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 583
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 587
    .end local v5    # "nonNormalizedChar":Ljava/lang/String;
    :cond_d
    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v6, v9}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(I)I

    .line 588
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->getDeleteCount()I

    move-result v6

    const/16 v7, 0x14

    if-le v6, v7, :cond_e

    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->isCHAT_ON()Z

    move-result v6

    if-nez v6, :cond_e

    .line 589
    if-eqz v1, :cond_0

    .line 590
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->getLastWordDividerIndex()I

    move-result v6

    invoke-interface {v1, v6, v10}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto/16 :goto_0

    .line 593
    :cond_e
    invoke-virtual {p0, v12}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->onKeyDownUpHandle(I)V

    .line 594
    iget-boolean v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mIsPredictionOn:Z

    if-eqz v6, :cond_f

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->isRecapture()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 596
    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->postRecaptureWordXT9Message()V

    goto/16 :goto_0

    .line 598
    :cond_f
    invoke-virtual {p0, v8}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->finishComposing(Z)V

    goto/16 :goto_0
.end method

.method private processMultiTap(I[I)V
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 163
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->clearCandidateList()V

    .line 165
    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v5}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->isTimerRunning(Lcom/diotek/ime/framework/input/InputModule$Timer;)Z

    move-result v2

    .line 166
    .local v2, "isTimerRunning":Z
    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v5}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->stopTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;)V

    .line 167
    iget v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mLastKeyCode:I

    if-ne v5, p1, :cond_5

    move v0, v3

    .line 168
    .local v0, "isEqualKey":Z
    :goto_0
    iget-boolean v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mIsPredictionOn:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/engine/InputEngineManager;->hasInputSequence()Z

    move-result v5

    if-nez v5, :cond_1

    .line 169
    :cond_0
    if-eqz v2, :cond_6

    if-eqz v0, :cond_6

    .line 191
    :cond_1
    :goto_1
    const/4 v1, 0x0

    .line 192
    .local v1, "isThaiMultitapComposing":Z
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasOneChar()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 193
    const/4 v1, 0x1

    .line 195
    :cond_2
    iget-object v3, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    if-eqz v3, :cond_3

    .line 196
    iget-object v3, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v5, v4}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTouchPoint(I)Landroid/graphics/PointF;

    move-result-object v4

    invoke-interface {v3, p1, v4}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(ILandroid/graphics/PointF;)I

    .line 198
    :cond_3
    iget-object v3, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getExactCharSequence(Ljava/lang/StringBuilder;)I

    .line 200
    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->isThaiAcceptable(Z)Z

    move-result v3

    if-nez v3, :cond_4

    .line 201
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 203
    :cond_4
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->setComposingText()V

    .line 205
    iget-boolean v3, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mIsPredictionOn:Z

    if-eqz v3, :cond_7

    .line 206
    iget-object v3, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/16 v4, 0x19

    invoke-interface {v3, v4}, Lcom/diotek/ime/framework/common/InputManager;->buildSuggestions(I)V

    .line 211
    :goto_2
    return-void

    .end local v0    # "isEqualKey":Z
    .end local v1    # "isThaiMultitapComposing":Z
    :cond_5
    move v0, v4

    .line 167
    goto :goto_0

    .line 172
    .restart local v0    # "isEqualKey":Z
    :cond_6
    invoke-virtual {p0, v3}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->finishComposing(Z)V

    .line 173
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->initComposingBuffer()V

    .line 174
    iget-object v3, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    goto :goto_1

    .line 208
    .restart local v1    # "isThaiMultitapComposing":Z
    :cond_7
    iget-object v3, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    const/16 v4, 0x5dc

    invoke-virtual {p0, v3, v4}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->startTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;I)V

    goto :goto_2
.end method

.method private processSingleTap(I[I)V
    .locals 11
    .param p1, "keyCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->clearCandidateList()V

    .line 215
    const/4 v6, 0x0

    .line 217
    .local v6, "isTraceInput":Z
    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v7}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->isTimerRunning(Lcom/diotek/ime/framework/input/InputModule$Timer;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 220
    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v7}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->stopTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;)V

    .line 221
    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/engine/InputEngineManager;->hasInputSequence()Z

    move-result v7

    if-nez v7, :cond_0

    .line 222
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->finishComposing(Z)V

    .line 223
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->initComposingBuffer()V

    .line 226
    :cond_0
    iget-boolean v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mIsPredictionOn:Z

    if-eqz v7, :cond_6

    iget-boolean v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mIsTraceOn:Z

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v7

    const/4 v8, 0x2

    if-le v7, v8, :cond_6

    .line 227
    const/4 v7, 0x1

    new-array v0, v7, [Z

    .line 228
    .local v0, "bAddSpace":[Z
    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v8, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v8}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTracePoint()[Landroid/graphics/PointF;

    move-result-object v8

    iget-object v9, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v9}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v9

    invoke-interface {v7, v8, v9, v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->isAutoAcceptBeforeTrace([Landroid/graphics/PointF;I[Z)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 235
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->selectWordInList(I)V

    .line 236
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->finishComposing(Z)V

    .line 237
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->initComposingBuffer()V

    .line 238
    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isAutoSpaceOn()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 239
    const/16 v7, 0x20

    invoke-static {v7}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(C)V

    .line 240
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 241
    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v7

    if-nez v7, :cond_1

    .line 242
    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 243
    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->updateShiftState()V

    .line 251
    :cond_1
    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v8, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v8}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTracePoint()[Landroid/graphics/PointF;

    move-result-object v8

    iget-object v9, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v9}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v9

    const/4 v10, -0x1

    invoke-interface {v7, v8, v9, v10}, Lcom/diotek/ime/framework/engine/InputEngineManager;->processTrace([Landroid/graphics/PointF;IB)S

    move-result v7

    if-eqz v7, :cond_2

    .line 253
    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->clearTraceInfo()V

    .line 254
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->resetPredictionWord()V

    .line 396
    .end local v0    # "bAddSpace":[Z
    :goto_0
    return-void

    .line 257
    .restart local v0    # "bAddSpace":[Z
    :cond_2
    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->clearTraceInfo()V

    .line 258
    const/4 v6, 0x1

    .line 351
    .end local v0    # "bAddSpace":[Z
    :goto_1
    iget-boolean v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mIsPredictionOn:Z

    if-eqz v7, :cond_14

    if-eqz v6, :cond_14

    .line 352
    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getCharSequence(Ljava/lang/StringBuilder;)I

    .line 360
    :goto_2
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    if-eqz v6, :cond_3

    .line 361
    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->disableSetUpAutoSpace()V

    .line 362
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->resetPredictionWord()V

    .line 365
    :cond_3
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->isThaiAcceptable()Z

    move-result v7

    if-nez v7, :cond_4

    iget-boolean v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mIsPredictionOn:Z

    if-eqz v7, :cond_4

    .line 366
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 367
    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    .line 370
    :cond_4
    iget v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputLanguage:I

    const/high16 v8, 0x76690000

    if-ne v7, v8, :cond_5

    .line 371
    iget-boolean v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mIsPredictionOn:Z

    invoke-virtual {p0, p1, v7}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->processVietnameseTone(IZ)V

    .line 374
    :cond_5
    iget-boolean v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mIsPredictionOn:Z

    if-eqz v7, :cond_17

    if-eqz v6, :cond_17

    .line 375
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->setComposingText()V

    .line 376
    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/16 v8, 0x19

    invoke-interface {v7, v8}, Lcom/diotek/ime/framework/common/InputManager;->updateCandidates(I)V

    goto :goto_0

    .line 260
    :cond_6
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v7

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAtText()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 261
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->selectWordInList(I)V

    .line 262
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->finishComposing(Z)V

    .line 263
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->initComposingBuffer()V

    .line 264
    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isAutoSpaceOn()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 265
    const/16 v7, 0x20

    invoke-static {v7}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(C)V

    .line 266
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 267
    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v7

    if-nez v7, :cond_7

    .line 268
    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 269
    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->updateShiftState()V

    .line 273
    :cond_7
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputStatus;->isKeyLongpressed()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 274
    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v7, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(I)I

    move-result v7

    if-nez v7, :cond_13

    .line 275
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->resetPredictionWord()V

    goto/16 :goto_0

    .line 279
    :cond_8
    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->isDeviceHasHardwareKeypad()Z

    move-result v7

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->isHWKeyboardOpen()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 280
    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v7, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(I)I

    move-result v7

    if-nez v7, :cond_13

    .line 281
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->resetPredictionWord()V

    goto/16 :goto_0

    .line 285
    :cond_9
    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    if-eqz v7, :cond_13

    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v8, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTouchPoint(I)Landroid/graphics/PointF;

    move-result-object v8

    invoke-interface {v7, p1, v8}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(ILandroid/graphics/PointF;)I

    move-result v7

    if-nez v7, :cond_13

    .line 286
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->resetPredictionWord()V

    goto/16 :goto_0

    .line 291
    :cond_a
    iget-boolean v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mIsPredictionOn:Z

    if-eqz v7, :cond_e

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->isRecapture()Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_e

    iget v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mStateCandidate:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_e

    .line 295
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputStatus;->isKeyLongpressed()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 296
    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v7, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(I)I

    move-result v7

    if-nez v7, :cond_d

    .line 297
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->resetPredictionWord()V

    goto/16 :goto_0

    .line 301
    :cond_b
    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->isDeviceHasHardwareKeypad()Z

    move-result v7

    if-eqz v7, :cond_c

    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->isHWKeyboardOpen()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 302
    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v7, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(I)I

    move-result v7

    if-nez v7, :cond_d

    .line 303
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->resetPredictionWord()V

    goto/16 :goto_0

    .line 307
    :cond_c
    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v8, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTouchPoint(I)Landroid/graphics/PointF;

    move-result-object v8

    invoke-interface {v7, p1, v8}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(ILandroid/graphics/PointF;)I

    move-result v7

    if-nez v7, :cond_d

    .line 308
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->resetPredictionWord()V

    goto/16 :goto_0

    .line 313
    :cond_d
    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getExactCharSequence(Ljava/lang/StringBuilder;)I

    .line 314
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 315
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->processReCaptureForXT9(I)V

    goto/16 :goto_0

    .line 318
    :cond_e
    iget-boolean v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mIsPredictionOn:Z

    if-eqz v7, :cond_10

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v7

    if-nez v7, :cond_10

    .line 319
    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mIndianInputModule:Lcom/diotek/ime/framework/input/IndianInputModule;

    iget-object v8, p0, Lcom/diotek/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mIndianInputModule:Lcom/diotek/ime/framework/input/IndianInputModule;

    invoke-virtual {v8}, Lcom/diotek/ime/framework/input/IndianInputModule;->getLangScriptId()I

    move-result v8

    invoke-virtual {v7, p1, v8}, Lcom/diotek/ime/framework/input/IndianInputModule;->isDependentVowel(II)Z

    move-result v7

    if-nez v7, :cond_f

    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mIndianInputModule:Lcom/diotek/ime/framework/input/IndianInputModule;

    iget-object v8, p0, Lcom/diotek/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mIndianInputModule:Lcom/diotek/ime/framework/input/IndianInputModule;

    invoke-virtual {v8}, Lcom/diotek/ime/framework/input/IndianInputModule;->getLangScriptId()I

    move-result v8

    invoke-virtual {v7, p1, v8}, Lcom/diotek/ime/framework/input/IndianInputModule;->isSpecialVowel(II)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 323
    :cond_f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 324
    .local v2, "dependentChar":Ljava/lang/StringBuilder;
    int-to-char v7, p1

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 325
    invoke-virtual {p0, v2}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 330
    .end local v2    # "dependentChar":Ljava/lang/StringBuilder;
    :cond_10
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputStatus;->isKeyLongpressed()Z

    move-result v7

    if-eqz v7, :cond_11

    .line 331
    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v7, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(I)I

    move-result v7

    if-nez v7, :cond_13

    .line 332
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->resetPredictionWord()V

    goto/16 :goto_0

    .line 336
    :cond_11
    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->isDeviceHasHardwareKeypad()Z

    move-result v7

    if-eqz v7, :cond_12

    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->isHWKeyboardOpen()Z

    move-result v7

    if-eqz v7, :cond_12

    .line 337
    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v7, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(I)I

    move-result v7

    if-nez v7, :cond_13

    .line 338
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->resetPredictionWord()V

    goto/16 :goto_0

    .line 342
    :cond_12
    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    if-eqz v7, :cond_13

    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v8, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTouchPoint(I)Landroid/graphics/PointF;

    move-result-object v8

    invoke-interface {v7, p1, v8}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(ILandroid/graphics/PointF;)I

    move-result v7

    if-nez v7, :cond_13

    .line 343
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->resetPredictionWord()V

    goto/16 :goto_0

    .line 349
    :cond_13
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->clearAction()V

    goto/16 :goto_1

    .line 353
    :cond_14
    iget-boolean v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mIsPredictionOn:Z

    if-eqz v7, :cond_15

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->isAvailablePrediction()Z

    move-result v7

    if-nez v7, :cond_16

    if-nez v6, :cond_16

    .line 354
    :cond_15
    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getExactCharSequence(Ljava/lang/StringBuilder;)I

    .line 355
    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    goto/16 :goto_2

    .line 357
    :cond_16
    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getExactCharSequence(Ljava/lang/StringBuilder;)I

    goto/16 :goto_2

    .line 377
    :cond_17
    iget-boolean v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mIsPredictionOn:Z

    if-eqz v7, :cond_18

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->isAvailablePrediction()Z

    move-result v7

    if-eqz v7, :cond_18

    .line 378
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->setComposingText()V

    .line 379
    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/16 v8, 0x19

    invoke-interface {v7, v8}, Lcom/diotek/ime/framework/common/InputManager;->buildSuggestions(I)V

    goto/16 :goto_0

    .line 381
    :cond_18
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isAutoCompletitionInput()Z

    move-result v4

    .line 382
    .local v4, "isCompletionOn":Z
    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v5

    .line 383
    .local v5, "isLandscape":Z
    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->getCompletions()[Landroid/view/inputmethod/CompletionInfo;

    move-result-object v1

    .line 384
    .local v1, "completions":[Landroid/view/inputmethod/CompletionInfo;
    if-eqz v4, :cond_1a

    if-eqz v5, :cond_1a

    if-eqz v1, :cond_1a

    .line 385
    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v3

    .line 386
    .local v3, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v3, :cond_19

    .line 387
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v3, v7, v8}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 389
    :cond_19
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    goto/16 :goto_0

    .line 391
    .end local v3    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_1a
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 392
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 393
    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    goto/16 :goto_0
.end method

.method private processWordSeparator(I[I)V
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    const/16 v4, 0x20

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 451
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 452
    iget-object v1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v1, v2}, Lcom/diotek/ime/framework/engine/InputEngineManager;->processWhenPickSuggestionManually(I)I

    .line 453
    iget-object v1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestionCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 454
    iget-object v1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v1, v2}, Lcom/diotek/ime/framework/engine/InputEngineManager;->doNoteWordDoneForXt9(I)I

    .line 456
    :cond_0
    invoke-virtual {p0, v3}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->finishComposing(Z)V

    .line 459
    :cond_1
    const/16 v1, 0xa

    if-ne p1, v1, :cond_3

    .line 460
    invoke-static {v2}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->setToggleIndianVoMatraAvailable(Z)V

    .line 461
    iget-object v1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->updateIndianToggleState()V

    .line 462
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->sendEnterKeyHandle()V

    .line 463
    iget-object v1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->breakContext()V

    .line 464
    iget-object v1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    .line 465
    iget-object v1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->updateShiftState()V

    .line 466
    iget-object v1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1, v2}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    .line 497
    :cond_2
    :goto_0
    return-void

    .line 469
    :cond_3
    iget-object v1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isInMultiTapInput()Z

    move-result v0

    .line 470
    .local v0, "isInMultiTap":Z
    if-eqz v0, :cond_4

    .line 471
    invoke-virtual {p0, p1, p2}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->processMultiTapSymbolicKey(I[I)V

    goto :goto_0

    .line 474
    :cond_4
    iget-object v1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v1, p1}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAtSymbol(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 475
    invoke-virtual {p0, v3}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->finishComposing(Z)V

    .line 476
    invoke-static {v4}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(C)V

    .line 477
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 480
    :cond_5
    int-to-char v1, p1

    invoke-static {v1}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    .line 481
    iget-object v1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v1, p1}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAfterPunctuation(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 482
    invoke-static {v4}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    .line 486
    iget-object v1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->disableSetUpAutoSpace()V

    .line 489
    :cond_6
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 494
    iget-boolean v1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mIsPredictionOn:Z

    if-eqz v1, :cond_2

    .line 495
    invoke-virtual {p0, v3}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->doNextWordPrediction(Z)V

    goto :goto_0
.end method


# virtual methods
.method public closing()V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->stopTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;)V

    .line 40
    iget-object v0, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    .line 41
    invoke-super {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->closing()V

    .line 42
    return-void
.end method

.method public initialize()V
    .locals 0

    .prologue
    .line 29
    invoke-super {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->initialize()V

    .line 30
    return-void
.end method

.method public onCharacterKey(I[I)V
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    const/4 v2, 0x0

    .line 46
    iget-object v0, p0, Lcom/diotek/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mIndianInputModule:Lcom/diotek/ime/framework/input/IndianInputModule;

    invoke-virtual {v0, p1}, Lcom/diotek/ime/framework/input/IndianInputModule;->validCharToProcess(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 47
    iget-object v0, p0, Lcom/diotek/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mIndianInputModule:Lcom/diotek/ime/framework/input/IndianInputModule;

    iget-object v1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-virtual {v0, p0, v1, p1}, Lcom/diotek/ime/framework/input/IndianInputModule;->init(Lcom/diotek/ime/framework/input/xt9/Xt9QwertyIndianInputModule;Lcom/diotek/ime/framework/common/InputManager;I)V

    .line 48
    iget-object v0, p0, Lcom/diotek/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mIndianInputModule:Lcom/diotek/ime/framework/input/IndianInputModule;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/input/IndianInputModule;->getLangScriptId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 49
    invoke-static {p1}, Ljava/lang/Character;->isDigit(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    invoke-static {v2}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->setToggleIndianVoMatraAvailable(Z)V

    .line 52
    :cond_0
    invoke-virtual {p0, p1, p2, v2}, Lcom/diotek/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->onCharacterKey(I[IZ)V

    .line 72
    :goto_0
    return-void

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/diotek/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mIndianInputModule:Lcom/diotek/ime/framework/input/IndianInputModule;

    invoke-virtual {v0, p2}, Lcom/diotek/ime/framework/input/IndianInputModule;->handleRegionalCharacter([I)V

    goto :goto_0

    .line 56
    :cond_2
    iget-object v0, p0, Lcom/diotek/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mIndianInputModule:Lcom/diotek/ime/framework/input/IndianInputModule;

    invoke-virtual {v0, p1}, Lcom/diotek/ime/framework/input/IndianInputModule;->isIndianFunctionKey(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 57
    iget-object v0, p0, Lcom/diotek/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mIndianInputModule:Lcom/diotek/ime/framework/input/IndianInputModule;

    iget-object v1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-virtual {v0, p0, v1, p1}, Lcom/diotek/ime/framework/input/IndianInputModule;->init(Lcom/diotek/ime/framework/input/xt9/Xt9QwertyIndianInputModule;Lcom/diotek/ime/framework/common/InputManager;I)V

    goto :goto_0

    .line 59
    :cond_3
    const/16 v0, 0x20

    if-ne p1, v0, :cond_5

    .line 60
    invoke-static {v2}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->setToggleIndianVoMatraAvailable(Z)V

    .line 61
    invoke-static {v2}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->setCombinationAvailable(Z)V

    .line 62
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->setVowelRowMax(I)V

    .line 63
    invoke-static {v2}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->setVowelRowState(I)V

    .line 64
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->setVowelRowShifted(Z)V

    .line 65
    sget-boolean v0, Lcom/diotek/ime/framework/input/IndianInputModule;->IS_QVGA:Z

    if-eqz v0, :cond_4

    .line 66
    iget-object v0, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->updateIndianVowelRowState()V

    .line 68
    :cond_4
    iget-object v0, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->updateIndianToggleState()V

    .line 70
    :cond_5
    invoke-virtual {p0, p1, p2, v2}, Lcom/diotek/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->onCharacterKey(I[IZ)V

    goto :goto_0
.end method

.method public onCharacterKey(I[IZ)V
    .locals 11
    .param p1, "keyCode"    # I
    .param p2, "keyCodes"    # [I
    .param p3, "overloaded"    # Z

    .prologue
    const/16 v10, 0x20

    const/4 v9, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 75
    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v1

    .line 76
    .local v1, "inputMethod":I
    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v2

    .line 78
    .local v2, "inputRange":I
    invoke-virtual {p0, v4}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->setPredictionWord(Z)V

    .line 79
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mStateCandidate:I

    if-ne v6, v4, :cond_0

    .line 81
    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    .line 83
    :cond_0
    iget-boolean v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mIsTraceOn:Z

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v6

    if-le v6, v9, :cond_9

    move v3, v4

    .line 84
    .local v3, "isTraceInput":Z
    :goto_0
    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v6, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->isTextCharacter(I)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mIndianInputModule:Lcom/diotek/ime/framework/input/IndianInputModule;

    invoke-virtual {v6, p1}, Lcom/diotek/ime/framework/input/IndianInputModule;->validCharToProcess(I)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_1
    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mIndianInputModule:Lcom/diotek/ime/framework/input/IndianInputModule;

    invoke-virtual {v6, p1}, Lcom/diotek/ime/framework/input/IndianInputModule;->validCharToProcess(I)Z

    move-result v6

    if-eqz v6, :cond_2

    if-eq v2, v9, :cond_4

    :cond_2
    if-eqz v2, :cond_4

    :cond_3
    iget-boolean v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mIsPredictionOn:Z

    if-eqz v6, :cond_f

    if-eqz v3, :cond_f

    .line 88
    :cond_4
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v6, p1, v3}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpace(IZ)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 90
    invoke-static {v10}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(C)V

    .line 91
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v6

    if-nez v6, :cond_5

    .line 93
    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 94
    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->updateShiftState()V

    .line 98
    :cond_5
    if-nez v1, :cond_d

    .line 99
    iget-boolean v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mIsPredictionOn:Z

    if-nez v6, :cond_a

    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v6

    if-nez v6, :cond_a

    iget v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputLanguage:I

    invoke-static {v6, p1}, Lcom/diotek/ime/framework/util/Utils;->isMultitapKey(II)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 101
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->processMultiTap(I[I)V

    .line 152
    :cond_6
    :goto_1
    iget-object v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getXt9Recapture()Z

    move-result v4

    if-nez v4, :cond_8

    .line 153
    if-ne p1, v10, :cond_7

    iget v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mStateCandidate:I

    if-eq v4, v9, :cond_8

    .line 155
    :cond_7
    iput v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mStateCandidate:I

    .line 158
    :cond_8
    iput p1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mLastKeyCode:I

    .line 159
    iget-object v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v4, p1, v3}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->setUpAutoSpace(IZ)V

    .line 160
    return-void

    .end local v3    # "isTraceInput":Z
    :cond_9
    move v3, v5

    .line 83
    goto/16 :goto_0

    .line 102
    .restart local v3    # "isTraceInput":Z
    :cond_a
    iget-boolean v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mIsPredictionOn:Z

    if-nez v6, :cond_b

    iget v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputLanguage:I

    const/high16 v7, 0x74680000

    if-ne v6, v7, :cond_b

    .line 103
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->processMultiTap(I[I)V

    goto :goto_1

    .line 115
    :cond_b
    if-eqz p2, :cond_c

    array-length v6, p2

    if-le v6, v4, :cond_c

    .line 116
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    array-length v6, p2

    if-ge v0, v6, :cond_6

    .line 117
    aget v6, p2, v0

    new-array v7, v4, [I

    aget v8, p2, v0

    aput v8, v7, v5

    invoke-direct {p0, v6, v7}, Lcom/diotek/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->processSingleTap(I[I)V

    .line 116
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 122
    .end local v0    # "i":I
    :cond_c
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->processSingleTap(I[I)V

    goto :goto_1

    .line 125
    :cond_d
    if-ne v1, v4, :cond_e

    .line 126
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->processMultiTap(I[I)V

    goto :goto_1

    .line 128
    :cond_e
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->processSingleTap(I[I)V

    goto :goto_1

    .line 131
    :cond_f
    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v6, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->isNumericCharacter(I)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 132
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_10

    iget-object v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAtNumeric()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 134
    invoke-static {v10}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(C)V

    .line 135
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 137
    :cond_10
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->processSingleTap(I[I)V

    .line 150
    :cond_11
    :goto_3
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->autoPeriod(I)V

    goto :goto_1

    .line 140
    :cond_12
    if-eqz p2, :cond_13

    const/16 v6, 0x2e

    if-eq p1, v6, :cond_13

    array-length v6, p2

    if-lez v6, :cond_13

    .line 141
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_4
    array-length v6, p2

    if-ge v0, v6, :cond_11

    .line 142
    aget v6, p2, v0

    new-array v7, v4, [I

    aget v8, p2, v0

    aput v8, v7, v5

    invoke-virtual {p0, v6, v7}, Lcom/diotek/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->processSymbolicKey(I[I)V

    .line 141
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 147
    .end local v0    # "i":I
    :cond_13
    invoke-virtual {p0, p1, p2}, Lcom/diotek/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->processSymbolicKey(I[I)V

    goto :goto_3
.end method

.method public onHwrPanelLongPressed(ILjava/lang/String;)V
    .locals 0
    .param p1, "selectedArrayIndex"    # I
    .param p2, "resultString"    # Ljava/lang/String;

    .prologue
    .line 609
    return-void
.end method

.method protected processSymbolicKey(I[I)V
    .locals 9
    .param p1, "keyCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    const/16 v8, 0x20

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 399
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->clearCandidateList()V

    .line 401
    const-string v4, " .,;:!?\n()[]*&@{}/<>_-+=|\'\u061b\u060c\u061f\""

    invoke-virtual {v4, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 402
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->processWordSeparator(I[I)V

    .line 448
    :cond_0
    :goto_0
    return-void

    .line 404
    :cond_1
    const/16 v4, 0xa

    if-eq p1, v4, :cond_2

    if-ne p1, v8, :cond_3

    .line 405
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->processWordSeparator(I[I)V

    goto :goto_0

    .line 407
    :cond_3
    const/4 v4, -0x5

    if-ne p1, v4, :cond_6

    .line 408
    invoke-direct {p0}, Lcom/diotek/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->processBackSpaceKey()V

    .line 409
    sget-boolean v4, Lcom/diotek/ime/framework/input/IndianInputModule;->IS_QVGA:Z

    if-eqz v4, :cond_0

    .line 410
    iget-object v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 411
    .local v1, "inputConnection":Landroid/view/inputmethod/InputConnection;
    const/4 v3, 0x0

    .line 412
    .local v3, "nextLeadingChar":Ljava/lang/CharSequence;
    if-eqz v1, :cond_4

    .line 414
    invoke-interface {v1, v7, v6}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 416
    :cond_4
    invoke-static {}, Lcom/diotek/ime/framework/input/IndianInputModule;->getInstance()Lcom/diotek/ime/framework/input/IndianInputModule;

    move-result-object v0

    .line 417
    .local v0, "indianInputModule":Lcom/diotek/ime/framework/input/IndianInputModule;
    if-eqz v3, :cond_5

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ne v4, v7, :cond_5

    invoke-interface {v3, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {v0}, Lcom/diotek/ime/framework/input/IndianInputModule;->getLangScriptId()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Lcom/diotek/ime/framework/input/IndianInputModule;->isConsonant(II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 418
    invoke-static {v7}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->setCombinationAvailable(Z)V

    .line 419
    const/4 v4, 0x4

    invoke-static {v4}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->setVowelRowMax(I)V

    .line 420
    invoke-static {v7}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->setVowelRowShifted(Z)V

    .line 426
    :goto_1
    invoke-static {v6}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->setVowelRowState(I)V

    .line 428
    iget-object v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->updateIndianVowelRowState()V

    goto :goto_0

    .line 422
    :cond_5
    invoke-static {v6}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->setCombinationAvailable(Z)V

    .line 423
    const/4 v4, 0x2

    invoke-static {v4}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->setVowelRowMax(I)V

    .line 424
    invoke-static {v6}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->setVowelRowShifted(Z)V

    goto :goto_1

    .line 433
    .end local v0    # "indianInputModule":Lcom/diotek/ime/framework/input/IndianInputModule;
    .end local v1    # "inputConnection":Landroid/view/inputmethod/InputConnection;
    .end local v3    # "nextLeadingChar":Ljava/lang/CharSequence;
    :cond_6
    iget-object v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isInMultiTapInput()Z

    move-result v2

    .line 434
    .local v2, "isInMultiTap":Z
    if-eqz v2, :cond_7

    .line 435
    invoke-virtual {p0, p1, p2}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->processMultiTapSymbolicKey(I[I)V

    goto :goto_0

    .line 439
    :cond_7
    invoke-virtual {p0, v7}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->finishComposing(Z)V

    .line 440
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->initComposingBuffer()V

    .line 441
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 443
    iget-object v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v4, p1}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAtSymbol(I)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 444
    invoke-static {v8}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    .line 446
    :cond_8
    int-to-char v4, p1

    invoke-static {v4}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    .line 447
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public release()V
    .locals 0

    .prologue
    .line 35
    return-void
.end method

.method public setAddStrokeCallBackOnHWREngine()V
    .locals 0

    .prologue
    .line 614
    return-void
.end method

.method public updateVOHWRSuggestion()V
    .locals 0

    .prologue
    .line 620
    return-void
.end method
