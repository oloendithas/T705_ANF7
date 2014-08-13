.class public Lcom/diotek/ime/framework/input/SwiftkeyQwertyChineseInputModule;
.super Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;
.source "SwiftkeyQwertyChineseInputModule.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;-><init>()V

    return-void
.end method

.method private processBackSpaceKey()V
    .locals 10

    .prologue
    const/16 v9, 0x43

    const/16 v8, 0x2b

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 466
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 467
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    const/4 v3, 0x0

    .line 468
    .local v3, "spell":Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getInputTransResult()Ljava/lang/CharSequence;

    move-result-object v3

    .line 469
    const/4 v0, 0x0

    .line 471
    .local v0, "bIsSpellViewShown":Z
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v4}, Lcom/diotek/ime/framework/input/AbstractInputModule;->stopTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;)V

    .line 472
    const-string v2, ""

    .line 473
    .local v2, "lastChar":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 474
    const/4 v4, 0x1

    invoke-interface {v1, v4, v6}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v2

    .end local v2    # "lastChar":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 475
    .restart local v2    # "lastChar":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 476
    const-string v2, ""

    .line 479
    :cond_0
    invoke-virtual {p0, v2}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setDeleteCount(Ljava/lang/String;)V

    .line 480
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->resetPredictionWord()V

    .line 481
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 482
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    const/4 v5, -0x5

    invoke-interface {v4, v5}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(I)I

    .line 483
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getInputTransResult()Ljava/lang/CharSequence;

    move-result-object v3

    .line 484
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 485
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    .line 486
    const/4 v0, 0x1

    .line 491
    :goto_0
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4, v3, v0}, Lcom/diotek/ime/framework/common/InputManager;->updateSpellView(Ljava/lang/CharSequence;Z)V

    .line 492
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSuggestion()V

    .line 528
    :goto_1
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4, v3, v0}, Lcom/diotek/ime/framework/common/InputManager;->updateSpellView(Ljava/lang/CharSequence;Z)V

    .line 529
    :goto_2
    return-void

    .line 488
    :cond_1
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    .line 489
    invoke-virtual {p0, v7}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSequence(Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 494
    :cond_2
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 495
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 496
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 497
    invoke-virtual {p0, v6}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->postUpdateSequenceAndSuggestionDelay(I)V

    .line 498
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4, v7, v0}, Lcom/diotek/ime/framework/common/InputManager;->updateSpellView(Ljava/lang/CharSequence;Z)V

    goto :goto_2

    .line 501
    :cond_3
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 502
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposingWithoutInit()V

    .line 503
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    .line 504
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getDeleteCount()I

    move-result v4

    const/16 v5, 0xa

    if-le v4, v5, :cond_6

    invoke-static {}, Lcom/diotek/ime/framework/repository/PackageStatus;->getPackageName()Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    move-result-object v4

    sget-object v5, Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;->CHATON_PACKAGE_NAME:Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    if-eq v4, v5, :cond_6

    .line 506
    if-eqz v1, :cond_4

    .line 507
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getLastWordDividerIndex()I

    move-result v4

    invoke-interface {v1, v4, v6}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 513
    :cond_4
    :goto_3
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 514
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v5, 0x12c

    invoke-virtual {v4, v8, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 526
    :cond_5
    :goto_4
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4, v7, v0}, Lcom/diotek/ime/framework/common/InputManager;->updateSpellView(Ljava/lang/CharSequence;Z)V

    goto :goto_1

    .line 510
    :cond_6
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initWordDividerIndexList()V

    .line 511
    invoke-virtual {p0, v9}, Lcom/diotek/ime/framework/input/AbstractInputModule;->onKeyDownUpHandle(I)V

    goto :goto_3

    .line 516
    :cond_7
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getDeleteCount()I

    move-result v4

    const/16 v5, 0x14

    if-le v4, v5, :cond_8

    invoke-static {}, Lcom/diotek/ime/framework/repository/PackageStatus;->getPackageName()Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    move-result-object v4

    sget-object v5, Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;->CHATON_PACKAGE_NAME:Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    if-eq v4, v5, :cond_8

    .line 518
    if-eqz v1, :cond_5

    .line 519
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getLastWordDividerIndex()I

    move-result v4

    invoke-interface {v1, v4, v6}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto :goto_4

    .line 522
    :cond_8
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initWordDividerIndexList()V

    .line 523
    invoke-virtual {p0, v9}, Lcom/diotek/ime/framework/input/AbstractInputModule;->onKeyDownUpHandle(I)V

    goto :goto_4
