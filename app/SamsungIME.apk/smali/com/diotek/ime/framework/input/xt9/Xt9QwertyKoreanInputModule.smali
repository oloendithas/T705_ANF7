.class public Lcom/diotek/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;
.super Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;
.source "Xt9QwertyKoreanInputModule.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;-><init>()V

    .line 23
    return-void
.end method

.method private processBackSpaceKey()V
    .locals 18

    .prologue
    .line 356
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v15}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v5

    .line 357
    .local v5, "ic":Landroid/view/inputmethod/InputConnection;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->stopTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;)V

    .line 359
    const-string v8, ""

    .line 360
    .local v8, "lastChar":Ljava/lang/String;
    const-string v10, ""

    .line 361
    .local v10, "nextChar":Ljava/lang/String;
    if-eqz v5, :cond_4

    .line 365
    const/4 v14, 0x0

    .line 366
    .local v14, "ss":Landroid/text/SpannableString;
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mIsPredictionOn:Z

    if-eqz v15, :cond_9

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v15

    if-eqz v15, :cond_9

    .line 368
    const v15, 0x7fffffff

    const/16 v16, 0x1

    :try_start_0
    move/from16 v0, v16

    invoke-interface {v5, v15, v0}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v15

    move-object v0, v15

    check-cast v0, Landroid/text/SpannableString;

    move-object v14, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 372
    :goto_0
    if-eqz v14, :cond_1

    .line 373
    const/4 v15, 0x0

    invoke-virtual {v14}, Landroid/text/SpannableString;->length()I

    move-result v16

    const-class v17, Ljava/lang/Object;

    invoke-virtual/range {v14 .. v17}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v12

    .line 374
    .local v12, "sp":[Ljava/lang/Object;
    move-object v1, v12

    .local v1, "arr$":[Ljava/lang/Object;
    array-length v9, v1

    .local v9, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v9, :cond_1

    aget-object v13, v1, v4

    .line 375
    .local v13, "span":Ljava/lang/Object;
    instance-of v15, v13, Landroid/text/style/UnderlineSpan;

    if-eqz v15, :cond_0

    invoke-virtual {v14, v13}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v15

    invoke-virtual {v14}, Landroid/text/SpannableString;->length()I

    move-result v16

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    .line 376
    invoke-virtual {v14, v13}, Landroid/text/SpannableString;->getSpanStart(Ljava/lang/Object;)I

    move-result v15

    invoke-virtual {v14, v13}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v16

    move/from16 v0, v16

    invoke-interface {v5, v15, v0}, Landroid/view/inputmethod/InputConnection;->setComposingRegion(II)Z

    .line 374
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 369
    .end local v1    # "arr$":[Ljava/lang/Object;
    .end local v4    # "i$":I
    .end local v9    # "len$":I
    .end local v12    # "sp":[Ljava/lang/Object;
    .end local v13    # "span":Ljava/lang/Object;
    :catch_0
    move-exception v3

    .line 370
    .local v3, "e":Ljava/lang/ClassCastException;
    const/4 v15, 0x1

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v5, v15, v0}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v8

    .end local v8    # "lastChar":Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .restart local v8    # "lastChar":Ljava/lang/String;
    goto :goto_0

    .line 380
    .end local v3    # "e":Ljava/lang/ClassCastException;
    :cond_1
    const-string v15, ""

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    if-eqz v14, :cond_2

    invoke-virtual {v14}, Landroid/text/SpannableString;->length()I

    move-result v15

    if-lez v15, :cond_2

    .line 381
    invoke-virtual {v14}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 387
    :cond_2
    :goto_2
    const/4 v15, 0x1

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v5, v15, v0}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v10

    .end local v10    # "nextChar":Ljava/lang/String;
    check-cast v10, Ljava/lang/String;

    .line 388
    .restart local v10    # "nextChar":Ljava/lang/String;
    if-nez v8, :cond_3

    .line 389
    const-string v8, ""

    .line 391
    :cond_3
    if-nez v10, :cond_4

    .line 392
    const-string v10, ""

    .line 396
    .end local v14    # "ss":Landroid/text/SpannableString;
    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->setDeleteCount(Ljava/lang/String;)V

    .line 398
    const-string v11, ""

    .line 399
    .local v11, "selectedText":Ljava/lang/CharSequence;
    if-eqz v5, :cond_5

    .line 400
    const/4 v15, 0x0

    invoke-interface {v5, v15}, Landroid/view/inputmethod/InputConnection;->getSelectedText(I)Ljava/lang/CharSequence;

    move-result-object v11

    .line 403
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v15}, Lcom/diotek/ime/framework/engine/InputEngineManager;->hasInputSequence()Z

    move-result v15

    if-eqz v15, :cond_c

    move-object/from16 v0, p0

    iget v15, v0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mStateCandidate:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_c

    .line 405
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v15

    if-eqz v15, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->isBeforeTraceInput()Z

    move-result v15

    if-nez v15, :cond_b

    .line 406
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    const/16 v16, -0x5

    invoke-interface/range {v15 .. v16}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(I)I

    move-result v15

    if-eqz v15, :cond_6

    if-eqz v11, :cond_a

    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v15

    if-lez v15, :cond_a

    .line 408
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mIsPredictionOn:Z

    if-eqz v15, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->isRecapture()Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-le v15, v0, :cond_7

    .line 409
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->finishComposing(Z)V

    .line 410
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->initComposingBuffer()V

    .line 411
    const/4 v15, -0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->processReCaptureForXT9(I)V

    .line 412
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    const/16 v16, -0x5

    invoke-interface/range {v15 .. v16}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(I)I

    .line 413
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getExactCharSequence(Ljava/lang/StringBuilder;)I

    .line 419
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getExactCharSequence(Ljava/lang/StringBuilder;)I

    .line 420
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->setComposingText()V

    .line 421
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/16 v16, 0x19

    invoke-interface/range {v15 .. v16}, Lcom/diotek/ime/framework/common/InputManager;->buildSuggestions(I)V

    .line 494
    :cond_8
    :goto_3
    return-void

    .line 384
    .end local v11    # "selectedText":Ljava/lang/CharSequence;
    .restart local v14    # "ss":Landroid/text/SpannableString;
    :cond_9
    const/4 v15, 0x1

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v5, v15, v0}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v8

    .end local v8    # "lastChar":Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .restart local v8    # "lastChar":Ljava/lang/String;
    goto/16 :goto_2

    .line 423
    .end local v14    # "ss":Landroid/text/SpannableString;
    .restart local v11    # "selectedText":Ljava/lang/CharSequence;
    :cond_a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getExactCharSequence(Ljava/lang/StringBuilder;)I

    .line 424
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->setComposingText()V

    .line 425
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/16 v16, 0x19

    invoke-interface/range {v15 .. v16}, Lcom/diotek/ime/framework/common/InputManager;->buildSuggestions(I)V

    goto :goto_3

    .line 428
    :cond_b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    const/16 v16, -0x5

    invoke-interface/range {v15 .. v16}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(I)I

    .line 429
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v15}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    .line 430
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 431
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 432
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/16 v16, 0x19

    invoke-interface/range {v15 .. v16}, Lcom/diotek/ime/framework/common/InputManager;->buildSuggestions(I)V

    goto :goto_3

    .line 435
    :cond_c
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v15

    if-eqz v15, :cond_e

    .line 436
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v15}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isLastActionIsTraceOrPick()Z

    move-result v15

    if-eqz v15, :cond_d

    .line 437
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->finishComposing(Z)V

    .line 438
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->initComposingBuffer()V

    .line 439
    const/16 v15, 0x43

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->onKeyDownUpHandle(I)V

    goto :goto_3

    .line 441
    :cond_d
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    const/16 v16, -0x5

    invoke-interface/range {v15 .. v16}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(I)I

    .line 442
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v15}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    .line 443
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 444
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 445
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/16 v16, 0x19

    invoke-interface/range {v15 .. v16}, Lcom/diotek/ime/framework/common/InputManager;->buildSuggestions(I)V

    goto/16 :goto_3

    .line 448
    :cond_e
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isAutoCompletitionInput()Z

    move-result v6

    .line 449
    .local v6, "isCompletionOn":Z
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v15}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v7

    .line 450
    .local v7, "isLandscape":Z
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v15}, Lcom/diotek/ime/framework/common/InputManager;->getCompletions()[Landroid/view/inputmethod/CompletionInfo;

    move-result-object v2

    .line 452
    .local v2, "completions":[Landroid/view/inputmethod/CompletionInfo;
    if-eqz v6, :cond_11

    if-eqz v7, :cond_11

    if-eqz v2, :cond_11

    .line 453
    if-eqz v5, :cond_f

    .line 454
    invoke-interface {v5}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 456
    :cond_f
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 457
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->getDeleteCount()I

    move-result v15

    const/16 v16, 0x14

    move/from16 v0, v16

    if-le v15, v0, :cond_10

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v15}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentPackageName()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_10

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v15}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentPackageName()Ljava/lang/String;

    move-result-object v15

    const-string v16, "com.sec.chaton"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_10

    .line 460
    if-eqz v5, :cond_8

    .line 461
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->getLastWordDividerIndex()I

    move-result v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v5, v15, v0}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto/16 :goto_3

    .line 464
    :cond_10
    const/16 v15, 0x43

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->onKeyDownUpHandle(I)V

    goto/16 :goto_3

    .line 467
    :cond_11
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v15

    if-eqz v15, :cond_12

    .line 468
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->finishComposing(Z)V

    .line 469
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->initComposingBuffer()V

    .line 471
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->getDeleteCount()I

    move-result v15

    const/16 v16, 0x14

    move/from16 v0, v16

    if-le v15, v0, :cond_13

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v15}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentPackageName()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_13

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v15}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentPackageName()Ljava/lang/String;

    move-result-object v15

    const-string v16, "com.sec.chaton"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_13

    .line 474
    if-eqz v5, :cond_8

    .line 475
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->getLastWordDividerIndex()I

    move-result v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v5, v15, v0}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto/16 :goto_3

    .line 478
    :cond_13
    const/16 v15, 0x43

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->onKeyDownUpHandle(I)V

    .line 479
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mIsPredictionOn:Z

    if-eqz v15, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->isRecapture()Z

    move-result v15

    if-eqz v15, :cond_16

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_16

    .line 481
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_15

    const/4 v15, 0x0

    invoke-virtual {v8, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    invoke-static {v15}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v15

    if-nez v15, :cond_15

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v15

    if-eqz v15, :cond_14

    const/4 v15, 0x0

    invoke-virtual {v10, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    invoke-static {v15}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v15

    if-nez v15, :cond_15

    .line 483
    :cond_14
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v15}, Lcom/diotek/ime/framework/common/InputManager;->postPredictionWordMessage()V

    goto/16 :goto_3

    .line 485
    :cond_15
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/16 v16, 0x19

    invoke-interface/range {v15 .. v16}, Lcom/diotek/ime/framework/common/InputManager;->buildSuggestions(I)V

    goto/16 :goto_3

    .line 488
    :cond_16
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->finishComposing(Z)V

    goto/16 :goto_3
.end method

.method private processMultiTap(I[I)V
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 117
    iget-object v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v4

    iput-boolean v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mIsPredictionOn:Z

    .line 119
    iget-object v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v4}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->isTimerRunning(Lcom/diotek/ime/framework/input/InputModule$Timer;)Z

    move-result v1

    .line 120
    .local v1, "isTimerRunning":Z
    iget-object v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v4}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->stopTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;)V

    .line 121
    iget v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mLastKeyCode:I

    if-ne v4, p1, :cond_1

    move v0, v2

    .line 122
    .local v0, "isEqualKey":Z
    :goto_0
    iget-object v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/engine/InputEngineManager;->hasInputSequence()Z

    move-result v4

    if-nez v4, :cond_0

    .line 123
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 130
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v4, v3}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTouchPoint(I)Landroid/graphics/PointF;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(ILandroid/graphics/PointF;)I

    .line 131
    iget-object v2, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getExactCharSequence(Ljava/lang/StringBuilder;)I

    .line 132
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->setComposingText()V

    .line 134
    iget-boolean v2, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mIsPredictionOn:Z

    if-eqz v2, :cond_3

    .line 135
    iget-object v2, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/16 v3, 0x19

    invoke-interface {v2, v3}, Lcom/diotek/ime/framework/common/InputManager;->buildSuggestions(I)V

    .line 140
    :goto_2
    return-void

    .end local v0    # "isEqualKey":Z
    :cond_1
    move v0, v3

    .line 121
    goto :goto_0

    .line 126
    .restart local v0    # "isEqualKey":Z
    :cond_2
    invoke-virtual {p0, v2}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->finishComposing(Z)V

    .line 127
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->initComposingBuffer()V

    goto :goto_1

    .line 137
    :cond_3
    iget-object v2, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    const/16 v3, 0x5dc

    invoke-virtual {p0, v2, v3}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->startTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;I)V

    goto :goto_2
