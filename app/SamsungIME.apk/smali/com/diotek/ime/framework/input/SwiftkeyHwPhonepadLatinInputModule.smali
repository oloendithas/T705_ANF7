.class public Lcom/diotek/ime/framework/input/SwiftkeyHwPhonepadLatinInputModule;
.super Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;
.source "SwiftkeyHwPhonepadLatinInputModule.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;-><init>()V

    return-void
.end method

.method private processBackSpaceKey()V
    .locals 11

    .prologue
    const/4 v10, -0x5

    const/16 v9, 0x43

    const/16 v8, 0x2b

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 420
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 421
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v0, :cond_1

    .line 509
    :cond_0
    :goto_0
    return-void

    .line 424
    :cond_1
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    .line 425
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v4, v5, v6}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;Z)I

    .line 426
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v4}, Lcom/diotek/ime/framework/input/AbstractInputModule;->stopTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;)V

    .line 427
    const-string v1, ""

    .line 428
    .local v1, "lastChar":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 429
    invoke-interface {v0, v7, v6}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .end local v1    # "lastChar":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 430
    .restart local v1    # "lastChar":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 431
    const-string v1, ""

    .line 434
    :cond_2
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getSelectedNumOfText()I

    move-result v3

    .line 435
    .local v3, "selectedText":I
    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setDeleteCount(Ljava/lang/String;)V

    .line 436
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->resetPredictionWord()V

    .line 437
    iget-boolean v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_9

    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 439
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v4

    if-le v4, v7, :cond_4

    .line 440
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v4, v10}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(I)I

    move-result v4

    if-nez v4, :cond_3

    .line 441
    invoke-virtual {p0, v7}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 442
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initComposingBuffer()V

    .line 443
    invoke-virtual {p0, v9}, Lcom/diotek/ime/framework/input/AbstractInputModule;->onKeyDownUpHandle(I)V

    .line 444
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSequence(Ljava/lang/StringBuilder;)V

    .line 480
    :goto_1
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSuggestion()V

    goto :goto_0

    .line 446
    :cond_3
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v4, v5, v6}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getCharSequence(Ljava/lang/StringBuilder;I)I

    .line 447
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setComposingText()V

    goto :goto_1

    .line 449
    :cond_4
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 450
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v4, v10}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(I)I

    .line 451
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 452
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 453
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSequence(Ljava/lang/StringBuilder;)V

    goto :goto_1

    .line 455
    :cond_5
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 456
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getDeleteCount()I

    move-result v4

    const/16 v5, 0xa

    if-le v4, v5, :cond_6

    invoke-static {}, Lcom/diotek/ime/framework/repository/PackageStatus;->getPackageName()Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    move-result-object v4

    sget-object v5, Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;->CHATON_PACKAGE_NAME:Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    if-eq v4, v5, :cond_6

    .line 458
    if-eqz v0, :cond_7

    .line 459
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getLastWordDividerIndex()I

    move-result v4

    invoke-interface {v0, v4, v6}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 460
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 461
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v5, 0x12c

    invoke-virtual {v4, v8, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 465
    :cond_6
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initWordDividerIndexList()V

    .line 466
    invoke-virtual {p0, v9}, Lcom/diotek/ime/framework/input/AbstractInputModule;->onKeyDownUpHandle(I)V

    .line 467
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposingWithoutInit()V

    .line 470
    :cond_7
    if-lez v3, :cond_8

    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getIsPendingUpdateCandidateView()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 472
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4, v6}, Lcom/diotek/ime/framework/common/InputManager;->setIsPendingUpdateCandidateView(Z)V

    .line 475
    :cond_8
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 476
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v5, 0x12c

    invoke-virtual {v4, v8, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 482
    :cond_9
    invoke-virtual {p0, v7}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 483
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initComposingBuffer()V

    .line 484
    iget v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputLanguage:I

    const/high16 v5, 0x76690000

    if-ne v4, v5, :cond_a

    .line 485
    if-eqz v1, :cond_a

    .line 486
    invoke-static {v1}, Lcom/diotek/ime/framework/common/InputSequenceCheck;->normalizedNFD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 487
    .local v2, "nonNormalizedChar":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v7, :cond_a

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/diotek/ime/framework/common/InputSequenceCheck;->isVietameseTone(I)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 491
    invoke-interface {v0, v7, v6}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 492
    invoke-static {v2}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    .line 493
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0, v4, v7}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 494
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 499
    .end local v2    # "nonNormalizedChar":Ljava/lang/String;
    :cond_a
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getDeleteCount()I

    move-result v4

    const/16 v5, 0x14

    if-le v4, v5, :cond_b

    invoke-static {}, Lcom/diotek/ime/framework/repository/PackageStatus;->getPackageName()Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    move-result-object v4

    sget-object v5, Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;->CHATON_PACKAGE_NAME:Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    if-eq v4, v5, :cond_b

    .line 501
    if-eqz v0, :cond_0

    .line 502
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getLastWordDividerIndex()I

    move-result v4

    invoke-interface {v0, v4, v6}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto/16 :goto_0

    .line 505
    :cond_b
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initWordDividerIndexList()V

    .line 506
    invoke-virtual {p0, v9}, Lcom/diotek/ime/framework/input/AbstractInputModule;->onKeyDownUpHandle(I)V

    goto/16 :goto_0
