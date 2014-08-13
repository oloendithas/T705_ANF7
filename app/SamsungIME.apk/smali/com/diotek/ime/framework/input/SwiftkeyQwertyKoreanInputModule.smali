.class public Lcom/diotek/ime/framework/input/SwiftkeyQwertyKoreanInputModule;
.super Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;
.source "SwiftkeyQwertyKoreanInputModule.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;-><init>()V

    return-void
.end method

.method private processBackSpaceKey()V
    .locals 18

    .prologue
    .line 399
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v15}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v6

    .line 400
    .local v6, "ic":Landroid/view/inputmethod/InputConnection;
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    .line 401
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-interface/range {v15 .. v17}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;Z)I

    .line 402
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 403
    .local v2, "builder":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/diotek/ime/framework/input/AbstractInputModule;->stopTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;)V

    .line 405
    const-string v9, ""

    .line 409
    .local v9, "lastChar":Ljava/lang/String;
    const/4 v14, 0x0

    .line 410
    .local v14, "ss":Landroid/text/SpannableString;
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-eqz v15, :cond_2

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v15

    if-eqz v15, :cond_2

    .line 411
    if-eqz v6, :cond_2

    .line 413
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->isEnableAutoCorrection()Z

    move-result v15

    if-nez v15, :cond_0

    .line 414
    const v15, 0x7fffffff

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-interface {v6, v15, v0}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v14

    .end local v14    # "ss":Landroid/text/SpannableString;
    check-cast v14, Landroid/text/SpannableString;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 419
    .restart local v14    # "ss":Landroid/text/SpannableString;
    :cond_0
    :goto_0
    if-eqz v14, :cond_2

    .line 420
    const/4 v15, 0x0

    invoke-virtual {v14}, Landroid/text/SpannableString;->length()I

    move-result v16

    const-class v17, Ljava/lang/Object;

    invoke-virtual/range {v14 .. v17}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v12

    .line 421
    .local v12, "sp":[Ljava/lang/Object;
    move-object v1, v12

    .local v1, "arr$":[Ljava/lang/Object;
    array-length v10, v1

    .local v10, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v10, :cond_2

    aget-object v13, v1, v5

    .line 422
    .local v13, "span":Ljava/lang/Object;
    instance-of v15, v13, Landroid/text/style/UnderlineSpan;

    if-eqz v15, :cond_1

    invoke-virtual {v14, v13}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v15

    invoke-virtual {v14}, Landroid/text/SpannableString;->length()I

    move-result v16

    move/from16 v0, v16

    if-ne v15, v0, :cond_1

    .line 423
    invoke-virtual {v14, v13}, Landroid/text/SpannableString;->getSpanStart(Ljava/lang/Object;)I

    move-result v15

    invoke-virtual {v14, v13}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v16

    move/from16 v0, v16

    invoke-interface {v6, v15, v0}, Landroid/view/inputmethod/InputConnection;->setComposingRegion(II)Z

    .line 421
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 416
    .end local v1    # "arr$":[Ljava/lang/Object;
    .end local v5    # "i$":I
    .end local v10    # "len$":I
    .end local v12    # "sp":[Ljava/lang/Object;
    .end local v13    # "span":Ljava/lang/Object;
    .end local v14    # "ss":Landroid/text/SpannableString;
    :catch_0
    move-exception v4

    .line 417
    .local v4, "e":Ljava/lang/ClassCastException;
    const/4 v14, 0x0

    .restart local v14    # "ss":Landroid/text/SpannableString;
    goto :goto_0

    .line 429
    .end local v4    # "e":Ljava/lang/ClassCastException;
    :cond_2
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v15

    if-eqz v15, :cond_5

    .line 430
    const-string v9, " "

    .line 443
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setDeleteCount(Ljava/lang/String;)V

    .line 444
    const/4 v14, 0x0

    .line 446
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->resetPredictionWord()V

    .line 447
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v15}, Lcom/diotek/ime/framework/common/InputManager;->getSelectedNumOfText()I

    move-result v11

    .line 449
    .local v11, "selectedText":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v15, :cond_f

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lez v15, :cond_f

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    if-eqz v15, :cond_f

    .line 450
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Lcom/diotek/ime/framework/engine/InputEngineManager;->splitHangul(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-le v15, v0, :cond_9

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v15}, Lcom/diotek/ime/framework/common/InputManager;->isEmptyComposingSpan()Z

    move-result v15

    if-nez v15, :cond_9

    .line 452
    if-lez v11, :cond_7

    .line 453
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 454
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initComposingBuffer()V

    .line 455
    const/16 v15, 0x43

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/diotek/ime/framework/input/AbstractInputModule;->onKeyDownUpHandle(I)V

    .line 456
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->postUpdateSequenceAndSuggestionDelay(I)V

    .line 544
    :cond_4
    :goto_3
    return-void

    .line 431
    .end local v11    # "selectedText":I
    :cond_5
    if-eqz v6, :cond_3

    .line 433
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-eqz v15, :cond_6

    const-string v15, ""

    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    if-eqz v14, :cond_6

    invoke-virtual {v14}, Landroid/text/SpannableString;->length()I

    move-result v15

    if-lez v15, :cond_6

    .line 434
    invoke-virtual {v14}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 438
    :goto_4
    if-nez v9, :cond_3

    .line 439
    const-string v9, ""

    goto/16 :goto_2

    .line 436
    :cond_6
    const/4 v15, 0x1

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v6, v15, v0}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v9

    .end local v9    # "lastChar":Ljava/lang/String;
    check-cast v9, Ljava/lang/String;

    .restart local v9    # "lastChar":Ljava/lang/String;
    goto :goto_4

    .line 458
    .restart local v11    # "selectedText":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    const/16 v16, -0x5

    invoke-interface/range {v15 .. v16}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(I)I

    move-result v15

    if-nez v15, :cond_8

    .line 459
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 460
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 461
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/16 v16, 0x0

    invoke-interface/range {v15 .. v16}, Lcom/diotek/ime/framework/common/InputManager;->setIsPendingUpdateCandidateView(Z)V

    .line 462
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->postUpdateSequenceAndSuggestionDelay(I)V

    goto :goto_3

    .line 465
    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->mSwiftKeyKeyLearningManager:Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;

    invoke-virtual {v15}, Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;->deleteLastTouchPoint()V

    .line 466
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->deleteLastJamoInComposing()V

    .line 467
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setComposingText()V

    .line 468
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSuggestionDelay()V

    goto :goto_3

    .line 471
    :cond_9
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v15

    if-lez v15, :cond_a

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v15}, Lcom/diotek/ime/framework/common/InputManager;->isEmptyComposingSpan()Z

    move-result v15

    if-nez v15, :cond_a

    .line 472
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->mSwiftKeyKeyLearningManager:Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;

    invoke-virtual {v15}, Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;->deleteLastTouchPoint()V

    .line 473
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    const/16 v16, -0x5

    invoke-interface/range {v15 .. v16}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(I)I

    .line 474
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 475
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 476
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/16 v16, 0x0

    invoke-interface/range {v15 .. v16}, Lcom/diotek/ime/framework/common/InputManager;->setIsPendingUpdateCandidateView(Z)V

    .line 477
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->postUpdateSequenceAndSuggestionDelay(I)V

    goto/16 :goto_3

    .line 480
    :cond_a
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 481
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v15

    if-gtz v15, :cond_b

    if-lez v11, :cond_c

    .line 482
    :cond_b
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setPredictionWord(Z)V

    .line 484
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getDeleteCount()I

    move-result v15

    const/16 v16, 0xa

    move/from16 v0, v16

    if-le v15, v0, :cond_d

    invoke-static {}, Lcom/diotek/ime/framework/repository/PackageStatus;->getPackageName()Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    move-result-object v15

    sget-object v16, Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;->CHATON_PACKAGE_NAME:Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_d

    .line 486
    if-eqz v6, :cond_e

    .line 487
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getLastWordDividerIndex()I

    move-result v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v6, v15, v0}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 488
    const/16 v15, 0x96

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->postUpdateSequenceAndSuggestionDelay(I)V

    goto/16 :goto_3

    .line 492
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initWordDividerIndexList()V

    .line 493
    const/16 v15, 0x43

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/diotek/ime/framework/input/AbstractInputModule;->onKeyDownUpHandle(I)V

    .line 494
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposingWithoutInit()V

    .line 496
    :cond_e
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->postUpdateSequence(I)V

    .line 497
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSuggestionDelay()V

    goto/16 :goto_3

    .line 501
    :cond_f
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v15

    if-eqz v15, :cond_11

    .line 502
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v15}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isLastActionIsTraceOrPick()Z

    move-result v15

    if-eqz v15, :cond_10

    .line 503
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 504
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initComposingBuffer()V

    .line 505
    const/16 v15, 0x43

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/diotek/ime/framework/input/AbstractInputModule;->onKeyDownUpHandle(I)V

    goto/16 :goto_3

    .line 507
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->deleteLastJamoInComposing()V

    .line 508
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setComposingText()V

    goto/16 :goto_3

    .line 511
    :cond_11
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isAutoCompletitionInput()Z

    move-result v7

    .line 512
    .local v7, "isCompletionOn":Z
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v15}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v8

    .line 513
    .local v8, "isLandscape":Z
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v15}, Lcom/diotek/ime/framework/common/InputManager;->getCompletions()[Landroid/view/inputmethod/CompletionInfo;

    move-result-object v3

    .line 515
    .local v3, "completions":[Landroid/view/inputmethod/CompletionInfo;
    if-eqz v7, :cond_14

    if-eqz v8, :cond_14

    if-eqz v3, :cond_14

    .line 516
    if-eqz v6, :cond_12

    .line 517
    invoke-interface {v6}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 519
    :cond_12
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 520
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getDeleteCount()I

    move-result v15

    const/16 v16, 0x14

    move/from16 v0, v16

    if-le v15, v0, :cond_13

    invoke-static {}, Lcom/diotek/ime/framework/repository/PackageStatus;->getPackageName()Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    move-result-object v15

    sget-object v16, Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;->CHATON_PACKAGE_NAME:Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_13

    .line 522
    if-eqz v6, :cond_4

    .line 523
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getLastWordDividerIndex()I

    move-result v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v6, v15, v0}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto/16 :goto_3

    .line 526
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initWordDividerIndexList()V

    .line 527
    const/16 v15, 0x43

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/diotek/ime/framework/input/AbstractInputModule;->onKeyDownUpHandle(I)V

    goto/16 :goto_3

    .line 530
    :cond_14
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 531
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initComposingBuffer()V

    .line 532
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getDeleteCount()I

    move-result v15

    const/16 v16, 0x14

    move/from16 v0, v16

    if-le v15, v0, :cond_15

    invoke-static {}, Lcom/diotek/ime/framework/repository/PackageStatus;->getPackageName()Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    move-result-object v15

    sget-object v16, Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;->CHATON_PACKAGE_NAME:Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_15

    .line 534
    if-eqz v6, :cond_4

    .line 535
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getLastWordDividerIndex()I

    move-result v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v6, v15, v0}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto/16 :goto_3

    .line 538
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initWordDividerIndexList()V

    .line 539
    const/16 v15, 0x43

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/diotek/ime/framework/input/AbstractInputModule;->onKeyDownUpHandle(I)V

    goto/16 :goto_3