.end method

.method private processEnterKey()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 371
    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    .line 372
    .local v2, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v2, :cond_0

    .line 433
    :goto_0
    return-void

    .line 375
    :cond_0
    const/4 v7, 0x0

    .line 376
    .local v7, "spell":Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 377
    .local v0, "candidate":Ljava/lang/CharSequence;
    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getInputTransResult()Ljava/lang/CharSequence;

    move-result-object v7

    .line 378
    if-eqz v7, :cond_6

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-lez v8, :cond_6

    .line 380
    const/4 v6, 0x0

    .line 381
    .local v6, "nRet":I
    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->isFocusOnCandidateView()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 382
    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->getCandidates()Ljava/util/ArrayList;

    move-result-object v1

    .line 383
    .local v1, "candidates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestionActiveIndex()I

    move-result v3

    .line 384
    .local v3, "idx":I
    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 385
    .local v4, "idx2":I
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    invoke-interface {v9, v4, v8}, Lcom/diotek/ime/framework/engine/InputEngineManager;->wordSelected(ILjava/lang/CharSequence;)I

    move-result v6

    .line 387
    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8, v10}, Lcom/diotek/ime/framework/common/InputManager;->setFocusOnCandidateView(Z)V

    .line 392
    .end local v1    # "candidates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v3    # "idx":I
    .end local v4    # "idx2":I
    :goto_1
    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getInputTransResult()Ljava/lang/CharSequence;

    move-result-object v7

    .line 393
    if-lez v6, :cond_2

    .line 395
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    .line 396
    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v8, v9}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    .line 397
    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v8, v9}, Lcom/diotek/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    .line 398
    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8, v7, v11}, Lcom/diotek/ime/framework/common/InputManager;->updateSpellView(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    .line 390
    :cond_1
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    invoke-interface {v9, v10, v8}, Lcom/diotek/ime/framework/engine/InputEngineManager;->wordSelected(ILjava/lang/CharSequence;)I

    move-result v6

    goto :goto_1

    .line 402
    :cond_2
    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->isFocusOnCandidateView()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 403
    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->getCandidates()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "candidate":Ljava/lang/CharSequence;
    check-cast v0, Ljava/lang/CharSequence;

    .line 407
    .restart local v0    # "candidate":Ljava/lang/CharSequence;
    :goto_2
    if-eqz v2, :cond_3

    .line 408
    invoke-interface {v2, v7, v11}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 410
    :cond_3
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    .line 411
    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8, v12, v10}, Lcom/diotek/ime/framework/common/InputManager;->updateSpellView(Ljava/lang/CharSequence;Z)V

    .line 412
    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8, v10}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    .line 413
    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    .line 414
    invoke-virtual {p0, v11}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setPredictionWord(Z)V

    .line 416
    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v8, v0, v9}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getPredictWord(Ljava/lang/CharSequence;Ljava/util/ArrayList;)I

    move-result v5

    .line 418
    .local v5, "nPredictWordNum":I
    if-lez v5, :cond_5

    .line 419
    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v8, v9}, Lcom/diotek/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 405
    .end local v5    # "nPredictWordNum":I
    :cond_4
    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "candidate":Ljava/lang/CharSequence;
    check-cast v0, Ljava/lang/CharSequence;

    .restart local v0    # "candidate":Ljava/lang/CharSequence;
    goto :goto_2

    .line 421
    .restart local v5    # "nPredictWordNum":I
    :cond_5
    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8, v10}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    goto/16 :goto_0

    .line 425
    .end local v5    # "nPredictWordNum":I
    .end local v6    # "nRet":I
    :cond_6
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->sendEnterKeyHandle()V

    .line 427
    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    .line 428
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    .line 429
    invoke-virtual {p0, v11}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 430
    invoke-virtual {p0, v12}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSequence(Ljava/lang/StringBuilder;)V

    .line 431
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSuggestion()V

    goto/16 :goto_0