.end method

.method private processMultiTap(I[I)V
    .locals 18
    .param p1, "keyCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    .line 118
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v7

    .line 119
    .local v7, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v7, :cond_0

    .line 286
    :goto_0
    return-void

    .line 122
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Lcom/diotek/ime/framework/common/InputManager;->setCandidateviewStatus(I)V

    .line 123
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    .line 124
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    const/16 v16, 0x0

    invoke-interface/range {v14 .. v16}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;Z)I

    .line 125
    const/4 v14, 0x1

    new-array v2, v14, [I

    .line 126
    .local v2, "activeIndex":[I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    .local v5, "currentWord":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/diotek/ime/framework/input/AbstractInputModule;->isTimerRunning(Lcom/diotek/ime/framework/input/InputModule$Timer;)Z

    move-result v10

    .line 128
    .local v10, "isTimerRunning":Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/diotek/ime/framework/input/AbstractInputModule;->stopTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;)V

    .line 129
    const/4 v9, 0x0

    .line 130
    .local v9, "isEqualKey":Z
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-nez v14, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/InputManager;->isEnableTraceInPassword()Z

    move-result v14

    if-eqz v14, :cond_5

    :cond_1
    const/4 v8, 0x1

    .line 132
    .local v8, "isEnableTraceInput":Z
    :goto_1
    if-eqz p2, :cond_2

    move-object/from16 v0, p2

    array-length v14, v0

    if-lez v14, :cond_2

    move-object/from16 v0, p0

    iget v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mLastKeyCode:I

    const/4 v15, 0x0

    aget v15, p2, v15

    if-ne v14, v15, :cond_2

    .line 133
    const/4 v9, 0x1

    .line 135
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-eqz v14, :cond_6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v14, :cond_6

    .line 136
    if-eqz v10, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 137
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/InputManager;->updateShiftState()V

    .line 159
    :cond_3
    :goto_2
    if-eqz v8, :cond_d

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsTraceOn:Z

    if-eqz v14, :cond_d

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    if-eqz v14, :cond_d

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v14}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v14

    const/4 v15, 0x2

    if-le v14, v15, :cond_d

    .line 160
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v14

    if-eqz v14, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-interface/range {v14 .. v17}, Lcom/diotek/ime/framework/engine/InputEngineManager;->isAutoAcceptBeforeTrace([Landroid/graphics/PointF;I[Z)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 161
    const/4 v14, 0x0

    aget v14, v2, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/diotek/ime/framework/input/AbstractInputModule;->selectWordInList(I)V

    .line 162
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 163
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v14}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isAutoSpaceOn()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 164
    const/16 v14, 0x20

    invoke-static {v14}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(C)V

    .line 165
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 166
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v14}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->reset()V

    .line 167
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v14

    if-nez v14, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 169
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/InputManager;->updateShiftState()V

    .line 184
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v15}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTracePoint()[Landroid/graphics/PointF;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v16

    const/16 v17, -0x1

    invoke-interface/range {v14 .. v17}, Lcom/diotek/ime/framework/engine/InputEngineManager;->processTrace([Landroid/graphics/PointF;IB)S

    move-result v14

    if-nez v14, :cond_a

    .line 186
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v14}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->clearTraceInfo()V

    .line 187
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->resetPredictionWord()V

    .line 188
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSequence(Ljava/lang/StringBuilder;)V

    .line 189
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSuggestion()V

    .line 190
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/SwiftkeyHwPhonepadLatinInputModule;->cancelPreviewTrace()V

    goto/16 :goto_0

    .line 130
    .end local v8    # "isEnableTraceInput":Z
    :cond_5
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 140
    .restart local v8    # "isEnableTraceInput":Z
    :cond_6
    if-eqz v10, :cond_7

    if-eqz v9, :cond_7

    .line 141
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    goto/16 :goto_2

    .line 142
    :cond_7
    if-eqz v10, :cond_8

    .line 143
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 144
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    .line 146
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 147
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/InputManager;->updateShiftState()V

    goto/16 :goto_2

    .line 150
    :cond_8
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 151
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v14}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isAutoSpaceOn()Z

    move-result v14

    if-eqz v14, :cond_9

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v14}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isLastActionIsTraceOrPick()Z

    move-result v14

    if-eqz v14, :cond_9

    .line 153
    const/16 v14, 0x20

    invoke-static {v14}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(C)V

    .line 154
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 156
    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    goto/16 :goto_2

    .line 193
    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x0

    invoke-interface/range {v14 .. v16}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getCharSequence(Ljava/lang/StringBuilder;I)I

    .line 194
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v14}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->clearTraceInfo()V

    .line 195
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_b

    .line 196
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v14}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->disableSetUpAutoSpace()V

    .line 197
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->resetPredictionWord()V

    .line 276
    :cond_b
    :goto_3
    move-object/from16 v0, p0

    iget v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputLanguage:I

    const/high16 v15, 0x76690000

    if-ne v14, v15, :cond_c

    .line 277
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v14}, Lcom/diotek/ime/framework/input/AbstractInputModule;->processVietnameseTone(IZ)V

    .line 280
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setComposingText()V

    .line 281
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-eqz v14, :cond_23

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v14, :cond_23

    .line 282
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSuggestion()V

    goto/16 :goto_0

    .line 200
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/SwiftkeyHwPhonepadLatinInputModule;->cancelPreviewTrace()V

    .line 201
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/InputManager;->getSelectedNumOfText()I

    move-result v12

    .line 202
    .local v12, "selectText":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputLanguage:I

    const/high16 v15, 0x74720000

    if-eq v14, v15, :cond_e

    move-object/from16 v0, p0

    iget v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputLanguage:I

    const/high16 v15, 0x617a0000

    if-ne v14, v15, :cond_14

    .line 203
    :cond_e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v14

    if-eqz v14, :cond_13

    invoke-virtual/range {p0 .. p1}, Lcom/diotek/ime/framework/input/SwiftkeyHwPhonepadLatinInputModule;->toUpperCaseOfTurkish(I)I

    move-result p1

    .line 209
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-eqz v14, :cond_16

    if-eqz v10, :cond_16

    .line 210
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 211
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v14}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isAutoSpaceOn()Z

    move-result v14

    if-eqz v14, :cond_f

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v14}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAtText()Z

    move-result v14

    if-eqz v14, :cond_f

    .line 213
    const/16 v14, 0x20

    invoke-static {v14}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(C)V

    .line 214
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 216
    :cond_f
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v14

    if-eqz v14, :cond_10

    .line 217
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/InputManager;->updateShiftState()V

    .line 219
    :cond_10
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/engine/InputEngineManager;->breakContext()V

    .line 237
    :cond_11
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-eqz v14, :cond_19

    move-object/from16 v0, p0

    iget v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosNextText:I

    if-lez v14, :cond_19

    .line 238
    move/from16 v0, p1

    int-to-char v14, v0

    invoke-static {v14}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    .line 239
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 240
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSequence(Ljava/lang/StringBuilder;)V

    .line 273
    :cond_12
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearAction()V

    goto/16 :goto_3

    .line 203
    :cond_13
    invoke-static/range {p1 .. p1}, Ljava/lang/Character;->toLowerCase(I)I

    move-result p1

    goto :goto_4

    .line 206
    :cond_14
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v14

    if-eqz v14, :cond_15

    invoke-static/range {p1 .. p1}, Ljava/lang/Character;->toUpperCase(I)I

    move-result p1

    :goto_7
    goto :goto_4

    :cond_15
    invoke-static/range {p1 .. p1}, Ljava/lang/Character;->toLowerCase(I)I

    move-result p1

    goto :goto_7

    .line 220
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-eqz v14, :cond_17

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v14

    if-eqz v14, :cond_17

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v14}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAtText()Z

    move-result v14

    if-eqz v14, :cond_17

    .line 222
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/diotek/ime/framework/input/AbstractInputModule;->selectWordInList(I)V

    .line 223
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 224
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/engine/InputEngineManager;->breakContext()V

    .line 225
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v14}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isAutoSpaceOn()Z

    move-result v14

    if-eqz v14, :cond_11

    .line 226
    const/16 v14, 0x20

    invoke-static {v14}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(C)V

    .line 227
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 228
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v14

    if-eqz v14, :cond_11

    .line 229
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/InputManager;->updateShiftState()V

    goto/16 :goto_5

    .line 232
    :cond_17
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-eqz v14, :cond_11

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_11

    if-gtz v12, :cond_18

    move-object/from16 v0, p0

    iget v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosNextText:I

    if-eqz v14, :cond_18

    move-object/from16 v0, p0

    iget v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputLanguage:I

    const/high16 v15, 0x74680000

    if-ne v14, v15, :cond_11

    .line 235
    :cond_18
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/engine/InputEngineManager;->breakContext()V

    goto/16 :goto_5

    .line 241
    :cond_19
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-eqz v14, :cond_22

    .line 242
    move-object/from16 v0, p0

    iget v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputLanguage:I

    const/high16 v15, 0x74680000

    if-ne v14, v15, :cond_1b

    .line 243
    const/16 v14, -0x3a

    move/from16 v0, p1

    if-ne v0, v14, :cond_1a

    .line 244
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTouchPoint(I)Landroid/graphics/PointF;

    move-result-object v15

    move/from16 v0, p1

    invoke-interface {v14, v0, v15}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(ILandroid/graphics/PointF;)I

    move-result v14

    if-lez v14, :cond_12

    .line 245
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x0

    invoke-interface/range {v14 .. v16}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getCharSequence(Ljava/lang/StringBuilder;I)I

    goto/16 :goto_6

    .line 248
    :cond_1a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    const/4 v15, 0x0

    move/from16 v0, p1

    invoke-interface {v14, v0, v15}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(ILandroid/graphics/PointF;)I

    move-result v14

    if-lez v14, :cond_12

    .line 249
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x0

    invoke-interface/range {v14 .. v16}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getCharSequence(Ljava/lang/StringBuilder;I)I

    goto/16 :goto_6

    .line 253
    :cond_1b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    const/4 v15, 0x0

    move/from16 v0, p1

    invoke-interface {v14, v0, v15}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(ILandroid/graphics/PointF;)I

    move-result v14

    if-lez v14, :cond_12

    .line 254
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_21

    if-eqz p2, :cond_21

    move-object/from16 v0, p2

    array-length v14, v0

    if-lez v14, :cond_21

    .line 255
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 256
    .local v13, "verbatims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v3, p2

    .local v3, "arr$":[I
    array-length v11, v3

    .local v11, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_8
    if-ge v6, v11, :cond_20

    aget v4, v3, v6

    .line 257
    .local v4, "code":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputLanguage:I

    const/high16 v15, 0x74720000

    if-eq v14, v15, :cond_1c

    move-object/from16 v0, p0

    iget v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputLanguage:I

    const/high16 v15, 0x617a0000

    if-ne v14, v15, :cond_1e

    .line 258
    :cond_1c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v14

    if-eqz v14, :cond_1d

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/diotek/ime/framework/input/SwiftkeyHwPhonepadLatinInputModule;->toUpperCaseOfTurkish(I)I

    move-result v14

    int-to-char v14, v14

    :goto_9
    invoke-static {v14}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    :goto_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 258
    :cond_1d
    int-to-char v14, v4

    invoke-static {v14}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v14

    goto :goto_9

    .line 261
    :cond_1e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v14

    if-eqz v14, :cond_1f

    int-to-char v14, v4

    invoke-static {v14}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v14

    :goto_b
    invoke-static {v14}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_1f
    int-to-char v14, v4

    invoke-static {v14}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v14

    goto :goto_b

    .line 265
    .end local v4    # "code":I
    :cond_20
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v14, v13}, Lcom/diotek/ime/framework/engine/InputEngineManager;->setVerbatirmsInPrediction(Ljava/util/ArrayList;)V

    .line 267
    .end local v3    # "arr$":[I
    .end local v6    # "i$":I
    .end local v11    # "len$":I
    .end local v13    # "verbatims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_21
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x0

    invoke-interface/range {v14 .. v16}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getCharSequence(Ljava/lang/StringBuilder;I)I

    goto/16 :goto_6

    .line 271
    :cond_22
    move/from16 v0, p1

    int-to-char v14, v0

    invoke-static {v14}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    goto/16 :goto_6

    .line 284
    .end local v12    # "selectText":I
    :cond_23
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    const/16 v15, 0x5dc

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/diotek/ime/framework/input/AbstractInputModule;->startTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;I)V

    goto/16 :goto_0
