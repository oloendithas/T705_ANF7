.class public Lcom/diotek/ime/framework/input/SwiftkeyPhonepadLatinInputModule;
.super Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;
.source "SwiftkeyPhonepadLatinInputModule.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;-><init>()V

    return-void
.end method

.method private processBackSpaceKey()V
    .locals 15

    .prologue
    .line 442
    iget-object v12, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v4

    .line 443
    .local v4, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v4, :cond_1

    .line 552
    :cond_0
    :goto_0
    return-void

    .line 446
    :cond_1
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    .line 447
    iget-object v12, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v13, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-interface {v12, v13, v14}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;Z)I

    .line 448
    iget-object v12, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v12}, Lcom/diotek/ime/framework/input/AbstractInputModule;->stopTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;)V

    .line 450
    const-string v5, ""

    .line 454
    .local v5, "lastChar":Ljava/lang/String;
    const/4 v11, 0x0

    .line 455
    .local v11, "ss":Landroid/text/SpannableString;
    iget-boolean v12, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-eqz v12, :cond_6

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 457
    const v12, 0x7fffffff

    const/4 v13, 0x1

    :try_start_0
    invoke-interface {v4, v12, v13}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Landroid/text/SpannableString;

    move-object v11, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 461
    :goto_1
    if-eqz v11, :cond_3

    .line 462
    const/4 v12, 0x0

    invoke-virtual {v11}, Landroid/text/SpannableString;->length()I

    move-result v13

    const-class v14, Ljava/lang/Object;

    invoke-virtual {v11, v12, v13, v14}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v9

    .line 463
    .local v9, "sp":[Ljava/lang/Object;
    move-object v1, v9

    .local v1, "arr$":[Ljava/lang/Object;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_2
    if-ge v3, v6, :cond_3

    aget-object v10, v1, v3

    .line 464
    .local v10, "span":Ljava/lang/Object;
    instance-of v12, v10, Landroid/text/style/UnderlineSpan;

    if-eqz v12, :cond_2

    invoke-virtual {v11, v10}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v12

    invoke-virtual {v11}, Landroid/text/SpannableString;->length()I

    move-result v13

    if-ne v12, v13, :cond_2

    .line 465
    invoke-virtual {v11, v10}, Landroid/text/SpannableString;->getSpanStart(Ljava/lang/Object;)I

    move-result v12

    invoke-virtual {v11, v10}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v13

    invoke-interface {v4, v12, v13}, Landroid/view/inputmethod/InputConnection;->setComposingRegion(II)Z

    .line 463
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 458
    .end local v1    # "arr$":[Ljava/lang/Object;
    .end local v3    # "i$":I
    .end local v6    # "len$":I
    .end local v9    # "sp":[Ljava/lang/Object;
    .end local v10    # "span":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 459
    .local v2, "e":Ljava/lang/ClassCastException;
    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-interface {v4, v12, v13}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v5

    .end local v5    # "lastChar":Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .restart local v5    # "lastChar":Ljava/lang/String;
    goto :goto_1

    .line 469
    .end local v2    # "e":Ljava/lang/ClassCastException;
    :cond_3
    const-string v12, ""

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    if-eqz v11, :cond_4

    invoke-virtual {v11}, Landroid/text/SpannableString;->length()I

    move-result v12

    if-lez v12, :cond_4

    .line 470
    invoke-virtual {v11}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v12, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 476
    :cond_4
    :goto_3
    if-nez v5, :cond_5

    .line 477
    const-string v5, ""

    .line 479
    :cond_5
    const/4 v11, 0x0

    .line 481
    iget-object v12, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->getSelectedNumOfText()I

    move-result v8

    .line 483
    .local v8, "selectedText":I
    invoke-virtual {p0, v5}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setDeleteCount(Ljava/lang/String;)V

    .line 484
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->resetPredictionWord()V

    .line 485
    iget-boolean v12, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-eqz v12, :cond_d

    iget-object v12, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v12, :cond_d

    iget-object v12, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_d

    iget-object v12, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_d

    .line 487
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v12

    const/4 v13, 0x1

    if-le v12, v13, :cond_8

    .line 488
    iget-object v12, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    const/4 v13, -0x5

    invoke-interface {v12, v13}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(I)I

    move-result v12

    if-nez v12, :cond_7

    .line 489
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 490
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p0, v12}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 491
    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSequence(Ljava/lang/StringBuilder;)V

    .line 523
    :goto_4
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSuggestion()V

    goto/16 :goto_0

    .line 473
    .end local v8    # "selectedText":I
    :cond_6
    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-interface {v4, v12, v13}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v5

    .end local v5    # "lastChar":Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .restart local v5    # "lastChar":Ljava/lang/String;
    goto :goto_3

    .line 493
    .restart local v8    # "selectedText":I
    :cond_7
    iget-object v12, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x0

    invoke-interface {v12, v13, v14}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getCharSequence(Ljava/lang/StringBuilder;I)I

    .line 494
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setComposingText()V

    goto :goto_4

    .line 496
    :cond_8
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v12

    if-eqz v12, :cond_9

    .line 497
    iget-object v12, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    const/4 v13, -0x5

    invoke-interface {v12, v13}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(I)I

    .line 498
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 499
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p0, v12}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 500
    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSequence(Ljava/lang/StringBuilder;)V

    goto :goto_4

    .line 502
    :cond_9
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 503
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getDeleteCount()I

    move-result v12

    const/16 v13, 0xa

    if-le v12, v13, :cond_a

    invoke-static {}, Lcom/diotek/ime/framework/repository/PackageStatus;->getPackageName()Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    move-result-object v12

    sget-object v13, Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;->CHATON_PACKAGE_NAME:Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    if-eq v12, v13, :cond_a

    .line 505
    if-eqz v4, :cond_b

    .line 506
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getLastWordDividerIndex()I

    move-result v12

    const/4 v13, 0x0

    invoke-interface {v4, v12, v13}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 507
    const/16 v12, 0x12c

    invoke-virtual {p0, v12}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->postUpdateSequenceAndSuggestionDelay(I)V

    goto/16 :goto_0

    .line 511
    :cond_a
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initWordDividerIndexList()V

    .line 512
    const/16 v12, 0x43

    invoke-virtual {p0, v12}, Lcom/diotek/ime/framework/input/AbstractInputModule;->onKeyDownUpHandle(I)V

    .line 513
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposingWithoutInit()V

    .line 516
    :cond_b
    if-lez v8, :cond_c

    iget-object v12, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->getIsPendingUpdateCandidateView()Z

    move-result v12

    if-eqz v12, :cond_c

    .line 518
    iget-object v12, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Lcom/diotek/ime/framework/common/InputManager;->setIsPendingUpdateCandidateView(Z)V

    .line 520
    :cond_c
    const/16 v12, 0x12c

    invoke-virtual {p0, v12}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->postUpdateSequenceAndSuggestionDelay(I)V

    goto/16 :goto_0

    .line 525
    :cond_d
    const/4 v12, 0x1

    invoke-virtual {p0, v12}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 526
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initComposingBuffer()V

    .line 527
    iget v12, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputLanguage:I

    const/high16 v13, 0x76690000

    if-ne v12, v13, :cond_e

    .line 528
    if-eqz v5, :cond_e

    .line 529
    invoke-static {v5}, Lcom/diotek/ime/framework/common/InputSequenceCheck;->normalizedNFD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 530
    .local v7, "nonNormalizedChar":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x1

    if-le v12, v13, :cond_e

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v7, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-static {v12}, Lcom/diotek/ime/framework/common/InputSequenceCheck;->isVietameseTone(I)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 534
    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-interface {v4, v12, v13}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 535
    invoke-static {v7}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    .line 536
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x1

    invoke-interface {v4, v12, v13}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 537
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 542
    .end local v7    # "nonNormalizedChar":Ljava/lang/String;
    :cond_e
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getDeleteCount()I

    move-result v12

    const/16 v13, 0x14

    if-le v12, v13, :cond_f

    invoke-static {}, Lcom/diotek/ime/framework/repository/PackageStatus;->getPackageName()Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    move-result-object v12

    sget-object v13, Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;->CHATON_PACKAGE_NAME:Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    if-eq v12, v13, :cond_f

    .line 544
    if-eqz v4, :cond_0

    .line 545
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getLastWordDividerIndex()I

    move-result v12

    const/4 v13, 0x0

    invoke-interface {v4, v12, v13}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto/16 :goto_0

    .line 548
    :cond_f
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initWordDividerIndexList()V

    .line 549
    const/16 v12, 0x43

    invoke-virtual {p0, v12}, Lcom/diotek/ime/framework/input/AbstractInputModule;->onKeyDownUpHandle(I)V

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

    .line 285
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

    if-eqz v14, :cond_8

    :cond_1
    const/4 v8, 0x1

    .line 131
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

    .line 132
    const/4 v9, 0x1

    .line 134
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-eqz v14, :cond_9

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v14, :cond_9

    .line 135
    if-eqz v10, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 136
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/InputManager;->updateShiftState()V

    .line 158
    :cond_3
    :goto_2
    if-eqz v8, :cond_10

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsTraceOn:Z

    if-eqz v14, :cond_10

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    if-eqz v14, :cond_10

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v14}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v14

    const/4 v15, 0x2

    if-le v14, v15, :cond_10

    .line 159
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

    .line 160
    const/4 v14, 0x0

    aget v14, v2, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/diotek/ime/framework/input/AbstractInputModule;->selectWordInList(I)V

    .line 161
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 162
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v14}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isAutoSpaceOn()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 163
    const/16 v14, 0x20

    invoke-static {v14}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(C)V

    .line 164
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 165
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v14}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->reset()V

    .line 166
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

    .line 168
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/InputManager;->updateShiftState()V

    .line 172
    :cond_4
    if-eqz v10, :cond_7

    .line 173
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 174
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v14}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAtTrace()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 175
    const/16 v14, 0x20

    invoke-static {v14}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(C)V

    .line 176
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 178
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v14

    if-eqz v14, :cond_6

    .line 179
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/InputManager;->updateShiftState()V

    .line 181
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    .line 183
    :cond_7
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

    if-nez v14, :cond_d

    .line 185
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v14}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->clearTraceInfo()V

    .line 186
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->resetPredictionWord()V

    .line 187
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSequence(Ljava/lang/StringBuilder;)V

    .line 188
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSuggestion()V

    .line 189
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->cancelPreviewTrace()V

    goto/16 :goto_0

    .line 130
    .end local v8    # "isEnableTraceInput":Z
    :cond_8
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 139
    .restart local v8    # "isEnableTraceInput":Z
    :cond_9
    if-eqz v10, :cond_a

    if-eqz v9, :cond_a

    .line 140
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    goto/16 :goto_2

    .line 141
    :cond_a
    if-eqz v10, :cond_b

    .line 142
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 143
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    .line 145
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 146
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/InputManager;->updateShiftState()V

    goto/16 :goto_2

    .line 149
    :cond_b
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 150
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v14}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isAutoSpaceOn()Z

    move-result v14

    if-eqz v14, :cond_c

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v14}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isLastActionIsTraceOrPick()Z

    move-result v14

    if-eqz v14, :cond_c

    .line 152
    const/16 v14, 0x20

    invoke-static {v14}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(C)V

    .line 153
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 155
    :cond_c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    goto/16 :goto_2

    .line 192
    :cond_d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x0

    invoke-interface/range {v14 .. v16}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getCharSequence(Ljava/lang/StringBuilder;I)I

    .line 193
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v14}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->clearTraceInfo()V

    .line 194
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_e

    .line 195
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v14}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->disableSetUpAutoSpace()V

    .line 196
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->resetPredictionWord()V

    .line 275
    :cond_e
    :goto_3
    move-object/from16 v0, p0

    iget v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputLanguage:I

    const/high16 v15, 0x76690000

    if-ne v14, v15, :cond_f

    .line 276
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v14}, Lcom/diotek/ime/framework/input/AbstractInputModule;->processVietnameseTone(IZ)V

    .line 279
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setComposingText()V

    .line 280
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-eqz v14, :cond_26

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v14, :cond_26

    .line 281
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSuggestion()V

    goto/16 :goto_0

    .line 199
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->cancelPreviewTrace()V

    .line 200
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/InputManager;->getSelectedNumOfText()I

    move-result v12

    .line 201
    .local v12, "selectText":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputLanguage:I

    const/high16 v15, 0x74720000

    if-eq v14, v15, :cond_11

    move-object/from16 v0, p0

    iget v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputLanguage:I

    const/high16 v15, 0x617a0000

    if-ne v14, v15, :cond_17

    .line 202
    :cond_11
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v14

    if-eqz v14, :cond_16

    invoke-virtual/range {p0 .. p1}, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->toUpperCaseOfTurkish(I)I

    move-result p1

    .line 208
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-eqz v14, :cond_19

    if-eqz v10, :cond_19

    .line 209
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 210
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v14}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isAutoSpaceOn()Z

    move-result v14

    if-eqz v14, :cond_12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v14}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAtText()Z

    move-result v14

    if-eqz v14, :cond_12

    .line 212
    const/16 v14, 0x20

    invoke-static {v14}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(C)V

    .line 213
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 215
    :cond_12
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v14

    if-eqz v14, :cond_13

    .line 216
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/InputManager;->updateShiftState()V

    .line 218
    :cond_13
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/engine/InputEngineManager;->breakContext()V

    .line 236
    :cond_14
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-eqz v14, :cond_1c

    move-object/from16 v0, p0

    iget v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosNextText:I

    if-lez v14, :cond_1c

    .line 237
    move/from16 v0, p1

    int-to-char v14, v0

    invoke-static {v14}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    .line 238
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 239
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSequence(Ljava/lang/StringBuilder;)V

    .line 272
    :cond_15
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearAction()V

    goto/16 :goto_3

    .line 202
    :cond_16
    invoke-static/range {p1 .. p1}, Ljava/lang/Character;->toLowerCase(I)I

    move-result p1

    goto :goto_4

    .line 205
    :cond_17
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v14

    if-eqz v14, :cond_18

    invoke-static/range {p1 .. p1}, Ljava/lang/Character;->toUpperCase(I)I

    move-result p1

    :goto_7
    goto :goto_4

    :cond_18
    invoke-static/range {p1 .. p1}, Ljava/lang/Character;->toLowerCase(I)I

    move-result p1

    goto :goto_7

    .line 219
    :cond_19
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-eqz v14, :cond_1a

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v14

    if-eqz v14, :cond_1a

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v14}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAtText()Z

    move-result v14

    if-eqz v14, :cond_1a

    .line 221
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/diotek/ime/framework/input/AbstractInputModule;->selectWordInList(I)V

    .line 222
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 223
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/engine/InputEngineManager;->breakContext()V

    .line 224
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v14}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isAutoSpaceOn()Z

    move-result v14

    if-eqz v14, :cond_14

    .line 225
    const/16 v14, 0x20

    invoke-static {v14}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(C)V

    .line 226
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 227
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v14

    if-eqz v14, :cond_14

    .line 228
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/InputManager;->updateShiftState()V

    goto/16 :goto_5

    .line 231
    :cond_1a
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-eqz v14, :cond_14

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_14

    if-gtz v12, :cond_1b

    move-object/from16 v0, p0

    iget v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosNextText:I

    if-eqz v14, :cond_1b

    move-object/from16 v0, p0

    iget v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputLanguage:I

    const/high16 v15, 0x74680000

    if-ne v14, v15, :cond_14

    .line 234
    :cond_1b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/engine/InputEngineManager;->breakContext()V

    goto/16 :goto_5

    .line 240
    :cond_1c
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-eqz v14, :cond_25

    .line 241
    move-object/from16 v0, p0

    iget v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputLanguage:I

    const/high16 v15, 0x74680000

    if-ne v14, v15, :cond_1e

    .line 242
    const/16 v14, -0x3a

    move/from16 v0, p1

    if-ne v0, v14, :cond_1d

    .line 243
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

    if-lez v14, :cond_15

    .line 244
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x0

    invoke-interface/range {v14 .. v16}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getCharSequence(Ljava/lang/StringBuilder;I)I

    goto/16 :goto_6

    .line 247
    :cond_1d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    const/4 v15, 0x0

    move/from16 v0, p1

    invoke-interface {v14, v0, v15}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(ILandroid/graphics/PointF;)I

    move-result v14

    if-lez v14, :cond_15

    .line 248
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x0

    invoke-interface/range {v14 .. v16}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getCharSequence(Ljava/lang/StringBuilder;I)I

    goto/16 :goto_6

    .line 252
    :cond_1e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    const/4 v15, 0x0

    move/from16 v0, p1

    invoke-interface {v14, v0, v15}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(ILandroid/graphics/PointF;)I

    move-result v14

    if-lez v14, :cond_15

    .line 253
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_24

    if-eqz p2, :cond_24

    move-object/from16 v0, p2

    array-length v14, v0

    if-lez v14, :cond_24

    .line 254
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 255
    .local v13, "verbatims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v3, p2

    .local v3, "arr$":[I
    array-length v11, v3

    .local v11, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_8
    if-ge v6, v11, :cond_23

    aget v4, v3, v6

    .line 256
    .local v4, "code":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputLanguage:I

    const/high16 v15, 0x74720000

    if-eq v14, v15, :cond_1f

    move-object/from16 v0, p0

    iget v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputLanguage:I

    const/high16 v15, 0x617a0000

    if-ne v14, v15, :cond_21

    .line 257
    :cond_1f
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v14

    if-eqz v14, :cond_20

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->toUpperCaseOfTurkish(I)I

    move-result v14

    int-to-char v14, v14

    :goto_9
    invoke-static {v14}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    :goto_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 257
    :cond_20
    int-to-char v14, v4

    invoke-static {v14}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v14

    goto :goto_9

    .line 260
    :cond_21
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v14

    if-eqz v14, :cond_22

    int-to-char v14, v4

    invoke-static {v14}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v14

    :goto_b
    invoke-static {v14}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_22
    int-to-char v14, v4

    invoke-static {v14}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v14

    goto :goto_b

    .line 264
    .end local v4    # "code":I
    :cond_23
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v14, v13}, Lcom/diotek/ime/framework/engine/InputEngineManager;->setVerbatirmsInPrediction(Ljava/util/ArrayList;)V

    .line 266
    .end local v3    # "arr$":[I
    .end local v6    # "i$":I
    .end local v11    # "len$":I
    .end local v13    # "verbatims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_24
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x0

    invoke-interface/range {v14 .. v16}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getCharSequence(Ljava/lang/StringBuilder;I)I

    goto/16 :goto_6

    .line 270
    :cond_25
    move/from16 v0, p1

    int-to-char v14, v0

    invoke-static {v14}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    goto/16 :goto_6

    .line 283
    .end local v12    # "selectText":I
    :cond_26
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    const/16 v15, 0x5dc

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/diotek/ime/framework/input/AbstractInputModule;->startTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;I)V

    goto/16 :goto_0