.end method

.method private processForwardDelete()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 436
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 437
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v0, :cond_1

    .line 463
    :cond_0
    :goto_0
    return-void

    .line 441
    :cond_1
    const-string v1, ""

    .line 442
    .local v1, "lastChar":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 443
    const/4 v2, 0x1

    invoke-interface {v0, v2, v4}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .end local v1    # "lastChar":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 444
    .restart local v1    # "lastChar":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 445
    const-string v1, ""

    .line 448
    :cond_2
    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setDeleteCount(Ljava/lang/String;)V

    .line 449
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->resetPredictionWord()V

    .line 450
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 451
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposingWithoutInit()V

    .line 453
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getDeleteCount()I

    move-result v2

    const/16 v3, 0x14

    if-le v2, v3, :cond_3

    invoke-static {}, Lcom/diotek/ime/framework/repository/PackageStatus;->getPackageName()Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    move-result-object v2

    sget-object v3, Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;->CHATON_PACKAGE_NAME:Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    if-eq v2, v3, :cond_3

    .line 456
    if-eqz v0, :cond_0

    .line 457
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getFirstWordDividerIndex()I

    move-result v2

    invoke-interface {v0, v4, v2}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto :goto_0

    .line 460
    :cond_3
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initWordDividerIndexList()V

    .line 461
    const/16 v2, 0x70

    invoke-virtual {p0, v2}, Lcom/diotek/ime/framework/input/AbstractInputModule;->onKeyDownUpHandle(I)V

    goto :goto_0
.end method