.end method

.method private processSingleTap(I[I)V
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    const/4 v2, 0x0

    .line 289
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    .line 290
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;Z)I

    .line 292
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->isTimerRunning(Lcom/diotek/ime/framework/input/InputModule$Timer;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 293
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->stopTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;)V

    .line 294
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 295
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 296
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initComposingBuffer()V

    .line 300
    :cond_1
    iget v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputLanguage:I

    const/high16 v1, 0x74720000

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputLanguage:I

    const/high16 v1, 0x617a0000

    if-ne v0, v1, :cond_5

    .line 301
    :cond_2
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/input/SwiftkeyHwPhonepadLatinInputModule;->toUpperCaseOfTurkish(I)I

    move-result p1

    .line 308
    :goto_0
    iget-boolean v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsTraceOn:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isEnableTraceInPassword()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 309
    :cond_3
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(I)I

    .line 310
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getCharSequence(Ljava/lang/StringBuilder;I)I

    .line 311
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setComposingText()V

    .line 312
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSuggestion()V

    .line 313
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    .line 322
    :goto_1
    return-void

    .line 301
    :cond_4
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(I)I

    move-result p1

    goto :goto_0

    .line 304
    :cond_5
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(I)I

    move-result p1

    :goto_2
    goto :goto_0

    :cond_6
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(I)I

    move-result p1

    goto :goto_2

    .line 315
    :cond_7
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {p1}, Ljava/lang/Character;->isLowerCase(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 316
    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(I)I

    move-result p1

    .line 318
    :cond_8
    int-to-char v0, p1

    invoke-static {v0}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(C)V

    .line 319
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 320
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    goto :goto_1
.end method

.method private processWordSeparator(I[I)V
    .locals 7
    .param p1, "keyCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    const/16 v6, 0x20

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 363
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    .line 364
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v2, v3, v5}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;Z)I

    .line 365
    new-array v0, v4, [I

    .line 366
    .local v0, "activeIndex":[I
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v2, v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getActiveIndex([I)I

    .line 367
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 368
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v5, v3}, Lcom/diotek/ime/framework/engine/InputEngineManager;->wordSelected(ILjava/lang/CharSequence;)I

    .line 369
    invoke-virtual {p0, v4}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 370
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initComposingBuffer()V

    .line 373
    :cond_0
    const/16 v2, 0xa

    if-ne p1, v2, :cond_3

    .line 374
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->sendEnterKeyHandle()V

    .line 375
    iget-boolean v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-eqz v2, :cond_1

    .line 376
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x2b

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 378
    :cond_1
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v2}, Lcom/diotek/ime/framework/input/AbstractInputModule;->stopTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;)V

    .line 417
    :cond_2
    :goto_0
    return-void

    .line 381
    :cond_3
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isInMultiTapInput()Z

    move-result v1

    .line 382
    .local v1, "isInMultiTap":Z
    if-eqz v1, :cond_4

    .line 383
    invoke-virtual {p0, p1, p2}, Lcom/diotek/ime/framework/input/AbstractInputModule;->processMultiTapSymbolicKey(I[I)V

    goto :goto_0

    .line 387
    :cond_4
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v2}, Lcom/diotek/ime/framework/input/AbstractInputModule;->isTimerRunning(Lcom/diotek/ime/framework/input/InputModule$Timer;)Z

    move-result v2

    if-eqz v2, :cond_6

    if-ne p1, v6, :cond_6

    .line 388
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v2}, Lcom/diotek/ime/framework/input/AbstractInputModule;->stopTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;)V

    .line 389
    invoke-virtual {p0, v4}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 390
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 391
    iget-boolean v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsKorMode:Z

    if-nez v2, :cond_5

    .line 392
    int-to-char v2, p1

    invoke-static {v2}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    .line 393
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 413
    :cond_5
    :goto_1
    iget-boolean v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-eqz v2, :cond_2

    .line 414
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSequence(Ljava/lang/StringBuilder;)V

    .line 415
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSuggestion()V

    goto :goto_0

    .line 396
    :cond_6
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v2, p1}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAtSymbol(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 397
    invoke-virtual {p0, v4}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 398
    invoke-static {v6}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(C)V

    .line 399
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 401
    :cond_7
    invoke-virtual {p0, v4}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 402
    int-to-char v2, p1

    invoke-static {v2}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(C)V

    .line 403
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v2, p1}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAfterPunctuation(I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 404
    invoke-static {v6}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    .line 408
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->disableSetUpAutoSpace()V

    .line 410
    :cond_8
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method


# virtual methods
.method public cancelPreviewTrace()V
    .locals 0

    .prologue
    .line 101
    return-void
.end method

.method public closing()V
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->stopTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;)V

    .line 26
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    .line 27
    invoke-super {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->closing()V

    .line 28
    return-void
.end method

.method public isSwiftPhonepadInput()Z
    .locals 1

    .prologue
    .line 591
    const/4 v0, 0x1

    return v0
.end method

.method public onCharacterKey(I[I)V
    .locals 8
    .param p1, "keyCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 39
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    .line 40
    .local v0, "inputMethod":I
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v1

    .line 42
    .local v1, "inputRange":I
    invoke-virtual {p0, v4}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setPredictionWord(Z)V

    .line 43
    iget-boolean v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsTraceOn:Z

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v6

    const/4 v7, 0x2

    if-le v6, v7, :cond_6

    move v3, v4

    .line 44
    .local v3, "isTraceInput":Z
    :goto_0
    iget-boolean v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->isEnableTraceInPassword()Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_0
    move v2, v4

    .line 46
    .local v2, "isEnableTraceInput":Z
    :goto_1
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v6, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->isTextCharacter(I)Z

    move-result v6

    if-eqz v6, :cond_1

    if-eqz v1, :cond_2

    :cond_1
    if-eqz v2, :cond_a

    if-eqz v3, :cond_a

    .line 49
    :cond_2
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v6, p1, v3}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpace(IZ)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 51
    const/16 v6, 0x20

    invoke-static {v6}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(C)V

    .line 52
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v6

    if-nez v6, :cond_3

    .line 54
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 55
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->updateShiftState()V

    .line 59
    :cond_3
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->isShownSoftFuncKbd()Z

    move-result v6

    if-nez v6, :cond_4

    if-ne v0, v4, :cond_8

    iget-boolean v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->isInMultiTapInput()Z

    move-result v6

    xor-int/2addr v4, v6

    if-eqz v4, :cond_8

    .line 61
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/input/SwiftkeyHwPhonepadLatinInputModule;->processMultiTap(I[I)V

    .line 62
    if-eqz p2, :cond_5

    array-length v4, p2

    if-lez v4, :cond_5

    .line 63
    aget p1, p2, v5

    .line 73
    :cond_5
    :goto_2
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/engine/InputEngineManager;->updateShiftState()V

    .line 87
    :goto_3
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->setVerbatimToEngine()V

    .line 88
    iput p1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mLastKeyCode:I

    .line 89
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v4, p1, v3}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->setUpAutoSpace(IZ)V

    .line 90
    return-void

    .end local v2    # "isEnableTraceInput":Z
    .end local v3    # "isTraceInput":Z
    :cond_6
    move v3, v5

    .line 43
    goto :goto_0

    .restart local v3    # "isTraceInput":Z
    :cond_7
    move v2, v5

    .line 44
    goto :goto_1

    .line 65
    .restart local v2    # "isEnableTraceInput":Z
    :cond_8
    const/16 v4, 0x8

    if-ne v0, v4, :cond_9

    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/input/SwiftkeyHwPhonepadLatinInputModule;->processMultiTap(I[I)V

    .line 67
    if-eqz p2, :cond_5

    array-length v4, p2

    if-lez v4, :cond_5

    .line 68
    aget p1, p2, v5

    goto :goto_2

    .line 71
    :cond_9
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/input/SwiftkeyHwPhonepadLatinInputModule;->processSingleTap(I[I)V

    goto :goto_2

    .line 75
    :cond_a
    invoke-virtual {p0, p1, p2}, Lcom/diotek/ime/framework/input/SwiftkeyHwPhonepadLatinInputModule;->processSymbolicKey(I[I)V

    .line 76
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->autoPeriod(I)V

    goto :goto_3
.end method

.method public onHwrPanelLongPressed(ILjava/lang/String;)V
    .locals 0
    .param p1, "selectedArrayIndex"    # I
    .param p2, "resultString"    # Ljava/lang/String;

    .prologue
    .line 515
    return-void
.end method

.method public pickSuggestionManually(ILjava/lang/CharSequence;)V
    .locals 12
    .param p1, "index"    # I
    .param p2, "suggestion"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v11, -0x1

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 519
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v4

    .line 520
    .local v4, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v4, :cond_0

    .line 521
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isAutoCompletitionInput()Z

    move-result v5

    .line 522
    .local v5, "isCompletionOn":Z
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v6

    .line 523
    .local v6, "isLandscape":Z
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->getCompletions()[Landroid/view/inputmethod/CompletionInfo;

    move-result-object v2

    .line 524
    .local v2, "completions":[Landroid/view/inputmethod/CompletionInfo;
    if-eqz v5, :cond_1

    if-eqz v6, :cond_1

    if-eqz v2, :cond_1

    .line 525
    if-ltz p1, :cond_0

    array-length v7, v2

    if-ge p1, v7, :cond_0

    .line 526
    aget-object v1, v2, p1

    .line 527
    .local v1, "completion":Landroid/view/inputmethod/CompletionInfo;
    invoke-interface {v4, v1}, Landroid/view/inputmethod/InputConnection;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z

    .line 582
    .end local v1    # "completion":Landroid/view/inputmethod/CompletionInfo;
    .end local v2    # "completions":[Landroid/view/inputmethod/CompletionInfo;
    .end local v5    # "isCompletionOn":Z
    .end local v6    # "isLandscape":Z
    :cond_0
    :goto_0
    return-void

    .line 530
    .restart local v2    # "completions":[Landroid/view/inputmethod/CompletionInfo;
    .restart local v5    # "isCompletionOn":Z
    .restart local v6    # "isLandscape":Z
    :cond_1
    invoke-interface {v4}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 531
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->getCandidateviewStatus()I

    move-result v0

    .line 532
    .local v0, "candidateStatus":I
    const/4 v3, 0x0

    .line 533
    .local v3, "enableAutoSpaceForNextWordPrediction":Z
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_6

    iget v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mStateCandidate:I

    if-ne v7, v10, :cond_6

    if-nez v0, :cond_6

    .line 536
    iget v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosPrevText:I

    iget v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosNextText:I

    invoke-interface {v4, v7, v8}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 537
    iput v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosPrevText:I

    .line 538
    iput v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosNextText:I

    .line 546
    :cond_2
    :goto_1
    if-eqz p2, :cond_3

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v7

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-eq v7, v8, :cond_3

    .line 547
    invoke-virtual {p0, v10}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setPredictionWord(Z)V

    .line 549
    :cond_3
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 550
    if-eqz v3, :cond_4

    .line 551
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->isTalkbackEnabled()Z

    move-result v7

    if-eqz v7, :cond_7

    const-string v7, ".,;!?\u061b\u060c\u061f"

    invoke-interface {p2, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-ne v7, v11, :cond_7

    .line 553
    const-string v7, " "

    invoke-interface {v4, v7, v10}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 558
    :cond_4
    :goto_2
    invoke-static {p2}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    .line 559
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->replaceSpaceToSymbol(Ljava/lang/StringBuilder;)V

    .line 560
    invoke-virtual {p0, v4}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setComposingTextWithoutBatch(Landroid/view/inputmethod/InputConnection;)V

    .line 561
    iput p1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPickSuggestionIndex:I

    .line 562
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->selectWordInList(I)V

    .line 563
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    .line 564
    if-eqz p2, :cond_8

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-lez v7, :cond_8

    const-string v7, ".,;!?\u061b\u060c\u061f"

    invoke-interface {p2, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-eq v7, v11, :cond_8

    .line 566
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->reset()V

    .line 570
    :goto_3
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getCurrentLanguageID()I

    move-result v7

    const/high16 v8, 0x74680000

    if-ne v7, v8, :cond_9

    .line 571
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/diotek/ime/framework/input/AbstractInputModule;->commitTextAndInitComposingForThai(Ljava/lang/CharSequence;)V

    .line 575
    :goto_4
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 576
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->updateShiftState()V

    .line 578
    :cond_5
    invoke-virtual {p0, v9}, Lcom/diotek/ime/framework/input/AbstractInputModule;->doNextWordPrediction(Z)V

    .line 579
    invoke-interface {v4}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto/16 :goto_0

    .line 539
    :cond_6
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    iget v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mStateCandidate:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    if-nez v0, :cond_2

    .line 542
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAtNextWordPrediction()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 543
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 555
    :cond_7
    const/16 v7, 0x20

    invoke-static {v7}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    goto :goto_2

    .line 568
    :cond_8
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->setUpByPickSuggestion()V

    goto :goto_3

    .line 573
    :cond_9
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    goto :goto_4
.end method

.method public previewTrace(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 96
    return-void
.end method

.method protected processSymbolicKey(I[I)V
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    const/16 v4, 0x20

    const/4 v3, 0x0

    .line 325
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->cancelTrace()Z

    .line 326
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    .line 327
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v1, v2, v3}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;Z)I

    .line 329
    const-string v1, " .,;:!?\n()[]*&@{}/<>_-+=|\'\u061b\u060c\u061f\""

    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 330
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/input/SwiftkeyHwPhonepadLatinInputModule;->processWordSeparator(I[I)V

    .line 360
    :cond_0
    :goto_0
    return-void

    .line 332
    :cond_1
    const/16 v1, 0xa

    if-eq p1, v1, :cond_2

    if-ne p1, v4, :cond_3

    .line 334
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/input/SwiftkeyHwPhonepadLatinInputModule;->processWordSeparator(I[I)V

    goto :goto_0

    .line 336
    :cond_3
    const/4 v1, -0x5

    if-ne p1, v1, :cond_4

    .line 337
    invoke-direct {p0}, Lcom/diotek/ime/framework/input/SwiftkeyHwPhonepadLatinInputModule;->processBackSpaceKey()V

    goto :goto_0

    .line 339
    :cond_4
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_5

    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 340
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSuggestion()V

    .line 343
    :cond_5
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isInMultiTapInput()Z

    move-result v0

    .line 344
    .local v0, "isInMultiTap":Z
    if-eqz v0, :cond_6

    .line 345
    invoke-virtual {p0, p1, p2}, Lcom/diotek/ime/framework/input/AbstractInputModule;->processMultiTapSymbolicKey(I[I)V

    goto :goto_0

    .line 348
    :cond_6
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 349
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initComposingBuffer()V

    .line 350
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 351
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v1, p1}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAtSymbol(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 352
    invoke-static {v4}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    .line 354
    :cond_7
    int-to-char v1, p1

    invoke-static {v1}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    .line 355
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 356
    iget-boolean v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-eqz v1, :cond_0

    .line 357
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSequence(Ljava/lang/StringBuilder;)V

    .line 358
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSuggestion()V

    goto :goto_0
.end method

.method public release()V
    .locals 0

    .prologue
    .line 34
    return-void
.end method

.method public toUpperCaseOfTurkish(I)I
    .locals 1
    .param p1, "keyCode"    # I

    .prologue
    .line 106
    const/16 v0, 0x69

    if-ne p1, v0, :cond_0

    .line 107
    const/16 v0, 0x49

    .line 113
    :goto_0
    return v0

    .line 108
    :cond_0
    const/16 v0, 0x131

    if-ne p1, v0, :cond_1

    .line 109
    const/16 p1, 0x130

    move v0, p1

    goto :goto_0

    .line 110
    :cond_1
    invoke-static {p1}, Ljava/lang/Character;->isLowerCase(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 111
    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(I)I

    move-result v0

    goto :goto_0

    :cond_2
    move v0, p1

    .line 113
    goto :goto_0
.end method

.method public updateVOHWRSuggestion()V
    .locals 0

    .prologue
    .line 586
    return-void
.end method