.end method

.method private processSingleTap(I[I)V
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    const/4 v3, 0x0

    .line 288
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    .line 289
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v1, v2, v3}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;Z)I

    .line 291
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->isTimerRunning(Lcom/diotek/ime/framework/input/InputModule$Timer;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 292
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->stopTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;)V

    .line 293
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 294
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 295
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initComposingBuffer()V

    .line 299
    :cond_1
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->newInstance(Landroid/content/Context;)Lcom/diotek/ime/framework/sidesync/SideSyncManager;

    move-result-object v0

    .line 300
    .local v0, "mSideSyncManager":Lcom/diotek/ime/framework/sidesync/SideSyncManager;
    iget v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputLanguage:I

    const/high16 v2, 0x74720000

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputLanguage:I

    const/high16 v2, 0x617a0000

    if-ne v1, v2, :cond_6

    .line 301
    :cond_2
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->toUpperCaseOfTurkish(I)I

    move-result p1

    .line 308
    :cond_3
    :goto_0
    iget-boolean v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsTraceOn:Z

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isEnableTraceInPassword()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 309
    :cond_4
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v1, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(I)I

    .line 310
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1, v2, v3}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getCharSequence(Ljava/lang/StringBuilder;I)I

    .line 311
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setComposingText()V

    .line 312
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSuggestion()V

    .line 313
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    .line 322
    :goto_1
    return-void

    .line 301
    :cond_5
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(I)I

    move-result p1

    goto :goto_0

    .line 303
    :cond_6
    invoke-virtual {v0}, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->isSideSyncWorkingOnSource()Z

    move-result v1

    if-nez v1, :cond_3

    .line 304
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(I)I

    move-result p1

    :goto_2
    goto :goto_0

    :cond_7
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(I)I

    move-result p1

    goto :goto_2

    .line 315
    :cond_8
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {p1}, Ljava/lang/Character;->isLowerCase(I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 316
    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(I)I

    move-result p1

    .line 318
    :cond_9
    int-to-char v1, p1

    invoke-static {v1}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(C)V

    .line 319
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

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

    .line 385
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    .line 386
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v2, v3, v5}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;Z)I

    .line 387
    new-array v0, v4, [I

    .line 388
    .local v0, "activeIndex":[I
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v2, v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getActiveIndex([I)I

    .line 389
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

    .line 390
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v5, v3}, Lcom/diotek/ime/framework/engine/InputEngineManager;->wordSelected(ILjava/lang/CharSequence;)I

    .line 391
    invoke-virtual {p0, v4}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 392
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initComposingBuffer()V

    .line 395
    :cond_0
    const/16 v2, 0xa

    if-ne p1, v2, :cond_3

    .line 396
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->sendEnterKeyHandle()V

    .line 397
    iget-boolean v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-eqz v2, :cond_1

    .line 398
    invoke-virtual {p0, v5}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->postUpdateSequenceAndSuggestionDelay(I)V

    .line 400
    :cond_1
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v2}, Lcom/diotek/ime/framework/input/AbstractInputModule;->stopTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;)V

    .line 439
    :cond_2
    :goto_0
    return-void

    .line 403
    :cond_3
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isInMultiTapInput()Z

    move-result v1

    .line 404
    .local v1, "isInMultiTap":Z
    if-eqz v1, :cond_4

    .line 405
    invoke-virtual {p0, p1, p2}, Lcom/diotek/ime/framework/input/AbstractInputModule;->processMultiTapSymbolicKey(I[I)V

    goto :goto_0

    .line 409
    :cond_4
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v2}, Lcom/diotek/ime/framework/input/AbstractInputModule;->isTimerRunning(Lcom/diotek/ime/framework/input/InputModule$Timer;)Z

    move-result v2

    if-eqz v2, :cond_5

    if-ne p1, v6, :cond_5

    .line 410
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v2}, Lcom/diotek/ime/framework/input/AbstractInputModule;->stopTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;)V

    .line 411
    invoke-virtual {p0, v4}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 412
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 435
    :goto_1
    iget-boolean v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-eqz v2, :cond_2

    .line 436
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSequence(Ljava/lang/StringBuilder;)V

    .line 437
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSuggestion()V

    goto :goto_0

    .line 418
    :cond_5
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v2, p1}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAtSymbol(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 419
    invoke-virtual {p0, v4}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 420
    invoke-static {v6}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(C)V

    .line 421
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 423
    :cond_6
    invoke-virtual {p0, v4}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 424
    int-to-char v2, p1

    invoke-static {v2}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(C)V

    .line 425
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v2, p1}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAfterPunctuation(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 426
    invoke-static {v6}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    .line 430
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->disableSetUpAutoSpace()V

    .line 432
    :cond_7
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
    .line 30
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->stopTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;)V

    .line 31
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    .line 32
    invoke-super {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->closing()V

    .line 33
    return-void
.end method

.method public isSwiftPhonepadInput()Z
    .locals 1

    .prologue
    .line 634
    const/4 v0, 0x1

    return v0
.end method

.method public onCharacterKey(I[I)V
    .locals 9
    .param p1, "keyCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 44
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    .line 45
    .local v0, "inputMethod":I
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v1

    .line 46
    .local v1, "inputRange":I
    if-eq v0, v6, :cond_0

    const/16 v7, 0x8

    if-ne v0, v7, :cond_6

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v7

    if-eqz v7, :cond_6

    :cond_0
    move v3, v6

    .line 49
    .local v3, "isPhonePadMode":Z
    :goto_0
    invoke-virtual {p0, v6}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setPredictionWord(Z)V

    .line 50
    iget-boolean v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsTraceOn:Z

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v7

    const/4 v8, 0x2

    if-le v7, v8, :cond_7

    move v4, v6

    .line 51
    .local v4, "isTraceInput":Z
    :goto_1
    iget-boolean v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->isEnableTraceInPassword()Z

    move-result v7

    if-eqz v7, :cond_8

    :cond_1
    move v2, v6

    .line 52
    .local v2, "isEnableTraceInput":Z
    :goto_2
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v6, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->isTextCharacter(I)Z

    move-result v6

    if-eqz v6, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    if-eqz v2, :cond_a

    if-eqz v4, :cond_a

    .line 55
    :cond_3
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v6, p1, v4}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpace(IZ)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 57
    const/16 v6, 0x20

    invoke-static {v6}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(C)V

    .line 58
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v6

    if-nez v6, :cond_4

    .line 60
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 61
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->updateShiftState()V

    .line 65
    :cond_4
    if-eqz v3, :cond_9

    iget-boolean v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->isInMultiTapInput()Z

    move-result v7

    xor-int/2addr v6, v7

    if-eqz v6, :cond_9

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->processMultiTap(I[I)V

    .line 67
    if-eqz p2, :cond_5

    array-length v6, p2

    if-lez v6, :cond_5

    .line 68
    aget p1, p2, v5

    .line 73
    :cond_5
    :goto_3
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/engine/InputEngineManager;->updateShiftState()V

    .line 87
    :goto_4
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->setVerbatimToEngine()V

    .line 88
    iput p1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mLastKeyCode:I

    .line 89
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v5, p1, v4}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->setUpAutoSpace(IZ)V

    .line 90
    return-void

    .end local v2    # "isEnableTraceInput":Z
    .end local v3    # "isPhonePadMode":Z
    .end local v4    # "isTraceInput":Z
    :cond_6
    move v3, v5

    .line 46
    goto/16 :goto_0

    .restart local v3    # "isPhonePadMode":Z
    :cond_7
    move v4, v5

    .line 50
    goto :goto_1

    .restart local v4    # "isTraceInput":Z
    :cond_8
    move v2, v5

    .line 51
    goto :goto_2

    .line 71
    .restart local v2    # "isEnableTraceInput":Z
    :cond_9
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->processSingleTap(I[I)V

    goto :goto_3

    .line 75
    :cond_a
    invoke-virtual {p0, p1, p2}, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->processSymbolicKey(I[I)V

    .line 76
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->autoPeriod(I)V

    goto :goto_4
.end method

.method public onHwrPanelLongPressed(ILjava/lang/String;)V
    .locals 0
    .param p1, "selectedArrayIndex"    # I
    .param p2, "resultString"    # Ljava/lang/String;

    .prologue
    .line 558
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

    .line 562
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v4

    .line 563
    .local v4, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v4, :cond_0

    .line 564
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isAutoCompletitionInput()Z

    move-result v5

    .line 565
    .local v5, "isCompletionOn":Z
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v6

    .line 566
    .local v6, "isLandscape":Z
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->getCompletions()[Landroid/view/inputmethod/CompletionInfo;

    move-result-object v2

    .line 567
    .local v2, "completions":[Landroid/view/inputmethod/CompletionInfo;
    if-eqz v5, :cond_1

    if-eqz v6, :cond_1

    if-eqz v2, :cond_1

    .line 568
    if-ltz p1, :cond_0

    array-length v7, v2

    if-ge p1, v7, :cond_0

    .line 569
    aget-object v1, v2, p1

    .line 570
    .local v1, "completion":Landroid/view/inputmethod/CompletionInfo;
    invoke-interface {v4, v1}, Landroid/view/inputmethod/InputConnection;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z

    .line 625
    .end local v1    # "completion":Landroid/view/inputmethod/CompletionInfo;
    .end local v2    # "completions":[Landroid/view/inputmethod/CompletionInfo;
    .end local v5    # "isCompletionOn":Z
    .end local v6    # "isLandscape":Z
    :cond_0
    :goto_0
    return-void

    .line 573
    .restart local v2    # "completions":[Landroid/view/inputmethod/CompletionInfo;
    .restart local v5    # "isCompletionOn":Z
    .restart local v6    # "isLandscape":Z
    :cond_1
    invoke-interface {v4}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 574
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->getCandidateviewStatus()I

    move-result v0

    .line 575
    .local v0, "candidateStatus":I
    const/4 v3, 0x0

    .line 576
    .local v3, "enableAutoSpaceForNextWordPrediction":Z
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_6

    iget v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mStateCandidate:I

    if-ne v7, v10, :cond_6

    if-nez v0, :cond_6

    .line 579
    iget v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosPrevText:I

    iget v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosNextText:I

    invoke-interface {v4, v7, v8}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 580
    iput v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosPrevText:I

    .line 581
    iput v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosNextText:I

    .line 589
    :cond_2
    :goto_1
    if-eqz p2, :cond_3

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v7

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-eq v7, v8, :cond_3

    .line 590
    invoke-virtual {p0, v10}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setPredictionWord(Z)V

    .line 592
    :cond_3
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 593
    if-eqz v3, :cond_4

    .line 594
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

    .line 596
    const-string v7, " "

    invoke-interface {v4, v7, v10}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 601
    :cond_4
    :goto_2
    invoke-static {p2}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    .line 602
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->replaceSpaceToSymbol(Ljava/lang/StringBuilder;)V

    .line 603
    invoke-virtual {p0, v4}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setComposingTextWithoutBatch(Landroid/view/inputmethod/InputConnection;)V

    .line 604
    iput p1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPickSuggestionIndex:I

    .line 605
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->selectWordInList(I)V

    .line 606
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    .line 607
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

    .line 609
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->reset()V

    .line 613
    :goto_3
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getCurrentLanguageID()I

    move-result v7

    const/high16 v8, 0x74680000

    if-ne v7, v8, :cond_9

    .line 614
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/diotek/ime/framework/input/AbstractInputModule;->commitTextAndInitComposingForThai(Ljava/lang/CharSequence;)V

    .line 618
    :goto_4
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 619
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->updateShiftState()V

    .line 621
    :cond_5
    invoke-virtual {p0, v9}, Lcom/diotek/ime/framework/input/AbstractInputModule;->doNextWordPrediction(Z)V

    .line 622
    invoke-interface {v4}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto/16 :goto_0

    .line 582
    :cond_6
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    iget v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mStateCandidate:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    if-nez v0, :cond_2

    .line 585
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAtNextWordPrediction()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 586
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 598
    :cond_7
    const/16 v7, 0x20

    invoke-static {v7}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    goto :goto_2

    .line 611
    :cond_8
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->setUpByPickSuggestion()V

    goto :goto_3

    .line 616
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
    .locals 22
    .param p1, "keyCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    .line 325
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->cancelTrace()Z

    .line 326
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    .line 327
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-interface {v1, v4, v5}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;Z)I

    .line 329
    const-string v1, " .,;:!?\n()[]*&@{}/<>_-+=|\'\u061b\u060c\u061f\""

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    .line 330
    invoke-direct/range {p0 .. p2}, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->processWordSeparator(I[I)V

    .line 382
    :cond_0
    :goto_0
    return-void

    .line 332
    :cond_1
    const/16 v1, 0xa

    move/from16 v0, p1

    if-eq v0, v1, :cond_2

    const/16 v1, 0x20

    move/from16 v0, p1

    if-ne v0, v1, :cond_3

    .line 334
    :cond_2
    invoke-direct/range {p0 .. p2}, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->processWordSeparator(I[I)V

    goto :goto_0

    .line 336
    :cond_3
    const/4 v1, -0x5

    move/from16 v0, p1

    if-ne v0, v1, :cond_4

    .line 337
    invoke-direct/range {p0 .. p0}, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->processBackSpaceKey()V

    goto :goto_0

    .line 339
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 340
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSuggestion()V

    .line 343
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isInMultiTapInput()Z

    move-result v21

    .line 344
    .local v21, "isInMultiTap":Z
    if-eqz v21, :cond_6

    .line 345
    invoke-virtual/range {p0 .. p2}, Lcom/diotek/ime/framework/input/AbstractInputModule;->processMultiTapSymbolicKey(I[I)V

    .line 346
    invoke-static/range {p1 .. p1}, Lcom/diotek/ime/framework/common/InputSequenceCheck;->isVietameseTone(I)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-eqz v1, :cond_0

    .line 347
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSequence(Ljava/lang/StringBuilder;)V

    .line 348
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSuggestion()V

    goto :goto_0

    .line 352
    :cond_6
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 353
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initComposingBuffer()V

    .line 354
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 355
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAtSymbol(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 356
    const/16 v1, 0x20

    invoke-static {v1}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    .line 358
    :cond_7
    move/from16 v0, p1

    int-to-char v1, v0

    invoke-static {v1}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    .line 359
    const/16 v1, 0x30

    move/from16 v0, p1

    if-lt v0, v1, :cond_9

    const/16 v1, 0x39

    move/from16 v0, p1

    if-gt v0, v1, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v1

    const/4 v4, 0x1

    if-eq v1, v4, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingNumberInputKeyboardForMultiWindow()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 362
    :cond_8
    add-int/lit8 v1, p1, -0x30

    add-int/lit8 v7, v1, 0x7

    .line 363
    .local v7, "code":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v20

    .line 364
    .local v20, "ic":Landroid/view/inputmethod/InputConnection;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 365
    .local v2, "eventTime":J
    if-eqz v20, :cond_0

    .line 366
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x6

    move-wide v4, v2

    invoke-direct/range {v1 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 369
    new-instance v8, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    const/4 v13, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, -0x1

    const/16 v18, 0x0

    const/16 v19, 0x6

    move-wide v11, v2

    move v14, v7

    invoke-direct/range {v8 .. v19}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    move-object/from16 v0, v20

    invoke-interface {v0, v8}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    goto/16 :goto_0

    .line 375
    .end local v2    # "eventTime":J
    .end local v7    # "code":I
    .end local v20    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_9
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 378
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-eqz v1, :cond_0

    .line 379
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSequence(Ljava/lang/StringBuilder;)V

    .line 380
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSuggestion()V

    goto/16 :goto_0
.end method

.method public release()V
    .locals 0

    .prologue
    .line 39
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
    .line 629
    return-void
.end method