.method private processSingleTap(I[I)V
    .locals 9
    .param p1, "keyCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    const/16 v5, 0x27

    const/4 v4, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 90
    const/4 v1, 0x0

    .line 91
    .local v1, "spell":Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 92
    .local v0, "preSpell":Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2, v7}, Lcom/diotek/ime/framework/common/InputManager;->setCandidateviewStatus(I)V

    .line 93
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v2}, Lcom/diotek/ime/framework/input/AbstractInputModule;->stopTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;)V

    .line 94
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getInputTransResult()Ljava/lang/CharSequence;

    move-result-object v0

    .line 96
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    if-eqz v0, :cond_2

    .line 103
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getCurrentChineseModeMaxLength()I

    move-result v3

    if-gt v2, v3, :cond_0

    .line 106
    if-ne p1, v5, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-eq v2, v5, :cond_0

    .line 113
    :cond_2
    iget-boolean v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsTraceOn:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v2

    if-le v2, v4, :cond_6

    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->isSymbolAndSpace()Z

    move-result v2

    if-nez v2, :cond_6

    .line 114
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v2, v6, v7, v6}, Lcom/diotek/ime/framework/engine/InputEngineManager;->isAutoAcceptBeforeTrace([Landroid/graphics/PointF;I[Z)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 116
    invoke-virtual {p0, v7}, Lcom/diotek/ime/framework/input/AbstractInputModule;->selectWordInList(I)V

    .line 117
    invoke-virtual {p0, v8}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 119
    :cond_3
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTracePoint()[Landroid/graphics/PointF;

    move-result-object v3

    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v4

    const/4 v5, -0x1

    invoke-interface {v2, v3, v4, v5}, Lcom/diotek/ime/framework/engine/InputEngineManager;->processTrace([Landroid/graphics/PointF;IB)S

    move-result v2

    if-nez v2, :cond_4

    .line 121
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->clearTraceInfo()V

    .line 122
    invoke-virtual {p0, v6}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSequence(Ljava/lang/StringBuilder;)V

    .line 123
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSuggestion()V

    .line 124
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->cancelPreviewTrace()V

    goto :goto_0

    .line 127
    :cond_4
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->clearTraceInfo()V

    .line 128
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2, v3, v7}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getCharSequence(Ljava/lang/StringBuilder;I)I

    .line 129
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 130
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->disableSetUpAutoSpace()V

    .line 131
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->resetPredictionWord()V

    .line 133
    :cond_5
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setComposingText()V

    .line 159
    :goto_1
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getInputTransResult()Ljava/lang/CharSequence;

    move-result-object v1

    .line 160
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    .line 161
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v2, v3}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    .line 162
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v2, v3}, Lcom/diotek/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    .line 163
    if-eqz v1, :cond_d

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_d

    .line 164
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2, v1, v8}, Lcom/diotek/ime/framework/common/InputManager;->updateSpellView(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_0

    .line 135
    :cond_6
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->cancelPreviewTrace()V

    .line 136
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 137
    invoke-virtual {p0, v7}, Lcom/diotek/ime/framework/input/AbstractInputModule;->selectWordInList(I)V

    .line 138
    invoke-virtual {p0, v8}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 140
    :cond_7
    const v2, 0x7a68484b

    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getInputLanguage()I

    move-result v3

    if-ne v2, v3, :cond_c

    .line 141
    const/16 v2, 0x41

    if-gt v2, p1, :cond_8

    const/16 v2, 0x5a

    if-le p1, v2, :cond_9

    :cond_8
    const/16 v2, 0x61

    if-gt v2, p1, :cond_b

    const/16 v2, 0x7a

    if-gt p1, v2, :cond_b

    .line 143
    :cond_9
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isQuickCangieMode()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 144
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getInputTransResult()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eq v2, v4, :cond_0

    .line 147
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(I)I

    move-result v3

    invoke-interface {v2, v3, v6}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(ILandroid/graphics/PointF;)I

    goto :goto_1

    .line 149
    :cond_a
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(I)I

    move-result v3

    invoke-interface {v2, v3, v6}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(ILandroid/graphics/PointF;)I

    goto :goto_1

    .line 152
    :cond_b
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v2, p1, v6}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(ILandroid/graphics/PointF;)I

    goto :goto_1

    .line 155
    :cond_c
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v2, p1, v6}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(ILandroid/graphics/PointF;)I

    goto/16 :goto_1

    .line 166
    :cond_d
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2, v6, v7}, Lcom/diotek/ime/framework/common/InputManager;->updateSpellView(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_0
.end method

.method private processSpaceKey()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 297
    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    .line 298
    .local v2, "ic":Landroid/view/inputmethod/InputConnection;
    const/4 v7, 0x0

    .line 299
    .local v7, "spell":Ljava/lang/CharSequence;
    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getInputTransResult()Ljava/lang/CharSequence;

    move-result-object v7

    .line 300
    if-eqz v7, :cond_7

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-lez v8, :cond_7

    .line 301
    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-gtz v8, :cond_1

    .line 302
    if-eqz v2, :cond_0

    .line 304
    invoke-interface {v2, v7, v11}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 306
    :cond_0
    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    .line 307
    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8, v7, v11}, Lcom/diotek/ime/framework/common/InputManager;->updateSpellView(Ljava/lang/CharSequence;Z)V

    .line 368
    :goto_0
    return-void

    .line 311
    :cond_1
    const/4 v6, 0x0

    .line 313
    .local v6, "nRet":I
    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->isFocusOnCandidateView()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 314
    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->getCandidates()Ljava/util/ArrayList;

    move-result-object v1

    .line 315
    .local v1, "candidates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestionActiveIndex()I

    move-result v3

    .line 316
    .local v3, "idx":I
    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 317
    .local v4, "idx2":I
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    invoke-interface {v9, v4, v8}, Lcom/diotek/ime/framework/engine/InputEngineManager;->wordSelected(ILjava/lang/CharSequence;)I

    move-result v6

    .line 319
    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8, v10}, Lcom/diotek/ime/framework/common/InputManager;->setFocusOnCandidateView(Z)V

    .line 320
    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8, v3, v11}, Lcom/diotek/ime/framework/common/InputManager;->setSelectionBgOnCandidateList(IZ)V

    .line 324
    .end local v1    # "candidates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v3    # "idx":I
    .end local v4    # "idx2":I
    :goto_1
    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getInputTransResult()Ljava/lang/CharSequence;

    move-result-object v7

    .line 325
    if-lez v6, :cond_3

    .line 327
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    .line 328
    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v8, v9}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    .line 329
    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v8, v9}, Lcom/diotek/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    .line 330
    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8, v7, v11}, Lcom/diotek/ime/framework/common/InputManager;->updateSpellView(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    .line 322
    :cond_2
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    invoke-interface {v9, v10, v8}, Lcom/diotek/ime/framework/engine/InputEngineManager;->wordSelected(ILjava/lang/CharSequence;)I

    move-result v6

    goto :goto_1

    .line 334
    :cond_3
    const/4 v0, 0x0

    .line 336
    .local v0, "candidate":Ljava/lang/CharSequence;
    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->isFocusOnCandidateView()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 337
    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->getCandidates()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "candidate":Ljava/lang/CharSequence;
    check-cast v0, Ljava/lang/CharSequence;

    .line 342
    .restart local v0    # "candidate":Ljava/lang/CharSequence;
    :goto_2
    if-eqz v2, :cond_4

    .line 343
    invoke-interface {v2, v7, v11}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 345
    :cond_4
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    .line 346
    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8, v12, v10}, Lcom/diotek/ime/framework/common/InputManager;->updateSpellView(Ljava/lang/CharSequence;Z)V

    .line 347
    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8, v10}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    .line 348
    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    .line 349
    invoke-virtual {p0, v11}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setPredictionWord(Z)V

    .line 351
    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v8, v0, v9}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getPredictWord(Ljava/lang/CharSequence;Ljava/util/ArrayList;)I

    move-result v5

    .line 353
    .local v5, "nPredictWordNum":I
    if-lez v5, :cond_6

    .line 354
    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v8, v9}, Lcom/diotek/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 339
    .end local v5    # "nPredictWordNum":I
    :cond_5
    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "candidate":Ljava/lang/CharSequence;
    check-cast v0, Ljava/lang/CharSequence;

    .restart local v0    # "candidate":Ljava/lang/CharSequence;
    goto :goto_2

    .line 356
    .restart local v5    # "nPredictWordNum":I
    :cond_6
    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8, v10}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    goto/16 :goto_0

    .line 359
    .end local v0    # "candidate":Ljava/lang/CharSequence;
    .end local v5    # "nPredictWordNum":I
    .end local v6    # "nRet":I
    :cond_7
    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    .line 360
    invoke-virtual {p0, v11}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 361
    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v8}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isLastActionIsTraceOrPick()Z

    move-result v8

    if-nez v8, :cond_8

    .line 362
    const/16 v8, 0x3e

    invoke-virtual {p0, v8}, Lcom/diotek/ime/framework/input/AbstractInputModule;->onKeyDownUpHandle(I)V

    .line 364
    :cond_8
    invoke-virtual {p0, v12}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSequence(Ljava/lang/StringBuilder;)V

    .line 365
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSuggestion()V

    .line 366
    invoke-virtual {p0, v11}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setPredictionWord(Z)V

    goto/16 :goto_0