.end method

.method private processSingleTap(I[I)V
    .locals 11
    .param p1, "keyCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    const/16 v10, 0x19

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 143
    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v5

    iput-boolean v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mIsPredictionOn:Z

    .line 144
    const/4 v4, 0x0

    .line 145
    .local v4, "isTraceInput":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    .local v1, "builder":Ljava/lang/StringBuilder;
    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v5}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->stopTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;)V

    .line 148
    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v3

    .line 149
    .local v3, "inputRange":I
    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v5

    if-eqz v5, :cond_0

    if-nez v3, :cond_0

    .line 151
    invoke-static {p1}, Lcom/diotek/ime/framework/util/Utils;->getHangleShiftedChar(I)I

    move-result p1

    .line 154
    :cond_0
    iget-boolean v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mIsPredictionOn:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getInputSequenceCount()I

    move-result v5

    const/16 v6, 0x40

    if-lt v5, v6, :cond_1

    .line 156
    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/engine/InputEngineManager;->breakContext()V

    .line 157
    invoke-virtual {p0, v9}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->finishComposing(Z)V

    .line 158
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->initComposingBuffer()V

    .line 159
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->clearCandidateList()V

    .line 161
    :cond_1
    iget-boolean v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mIsPredictionOn:Z

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->isEnableTraceInPassword()Z

    move-result v5

    if-eqz v5, :cond_a

    :cond_2
    iget-boolean v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mIsTraceOn:Z

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v5

    const/4 v6, 0x2

    if-le v5, v6, :cond_a

    .line 162
    new-array v0, v9, [Z

    .line 163
    .local v0, "bAddSpace":[Z
    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTracePoint()[Landroid/graphics/PointF;

    move-result-object v6

    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v7

    invoke-interface {v5, v6, v7, v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->isAutoAcceptBeforeTrace([Landroid/graphics/PointF;I[Z)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 164
    invoke-virtual {p0, v8}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->selectWordInList(I)V

    .line 165
    invoke-virtual {p0, v9}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->finishComposing(Z)V

    .line 166
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->initComposingBuffer()V

    .line 167
    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isAutoSpaceOn()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->isSymbolAndSpace()Z

    move-result v5

    if-nez v5, :cond_3

    .line 170
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 176
    :cond_3
    :goto_0
    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTracePoint()[Landroid/graphics/PointF;

    move-result-object v6

    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v7

    const/4 v8, -0x1

    invoke-interface {v5, v6, v7, v8}, Lcom/diotek/ime/framework/engine/InputEngineManager;->processTrace([Landroid/graphics/PointF;IB)S

    move-result v5

    if-eqz v5, :cond_5

    .line 177
    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->clearTraceInfo()V

    .line 178
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->resetPredictionWord()V

    .line 291
    .end local v0    # "bAddSpace":[Z
    :goto_1
    return-void

    .line 173
    .restart local v0    # "bAddSpace":[Z
    :cond_4
    invoke-virtual {p0, v9}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->finishComposing(Z)V

    .line 174
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->initComposingBuffer()V

    goto :goto_0

    .line 181
    :cond_5
    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->clearTraceInfo()V

    .line 182
    const/4 v4, 0x1

    .line 248
    .end local v0    # "bAddSpace":[Z
    :cond_6
    iget-boolean v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mIsPredictionOn:Z

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->isEnableTraceInPassword()Z

    move-result v5

    if-eqz v5, :cond_10

    :cond_7
    if-eqz v4, :cond_10

    .line 249
    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getCharSequence(Ljava/lang/StringBuilder;)I

    .line 253
    :goto_2
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-nez v5, :cond_8

    if-eqz v4, :cond_8

    .line 254
    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->disableSetUpAutoSpace()V

    .line 255
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->resetPredictionWord()V

    .line 257
    :cond_8
    iget-boolean v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mIsPredictionOn:Z

    if-nez v5, :cond_12

    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->isEnableTraceInPassword()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isPasswordInputType()Z

    move-result v5

    if-eqz v5, :cond_12

    if-nez v4, :cond_12

    .line 260
    :cond_9
    invoke-static {v1}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(Ljava/lang/StringBuilder;)V

    .line 262
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v5

    if-le v5, v9, :cond_11

    .line 263
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->getLastChar()C

    move-result v2

    .line 264
    .local v2, "composing":C
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v5}, Lcom/diotek/ime/framework/input/ComposingTextManager;->setLength(I)V

    .line 265
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/diotek/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->commitText(Ljava/lang/CharSequence;)V

    .line 266
    invoke-static {v2}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(C)V

    .line 267
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->setComposingText()V

    goto :goto_1

    .line 184
    .end local v2    # "composing":C
    :cond_a
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v5

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAtText()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 185
    invoke-virtual {p0, v9}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->finishComposing(Z)V

    .line 186
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->initComposingBuffer()V

    .line 187
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputStatus;->isKeyLongpressed()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 188
    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v5, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(I)I

    move-result v5

    if-nez v5, :cond_6

    .line 189
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->resetPredictionWord()V

    goto/16 :goto_1

    .line 193
    :cond_b
    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->isDeviceHasHardwareKeypad()Z

    move-result v5

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->isHWKeyboardOpen()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 194
    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v5, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(I)I

    move-result v5

    if-nez v5, :cond_6

    .line 195
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->resetPredictionWord()V

    goto/16 :goto_1

    .line 199
    :cond_c
    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v6, v8}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTouchPoint(I)Landroid/graphics/PointF;

    move-result-object v6

    invoke-interface {v5, p1, v6}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(ILandroid/graphics/PointF;)I

    move-result v5

    if-nez v5, :cond_6

    .line 200
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->resetPredictionWord()V

    goto/16 :goto_1

    .line 228
    :cond_d
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputStatus;->isKeyLongpressed()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 229
    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v5, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(I)I

    move-result v5

    if-nez v5, :cond_6

    .line 230
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->resetPredictionWord()V

    goto/16 :goto_1

    .line 234
    :cond_e
    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->isDeviceHasHardwareKeypad()Z

    move-result v5

    if-eqz v5, :cond_f

    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->isHWKeyboardOpen()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 235
    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v5, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(I)I

    move-result v5

    if-nez v5, :cond_6

    .line 236
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->resetPredictionWord()V

    goto/16 :goto_1

    .line 240
    :cond_f
    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v6, v8}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTouchPoint(I)Landroid/graphics/PointF;

    move-result-object v6

    invoke-interface {v5, p1, v6}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(ILandroid/graphics/PointF;)I

    move-result v5

    if-nez v5, :cond_6

    .line 241
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->resetPredictionWord()V

    goto/16 :goto_1

    .line 251
    :cond_10
    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v5, v1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getExactCharSequence(Ljava/lang/StringBuilder;)I

    goto/16 :goto_2

    .line 269
    :cond_11
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->setComposingText()V

    goto/16 :goto_1

    .line 271
    :cond_12
    iget-boolean v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mIsPredictionOn:Z

    if-nez v5, :cond_13

    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->isEnableTraceInPassword()Z

    move-result v5

    if-eqz v5, :cond_14

    :cond_13
    if-eqz v4, :cond_14

    .line 273
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->setComposingText()V

    .line 274
    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5, v10}, Lcom/diotek/ime/framework/common/InputManager;->updateCandidates(I)V

    goto/16 :goto_1

    .line 276
    :cond_14
    invoke-static {v1}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(Ljava/lang/StringBuilder;)V

    .line 277
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->setComposingText()V

    .line 278
    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5, v10}, Lcom/diotek/ime/framework/common/InputManager;->buildSuggestions(I)V

    goto/16 :goto_1
.end method

.method private processWordSeparator(I[I)V
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    const/4 v3, 0x1

    .line 320
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 321
    iget-object v1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    const/4 v2, -0x1

    invoke-interface {v1, v2}, Lcom/diotek/ime/framework/engine/InputEngineManager;->doNoteWordDoneForXt9(I)I

    .line 324
    :cond_0
    const/16 v1, 0xa

    if-ne p1, v1, :cond_3

    .line 325
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 326
    invoke-virtual {p0, v3}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->finishComposing(Z)V

    .line 328
    :cond_1
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->sendEnterKeyHandle()V

    .line 329
    iget-object v1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->breakContext()V

    .line 330
    iget-object v1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    .line 331
    iget-object v1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->updateShiftState()V

    .line 332
    iget-object v1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    .line 353
    :cond_2
    :goto_0
    return-void

    .line 335
    :cond_3
    iget-object v1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isInMultiTapInput()Z

    move-result v0

    .line 336
    .local v0, "isInMultiTap":Z
    if-eqz v0, :cond_4

    .line 337
    invoke-virtual {p0, p1, p2}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->processMultiTapSymbolicKey(I[I)V

    goto :goto_0

    .line 341
    :cond_4
    iget-object v1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v1, v3, v3}, Lcom/diotek/ime/framework/engine/InputEngineManager;->refreshContextBuffer(ZZ)I

    .line 343
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->finishComposingWithoutInit()V

    .line 344
    int-to-char v1, p1

    invoke-static {v1}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(C)V

    .line 345
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 347
    iget-object v1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v1, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->doNoteWordDoneForXt9WithoutIndex(I)I

    .line 350
    iget-boolean v1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mIsPredictionOn:Z

    if-eqz v1, :cond_2

    .line 351
    invoke-virtual {p0, v3}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->doNextWordPrediction(Z)V

    goto :goto_0
.end method


# virtual methods
.method public closing()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->stopTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;)V

    .line 51
    iget-object v0, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    .line 52
    invoke-super {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->closing()V

    .line 53
    return-void
.end method

.method protected commitText(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 510
    iget-object v1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 511
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 512
    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 514
    :cond_0
    return-void
.end method

.method public onCharacterKey(I[I)V
    .locals 7
    .param p1, "keyCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    const/16 v6, 0x20

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 57
    iget-object v3, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    .line 58
    .local v0, "inputMethod":I
    iget-object v3, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v1

    .line 59
    .local v1, "inputRange":I
    const/4 v2, 0x0

    .line 60
    .local v2, "isTraceInput":Z
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mStateCandidate:I

    if-ne v3, v4, :cond_0

    .line 61
    iget-object v3, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    .line 64
    :cond_0
    invoke-virtual {p0, v4}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->setPredictionWord(Z)V

    .line 65
    iget-object v3, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v3, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->isTextCharacter(I)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v1, :cond_2

    :cond_1
    iget-boolean v3, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mIsPredictionOn:Z

    if-eqz v3, :cond_9

    iget-boolean v3, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mIsTraceOn:Z

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v3

    if-le v3, v5, :cond_9

    .line 68
    :cond_2
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->isSymbolAndSpace()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAtText()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 73
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 76
    :cond_3
    if-nez v0, :cond_6

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->processSingleTap(I[I)V

    .line 104
    :goto_0
    iget-object v3, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getXt9Recapture()Z

    move-result v3

    if-nez v3, :cond_5

    .line 105
    if-ne p1, v6, :cond_4

    iget v3, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mStateCandidate:I

    if-eq v3, v5, :cond_5

    .line 107
    :cond_4
    const/4 v3, 0x0

    iput v3, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mStateCandidate:I

    .line 110
    :cond_5
    iput p1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mLastKeyCode:I

    .line 112
    iget-object v3, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v3, p1, v2}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->setUpAutoSpace(IZ)V

    .line 113
    invoke-virtual {p0, v2}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->setBeforeTraceInput(Z)V

    .line 114
    return-void

    .line 78
    :cond_6
    if-ne v0, v4, :cond_8

    .line 79
    iget-object v3, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->isEnableTraceInPassword()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 80
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->processSingleTap(I[I)V

    goto :goto_0

    .line 83
    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->processMultiTap(I[I)V

    goto :goto_0

    .line 86
    :cond_8
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->processSingleTap(I[I)V

    goto :goto_0

    .line 89
    :cond_9
    iget-object v3, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v3, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->isNumericCharacter(I)Z

    move-result v3

    if-eqz v3, :cond_c

    iget-boolean v3, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mIsKorMode:Z

    if-eqz v3, :cond_a

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isDigitEditor()Z

    move-result v3

    if-nez v3, :cond_c

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isPhoneNumberInputClass()Z

    move-result v3

    if-nez v3, :cond_c

    :cond_a
    iget-boolean v3, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mIsPredictionOn:Z

    if-eqz v3, :cond_c

    .line 92
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAtNumeric()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 94
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 95
    invoke-static {v6}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    .line 96
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 98
    :cond_b
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->processSingleTap(I[I)V

    .line 102
    :goto_1
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->autoPeriod(I)V

    goto :goto_0

    .line 100
    :cond_c
    invoke-virtual {p0, p1, p2}, Lcom/diotek/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->processSymbolicKey(I[I)V

    goto :goto_1
.end method

.method public onHwrPanelLongPressed(ILjava/lang/String;)V
    .locals 0
    .param p1, "selectedArrayIndex"    # I
    .param p2, "resultString"    # Ljava/lang/String;

    .prologue
    .line 501
    return-void
.end method

.method public onHwrTouchDown(IIJ)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "eventTime"    # J

    .prologue
    .line 28
    const/4 v0, 0x0

    return v0
.end method

.method public onHwrTouchMove(IIJ)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "eventTime"    # J

    .prologue
    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method public onHwrTouchUp(IIJ)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "eventTime"    # J

    .prologue
    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public pickSuggestionManually(ILjava/lang/CharSequence;)V
    .locals 22
    .param p1, "index"    # I
    .param p2, "suggestion"    # Ljava/lang/CharSequence;

    .prologue
    .line 518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->isSentenceTermPunct(I)Z

    move-result v15

    .line 520
    .local v15, "isTermPunct":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v11

    .line 521
    .local v11, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v11, :cond_0

    .line 522
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isAutoCompletitionInput()Z

    move-result v12

    .line 523
    .local v12, "isCompletionOn":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v13

    .line 524
    .local v13, "isLandscape":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/diotek/ime/framework/common/InputManager;->getCompletions()[Landroid/view/inputmethod/CompletionInfo;

    move-result-object v8

    .line 525
    .local v8, "completions":[Landroid/view/inputmethod/CompletionInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-interface/range {v19 .. v20}, Lcom/diotek/ime/framework/common/InputManager;->setXt9NextWordPrediction(Z)V

    .line 526
    if-eqz v12, :cond_1

    if-eqz v13, :cond_1

    if-eqz v8, :cond_1

    .line 527
    if-ltz p1, :cond_0

    array-length v0, v8

    move/from16 v19, v0

    move/from16 v0, p1

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    .line 528
    aget-object v7, v8, p1

    .line 529
    .local v7, "completion":Landroid/view/inputmethod/CompletionInfo;
    invoke-interface {v11, v7}, Landroid/view/inputmethod/InputConnection;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z

    .line 627
    .end local v7    # "completion":Landroid/view/inputmethod/CompletionInfo;
    .end local v8    # "completions":[Landroid/view/inputmethod/CompletionInfo;
    .end local v12    # "isCompletionOn":Z
    .end local v13    # "isLandscape":Z
    :cond_0
    :goto_0
    return-void

    .line 532
    .restart local v8    # "completions":[Landroid/view/inputmethod/CompletionInfo;
    .restart local v12    # "isCompletionOn":Z
    .restart local v13    # "isLandscape":Z
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/diotek/ime/framework/common/InputManager;->getCandidateviewStatus()I

    move-result v6

    .line 533
    .local v6, "candidateStatus":I
    const/4 v10, 0x0

    .line 534
    .local v10, "enableAutoSpaceForNextWordPrediction":Z
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v19

    if-eqz v19, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mStateCandidate:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_b

    if-nez v6, :cond_b

    .line 536
    invoke-interface {v11}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 537
    const v19, 0x7fffffff

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v11, v0, v1}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v4

    .line 538
    .local v4, "beforeText":Ljava/lang/CharSequence;
    if-eqz v4, :cond_a

    .line 540
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v19

    add-int/lit8 v16, v19, -0x1

    .local v16, "lastIndex":I
    :goto_1
    if-ltz v16, :cond_2

    .line 541
    move/from16 v0, v16

    invoke-interface {v4, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Character;->isLetter(C)Z

    move-result v19

    if-nez v19, :cond_8

    .line 546
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosNextText:I

    move/from16 v19, v0

    if-nez v19, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosPrevText:I

    move/from16 v19, v0

    if-nez v19, :cond_9

    .line 547
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v9

    .line 548
    .local v9, "currentPosition":I
    add-int/lit8 v19, v16, 0x1

    move/from16 v0, v19

    invoke-interface {v11, v0, v9}, Landroid/view/inputmethod/InputConnection;->setComposingRegion(II)Z

    .line 549
    const/4 v4, 0x0

    .line 558
    .end local v9    # "currentPosition":I
    .end local v16    # "lastIndex":I
    :goto_2
    invoke-interface {v11}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 559
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosPrevText:I

    .line 560
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosNextText:I

    .line 561
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mIgnorePredictionWord:Z

    .line 570
    .end local v4    # "beforeText":Ljava/lang/CharSequence;
    :cond_3
    :goto_3
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->setUpByPickSuggestion()V

    .line 574
    if-eqz v10, :cond_d

    if-nez v15, :cond_d

    .line 587
    :cond_4
    :goto_4
    invoke-static/range {p2 .. p2}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    .line 588
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->isThaiAcceptable()Z

    move-result v19

    if-nez v19, :cond_5

    .line 589
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 591
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->setComposingText()V

    .line 592
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mPickSuggestionIndex:I

    .line 593
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->processWhenPickSuggestionManually(I)I

    .line 595
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->clearCandidateList()V

    .line 597
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestionCount()I

    move-result v19

    if-lez v19, :cond_7

    .line 598
    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mPickSuggestionIndex:I

    move/from16 v18, v0

    .line 599
    .local v18, "pickeSuggestionIndex":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mStateCandidate:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_6

    .line 600
    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_e

    .line 601
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->doNoteWordDoneForXt9(I)I

    .line 606
    :cond_6
    :goto_5
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 608
    .local v17, "outCharSequence":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getCharSequence(Ljava/lang/StringBuilder;)I

    .line 611
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move/from16 v1, v18

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/engine/InputEngineManager;->wordSelected(ILjava/lang/CharSequence;)I

    .line 614
    .end local v17    # "outCharSequence":Ljava/lang/StringBuilder;
    .end local v18    # "pickeSuggestionIndex":I
    :cond_7
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->finishComposing(Z)V

    .line 615
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->initComposingBuffer()V

    .line 617
    const/16 v19, -0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mPickSuggestionIndex:I

    .line 618
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 619
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v19, v0

    const-string v20, "SETTINGS_DEFAULT_NEXTWORDPREDICTION"

    const/16 v21, 0x0

    invoke-interface/range {v19 .. v21}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v14

    .line 621
    .local v14, "isNextWordPredictionOn":Z
    if-eqz v14, :cond_0

    .line 622
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->doNextWordPrediction(Z)V

    goto/16 :goto_0

    .line 540
    .end local v14    # "isNextWordPredictionOn":Z
    .restart local v4    # "beforeText":Ljava/lang/CharSequence;
    .restart local v16    # "lastIndex":I
    :cond_8
    add-int/lit8 v16, v16, -0x1

    goto/16 :goto_1

    .line 551
    :cond_9
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v9

    .line 552
    .restart local v9    # "currentPosition":I
    add-int/lit8 v19, v16, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosNextText:I

    move/from16 v20, v0

    add-int v20, v20, v9

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v11, v0, v1}, Landroid/view/inputmethod/InputConnection;->setComposingRegion(II)Z

    .line 553
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 556
    .end local v9    # "currentPosition":I
    .end local v16    # "lastIndex":I
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosPrevText:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosNextText:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v11, v0, v1}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto/16 :goto_2

    .line 562
    .end local v4    # "beforeText":Ljava/lang/CharSequence;
    :cond_b
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v19

    if-eqz v19, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mStateCandidate:I

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_c

    if-nez v6, :cond_c

    .line 564
    const/4 v10, 0x1

    .line 565
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mIgnorePredictionWord:Z

    goto/16 :goto_3

    .line 566
    :cond_c
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v19

    if-eqz v19, :cond_3

    const/16 v19, 0x2

    move/from16 v0, v19

    if-ne v6, v0, :cond_3

    .line 567
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mIgnorePredictionWord:Z

    goto/16 :goto_3

    .line 577
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isAutoSpaceOn()Z

    move-result v19

    if-eqz v19, :cond_4

    if-eqz v15, :cond_4

    .line 578
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 579
    .local v3, "beforeContextBuffer":Ljava/lang/StringBuilder;
    const/16 v19, 0x40

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v11, v0, v1}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 581
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    .line 582
    .local v5, "bufferLength":I
    if-lez v5, :cond_4

    add-int/lit8 v19, v5, -0x1

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v19

    const/16 v20, 0x20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    .line 583
    const/16 v19, 0x1

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v11, v0, v1}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto/16 :goto_4

    .line 603
    .end local v3    # "beforeContextBuffer":Ljava/lang/StringBuilder;
    .end local v5    # "bufferLength":I
    .restart local v18    # "pickeSuggestionIndex":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-interface/range {v19 .. v20}, Lcom/diotek/ime/framework/engine/InputEngineManager;->doNoteWordDoneForXt9(I)I

    goto/16 :goto_5
.end method

.method protected processSymbolicKey(I[I)V
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    .line 294
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->clearCandidateList()V

    .line 296
    const-string v1, " .,;:!?\n()[]*&@{}/<>_-+=|\'\u061b\u060c\u061f\""

    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 297
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->processWordSeparator(I[I)V

    .line 317
    :goto_0
    return-void

    .line 299
    :cond_0
    const/16 v1, 0xa

    if-eq p1, v1, :cond_1

    const/16 v1, 0x20

    if-ne p1, v1, :cond_2

    .line 301
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->processWordSeparator(I[I)V

    goto :goto_0

    .line 303
    :cond_2
    const/4 v1, -0x5

    if-ne p1, v1, :cond_3

    .line 304
    invoke-direct {p0}, Lcom/diotek/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->processBackSpaceKey()V

    goto :goto_0

    .line 308
    :cond_3
    iget-object v1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isInMultiTapInput()Z

    move-result v0

    .line 309
    .local v0, "isInMultiTap":Z
    if-eqz v0, :cond_4

    .line 310
    invoke-virtual {p0, p1, p2}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->processMultiTapSymbolicKey(I[I)V

    goto :goto_0

    .line 313
    :cond_4
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->finishComposing(Z)V

    .line 314
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->initComposingBuffer()V

    .line 315
    int-to-char v1, p1

    invoke-static {v1}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(C)V

    .line 316
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public release()V
    .locals 0

    .prologue
    .line 46
    return-void
.end method

.method public setAddStrokeCallBackOnHWREngine()V
    .locals 0

    .prologue
    .line 632
    return-void
.end method

.method public updateVOHWRSuggestion()V
    .locals 0

    .prologue
    .line 638
    return-void
.end method