.end method

.method private processForwardDelete()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 368
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 369
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v0, :cond_1

    .line 396
    :cond_0
    :goto_0
    return-void

    .line 373
    :cond_1
    const-string v1, ""

    .line 374
    .local v1, "lastChar":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 375
    const/4 v2, 0x1

    invoke-interface {v0, v2, v4}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .end local v1    # "lastChar":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 376
    .restart local v1    # "lastChar":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 377
    const-string v1, ""

    .line 380
    :cond_2
    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setDeleteCount(Ljava/lang/String;)V

    .line 381
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->resetPredictionWord()V

    .line 383
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getDeleteCount()I

    move-result v2

    const/16 v3, 0xa

    if-le v2, v3, :cond_4

    invoke-static {}, Lcom/diotek/ime/framework/repository/PackageStatus;->getPackageName()Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    move-result-object v2

    sget-object v3, Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;->CHATON_PACKAGE_NAME:Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    if-eq v2, v3, :cond_4

    .line 385
    if-eqz v0, :cond_3

    .line 386
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getFirstWordDividerIndex()I

    move-result v2

    invoke-interface {v0, v4, v2}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 393
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

    .line 394
    const/16 v2, 0x96

    invoke-virtual {p0, v2}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->postUpdateSequenceAndSuggestionDelay(I)V

    goto :goto_0

    .line 389
    :cond_4
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initWordDividerIndexList()V

    .line 390
    const/16 v2, 0x70

    invoke-virtual {p0, v2}, Lcom/diotek/ime/framework/input/AbstractInputModule;->onKeyDownUpHandle(I)V

    goto :goto_1