.end method

.method private removeDivChar([C)Ljava/lang/String;
    .locals 6
    .param p1, "array"    # [C

    .prologue
    .line 282
    const/4 v4, 0x0

    .line 283
    .local v4, "result":Ljava/lang/String;
    move-object v0, p1

    .local v0, "arr$":[C
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-char v1, v0, v2

    .line 284
    .local v1, "i":C
    const/16 v5, 0x27

    if-eq v1, v5, :cond_0

    .line 285
    if-nez v4, :cond_1

    .line 286
    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    .line 283
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 288
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 293
    .end local v1    # "i":C
    :cond_2
    return-object v4
.end method


# virtual methods
.method public onCharacterKey(I[I)V
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    const/16 v4, -0x7a

    .line 52
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isTabletMode()Z

    move-result v0

    .line 54
    .local v0, "isTabletMode":Z
    if-eqz v0, :cond_3

    .line 55
    const/16 v2, -0x3f

    if-ne p1, v2, :cond_0

    .line 56
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isChineseSpellText()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 57
    const/16 p1, 0x27

    .line 69
    :cond_0
    iget-boolean v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsTraceOn:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_4

    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->isSymbolAndSpace()Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v1, 0x1

    .line 70
    .local v1, "isTraceInput":Z
    :goto_0
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v2, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->isTextCharacter(I)Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v1, :cond_5

    .line 72
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/input/SwiftkeyQwertyChineseInputModule;->processSingleTap(I[I)V

    .line 73
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2, v4}, Lcom/diotek/ime/framework/common/InputManager;->invalidateKey(I)V

    .line 85
    :goto_1
    iput p1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mLastKeyCode:I

    .line 86
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v2, p1, v1}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->setUpAutoSpace(IZ)V

    .line 87
    .end local v1    # "isTraceInput":Z
    :cond_2
    :goto_2
    return-void

    .line 63
    :cond_3
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isChineseSpellText()Z

    move-result v2

    if-eqz v2, :cond_0

    if-ne p1, v4, :cond_0

    goto :goto_2

    .line 69
    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    .line 75
    .restart local v1    # "isTraceInput":Z
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/diotek/ime/framework/input/SwiftkeyQwertyChineseInputModule;->processSymbolicKey(I[I)V

    .line 76
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isChineseSpellText()Z

    move-result v2

    if-nez v2, :cond_6

    .line 77
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2, v4}, Lcom/diotek/ime/framework/common/InputManager;->invalidateKey(I)V

    .line 79
    :cond_6
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->autoPeriod(I)V

    goto :goto_1
.end method

.method public onHwrPanelLongPressed(ILjava/lang/String;)V
    .locals 0
    .param p1, "selectedArrayIndex"    # I
    .param p2, "resultString"    # Ljava/lang/String;

    .prologue
    .line 589
    return-void
.end method

.method public onText(Ljava/lang/CharSequence;)V
    .locals 7
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 24
    const/4 v1, 0x0

    .line 25
    .local v1, "spell":Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 26
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_1

    .line 27
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getInputTransResult()Ljava/lang/CharSequence;

    move-result-object v1

    .line 28
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 29
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v2, v3, v4}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;Z)I

    .line 30
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 31
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 32
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v3, v4, v2}, Lcom/diotek/ime/framework/engine/InputEngineManager;->wordSelected(ILjava/lang/CharSequence;)I

    .line 33
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getInputTransResult()Ljava/lang/CharSequence;

    move-result-object v1

    .line 34
    invoke-interface {v0, v1, v5}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 35
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    .line 36
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2, v4}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    .line 37
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    .line 38
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2, v6, v4}, Lcom/diotek/ime/framework/common/InputManager;->updateSpellView(Ljava/lang/CharSequence;Z)V

    .line 39
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2, v6, v4}, Lcom/diotek/ime/framework/common/InputManager;->setPhoneticSpellLayout(Ljava/util/ArrayList;Z)V

    .line 40
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v3, "CHINESE_PHONETIC_SELECT_SPELL_INDEX"

    const/4 v4, -0x1

    invoke-interface {v2, v3, v4}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;I)V

    .line 43
    :cond_0
    invoke-virtual {p0, v5}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 44
    invoke-static {p1}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    .line 45
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 46
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 48
    :cond_1
    return-void
