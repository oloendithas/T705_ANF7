.class public Lcom/diotek/ime/framework/input/SwiftkeyQwertyIndianInputModule;
.super Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;
.source "SwiftkeyQwertyIndianInputModule.java"


# instance fields
.field private mIndianInputModule:Lcom/diotek/ime/framework/input/IndianInputModule;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;-><init>()V

    .line 27
    invoke-static {}, Lcom/diotek/ime/framework/input/IndianInputModule;->getInstance()Lcom/diotek/ime/framework/input/IndianInputModule;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mIndianInputModule:Lcom/diotek/ime/framework/input/IndianInputModule;

    return-void
.end method

.method private processBackSpaceKey()V
    .locals 14

    .prologue
    const/16 v13, 0x14

    const/4 v12, -0x5

    const/4 v9, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 484
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 485
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v1, :cond_1

    .line 607
    :cond_0
    :goto_0
    return-void

    .line 489
    :cond_1
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    .line 490
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v7, v8, v10}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;Z)I

    .line 491
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v7}, Lcom/diotek/ime/framework/input/AbstractInputModule;->stopTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;)V

    .line 493
    const-string v4, ""

    .line 494
    .local v4, "lastChar":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 495
    invoke-interface {v1, v11, v10}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v4

    .end local v4    # "lastChar":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 496
    .restart local v4    # "lastChar":Ljava/lang/String;
    if-nez v4, :cond_2

    const-string v4, ""

    .line 499
    :cond_2
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->getSelectedNumOfText()I

    move-result v6

    .line 501
    .local v6, "selectedText":I
    invoke-virtual {p0, v4}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setDeleteCount(Ljava/lang/String;)V

    .line 502
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->resetPredictionWord()V

    .line 503
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v7, :cond_f

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_f

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_f

    .line 504
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v7

    if-le v7, v11, :cond_6

    .line 505
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v7, v12}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(I)I

    move-result v7

    if-nez v7, :cond_5

    .line 506
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 507
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 508
    invoke-virtual {p0, v9}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSequence(Ljava/lang/StringBuilder;)V

    .line 555
    :goto_1
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSuggestionDelay()V

    .line 595
    :cond_3
    :goto_2
    if-eqz v1, :cond_4

    .line 596
    invoke-interface {v1, v11, v10}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v4

    .end local v4    # "lastChar":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 598
    .restart local v4    # "lastChar":Ljava/lang/String;
    :cond_4
    if-eqz v4, :cond_15

    iget-object v7, p0, Lcom/diotek/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mIndianInputModule:Lcom/diotek/ime/framework/input/IndianInputModule;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v8

    iget-object v9, p0, Lcom/diotek/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mIndianInputModule:Lcom/diotek/ime/framework/input/IndianInputModule;

    invoke-virtual {v9}, Lcom/diotek/ime/framework/input/IndianInputModule;->getLangScriptId()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Lcom/diotek/ime/framework/input/IndianInputModule;->isConsonant(II)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 599
    invoke-static {v11}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->setToggleIndianVoMatraAvailable(Z)V

    .line 604
    :goto_3
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v7

    if-nez v7, :cond_0

    .line 605
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->updateIndianToggleState()V

    goto/16 :goto_0

    .line 510
    :cond_5
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v5

    .line 511
    .local v5, "length":I
    add-int/lit8 v7, v5, -0x1

    invoke-static {v7, v5}, Lcom/diotek/ime/framework/input/ComposingTextManager;->delete(II)V

    .line 513
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setComposingText()V

    goto :goto_1

    .line 515
    .end local v5    # "length":I
    :cond_6
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 516
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v7, v12}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(I)I

    .line 517
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 518
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 519
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 520
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->updateShiftState()V

    .line 522
    :cond_7
    invoke-virtual {p0, v9}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSequence(Ljava/lang/StringBuilder;)V

    goto :goto_1

    .line 524
    :cond_8
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 525
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getDeleteCount()I

    move-result v7

    const/16 v8, 0xa

    if-le v7, v8, :cond_9

    invoke-static {}, Lcom/diotek/ime/framework/repository/PackageStatus;->getPackageName()Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    move-result-object v7

    sget-object v8, Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;->CHATON_PACKAGE_NAME:Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    if-eq v7, v8, :cond_9

    .line 527
    if-eqz v1, :cond_b

    .line 528
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getLastWordDividerIndex()I

    move-result v7

    invoke-interface {v1, v7, v10}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 529
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x2b

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 530
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x2b

    const-wide/16 v9, 0x12c

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 531
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSuggestionDelay()V

    goto/16 :goto_0

    .line 535
    :cond_9
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initWordDividerIndexList()V

    .line 536
    invoke-static {}, Lcom/diotek/ime/framework/repository/PackageStatus;->getPackageName()Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    move-result-object v7

    sget-object v8, Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;->Utorrent_PACKAGE_NAME:Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    if-ne v7, v8, :cond_e

    .line 537
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->getSelectedNumOfText()I

    move-result v7

    if-nez v7, :cond_d

    .line 538
    invoke-interface {v1, v11, v10}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 547
    :cond_a
    :goto_4
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposingWithoutInit()V

    .line 549
    :cond_b
    if-lez v6, :cond_c

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->getIsPendingUpdateCandidateView()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 551
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7, v10}, Lcom/diotek/ime/framework/common/InputManager;->setIsPendingUpdateCandidateView(Z)V

    .line 553
    :cond_c
    invoke-virtual {p0, v9}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSequence(Ljava/lang/StringBuilder;)V

    goto/16 :goto_1

    .line 539
    :cond_d
    if-eqz v1, :cond_a

    .line 540
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 541
    const-string v7, ""

    invoke-interface {v1, v7, v11}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 542
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto :goto_4

    .line 545
    :cond_e
    const/16 v7, 0x43

    invoke-virtual {p0, v7}, Lcom/diotek/ime/framework/input/AbstractInputModule;->onKeyDownUpHandle(I)V

    goto :goto_4

    .line 557
    :cond_f
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isAutoCompletitionInput()Z

    move-result v2

    .line 558
    .local v2, "isCompletionOn":Z
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v3

    .line 559
    .local v3, "isLandscape":Z
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->getCompletions()[Landroid/view/inputmethod/CompletionInfo;

    move-result-object v0

    .line 561
    .local v0, "completions":[Landroid/view/inputmethod/CompletionInfo;
    if-eqz v2, :cond_12

    if-eqz v3, :cond_12

    if-eqz v0, :cond_12

    .line 562
    if-eqz v1, :cond_10

    .line 563
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 565
    :cond_10
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 566
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getDeleteCount()I

    move-result v7

    if-le v7, v13, :cond_11

    invoke-static {}, Lcom/diotek/ime/framework/repository/PackageStatus;->getPackageName()Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    move-result-object v7

    sget-object v8, Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;->CHATON_PACKAGE_NAME:Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    if-eq v7, v8, :cond_11

    .line 568
    if-eqz v1, :cond_3

    .line 569
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getLastWordDividerIndex()I

    move-result v7

    invoke-interface {v1, v7, v10}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto/16 :goto_2

    .line 572
    :cond_11
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initWordDividerIndexList()V

    .line 573
    const/16 v7, 0x43

    invoke-virtual {p0, v7}, Lcom/diotek/ime/framework/input/AbstractInputModule;->onKeyDownUpHandle(I)V

    goto/16 :goto_2

    .line 576
    :cond_12
    invoke-virtual {p0, v11}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 577
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initComposingBuffer()V

    .line 578
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getDeleteCount()I

    move-result v7

    if-le v7, v13, :cond_13

    invoke-static {}, Lcom/diotek/ime/framework/repository/PackageStatus;->getPackageName()Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    move-result-object v7

    sget-object v8, Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;->CHATON_PACKAGE_NAME:Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    if-eq v7, v8, :cond_13

    .line 580
    if-eqz v1, :cond_3

    .line 581
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getLastWordDividerIndex()I

    move-result v7

    invoke-interface {v1, v7, v10}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto/16 :goto_2

    .line 584
    :cond_13
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initWordDividerIndexList()V

    .line 585
    invoke-interface {v1, v10}, Landroid/view/inputmethod/InputConnection;->getSelectedText(I)Ljava/lang/CharSequence;

    move-result-object v7

    if-nez v7, :cond_14

    .line 586
    invoke-interface {v1, v11, v10}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto/16 :goto_2

    .line 587
    :cond_14
    if-eqz v1, :cond_3

    .line 588
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 589
    const-string v7, ""

    invoke-interface {v1, v7, v11}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 590
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto/16 :goto_2

    .line 602
    .end local v0    # "completions":[Landroid/view/inputmethod/CompletionInfo;
    .end local v2    # "isCompletionOn":Z
    .end local v3    # "isLandscape":Z
    :cond_15
    invoke-static {v10}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->setToggleIndianVoMatraAvailable(Z)V

    goto/16 :goto_3
.end method

.method private processForwardDelete()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 321
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 322
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v1, :cond_1

    .line 349
    :cond_0
    :goto_0
    return-void

    .line 326
    :cond_1
    const-string v0, ""

    .line 327
    .local v0, "beforeChar":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 328
    const/4 v2, 0x1

    invoke-interface {v1, v2, v4}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .end local v0    # "beforeChar":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 329
    .restart local v0    # "beforeChar":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 330
    const-string v0, ""

    .line 333
    :cond_2
    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setDeleteCount(Ljava/lang/String;)V

    .line 334
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->resetPredictionWord()V

    .line 336
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getDeleteCount()I

    move-result v2

    const/16 v3, 0xa

    if-le v2, v3, :cond_4

    invoke-static {}, Lcom/diotek/ime/framework/repository/PackageStatus;->getPackageName()Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    move-result-object v2

    sget-object v3, Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;->CHATON_PACKAGE_NAME:Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    if-eq v2, v3, :cond_4

    .line 338
    if-eqz v1, :cond_3

    .line 339
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getFirstWordDividerIndex()I

    move-result v2

    invoke-interface {v1, v4, v2}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 346
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 347
    const/16 v2, 0x96

    invoke-virtual {p0, v2}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->postUpdateSequenceAndSuggestionDelay(I)V

    goto :goto_0

    .line 342
    :cond_4
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initWordDividerIndexList()V

    .line 343
    const/16 v2, 0x70

    invoke-virtual {p0, v2}, Lcom/diotek/ime/framework/input/AbstractInputModule;->onKeyDownUpHandle(I)V

    goto :goto_1
.end method

.method private processSingleTap(I[I)V
    .locals 35
    .param p1, "keyCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    .line 118
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v25

    .line 119
    .local v25, "ic":Landroid/view/inputmethod/InputConnection;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v5, 0x0

    invoke-interface {v2, v5}, Lcom/diotek/ime/framework/common/InputManager;->setCandidateviewStatus(I)V

    .line 120
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    .line 121
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-interface {v2, v5, v6}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;Z)I

    .line 122
    const/16 v29, 0x0

    .line 123
    .local v29, "isLastInputSymbol":Z
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    .local v22, "currentWord":Ljava/lang/StringBuilder;
    const/16 v30, 0x0

    .line 125
    .local v30, "isMakeComposingText":Z
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isEnableTraceInPassword()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_0
    const/16 v27, 0x1

    .line 126
    .local v27, "isEnableTraceInput":Z
    :goto_0
    const/16 v31, 0x0

    .line 127
    .local v31, "isTrace":Z
    if-eqz v25, :cond_4

    .line 128
    if-eqz v27, :cond_9

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsTraceOn:Z

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v2

    const/4 v5, 0x2

    if-le v2, v5, :cond_9

    .line 130
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface {v2, v5, v6, v7}, Lcom/diotek/ime/framework/engine/InputEngineManager;->isAutoAcceptBeforeTrace([Landroid/graphics/PointF;I[Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 132
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/diotek/ime/framework/input/AbstractInputModule;->selectWordInList(I)V

    .line 133
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 134
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isAutoSpaceOn()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->isSymbolAndSpace()Z

    move-result v2

    if-nez v2, :cond_1

    .line 135
    const/16 v2, 0x20

    invoke-static {v2}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(C)V

    .line 136
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 137
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v2

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 139
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->updateShiftState()V

    .line 143
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->isSymbolAndSpace()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 144
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 145
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getSymbolKeyCode()I

    move-result v34

    .line 146
    .local v34, "symbol":I
    const/16 v2, -0xff

    move/from16 v0, v34

    if-eq v0, v2, :cond_2

    .line 147
    move/from16 v0, v34

    int-to-char v2, v0

    invoke-static {v2}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    .line 149
    :cond_2
    const/16 v2, 0x20

    invoke-static {v2}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    .line 150
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 151
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v2

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 153
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->updateShiftState()V

    .line 155
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->clearTraceInfo()V

    .line 156
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->resetPredictionWord()V

    .line 157
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->cancelPreviewTrace()V

    .line 318
    .end local v34    # "symbol":I
    :cond_4
    :goto_1
    return-void

    .line 125
    .end local v27    # "isEnableTraceInput":Z
    .end local v31    # "isTrace":Z
    :cond_5
    const/16 v27, 0x0

    goto/16 :goto_0

    .line 160
    .restart local v27    # "isEnableTraceInput":Z
    .restart local v31    # "isTrace":Z
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v5, 0x0

    invoke-interface {v2, v5}, Lcom/diotek/ime/framework/common/InputManager;->setIsPendingUpdateCandidateView(Z)V

    .line 161
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTracePoint()[Landroid/graphics/PointF;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v6

    const/4 v7, -0x1

    invoke-interface {v2, v5, v6, v7}, Lcom/diotek/ime/framework/engine/InputEngineManager;->processTrace([Landroid/graphics/PointF;IB)S

    move-result v2

    if-nez v2, :cond_7

    .line 163
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->clearTraceInfo()V

    .line 164
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->resetPredictionWord()V

    .line 165
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSequence(Ljava/lang/StringBuilder;)V

    .line 166
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSuggestionDelay()V

    .line 167
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->cancelPreviewTrace()V

    goto :goto_1

    .line 170
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->clearTraceInfo()V

    .line 171
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v2, v5, v6}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getCharSequence(Ljava/lang/StringBuilder;I)I

    .line 172
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 173
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->disableSetUpAutoSpace()V

    .line 174
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->resetPredictionWord()V

    .line 176
    :cond_8
    const/16 v31, 0x1

    .line 272
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-eqz v2, :cond_1d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v2, :cond_1d

    move-object/from16 v0, p0

    iget v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosNextText:I

    if-nez v2, :cond_1d

    .line 274
    if-eqz v30, :cond_1b

    .line 275
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v2, v5}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->makeComposingText(Landroid/view/inputmethod/InputConnection;IZ)V

    .line 281
    :goto_3
    if-eqz v31, :cond_1c

    .line 282
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSuggestion()V

    goto/16 :goto_1

    .line 178
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->cancelPreviewTrace()V

    .line 179
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v0, v22

    invoke-interface {v2, v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getCharSequence(Ljava/lang/StringBuilder;)I

    .line 180
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getSelectedNumOfText()I

    move-result v33

    .line 181
    .local v33, "selectText":I
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v2

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAtText()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 182
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/diotek/ime/framework/input/AbstractInputModule;->selectWordInList(I)V

    .line 183
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 184
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/engine/InputEngineManager;->breakContext()V

    .line 185
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isAutoSpaceOn()Z

    move-result v2

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mIndianInputModule:Lcom/diotek/ime/framework/input/IndianInputModule;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/diotek/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mIndianInputModule:Lcom/diotek/ime/framework/input/IndianInputModule;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/input/IndianInputModule;->getLangScriptId()I

    move-result v5

    move/from16 v0, p1

    invoke-virtual {v2, v0, v5}, Lcom/diotek/ime/framework/input/IndianInputModule;->isDependentVowel(II)Z

    move-result v2

    if-nez v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mIndianInputModule:Lcom/diotek/ime/framework/input/IndianInputModule;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/diotek/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mIndianInputModule:Lcom/diotek/ime/framework/input/IndianInputModule;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/input/IndianInputModule;->getLangScriptId()I

    move-result v5

    move/from16 v0, p1

    invoke-virtual {v2, v0, v5}, Lcom/diotek/ime/framework/input/IndianInputModule;->isSpecialVowel(II)Z

    move-result v2

    if-nez v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mIndianInputModule:Lcom/diotek/ime/framework/input/IndianInputModule;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/diotek/ime/framework/input/IndianInputModule;->isHalant(I)Z

    move-result v2

    if-nez v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mIndianInputModule:Lcom/diotek/ime/framework/input/IndianInputModule;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/diotek/ime/framework/input/IndianInputModule;->isNuktaSymbol(I)Z

    move-result v2

    if-nez v2, :cond_a

    .line 189
    const/16 v2, 0x20

    invoke-static {v2}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(C)V

    .line 190
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 191
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v2

    if-nez v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 193
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->updateShiftState()V

    .line 213
    :cond_a
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-eqz v2, :cond_10

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputLanguage:I

    invoke-static {v2}, Lcom/diotek/ime/framework/util/Utils;->isIndianLanguage(I)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 214
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mIndianInputModule:Lcom/diotek/ime/framework/input/IndianInputModule;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/diotek/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mIndianInputModule:Lcom/diotek/ime/framework/input/IndianInputModule;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/input/IndianInputModule;->getLangScriptId()I

    move-result v5

    move/from16 v0, p1

    invoke-virtual {v2, v0, v5}, Lcom/diotek/ime/framework/input/IndianInputModule;->isDependentVowel(II)Z

    move-result v2

    if-nez v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mIndianInputModule:Lcom/diotek/ime/framework/input/IndianInputModule;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/diotek/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mIndianInputModule:Lcom/diotek/ime/framework/input/IndianInputModule;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/input/IndianInputModule;->getLangScriptId()I

    move-result v5

    move/from16 v0, p1

    invoke-virtual {v2, v0, v5}, Lcom/diotek/ime/framework/input/IndianInputModule;->isSpecialVowel(II)Z

    move-result v2

    if-nez v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mIndianInputModule:Lcom/diotek/ime/framework/input/IndianInputModule;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/diotek/ime/framework/input/IndianInputModule;->isHalant(I)Z

    move-result v2

    if-nez v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mIndianInputModule:Lcom/diotek/ime/framework/input/IndianInputModule;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/diotek/ime/framework/input/IndianInputModule;->isNuktaSymbol(I)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 217
    :cond_b
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    .line 218
    .local v23, "dependentChar":Ljava/lang/StringBuilder;
    move/from16 v0, p1

    int-to-char v2, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 219
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 196
    .end local v23    # "dependentChar":Ljava/lang/StringBuilder;
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-eqz v2, :cond_d

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_d

    if-lez v33, :cond_d

    .line 199
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/engine/InputEngineManager;->breakContext()V

    goto/16 :goto_4

    .line 200
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-eqz v2, :cond_a

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosNextText:I

    if-nez v2, :cond_a

    .line 202
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_e

    const/4 v2, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-nez v2, :cond_e

    .line 203
    const/16 v29, 0x1

    goto/16 :goto_4

    .line 204
    :cond_e
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_a

    move-object/from16 v0, p0

    iget v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosNextText:I

    if-nez v2, :cond_a

    .line 205
    const/4 v2, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, v25

    invoke-interface {v0, v2, v5}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v32

    check-cast v32, Ljava/lang/String;

    .line 206
    .local v32, "lastChar":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/diotek/ime/framework/input/IndianInputModule;->getHBScrpt(I)I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_f

    if-eqz v32, :cond_a

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    .line 208
    :cond_f
    invoke-static/range {v22 .. v22}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    .line 209
    const/16 v30, 0x1

    goto/16 :goto_4

    .line 223
    .end local v32    # "lastChar":Ljava/lang/String;
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-static/range {p1 .. p1}, Ljava/lang/Character;->isLowerCase(I)Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-static/range {p1 .. p1}, Ljava/lang/Character;->toUpperCase(I)I

    move-result p1

    .line 225
    :cond_11
    if-eqz p2, :cond_12

    move-object/from16 v0, p2

    array-length v2, v0

    const/4 v5, 0x1

    if-le v2, v5, :cond_12

    .line 226
    const/16 v24, 0x0

    .local v24, "i":I
    :goto_5
    move-object/from16 v0, p2

    array-length v2, v0

    move/from16 v0, v24

    if-ge v0, v2, :cond_13

    .line 227
    aget v2, p2, v24

    int-to-char v2, v2

    invoke-static {v2}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    .line 226
    add-int/lit8 v24, v24, 0x1

    goto :goto_5

    .line 230
    .end local v24    # "i":I
    :cond_12
    move/from16 v0, p1

    int-to-char v2, v0

    invoke-static {v2}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    .line 232
    :cond_13
    if-eqz v29, :cond_16

    .line 233
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 234
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSequence(Ljava/lang/StringBuilder;)V

    .line 264
    :cond_14
    :goto_6
    if-eqz v29, :cond_15

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_15

    move-object/from16 v0, p0

    iget v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosNextText:I

    if-nez v2, :cond_15

    .line 265
    invoke-static/range {v22 .. v22}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(Ljava/lang/StringBuilder;)V

    .line 266
    const/16 v30, 0x1

    .line 268
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearAction()V

    goto/16 :goto_2

    .line 235
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-eqz v2, :cond_17

    move-object/from16 v0, p0

    iget v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosNextText:I

    if-lez v2, :cond_17

    .line 236
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 237
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x2b

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 238
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x2b

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_6

    .line 239
    :cond_17
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-eqz v2, :cond_14

    .line 240
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputStatus;->isKeyLongpressed()Z

    move-result v2

    if-nez v2, :cond_18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v2

    const/4 v5, 0x7

    if-ne v2, v5, :cond_19

    .line 241
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    const/4 v5, 0x0

    move/from16 v0, p1

    invoke-interface {v2, v0, v5}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(ILandroid/graphics/PointF;)I

    move-result v2

    if-gez v2, :cond_14

    .line 242
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 243
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Lcom/diotek/ime/framework/input/ComposingTextManager;->deleteCharAt(I)V

    goto :goto_6

    .line 247
    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    if-eqz v2, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTouchPoint(I)Landroid/graphics/PointF;

    move-result-object v5

    move/from16 v0, p1

    invoke-interface {v2, v0, v5}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(ILandroid/graphics/PointF;)I

    move-result v2

    if-gez v2, :cond_14

    .line 248
    if-eqz p2, :cond_1a

    move-object/from16 v0, p2

    array-length v2, v0

    const/4 v5, 0x1

    if-le v2, v5, :cond_1a

    .line 250
    const/16 v24, 0x0

    .restart local v24    # "i":I
    :goto_7
    move-object/from16 v0, p2

    array-length v2, v0

    move/from16 v0, v24

    if-ge v0, v2, :cond_14

    .line 252
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Lcom/diotek/ime/framework/input/ComposingTextManager;->deleteCharAt(I)V

    .line 250
    add-int/lit8 v24, v24, 0x1

    goto :goto_7

    .line 257
    .end local v24    # "i":I
    :cond_1a
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 258
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Lcom/diotek/ime/framework/input/ComposingTextManager;->deleteCharAt(I)V

    goto/16 :goto_6

    .line 277
    .end local v33    # "selectText":I
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setComposingText()V

    .line 278
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSequence(Ljava/lang/StringBuilder;)V

    .line 279
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSuggestionDelay()V

    goto/16 :goto_3

    .line 284
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSuggestionDelay()V

    goto/16 :goto_1

    .line 287
    :cond_1d
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isAutoCompletitionInput()Z

    move-result v26

    .line 288
    .local v26, "isCompletionOn":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v28

    .line 289
    .local v28, "isLandscape":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getCompletions()[Landroid/view/inputmethod/CompletionInfo;

    move-result-object v21

    .line 290
    .local v21, "completions":[Landroid/view/inputmethod/CompletionInfo;
    if-eqz v26, :cond_1f

    if-eqz v28, :cond_1f

    if-eqz v21, :cond_1f

    .line 291
    if-eqz v25, :cond_1e

    .line 292
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v5, 0x1

    move-object/from16 v0, v25

    invoke-interface {v0, v2, v5}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 294
    :cond_1e
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    goto/16 :goto_1

    .line 296
    :cond_1f
    const/16 v2, 0x30

    move/from16 v0, p1

    if-lt v0, v2, :cond_21

    const/16 v2, 0x39

    move/from16 v0, p1

    if-gt v0, v2, :cond_21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v2

    const/4 v5, 0x1

    if-eq v2, v5, :cond_20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingNumberInputKeyboardForMultiWindow()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 299
    :cond_20
    add-int/lit8 v2, p1, -0x30

    add-int/lit8 v8, v2, 0x7

    .line 300
    .local v8, "code":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 301
    .local v3, "eventTime":J
    if-eqz v25, :cond_4

    .line 302
    new-instance v2, Landroid/view/KeyEvent;

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x6

    move-wide v5, v3

    invoke-direct/range {v2 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 305
    new-instance v9, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    const/4 v14, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, -0x1

    const/16 v19, 0x0

    const/16 v20, 0x6

    move-wide v12, v3

    move v15, v8

    invoke-direct/range {v9 .. v20}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    move-object/from16 v0, v25

    invoke-interface {v0, v9}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    goto/16 :goto_1

    .line 311
    .end local v3    # "eventTime":J
    .end local v8    # "code":I
    :cond_21
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 313
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 314
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    goto/16 :goto_1
.end method

.method private processWordSeparator(I[I)V
    .locals 11
    .param p1, "keyCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    const/16 v10, 0x20

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 420
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 421
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v1, :cond_1

    .line 481
    :cond_0
    :goto_0
    return-void

    .line 424
    :cond_1
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    .line 426
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v7, v8, v6}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;Z)I

    .line 427
    new-array v0, v5, [I

    .line 428
    .local v0, "activeIndex":[I
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v7, v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getActiveIndex([I)I

    .line 429
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_2

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 431
    int-to-char v7, p1

    invoke-virtual {p0, v7}, Lcom/diotek/ime/framework/input/AbstractInputModule;->isEnableAutoCorrection(C)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v7

    if-lez v7, :cond_4

    move v2, v5

    .line 434
    .local v2, "isEnableAutoCorrection":Z
    :goto_1
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v8, "INPUT_LANGUAGE"

    const/high16 v9, 0x656e0000

    invoke-interface {v7, v8, v9}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v4

    .line 435
    .local v4, "language":I
    if-eqz v2, :cond_5

    iget-boolean v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsTraceInput:Z

    if-nez v7, :cond_5

    const/high16 v7, 0x61730000

    if-eq v4, v7, :cond_5

    const/high16 v7, 0x6e650000

    if-eq v4, v7, :cond_5

    const/high16 v7, 0x6f720000

    if-eq v4, v7, :cond_5

    const/high16 v7, 0x73690000

    if-eq v4, v7, :cond_5

    .line 436
    invoke-virtual {p0, v1, v0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->doAutoCorrection(Landroid/view/inputmethod/InputConnection;[I)V

    .line 443
    .end local v2    # "isEnableAutoCorrection":Z
    .end local v4    # "language":I
    :cond_2
    :goto_2
    if-ne p1, v10, :cond_3

    .line 444
    invoke-static {v6}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->setToggleIndianVoMatraAvailable(Z)V

    .line 445
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->updateIndianToggleState()V

    .line 447
    :cond_3
    const/16 v7, 0xa

    if-ne p1, v7, :cond_6

    .line 448
    invoke-static {v6}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->setToggleIndianVoMatraAvailable(Z)V

    .line 449
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->updateIndianToggleState()V

    .line 450
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->sendEnterKeyHandle()V

    .line 451
    iget-boolean v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-eqz v5, :cond_0

    .line 452
    invoke-virtual {p0, v6}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->postUpdateSequenceAndSuggestionDelay(I)V

    goto :goto_0

    :cond_4
    move v2, v6

    .line 431
    goto :goto_1

    .line 438
    .restart local v2    # "isEnableAutoCorrection":Z
    .restart local v4    # "language":I
    :cond_5
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v6, v8}, Lcom/diotek/ime/framework/engine/InputEngineManager;->wordSelected(ILjava/lang/CharSequence;)I

    .line 440
    invoke-virtual {p0, v5}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    goto :goto_2

    .line 456
    .end local v2    # "isEnableAutoCorrection":Z
    .end local v4    # "language":I
    :cond_6
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->isInMultiTapInput()Z

    move-result v3

    .line 457
    .local v3, "isInMultiTap":Z
    if-eqz v3, :cond_7

    .line 458
    invoke-virtual {p0, p1, p2}, Lcom/diotek/ime/framework/input/AbstractInputModule;->processMultiTapSymbolicKey(I[I)V

    goto/16 :goto_0

    .line 461
    :cond_7
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v7, p1}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAtSymbol(I)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 462
    invoke-virtual {p0, v5}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 463
    invoke-static {v10}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(C)V

    .line 464
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 466
    :cond_8
    invoke-virtual {p0, v5}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 467
    int-to-char v5, p1

    invoke-static {v5}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(C)V

    .line 468
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v5, p1}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAfterPunctuation(I)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 469
    invoke-static {v10}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    .line 473
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->disableSetUpAutoSpace()V

    .line 475
    :cond_9
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 477
    iget-boolean v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-eqz v5, :cond_0

    .line 478
    invoke-virtual {p0, v6}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->postUpdateSequenceAndSuggestionDelay(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public closing()V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->stopTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;)V

    .line 37
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    .line 38
    invoke-super {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->closing()V

    .line 39
    return-void
.end method

.method public onCharacterKey(I[I)V
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    const/4 v2, 0x0

    .line 43
    iget-object v0, p0, Lcom/diotek/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mIndianInputModule:Lcom/diotek/ime/framework/input/IndianInputModule;

    invoke-virtual {v0, p1}, Lcom/diotek/ime/framework/input/IndianInputModule;->validCharToProcess(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    iget-object v0, p0, Lcom/diotek/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mIndianInputModule:Lcom/diotek/ime/framework/input/IndianInputModule;

    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-virtual {v0, p0, v1, p1}, Lcom/diotek/ime/framework/input/IndianInputModule;->init(Lcom/diotek/ime/framework/input/SwiftkeyQwertyIndianInputModule;Lcom/diotek/ime/framework/common/InputManager;I)V

    .line 45
    iget-object v0, p0, Lcom/diotek/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mIndianInputModule:Lcom/diotek/ime/framework/input/IndianInputModule;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/input/IndianInputModule;->getLangScriptId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 46
    invoke-virtual {p0, p1, p2, v2}, Lcom/diotek/ime/framework/input/SwiftkeyQwertyIndianInputModule;->onCharacterKey(I[IZ)V

    .line 66
    :goto_0
    return-void

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mIndianInputModule:Lcom/diotek/ime/framework/input/IndianInputModule;

    invoke-virtual {v0, p2}, Lcom/diotek/ime/framework/input/IndianInputModule;->handleRegionalCharacter([I)V

    goto :goto_0

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/diotek/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mIndianInputModule:Lcom/diotek/ime/framework/input/IndianInputModule;

    invoke-virtual {v0, p1}, Lcom/diotek/ime/framework/input/IndianInputModule;->isIndianFunctionKey(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 51
    iget-object v0, p0, Lcom/diotek/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mIndianInputModule:Lcom/diotek/ime/framework/input/IndianInputModule;

    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-virtual {v0, p0, v1, p1}, Lcom/diotek/ime/framework/input/IndianInputModule;->init(Lcom/diotek/ime/framework/input/SwiftkeyQwertyIndianInputModule;Lcom/diotek/ime/framework/common/InputManager;I)V

    goto :goto_0

    .line 53
    :cond_2
    const/16 v0, 0x20

    if-ne p1, v0, :cond_4

    .line 54
    invoke-static {v2}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->setToggleIndianVoMatraAvailable(Z)V

    .line 55
    invoke-static {v2}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->setCombinationAvailable(Z)V

    .line 56
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->setVowelRowMax(I)V

    .line 57
    invoke-static {v2}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->setVowelRowState(I)V

    .line 58
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->setVowelRowShifted(Z)V

    .line 59
    sget-boolean v0, Lcom/diotek/ime/framework/input/IndianInputModule;->IS_QVGA:Z

    if-eqz v0, :cond_3

    .line 60
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->updateIndianVowelRowState()V

    .line 62
    :cond_3
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->updateIndianToggleState()V

    .line 64
    :cond_4
    invoke-virtual {p0, p1, p2, v2}, Lcom/diotek/ime/framework/input/SwiftkeyQwertyIndianInputModule;->onCharacterKey(I[IZ)V

    goto :goto_0
.end method

.method public onCharacterKey(I[IZ)V
    .locals 8
    .param p1, "keyCode"    # I
    .param p2, "keyCodes"    # [I
    .param p3, "overloaded"    # Z

    .prologue
    const/16 v7, 0x20

    const/4 v6, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 70
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v0

    .line 71
    .local v0, "inputRange":I
    invoke-virtual {p0, v3}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setPredictionWord(Z)V

    .line 72
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v5

    if-nez v5, :cond_0

    .line 73
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->getSecondaryChar(I)I

    move-result p1

    .line 75
    :cond_0
    iget-boolean v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsTraceOn:Z

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v5

    if-le v5, v6, :cond_6

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->isSymbolAndSpace()Z

    move-result v5

    if-nez v5, :cond_6

    move v2, v3

    .line 77
    .local v2, "isTraceInput":Z
    :goto_0
    iget-boolean v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->isEnableTraceInPassword()Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_1
    move v1, v3

    .line 78
    .local v1, "isEnableTraceInput":Z
    :goto_1
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v3, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->isTextCharacter(I)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v0, :cond_3

    :cond_2
    if-eqz v1, :cond_8

    iget-boolean v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsTraceOn:Z

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v3

    if-le v3, v6, :cond_8

    .line 81
    :cond_3
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->isSymbolAndSpace()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v3, p1, v2}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpace(IZ)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 84
    invoke-static {v7}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(C)V

    .line 85
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v3

    if-nez v3, :cond_4

    .line 87
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 88
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->updateShiftState()V

    .line 91
    :cond_4
    iget-boolean v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-eqz v3, :cond_5

    .line 92
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSequence(Ljava/lang/StringBuilder;)V

    .line 95
    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/input/SwiftkeyQwertyIndianInputModule;->processSingleTap(I[I)V

    .line 112
    :goto_2
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->setVerbatimToEngine()V

    .line 113
    iput p1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mLastKeyCode:I

    .line 114
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v3, p1, v2}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->setUpAutoSpace(IZ)V

    .line 115
    return-void

    .end local v1    # "isEnableTraceInput":Z
    .end local v2    # "isTraceInput":Z
    :cond_6
    move v2, v4

    .line 75
    goto :goto_0

    .restart local v2    # "isTraceInput":Z
    :cond_7
    move v1, v4

    .line 77
    goto :goto_1

    .line 97
    .restart local v1    # "isEnableTraceInput":Z
    :cond_8
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v3, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->isNumericCharacter(I)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 98
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAtNumeric()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 100
    invoke-static {v7}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(C)V

    .line 101
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 103
    :cond_9
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/input/SwiftkeyQwertyIndianInputModule;->processSingleTap(I[I)V

    .line 110
    :goto_3
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->autoPeriod(I)V

    goto :goto_2

    .line 105
    :cond_a
    invoke-virtual {p0, p1, p2}, Lcom/diotek/ime/framework/input/SwiftkeyQwertyIndianInputModule;->processSymbolicKey(I[I)V

    goto :goto_3
.end method

.method public onHwrPanelLongPressed(ILjava/lang/String;)V
    .locals 0
    .param p1, "selectedArrayIndex"    # I
    .param p2, "resultString"    # Ljava/lang/String;

    .prologue
    .line 682
    return-void
.end method

.method public pickSuggestionManually(ILjava/lang/CharSequence;)V
    .locals 12
    .param p1, "index"    # I
    .param p2, "suggestion"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 611
    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentPackageName()Ljava/lang/String;

    move-result-object v7

    .line 612
    .local v7, "mCurrentPackageName":Ljava/lang/String;
    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v4

    .line 613
    .local v4, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v4, :cond_0

    .line 614
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isAutoCompletitionInput()Z

    move-result v5

    .line 615
    .local v5, "isCompletionOn":Z
    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v6

    .line 616
    .local v6, "isLandscape":Z
    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->getCompletions()[Landroid/view/inputmethod/CompletionInfo;

    move-result-object v2

    .line 617
    .local v2, "completions":[Landroid/view/inputmethod/CompletionInfo;
    if-eqz v5, :cond_1

    if-eqz v6, :cond_1

    if-eqz v2, :cond_1

    .line 618
    if-ltz p1, :cond_0

    array-length v8, v2

    if-ge p1, v8, :cond_0

    .line 619
    aget-object v1, v2, p1

    .line 620
    .local v1, "completion":Landroid/view/inputmethod/CompletionInfo;
    invoke-interface {v4, v1}, Landroid/view/inputmethod/InputConnection;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z

    .line 676
    .end local v1    # "completion":Landroid/view/inputmethod/CompletionInfo;
    .end local v2    # "completions":[Landroid/view/inputmethod/CompletionInfo;
    .end local v5    # "isCompletionOn":Z
    .end local v6    # "isLandscape":Z
    :cond_0
    :goto_0
    return-void

    .line 623
    .restart local v2    # "completions":[Landroid/view/inputmethod/CompletionInfo;
    .restart local v5    # "isCompletionOn":Z
    .restart local v6    # "isLandscape":Z
    :cond_1
    invoke-interface {v4}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 624
    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->getCandidateviewStatus()I

    move-result v0

    .line 625
    .local v0, "candidateStatus":I
    const/4 v3, 0x0

    .line 626
    .local v3, "enableAutoSpaceForNextWordPrediction":Z
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_7

    iget v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mStateCandidate:I

    if-ne v8, v11, :cond_7

    if-nez v0, :cond_7

    .line 629
    const-string v8, "com.android.email"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->getInputLanguage()I

    move-result v8

    invoke-static {v8}, Lcom/diotek/ime/framework/util/Utils;->isIndianLanguage(I)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 633
    iget v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosPrevText:I

    add-int/lit8 v8, v8, -0x1

    iget v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosNextText:I

    invoke-interface {v4, v8, v9}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 634
    iput v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosPrevText:I

    .line 635
    iput v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosNextText:I

    .line 649
    :cond_2
    :goto_1
    if-eqz p2, :cond_3

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v8

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-eq v8, v9, :cond_3

    .line 650
    invoke-virtual {p0, v11}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setPredictionWord(Z)V

    .line 652
    :cond_3
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 653
    if-eqz v3, :cond_4

    .line 654
    const/16 v8, 0x20

    invoke-static {v8}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    .line 656
    :cond_4
    invoke-static {p2}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    .line 657
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->replaceSpaceToSymbol(Ljava/lang/StringBuilder;)V

    .line 658
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setComposingText()V

    .line 659
    iput p1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPickSuggestionIndex:I

    .line 660
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->selectWordInList(I)V

    .line 661
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    .line 662
    if-eqz p2, :cond_8

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-lez v8, :cond_8

    const-string v8, ".,;!?\u061b\u060c\u061f"

    invoke-interface {p2, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_8

    .line 664
    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v8}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->reset()V

    .line 668
    :goto_2
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 669
    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 670
    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->updateShiftState()V

    .line 672
    :cond_5
    invoke-virtual {p0, v10}, Lcom/diotek/ime/framework/input/AbstractInputModule;->doNextWordPrediction(Z)V

    .line 673
    invoke-interface {v4}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto/16 :goto_0

    .line 637
    :cond_6
    iget v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosPrevText:I

    iget v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosNextText:I

    invoke-interface {v4, v8, v9}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 638
    iput v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosPrevText:I

    .line 639
    iput v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosNextText:I

    goto :goto_1

    .line 642
    :cond_7
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    iget v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mStateCandidate:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_2

    if-nez v0, :cond_2

    .line 645
    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v8}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAtNextWordPrediction()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 646
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 666
    :cond_8
    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v8}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->setUpByPickSuggestion()V

    goto :goto_2
.end method

.method protected processSymbolicKey(I[I)V
    .locals 10
    .param p1, "keyCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    const/16 v9, 0x20

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 352
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/engine/InputEngineManager;->cancelTrace()Z

    .line 353
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    .line 354
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v5, v6, v7}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;Z)I

    .line 355
    const-string v5, " .,;:!?\n()[]*&@{}/<>_-+=|\'\u061b\u060c\u061f\""

    invoke-virtual {v5, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 356
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/input/SwiftkeyQwertyIndianInputModule;->processWordSeparator(I[I)V

    .line 417
    :cond_0
    :goto_0
    return-void

    .line 358
    :cond_1
    const/16 v5, 0xa

    if-eq p1, v5, :cond_2

    if-ne p1, v9, :cond_3

    .line 360
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/input/SwiftkeyQwertyIndianInputModule;->processWordSeparator(I[I)V

    goto :goto_0

    .line 362
    :cond_3
    const/4 v5, -0x5

    if-ne p1, v5, :cond_6

    .line 363
    invoke-direct {p0}, Lcom/diotek/ime/framework/input/SwiftkeyQwertyIndianInputModule;->processBackSpaceKey()V

    .line 364
    sget-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->IS_QVGA:Z

    if-eqz v5, :cond_0

    .line 365
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    .line 366
    .local v2, "inputConnection":Landroid/view/inputmethod/InputConnection;
    const/4 v4, 0x0

    .line 367
    .local v4, "nextLeadingChar":Ljava/lang/CharSequence;
    if-eqz v2, :cond_4

    .line 369
    invoke-interface {v2, v8, v7}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v4

    .line 371
    :cond_4
    invoke-static {}, Lcom/diotek/ime/framework/input/IndianInputModule;->getInstance()Lcom/diotek/ime/framework/input/IndianInputModule;

    move-result-object v1

    .line 372
    .local v1, "indianInputModule":Lcom/diotek/ime/framework/input/IndianInputModule;
    if-eqz v4, :cond_5

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ne v5, v8, :cond_5

    invoke-interface {v4, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-virtual {v1}, Lcom/diotek/ime/framework/input/IndianInputModule;->getLangScriptId()I

    move-result v6

    invoke-virtual {v1, v5, v6}, Lcom/diotek/ime/framework/input/IndianInputModule;->isConsonant(II)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 373
    invoke-static {v8}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->setCombinationAvailable(Z)V

    .line 374
    const/4 v5, 0x4

    invoke-static {v5}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->setVowelRowMax(I)V

    .line 375
    invoke-static {v8}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->setVowelRowShifted(Z)V

    .line 381
    :goto_1
    invoke-static {v7}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->setVowelRowState(I)V

    .line 382
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->updateIndianVowelRowState()V

    goto :goto_0

    .line 377
    :cond_5
    invoke-static {v7}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->setCombinationAvailable(Z)V

    .line 378
    const/4 v5, 0x2

    invoke-static {v5}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->setVowelRowMax(I)V

    .line 379
    invoke-static {v7}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->setVowelRowShifted(Z)V

    goto :goto_1

    .line 385
    .end local v1    # "indianInputModule":Lcom/diotek/ime/framework/input/IndianInputModule;
    .end local v2    # "inputConnection":Landroid/view/inputmethod/InputConnection;
    .end local v4    # "nextLeadingChar":Ljava/lang/CharSequence;
    :cond_6
    const/16 v5, -0x3eb

    if-ne p1, v5, :cond_7

    .line 386
    invoke-direct {p0}, Lcom/diotek/ime/framework/input/SwiftkeyQwertyIndianInputModule;->processForwardDelete()V

    goto :goto_0

    .line 388
    :cond_7
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_8

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 390
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSuggestionDelay()V

    .line 393
    :cond_8
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->isInMultiTapInput()Z

    move-result v3

    .line 394
    .local v3, "isInMultiTap":Z
    if-eqz v3, :cond_9

    iget v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputLanguage:I

    invoke-static {v5}, Lcom/diotek/ime/framework/util/Utils;->isIndianLanguage(I)Z

    move-result v5

    if-nez v5, :cond_9

    .line 395
    invoke-virtual {p0, p1, p2}, Lcom/diotek/ime/framework/input/AbstractInputModule;->processMultiTapSymbolicKey(I[I)V

    goto/16 :goto_0

    .line 398
    :cond_9
    invoke-virtual {p0, v8}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 399
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initComposingBuffer()V

    .line 400
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 402
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v5, p1}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAtSymbol(I)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 403
    invoke-static {v9}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    .line 405
    :cond_a
    if-eqz p2, :cond_b

    array-length v5, p2

    if-le v5, v8, :cond_b

    .line 406
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    array-length v5, p2

    if-ge v0, v5, :cond_c

    .line 407
    aget v5, p2, v0

    int-to-char v5, v5

    invoke-static {v5}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    .line 406
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 410
    .end local v0    # "i":I
    :cond_b
    int-to-char v5, p1

    invoke-static {v5}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    .line 412
    :cond_c
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 413
    iget-boolean v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-eqz v5, :cond_0

    .line 414
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5, v7}, Lcom/diotek/ime/framework/common/InputManager;->setIsPendingUpdateCandidateView(Z)V

    .line 415
    invoke-virtual {p0, v7}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->postUpdateSequenceAndSuggestionDelay(I)V

    goto/16 :goto_0
.end method

.method public release()V
    .locals 0

    .prologue
    .line 32
    return-void
.end method

.method public updateVOHWRSuggestion()V
    .locals 0

    .prologue
    .line 686
    return-void
.end method