.end method

.method private processSingleTap(I[I)V
    .locals 13
    .param p1, "keyCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    .line 90
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v4

    .line 91
    .local v4, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v4, :cond_0

    .line 235
    :goto_0
    return-void

    .line 95
    :cond_0
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v1

    .line 96
    .local v1, "beforeComposingLength":I
    move v0, v1

    .line 98
    .local v0, "afterComposingLength":I
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Lcom/diotek/ime/framework/common/InputManager;->setCandidateviewStatus(I)V

    .line 99
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v9}, Lcom/diotek/ime/framework/input/AbstractInputModule;->stopTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;)V

    .line 100
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v9}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v5

    .line 101
    .local v5, "inputRange":I
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v9

    if-eqz v9, :cond_1

    if-nez v5, :cond_1

    .line 102
    invoke-static {p1}, Lcom/diotek/ime/framework/util/Utils;->getHangleShiftedChar(I)I

    move-result p1

    .line 105
    :cond_1
    iget-boolean v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-eqz v9, :cond_2

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v9

    const/16 v10, 0x40

    if-lt v9, v10, :cond_2

    .line 107
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/engine/InputEngineManager;->breakContext()V

    .line 108
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 109
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initComposingBuffer()V

    .line 110
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    .line 113
    :cond_2
    invoke-interface {v4}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 114
    iget-boolean v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-nez v9, :cond_3

    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->isEnableTraceInPassword()Z

    move-result v9

    if-eqz v9, :cond_7

    :cond_3
    const/4 v6, 0x1

    .line 115
    .local v6, "isEnableTraceInput":Z
    :goto_1
    if-eqz v6, :cond_c

    iget-boolean v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsTraceOn:Z

    if-eqz v9, :cond_c

    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    if-eqz v9, :cond_c

    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v9}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v9

    const/4 v10, 0x2

    if-le v9, v10, :cond_c

    .line 116
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-interface {v9, v10, v11, v12}, Lcom/diotek/ime/framework/engine/InputEngineManager;->isAutoAcceptBeforeTrace([Landroid/graphics/PointF;I[Z)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 117
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/diotek/ime/framework/input/AbstractInputModule;->selectWordInList(I)V

    .line 118
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 119
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initComposingBuffer()V

    .line 120
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v9}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isAutoSpaceOn()Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v9}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->isSymbolAndSpace()Z

    move-result v9

    if-nez v9, :cond_4

    .line 121
    const/16 v9, 0x20

    invoke-static {v9}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(C)V

    .line 122
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 125
    :cond_4
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v9}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->isSymbolAndSpace()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 126
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 127
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v9}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getSymbolKeyCode()I

    move-result v8

    .line 128
    .local v8, "symbol":I
    const/16 v9, -0xff

    if-eq v8, v9, :cond_5

    .line 129
    int-to-char v9, v8

    invoke-static {v9}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    .line 131
    :cond_5
    const/16 v9, 0x20

    invoke-static {v9}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    .line 132
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v9

    if-nez v9, :cond_6

    .line 134
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 135
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->updateShiftState()V

    .line 138
    :cond_6
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v9}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->clearTraceInfo()V

    .line 139
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->resetPredictionWord()V

    .line 140
    invoke-interface {v4}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 141
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->cancelPreviewTrace()V

    goto/16 :goto_0

    .line 114
    .end local v6    # "isEnableTraceInput":Z
    .end local v8    # "symbol":I
    :cond_7
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 144
    .restart local v6    # "isEnableTraceInput":Z
    :cond_8
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Lcom/diotek/ime/framework/common/InputManager;->setIsPendingUpdateCandidateView(Z)V

    .line 145
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

    if-nez v9, :cond_9

    .line 147
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v9}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->clearTraceInfo()V

    .line 148
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->resetPredictionWord()V

    .line 149
    invoke-interface {v4}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 150
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSequence(Ljava/lang/StringBuilder;)V

    .line 151
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSuggestionDelay()V

    .line 152
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->cancelPreviewTrace()V

    goto/16 :goto_0

    .line 155
    :cond_9
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v9}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->clearTraceInfo()V

    .line 157
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getCharSequence(Ljava/lang/StringBuilder;I)I

    .line 158
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 159
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v9}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->disableSetUpAutoSpace()V

    .line 160
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->resetPredictionWord()V

    .line 210
    :cond_a
    :goto_2
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v0

    .line 211
    iget-boolean v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-nez v9, :cond_13

    .line 212
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_12

    .line 213
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->getLastChar()C

    move-result v3

    .line 214
    .local v3, "composing":C
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-static {v9}, Lcom/diotek/ime/framework/input/ComposingTextManager;->setLength(I)V

    .line 215
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/diotek/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->commitText(Ljava/lang/CharSequence;)V

    .line 216
    invoke-static {v3}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(C)V

    .line 217
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setComposingText()V

    .line 231
    .end local v3    # "composing":C
    :goto_3
    if-eq v0, v1, :cond_b

    .line 232
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v10, "SENT_TEXT_BY_INPUTCONNECTION"

    const/4 v11, 0x1

    invoke-interface {v9, v10, v11}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    .line 234
    :cond_b
    invoke-interface {v4}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto/16 :goto_0

    .line 163
    :cond_c
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->cancelPreviewTrace()V

    .line 164
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v9

    if-eqz v9, :cond_d

    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v9}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAtText()Z

    move-result v9

    if-eqz v9, :cond_d

    .line 165
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/diotek/ime/framework/input/AbstractInputModule;->selectWordInList(I)V

    .line 166
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 167
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initComposingBuffer()V

    .line 168
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v9}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isAutoSpaceOn()Z

    move-result v9

    if-eqz v9, :cond_d

    .line 169
    const/16 v9, 0x20

    invoke-static {v9}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(C)V

    .line 170
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 171
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v9

    if-nez v9, :cond_d

    .line 172
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v9

    if-eqz v9, :cond_d

    .line 173
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->updateShiftState()V

    .line 178
    :cond_d
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_e

    .line 179
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/engine/InputEngineManager;->breakContext()V

    .line 181
    :cond_e
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->appendJamoInComposing(I)V

    .line 182
    iget-boolean v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-eqz v9, :cond_10

    .line 183
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 184
    .local v2, "builder":Ljava/lang/StringBuilder;
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lcom/diotek/ime/framework/engine/InputEngineManager;->splitHangul(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputStatus;->isKeyLongpressed()Z

    move-result v9

    if-nez v9, :cond_f

    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v9}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v9

    const/4 v10, 0x7

    if-ne v9, v10, :cond_11

    .line 187
    :cond_f
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->mSwiftKeyKeyLearningManager:Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;

    int-to-char v10, p1

    invoke-virtual {v9, v2, v10}, Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;->addKeyCode(Ljava/lang/StringBuilder;C)V

    .line 188
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    const/4 v10, 0x0

    invoke-interface {v9, p1, v10}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(ILandroid/graphics/PointF;)I

    move-result v9

    if-gez v9, :cond_10

    .line 189
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v9

    if-eqz v9, :cond_10

    .line 190
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->deleteLastJamoInComposing()V

    .line 205
    .end local v2    # "builder":Ljava/lang/StringBuilder;
    :cond_10
    :goto_4
    iget-boolean v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-nez v9, :cond_a

    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->getSwiftkeyVersion()I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_a

    .line 206
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTouchPoint(I)Landroid/graphics/PointF;

    move-result-object v10

    invoke-interface {v9, p1, v10}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKeyWithoutBuild(ILandroid/graphics/PointF;)I

    goto/16 :goto_2

    .line 194
    .restart local v2    # "builder":Ljava/lang/StringBuilder;
    :cond_11
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    if-eqz v9, :cond_10

    .line 195
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->mSwiftKeyKeyLearningManager:Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;

    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTouchPoint(I)Landroid/graphics/PointF;

    move-result-object v10

    invoke-virtual {v9, v2, v10}, Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;->addTouchPoint(Ljava/lang/StringBuilder;Landroid/graphics/PointF;)V

    .line 196
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTouchPoint(I)Landroid/graphics/PointF;

    move-result-object v10

    invoke-interface {v9, p1, v10}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(ILandroid/graphics/PointF;)I

    move-result v9

    if-gez v9, :cond_10

    .line 197
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v9

    if-eqz v9, :cond_10

    .line 198
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->deleteLastJamoInComposing()V

    goto :goto_4

    .line 219
    .end local v2    # "builder":Ljava/lang/StringBuilder;
    :cond_12
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setComposingText()V

    goto/16 :goto_3

    .line 222
    :cond_13
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v9

    if-eqz v9, :cond_14

    .line 223
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->getLastChar()C

    move-result v7

    .line 224
    .local v7, "lastCharater":C
    invoke-static {v7}, Ljava/lang/Character;->isLetter(C)Z

    move-result v9

    if-nez v9, :cond_14

    invoke-static {v7}, Ljava/lang/Character;->isDigit(C)Z

    move-result v9

    if-nez v9, :cond_14

    .line 225
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 228
    .end local v7    # "lastCharater":C
    :cond_14
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setComposingText()V

    .line 229
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSuggestionDelay()V

    goto/16 :goto_3