.end method

.method public pickSuggestionManually(ILjava/lang/CharSequence;)V
    .locals 8
    .param p1, "nIndex"    # I
    .param p2, "candidate"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 533
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 534
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    const/4 v3, 0x0

    .line 535
    .local v3, "spell":Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getInputTransResult()Ljava/lang/CharSequence;

    move-result-object v3

    .line 537
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4, v6}, Lcom/diotek/ime/framework/common/InputManager;->setFocusOnCandidateView(Z)V

    .line 539
    const/4 v2, 0x0

    .line 540
    .local v2, "nRet":I
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v4, p1, p2}, Lcom/diotek/ime/framework/engine/InputEngineManager;->wordSelected(ILjava/lang/CharSequence;)I

    move-result v2

    .line 542
    if-eqz v0, :cond_1

    .line 543
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 544
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getInputTransResult()Ljava/lang/CharSequence;

    move-result-object v3

    .line 545
    if-lez v2, :cond_0

    .line 547
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    .line 548
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v4, v5}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    .line 549
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v4, v5}, Lcom/diotek/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    .line 550
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4, v3, v7}, Lcom/diotek/ime/framework/common/InputManager;->updateSpellView(Ljava/lang/CharSequence;Z)V

    .line 577
    :goto_0
    return-void

    .line 553
    :cond_0
    invoke-interface {v0, v3, v7}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 558
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    .line 559
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v5, 0x0

    invoke-interface {v4, v5, v6}, Lcom/diotek/ime/framework/common/InputManager;->updateSpellView(Ljava/lang/CharSequence;Z)V

    .line 560
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4, v6}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    .line 561
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    .line 562
    invoke-virtual {p0, v7}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setPredictionWord(Z)V

    .line 563
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->updateChineseFullStopCharacter()V

    .line 565
    if-eqz p2, :cond_4

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_4

    .line 566
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v4, p2, v5}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getPredictWord(Ljava/lang/CharSequence;Ljava/util/ArrayList;)I

    move-result v1

    .line 568
    .local v1, "nPredictWordNum":I
    if-lez v1, :cond_3

    .line 570
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v4, v5}, Lcom/diotek/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 555
    .end local v1    # "nPredictWordNum":I
    :cond_2
    invoke-interface {v0, p2, v7}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    goto :goto_1

    .line 572
    .restart local v1    # "nPredictWordNum":I
    :cond_3
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4, v6}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    goto :goto_0

    .line 575
    .end local v1    # "nPredictWordNum":I
    :cond_4
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4, v6}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    goto :goto_0
.end method