.end method

.method private processWordSeparator(I[I)V
    .locals 11
    .param p1, "keyCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    const/16 v10, 0x20

    const/4 v9, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 292
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    .line 293
    .local v2, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v2, :cond_1

    .line 365
    :cond_0
    :goto_0
    return-void

    .line 297
    :cond_1
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    .line 298
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v7, v8, v6}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;Z)I

    .line 299
    new-array v0, v5, [I

    .line 300
    .local v0, "activeIndex":[I
    int-to-char v7, p1

    invoke-virtual {p0, v7}, Lcom/diotek/ime/framework/input/AbstractInputModule;->isEnableAutoCorrection(C)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v7

    if-lez v7, :cond_4

    move v3, v5

    .line 301
    .local v3, "isEnableAutoCorrection":Z
    :goto_1
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v7, v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getActiveIndex([I)I

    .line 302
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

    .line 303
    if-eqz v3, :cond_5

    .line 304
    invoke-virtual {p0, v2, v0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->doAutoCorrection(Landroid/view/inputmethod/InputConnection;[I)V

    .line 317
    :cond_2
    :goto_2
    const/16 v7, 0xa

    if-ne p1, v7, :cond_7

    .line 318
    invoke-virtual {p0, v5}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 319
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->sendEnterKeyHandle()V

    .line 320
    iget-boolean v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-eqz v5, :cond_3

    .line 321
    invoke-virtual {p0, v6}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->postUpdateSequenceAndSuggestionDelay(I)V

    .line 324
    :cond_3
    iget-boolean v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getSwiftkeyVersion()I

    move-result v5

    if-ne v5, v9, :cond_0

    .line 325
    invoke-virtual {p0, v6}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->postUpdateSequenceAndSuggestionDelay(I)V

    goto :goto_0

    .end local v3    # "isEnableAutoCorrection":Z
    :cond_4
    move v3, v6

    .line 300
    goto :goto_1

    .line 306
    .restart local v3    # "isEnableAutoCorrection":Z
    :cond_5
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v6, v8}, Lcom/diotek/ime/framework/engine/InputEngineManager;->wordSelected(ILjava/lang/CharSequence;)I

    .line 307
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 308
    .local v1, "builder":Ljava/lang/StringBuilder;
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/diotek/ime/framework/engine/InputEngineManager;->splitHangul(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_6

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->mSwiftKeyKeyLearningManager:Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;

    invoke-virtual {v7, v1}, Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;->needToKeyLearning(Ljava/lang/StringBuilder;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 310
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->mSwiftKeyKeyLearningManager:Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;

    invoke-virtual {v8}, Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;->getOriginalTouchKeys()Ljava/util/LinkedList;

    move-result-object v8

    invoke-interface {v7, v8, v1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->updateKeyPressModeling(Ljava/util/LinkedList;Ljava/lang/StringBuilder;)V

    .line 312
    :cond_6
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->mSwiftKeyKeyLearningManager:Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;->clearTouchPoints()V

    .line 313
    invoke-virtual {p0, v5}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    goto :goto_2

    .line 329
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    :cond_7
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->isInMultiTapInput()Z

    move-result v4

    .line 330
    .local v4, "isInMultiTap":Z
    if-eqz v4, :cond_8

    .line 331
    invoke-virtual {p0, p1, p2}, Lcom/diotek/ime/framework/input/AbstractInputModule;->processMultiTapSymbolicKey(I[I)V

    goto/16 :goto_0

    .line 334
    :cond_8
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v7, p1}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAtSymbol(I)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 335
    invoke-virtual {p0, v5}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 336
    invoke-static {v10}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(C)V

    .line 337
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 339
    :cond_9
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposingWithoutInit()V

    .line 340
    int-to-char v5, p1

    invoke-static {v5}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(C)V

    .line 341
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v5, p1}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAfterPunctuation(I)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 346
    invoke-static {v10}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    .line 347
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 352
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->disableSetUpAutoSpace()V

    .line 357
    :goto_3
    iget-boolean v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-eqz v5, :cond_a

    .line 358
    invoke-virtual {p0, v6}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->postUpdateSequenceAndSuggestionDelay(I)V

    .line 361
    :cond_a
    iget-boolean v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getSwiftkeyVersion()I

    move-result v5

    if-ne v5, v9, :cond_0

    .line 362
    invoke-virtual {p0, v6}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->postUpdateSequenceAndSuggestionDelay(I)V

    goto/16 :goto_0

    .line 354
    :cond_b
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method


# virtual methods
.method protected commitText(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 553
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 554
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_1

    .line 555
    sget-boolean v1, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 556
    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<SwiftkeyQwertyKoreanInputModule> commitText-(1) - Utils.getUsedTime() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/diotek/ime/framework/util/Utils;->getUsedTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    :cond_0
    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 559
    sget-boolean v1, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 560
    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<SwiftkeyQwertyKoreanInputModule> commitText-(1) - Utils.getUsedTime() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/diotek/ime/framework/util/Utils;->getUsedTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    :cond_1
    return-void
.end method

.method public onCharacterKey(I[I)V
    .locals 8
    .param p1, "keyCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    const/16 v7, 0x20

    const/4 v6, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 41
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v0

    .line 42
    .local v0, "inputRange":I
    invoke-virtual {p0, v3}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setPredictionWord(Z)V

    .line 43
    iget-boolean v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsTraceOn:Z

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v5

    if-le v5, v6, :cond_5

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->isSymbolAndSpace()Z

    move-result v5

    if-nez v5, :cond_5

    move v2, v3

    .line 44
    .local v2, "isTraceInput":Z
    :goto_0
    iget-boolean v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->isEnableTraceInPassword()Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_0
    move v1, v3

    .line 45
    .local v1, "isEnableTraceInput":Z
    :goto_1
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v3, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->isTextCharacter(I)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    if-eqz v1, :cond_7

    iget-boolean v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsTraceOn:Z

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v3

    if-le v3, v6, :cond_7

    .line 48
    :cond_2
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->isSymbolAndSpace()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v3, p1, v2}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpace(IZ)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 51
    invoke-static {v7}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(C)V

    .line 52
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v3

    if-nez v3, :cond_3

    .line 54
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 55
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->updateShiftState()V

    .line 59
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->processSingleTap(I[I)V

    .line 78
    :goto_2
    iput p1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mLastKeyCode:I

    .line 79
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->setVerbatimToEngine()V

    .line 80
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v3, p1, v2}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->setUpAutoSpace(IZ)V

    .line 81
    iput-boolean v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsTraceInput:Z

    .line 83
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getHanjaStatus()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 84
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3, v4}, Lcom/diotek/ime/framework/common/InputManager;->setHanjaStaus(Z)V

    .line 85
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3, v4}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    .line 87
    :cond_4
    return-void

    .end local v1    # "isEnableTraceInput":Z
    .end local v2    # "isTraceInput":Z
    :cond_5
    move v2, v4

    .line 43
    goto/16 :goto_0

    .restart local v2    # "isTraceInput":Z
    :cond_6
    move v1, v4

    .line 44
    goto :goto_1

    .line 61
    .restart local v1    # "isEnableTraceInput":Z
    :cond_7
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v3, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->isNumericCharacter(I)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-boolean v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsKorMode:Z

    if-eqz v3, :cond_8

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isDigitEditor()Z

    move-result v3

    if-nez v3, :cond_a

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isPhoneNumberInputClass()Z

    move-result v3

    if-nez v3, :cond_a

    :cond_8
    iget-boolean v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-eqz v3, :cond_a

    .line 64
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAtNumeric()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 66
    invoke-static {v7}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(C)V

    .line 67
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 69
    :cond_9
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->processSingleTap(I[I)V

    .line 76
    :goto_3
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->autoPeriod(I)V

    goto :goto_2

    .line 71
    :cond_a
    invoke-virtual {p0, p1, p2}, Lcom/diotek/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->processSymbolicKey(I[I)V

    goto :goto_3
.end method

.method public onHwrPanelLongPressed(ILjava/lang/String;)V
    .locals 0
    .param p1, "selectedArrayIndex"    # I
    .param p2, "resultString"    # Ljava/lang/String;

    .prologue
    .line 550
    return-void
.end method

.method public pickSuggestionManually(ILjava/lang/CharSequence;)V
    .locals 11
    .param p1, "selectedIndex"    # I
    .param p2, "suggestion"    # Ljava/lang/CharSequence;

    .prologue
    .line 567
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v4

    .line 568
    .local v4, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v4, :cond_0

    .line 569
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isAutoCompletitionInput()Z

    move-result v5

    .line 570
    .local v5, "isCompletionOn":Z
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v6

    .line 571
    .local v6, "isLandscape":Z
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->getCompletions()[Landroid/view/inputmethod/CompletionInfo;

    move-result-object v2

    .line 573
    .local v2, "completions":[Landroid/view/inputmethod/CompletionInfo;
    if-eqz v5, :cond_1

    if-eqz v6, :cond_1

    if-eqz v2, :cond_1

    .line 574
    if-ltz p1, :cond_0

    array-length v9, v2

    if-ge p1, v9, :cond_0

    .line 575
    aget-object v1, v2, p1

    .line 576
    .local v1, "completion":Landroid/view/inputmethod/CompletionInfo;
    invoke-interface {v4, v1}, Landroid/view/inputmethod/InputConnection;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z

    .line 670
    .end local v1    # "completion":Landroid/view/inputmethod/CompletionInfo;
    .end local v2    # "completions":[Landroid/view/inputmethod/CompletionInfo;
    .end local v5    # "isCompletionOn":Z
    .end local v6    # "isLandscape":Z
    :cond_0
    :goto_0
    return-void

    .line 579
    .restart local v2    # "completions":[Landroid/view/inputmethod/CompletionInfo;
    .restart local v5    # "isCompletionOn":Z
    .restart local v6    # "isLandscape":Z
    :cond_1
    invoke-interface {v4}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 580
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->getCandidateviewStatus()I

    move-result v0

    .line 581
    .local v0, "candidateStatus":I
    const/4 v8, 0x0

    .line 582
    .local v8, "isPickNextWordPrediction":Z
    const/4 v7, 0x0

    .line 583
    .local v7, "isNeedAutoSpace":Z
    const/4 v3, 0x0

    .line 585
    .local v3, "deletedTextLeft":I
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_9

    iget v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mStateCandidate:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_9

    if-nez v0, :cond_9

    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->getHanjaStatus()Z

    move-result v9

    if-nez v9, :cond_9

    .line 589
    iget v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosPrevText:I

    iget v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosNextText:I

    invoke-interface {v4, v9, v10}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 590
    iget v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosPrevText:I

    .line 599
    :cond_2
    :goto_1
    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-eq v3, v9, :cond_3

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v9

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-eq v9, v10, :cond_3

    .line 602
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setPredictionWord(Z)V

    .line 605
    :cond_3
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->getHanjaStatus()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 606
    invoke-interface {v4}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 607
    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-interface {v4, v9, v10}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 610
    :cond_4
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 611
    if-eqz v7, :cond_5

    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->getHanjaStatus()Z

    move-result v9

    if-nez v9, :cond_5

    .line 612
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->isTalkbackEnabled()Z

    move-result v9

    if-eqz v9, :cond_a

    const-string v9, ".,;!?\u061b\u060c\u061f"

    const/4 v10, 0x0

    invoke-interface {p2, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_a

    .line 614
    const-string v9, " "

    const/4 v10, 0x1

    invoke-interface {v4, v9, v10}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 619
    :cond_5
    :goto_2
    invoke-static {p2}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    .line 620
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->replaceSpaceToSymbol(Ljava/lang/StringBuilder;)V

    .line 621
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setComposingText()V

    .line 623
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->isEnableAutoCorrection()Z

    move-result v9

    if-eqz v9, :cond_10

    if-nez v8, :cond_10

    .line 624
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getIndexOfInputBuffer()I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_c

    .line 625
    const/4 v9, 0x1

    if-eq p1, v9, :cond_b

    .line 626
    const/4 v9, 0x1

    if-le p1, v9, :cond_6

    add-int/lit8 p1, p1, -0x1

    .line 627
    :cond_6
    iput p1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPickSuggestionIndex:I

    .line 628
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->selectWordInList(I)V

    .line 648
    :goto_3
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    .line 649
    if-eqz p2, :cond_11

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-lez v9, :cond_11

    const-string v9, ".,;!?\u061b\u060c\u061f"

    const/4 v10, 0x0

    invoke-interface {p2, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_11

    .line 651
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v9}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->reset()V

    .line 658
    :cond_7
    :goto_4
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->getHanjaStatus()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 659
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Lcom/diotek/ime/framework/common/InputManager;->setHanjaStaus(Z)V

    .line 662
    :cond_8
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 663
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/diotek/ime/framework/input/AbstractInputModule;->doNextWordPrediction(Z)V

    .line 664
    invoke-interface {v4}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 665
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->setVerbatimToEngine()V

    .line 666
    const/4 v9, 0x0

    iput v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosPrevText:I

    .line 667
    const/4 v9, 0x0

    iput v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosNextText:I

    goto/16 :goto_0

    .line 591
    :cond_9
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_2

    iget v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mStateCandidate:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_2

    if-nez v0, :cond_2

    .line 594
    const/4 v8, 0x1

    .line 595
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v9}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAtNextWordPrediction()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 596
    const/4 v7, 0x1

    goto/16 :goto_1

    .line 616
    :cond_a
    const/16 v9, 0x20

    invoke-static {v9}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    goto/16 :goto_2

    .line 630
    :cond_b
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    const/4 v10, -0x1

    invoke-interface {v9, v10, p2}, Lcom/diotek/ime/framework/engine/InputEngineManager;->wordSelected(ILjava/lang/CharSequence;)I

    goto :goto_3

    .line 632
    :cond_c
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getIndexOfInputBuffer()I

    move-result v9

    if-lez v9, :cond_f

    .line 633
    const/4 v9, 0x1

    if-ne p1, v9, :cond_e

    .line 634
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getIndexOfInputBuffer()I

    move-result p1

    .line 638
    :cond_d
    :goto_5
    iput p1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPickSuggestionIndex:I

    .line 639
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->selectWordInList(I)V

    goto :goto_3

    .line 635
    :cond_e
    const/4 v9, 0x1

    if-le p1, v9, :cond_d

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getIndexOfInputBuffer()I

    move-result v9

    if-gt p1, v9, :cond_d

    .line 636
    add-int/lit8 p1, p1, -0x1

    goto :goto_5

    .line 641
    :cond_f
    iput p1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPickSuggestionIndex:I

    .line 642
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->selectWordInList(I)V

    goto/16 :goto_3

    .line 645
    :cond_10
    iput p1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPickSuggestionIndex:I

    .line 646
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->selectWordInList(I)V

    goto/16 :goto_3

    .line 653
    :cond_11
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->isHWKeyboardConnected()Z

    move-result v9

    if-nez v9, :cond_7

    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->getHanjaStatus()Z

    move-result v9

    if-nez v9, :cond_7

    .line 654
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v9}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->setUpByPickSuggestion()V

    goto/16 :goto_4
.end method

.method protected processSymbolicKey(I[I)V
    .locals 22
    .param p1, "keyCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    .line 238
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->cancelTrace()Z

    .line 239
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    .line 240
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-interface {v1, v4, v5}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;Z)I

    .line 242
    const-string v1, " .,;:!?\n()[]*&@{}/<>_-+=|\'\u061b\u060c\u061f\""

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    .line 243
    invoke-direct/range {p0 .. p2}, Lcom/diotek/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->processWordSeparator(I[I)V

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 245
    :cond_1
    const/16 v1, 0xa

    move/from16 v0, p1

    if-eq v0, v1, :cond_2

    const/16 v1, 0x20

    move/from16 v0, p1

    if-ne v0, v1, :cond_3

    .line 247
    :cond_2
    invoke-direct/range {p0 .. p2}, Lcom/diotek/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->processWordSeparator(I[I)V

    goto :goto_0

    .line 249
    :cond_3
    const/4 v1, -0x5

    move/from16 v0, p1

    if-ne v0, v1, :cond_4

    .line 250
    invoke-direct/range {p0 .. p0}, Lcom/diotek/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->processBackSpaceKey()V

    goto :goto_0

    .line 252
    :cond_4
    const/16 v1, -0x3eb

    move/from16 v0, p1

    if-ne v0, v1, :cond_5

    .line 253
    invoke-direct/range {p0 .. p0}, Lcom/diotek/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->processForwardDelete()V

    goto :goto_0

    .line 255
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 256
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSuggestionDelay()V

    .line 259
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isInMultiTapInput()Z

    move-result v21

    .line 260
    .local v21, "isInMultiTap":Z
    if-eqz v21, :cond_7

    .line 261
    invoke-virtual/range {p0 .. p2}, Lcom/diotek/ime/framework/input/AbstractInputModule;->processMultiTapSymbolicKey(I[I)V

    goto :goto_0

    .line 264
    :cond_7
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 265
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initComposingBuffer()V

    .line 266
    move/from16 v0, p1

    int-to-char v1, v0

    invoke-static {v1}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(C)V

    .line 267
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

    .line 270
    :cond_8
    add-int/lit8 v1, p1, -0x30

    add-int/lit8 v7, v1, 0x7

    .line 271
    .local v7, "code":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v20

    .line 272
    .local v20, "ic":Landroid/view/inputmethod/InputConnection;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 273
    .local v2, "eventTime":J
    if-eqz v20, :cond_0

    .line 274
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

    .line 277
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

    .line 283
    .end local v2    # "eventTime":J
    .end local v7    # "code":I
    .end local v20    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_9
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 285
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-eqz v1, :cond_0

    .line 286
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Lcom/diotek/ime/framework/common/InputManager;->setIsPendingUpdateCandidateView(Z)V

    .line 287
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->postUpdateSequenceAndSuggestionDelay(I)V

    goto/16 :goto_0
.end method

.method public release()V
    .locals 0

    .prologue
    .line 37
    return-void
.end method

.method public updateSuggestion()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 679
    iget-boolean v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isDeviceHasHardwareKeypad()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isHWKeyboardOpen()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isSmartPrediction()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 682
    :cond_1
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getHanjaStatus()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 683
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4, v8}, Lcom/diotek/ime/framework/common/InputManager;->setHanjaStaus(Z)V

    .line 684
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4, v8}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    .line 712
    :cond_2
    :goto_0
    return-void

    .line 688
    :cond_3
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 689
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v4, v5}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    .line 690
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->isEnableAutoCorrection()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-boolean v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsTraceInput:Z

    if-nez v4, :cond_5

    .line 691
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 692
    .local v1, "currentText":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v4, v1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getCurrentInputBuffer(Ljava/lang/StringBuilder;)V

    .line 693
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_4

    .line 695
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/diotek/ime/framework/engine/InputEngineManager;->joinHangul(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 696
    .end local v1    # "currentText":Ljava/lang/StringBuilder;
    .local v2, "currentText":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {p0, v4, v2}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->addCurrentTextToCandidate(Ljava/util/ArrayList;Ljava/lang/StringBuilder;)V

    move-object v1, v2

    .line 698
    .end local v2    # "currentText":Ljava/lang/StringBuilder;
    .restart local v1    # "currentText":Ljava/lang/StringBuilder;
    :cond_4
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isEnableAutoCorrectionDA()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 699
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v3

    .line 700
    .local v3, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v3, :cond_5

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_5

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasKeyAT()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasWWWdot()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasKeydot()Z

    move-result v4

    if-nez v4, :cond_5

    .line 702
    new-instance v0, Landroid/text/SpannableString;

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 703
    .local v0, "SpannableText":Landroid/text/SpannableString;
    new-instance v4, Landroid/text/style/SuggestionSpan;

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v5

    new-array v6, v9, [Ljava/lang/String;

    const-string v7, ""

    aput-object v7, v6, v8

    const/4 v7, 0x4

    invoke-direct {v4, v5, v6, v7}, Landroid/text/style/SuggestionSpan;-><init>(Landroid/content/Context;[Ljava/lang/String;I)V

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v5

    const/16 v6, 0x11

    invoke-virtual {v0, v4, v8, v5, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 705
    invoke-interface {v3, v0, v9}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 709
    .end local v0    # "SpannableText":Landroid/text/SpannableString;
    .end local v1    # "currentText":Ljava/lang/StringBuilder;
    .end local v3    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_5
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4, v8}, Lcom/diotek/ime/framework/common/InputManager;->setHanjaStaus(Z)V

    .line 710
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v4, v8}, Lcom/diotek/ime/framework/engine/InputEngineManager;->setSuggestionActiveIndex(I)V

    .line 711
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v4, v5}, Lcom/diotek/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    goto/16 :goto_0
.end method

.method public updateVOHWRSuggestion()V
    .locals 0

    .prologue
    .line 674
    return-void
.end method