.method protected processSymbolicKey(I[I)V
    .locals 29
    .param p1, "keyCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    .line 171
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/engine/InputEngineManager;->cancelTrace()Z

    .line 172
    const/16 v2, 0xa

    move/from16 v0, p1

    if-ne v0, v2, :cond_1

    .line 173
    invoke-direct/range {p0 .. p0}, Lcom/diotek/ime/framework/input/SwiftkeyQwertyChineseInputModule;->processEnterKey()V

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    const/16 v2, 0x20

    move/from16 v0, p1

    if-ne v0, v2, :cond_2

    .line 176
    invoke-direct/range {p0 .. p0}, Lcom/diotek/ime/framework/input/SwiftkeyQwertyChineseInputModule;->processSpaceKey()V

    goto :goto_0

    .line 178
    :cond_2
    const/4 v2, -0x5

    move/from16 v0, p1

    if-ne v0, v2, :cond_3

    .line 179
    invoke-direct/range {p0 .. p0}, Lcom/diotek/ime/framework/input/SwiftkeyQwertyChineseInputModule;->processBackSpaceKey()V

    goto :goto_0

    .line 181
    :cond_3
    const/16 v2, -0x3eb

    move/from16 v0, p1

    if-ne v0, v2, :cond_4

    .line 182
    invoke-direct/range {p0 .. p0}, Lcom/diotek/ime/framework/input/SwiftkeyQwertyChineseInputModule;->processForwardDelete()V

    goto :goto_0

    .line 184
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 185
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    .line 186
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v5, 0x0

    invoke-interface {v2, v5}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    .line 189
    :cond_5
    const/16 v27, 0x0

    .line 190
    .local v27, "spell":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getInputTransResult()Ljava/lang/CharSequence;

    move-result-object v27

    .line 191
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v23

    .line 192
    .local v23, "ic":Landroid/view/inputmethod/InputConnection;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isChineseStrokeModeOn()Z

    move-result v28

    .line 193
    .local v28, "strokeModeOn":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-interface {v2, v5, v6}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;Z)I

    .line 195
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_8

    .line 196
    if-eqz v27, :cond_8

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_8

    .line 198
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v5, v6, v2}, Lcom/diotek/ime/framework/engine/InputEngineManager;->wordSelected(ILjava/lang/CharSequence;)I

    move-result v26

    .line 199
    .local v26, "nRet":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getInputTransResult()Ljava/lang/CharSequence;

    move-result-object v27

    .line 200
    if-lez v26, :cond_6

    .line 201
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v5, "TABLET_MODE"

    const/4 v6, 0x0

    invoke-interface {v2, v5, v6}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v24

    .line 217
    .local v24, "isTabletMode":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 218
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v2, v5}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    .line 219
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v2, v5}, Lcom/diotek/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    .line 220
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v5, 0x1

    move-object/from16 v0, v27

    invoke-interface {v2, v0, v5}, Lcom/diotek/ime/framework/common/InputManager;->updateSpellView(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_0

    .line 224
    .end local v24    # "isTabletMode":Z
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/CharSequence;

    .line 225
    .local v22, "candidate":Ljava/lang/CharSequence;
    if-eqz v23, :cond_7

    .line 226
    const/4 v2, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 228
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    .line 229
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v5, 0x0

    invoke-interface {v2, v5}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    .line 230
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    .line 231
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v2, v5, v6}, Lcom/diotek/ime/framework/common/InputManager;->updateSpellView(Ljava/lang/CharSequence;Z)V

    .line 232
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v2, v5, v6}, Lcom/diotek/ime/framework/common/InputManager;->setPhoneticSpellLayout(Ljava/util/ArrayList;Z)V

    .line 233
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v5, "CHINESE_PHONETIC_SELECT_SPELL_INDEX"

    const/4 v6, -0x1

    invoke-interface {v2, v5, v6}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;I)V

    .line 235
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    move-object/from16 v0, v22

    invoke-interface {v2, v0, v5}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getPredictWord(Ljava/lang/CharSequence;Ljava/util/ArrayList;)I

    move-result v25

    .line 237
    .local v25, "nPredictWordNum":I
    if-lez v25, :cond_9

    .line 238
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v2, v5}, Lcom/diotek/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    .line 245
    .end local v22    # "candidate":Ljava/lang/CharSequence;
    .end local v25    # "nPredictWordNum":I
    .end local v26    # "nRet":I
    :cond_8
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isInMultiTapInput()Z

    move-result v21

    .line 246
    .local v21, "bIsInMultiTap":Z
    if-eqz v21, :cond_a

    .line 247
    invoke-virtual/range {p0 .. p2}, Lcom/diotek/ime/framework/input/AbstractInputModule;->processMultiTapSymbolicKey(I[I)V

    goto/16 :goto_0

    .line 240
    .end local v21    # "bIsInMultiTap":Z
    .restart local v22    # "candidate":Ljava/lang/CharSequence;
    .restart local v25    # "nPredictWordNum":I
    .restart local v26    # "nRet":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v5, 0x0

    invoke-interface {v2, v5}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    goto :goto_1

    .line 250
    .end local v22    # "candidate":Ljava/lang/CharSequence;
    .end local v25    # "nPredictWordNum":I
    .end local v26    # "nRet":I
    .restart local v21    # "bIsInMultiTap":Z
    :cond_a
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 251
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 252
    const/16 v2, 0x1a

    move/from16 v0, p1

    if-eq v0, v2, :cond_b

    .line 253
    move/from16 v0, p1

    int-to-char v2, v0

    invoke-static {v2}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    .line 255
    :cond_b
    const/16 v2, 0x30

    move/from16 v0, p1

    if-lt v0, v2, :cond_d

    const/16 v2, 0x39

    move/from16 v0, p1

    if-gt v0, v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v2

    const/4 v5, 0x1

    if-eq v2, v5, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingNumberInputKeyboardForMultiWindow()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 258
    :cond_c
    add-int/lit8 v2, p1, -0x30

    add-int/lit8 v8, v2, 0x7

    .line 259
    .local v8, "code":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 260
    .local v3, "eventTime":J
    if-eqz v23, :cond_0

    .line 261
    new-instance v2, Landroid/view/KeyEvent;

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x6

    move-wide v5, v3

    invoke-direct/range {v2 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 264
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

    move-object/from16 v0, v23

    invoke-interface {v0, v9}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    goto/16 :goto_0

    .line 270
    .end local v3    # "eventTime":J
    .end local v8    # "code":I
    :cond_d
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 272
    if-eqz v27, :cond_e

    .line 273
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    .line 274
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v2, v5, v6}, Lcom/diotek/ime/framework/common/InputManager;->updateSpellView(Ljava/lang/CharSequence;Z)V

    .line 276
    :cond_e
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSequence(Ljava/lang/StringBuilder;)V

    .line 277
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSuggestion()V

    .line 278
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setPredictionWord(Z)V

    goto/16 :goto_0
.end method

.method public release()V
    .locals 0

    .prologue
    .line 583
    return-void
.end method

.method public updateVOHWRSuggestion()V
    .locals 0

    .prologue
    .line 593
    return-void
.end method
