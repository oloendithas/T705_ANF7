.class public Lcom/diotek/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;
.super Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;
.source "Xt9PhonepadLatinInputModule.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;-><init>()V

    .line 22
    return-void
.end method

.method private processBackSpaceKey()V
    .locals 15

    .prologue
    .line 429
    iget-object v12, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v4

    .line 430
    .local v4, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v4, :cond_1

    .line 550
    :cond_0
    :goto_0
    return-void

    .line 433
    :cond_1
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->clearCandidateList()V

    .line 434
    iget-object v12, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v12}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->stopTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;)V

    .line 436
    const-string v5, ""

    .line 437
    .local v5, "lastChar":Ljava/lang/String;
    const-string v7, ""

    .line 441
    .local v7, "nextChar":Ljava/lang/String;
    const/4 v11, 0x0

    .line 442
    .local v11, "ss":Landroid/text/SpannableString;
    iget-boolean v12, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mIsPredictionOn:Z

    if-eqz v12, :cond_9

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v12

    if-eqz v12, :cond_9

    .line 444
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

    .line 448
    :goto_1
    if-eqz v11, :cond_3

    .line 449
    const/4 v12, 0x0

    invoke-virtual {v11}, Landroid/text/SpannableString;->length()I

    move-result v13

    const-class v14, Ljava/lang/Object;

    invoke-virtual {v11, v12, v13, v14}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v9

    .line 450
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

    .line 451
    .local v10, "span":Ljava/lang/Object;
    instance-of v12, v10, Landroid/text/style/UnderlineSpan;

    if-eqz v12, :cond_2

    invoke-virtual {v11, v10}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v12

    invoke-virtual {v11}, Landroid/text/SpannableString;->length()I

    move-result v13

    if-ne v12, v13, :cond_2

    .line 452
    invoke-virtual {v11, v10}, Landroid/text/SpannableString;->getSpanStart(Ljava/lang/Object;)I

    move-result v12

    invoke-virtual {v11, v10}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v13

    invoke-interface {v4, v12, v13}, Landroid/view/inputmethod/InputConnection;->setComposingRegion(II)Z

    .line 450
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 445
    .end local v1    # "arr$":[Ljava/lang/Object;
    .end local v3    # "i$":I
    .end local v6    # "len$":I
    .end local v9    # "sp":[Ljava/lang/Object;
    .end local v10    # "span":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 446
    .local v2, "e":Ljava/lang/ClassCastException;
    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-interface {v4, v12, v13}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v5

    .end local v5    # "lastChar":Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .restart local v5    # "lastChar":Ljava/lang/String;
    goto :goto_1

    .line 456
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

    .line 457
    invoke-virtual {v11}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v12, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 463
    :cond_4
    :goto_3
    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-interface {v4, v12, v13}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v7

    .end local v7    # "nextChar":Ljava/lang/String;
    check-cast v7, Ljava/lang/String;

    .line 464
    .restart local v7    # "nextChar":Ljava/lang/String;
    if-nez v5, :cond_5

    .line 465
    const-string v5, ""

    .line 467
    :cond_5
    if-nez v7, :cond_6

    .line 468
    const-string v7, ""

    .line 470
    :cond_6
    invoke-virtual {p0, v5}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->setDeleteCount(Ljava/lang/String;)V

    .line 471
    const/4 v11, 0x0

    .line 473
    iget-boolean v12, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mIsPredictionOn:Z

    if-eqz v12, :cond_e

    iget-object v12, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/engine/InputEngineManager;->hasInputSequence()Z

    move-result v12

    if-eqz v12, :cond_7

    iget v12, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mStateCandidate:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_8

    :cond_7
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->isBeforeTraceInput()Z

    move-result v12

    if-eqz v12, :cond_e

    .line 476
    :cond_8
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v12

    const/4 v13, 0x1

    if-le v12, v13, :cond_c

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->isBeforeTraceInput()Z

    move-result v12

    if-nez v12, :cond_c

    .line 477
    iget-object v12, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    const/4 v13, -0x5

    invoke-interface {v12, v13}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(I)I

    move-result v12

    if-nez v12, :cond_b

    .line 478
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->isRecapture()Z

    move-result v12

    if-eqz v12, :cond_a

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v12

    if-eqz v12, :cond_a

    .line 479
    const/4 v12, 0x1

    invoke-virtual {p0, v12}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->finishComposing(Z)V

    .line 480
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->initComposingBuffer()V

    .line 481
    const/4 v12, -0x5

    invoke-virtual {p0, v12}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->processReCaptureForXT9(I)V

    .line 482
    iget-object v12, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    const/4 v13, -0x5

    invoke-interface {v12, v13}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(I)I

    .line 483
    iget-object v12, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-interface {v12, v13}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getExactCharSequence(Ljava/lang/StringBuilder;)I

    .line 493
    :goto_4
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->setComposingText()V

    .line 494
    iget-object v12, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/16 v13, 0x19

    invoke-interface {v12, v13}, Lcom/diotek/ime/framework/common/InputManager;->buildSuggestions(I)V

    goto/16 :goto_0

    .line 460
    :cond_9
    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-interface {v4, v12, v13}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v5

    .end local v5    # "lastChar":Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .restart local v5    # "lastChar":Ljava/lang/String;
    goto :goto_3

    .line 485
    :cond_a
    const/4 v12, 0x1

    invoke-virtual {p0, v12}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->finishComposing(Z)V

    .line 486
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->initComposingBuffer()V

    .line 487
    const/16 v12, 0x43

    invoke-virtual {p0, v12}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->onKeyDownUpHandle(I)V

    goto :goto_4

    .line 490
    :cond_b
    iget-object v12, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-interface {v12, v13}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getExactCharSequence(Ljava/lang/StringBuilder;)I

    goto :goto_4

    .line 495
    :cond_c
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v12

    if-eqz v12, :cond_d

    .line 496
    iget-object v12, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    const/4 v13, -0x5

    invoke-interface {v12, v13}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(I)I

    .line 497
    iget-object v12, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    .line 498
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 499
    iget-object v12, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/16 v13, 0x19

    invoke-interface {v12, v13}, Lcom/diotek/ime/framework/common/InputManager;->buildSuggestions(I)V

    .line 500
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p0, v12}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 502
    :cond_d
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 503
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p0, v12}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 504
    iget-object v12, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/16 v13, 0x19

    invoke-interface {v12, v13}, Lcom/diotek/ime/framework/common/InputManager;->buildSuggestions(I)V

    .line 505
    iget-object v12, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    const/4 v13, -0x1

    invoke-interface {v12, v13}, Lcom/diotek/ime/framework/engine/InputEngineManager;->setSuggestionActiveIndex(I)V

    goto/16 :goto_0

    .line 508
    :cond_e
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v12

    if-eqz v12, :cond_f

    .line 509
    const/4 v12, 0x1

    invoke-virtual {p0, v12}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->finishComposing(Z)V

    .line 510
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->initComposingBuffer()V

    .line 512
    :cond_f
    iget v12, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputLanguage:I

    const/high16 v13, 0x76690000

    if-ne v12, v13, :cond_10

    .line 513
    if-eqz v5, :cond_10

    .line 514
    invoke-static {v5}, Lcom/diotek/ime/framework/common/InputSequenceCheck;->normalizedNFD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 515
    .local v8, "nonNormalizedChar":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x1

    if-le v12, v13, :cond_10

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v8, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-static {v12}, Lcom/diotek/ime/framework/common/InputSequenceCheck;->isVietameseTone(I)Z

    move-result v12

    if-eqz v12, :cond_10

    .line 519
    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-interface {v4, v12, v13}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 520
    invoke-static {v8}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    .line 521
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x1

    invoke-interface {v4, v12, v13}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 522
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 527
    .end local v8    # "nonNormalizedChar":Ljava/lang/String;
    :cond_10
    iget-object v12, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    const/4 v13, -0x5

    invoke-interface {v12, v13}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(I)I

    .line 528
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->getDeleteCount()I

    move-result v12

    const/16 v13, 0x14

    if-le v12, v13, :cond_11

    iget-object v12, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentPackageName()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_11

    iget-object v12, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentPackageName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "com.sec.chaton"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_11

    .line 532
    if-eqz v4, :cond_0

    .line 533
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->getLastWordDividerIndex()I

    move-result v12

    const/4 v13, 0x0

    invoke-interface {v4, v12, v13}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto/16 :goto_0

    .line 536
    :cond_11
    const/16 v12, 0x43

    invoke-virtual {p0, v12}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->onKeyDownUpHandle(I)V

    .line 537
    iget-boolean v12, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mIsPredictionOn:Z

    if-eqz v12, :cond_14

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->isRecapture()Z

    move-result v12

    if-eqz v12, :cond_14

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_14

    .line 539
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_13

    const/4 v12, 0x0

    invoke-virtual {v5, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-static {v12}, Ljava/lang/Character;->isLetter(C)Z

    move-result v12

    if-nez v12, :cond_13

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_12

    const/4 v12, 0x0

    invoke-virtual {v7, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-static {v12}, Ljava/lang/Character;->isLetter(C)Z

    move-result v12

    if-nez v12, :cond_13

    .line 541
    :cond_12
    iget-object v12, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->postPredictionWordMessage()V

    goto/16 :goto_0

    .line 543
    :cond_13
    iget-object v12, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->postRecaptureWordXT9Message()V

    goto/16 :goto_0

    .line 546
    :cond_14
    const/4 v12, 0x1

    invoke-virtual {p0, v12}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->finishComposing(Z)V

    goto/16 :goto_0
.end method

.method private processMultiTap(I[I)V
    .locals 12
    .param p1, "keyCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    const/16 v11, 0x19

    const/16 v9, 0x40

    const/16 v10, 0x20

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 119
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->clearCandidateList()V

    .line 120
    const/4 v4, 0x0

    .line 122
    .local v4, "isTraceInput":Z
    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v7}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->isTimerRunning(Lcom/diotek/ime/framework/input/InputModule$Timer;)Z

    move-result v3

    .line 123
    .local v3, "isTimerRunning":Z
    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v7}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->stopTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;)V

    .line 125
    const/4 v2, 0x0

    .line 126
    .local v2, "isEqualKey":Z
    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->isDynamicKDB()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 127
    if-eqz p2, :cond_0

    array-length v7, p2

    if-lez v7, :cond_0

    iget v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mLastKeyCode:I

    aget v8, p2, v6

    if-ne v7, v8, :cond_0

    .line 128
    const/4 v2, 0x1

    .line 133
    :cond_0
    :goto_0
    iget-boolean v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mIsPredictionOn:Z

    if-eqz v7, :cond_9

    .line 134
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v7

    if-lt v7, v9, :cond_1

    .line 135
    invoke-virtual {p0, v5}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->finishComposing(Z)V

    .line 136
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->initComposingBuffer()V

    .line 137
    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/engine/InputEngineManager;->breakContext()V

    .line 138
    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    .line 162
    :cond_1
    :goto_1
    iget-boolean v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mIsPredictionOn:Z

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->isEnableTraceInPassword()Z

    move-result v7

    if-eqz v7, :cond_11

    :cond_2
    iget-boolean v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mIsTraceOn:Z

    if-eqz v7, :cond_11

    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    if-eqz v7, :cond_11

    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v7

    const/4 v8, 0x2

    if-le v7, v8, :cond_11

    .line 163
    new-array v0, v5, [Z

    .line 164
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

    if-eqz v7, :cond_3

    .line 171
    invoke-virtual {p0, v6}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->selectWordInList(I)V

    .line 172
    invoke-virtual {p0, v5}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->finishComposing(Z)V

    .line 173
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->initComposingBuffer()V

    .line 174
    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->reset()V

    .line 175
    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isAutoSpaceOn()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 176
    invoke-static {v10}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(C)V

    .line 177
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 178
    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v6

    if-nez v6, :cond_3

    .line 179
    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 180
    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->updateShiftState()V

    .line 189
    :cond_3
    if-eqz v3, :cond_6

    .line 190
    invoke-virtual {p0, v5}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->finishComposing(Z)V

    .line 191
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->initComposingBuffer()V

    .line 192
    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAtTrace()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 193
    invoke-static {v10}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(C)V

    .line 194
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 196
    :cond_4
    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 197
    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->updateShiftState()V

    .line 199
    :cond_5
    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    .line 201
    :cond_6
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

    if-eqz v5, :cond_d

    .line 203
    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->clearTraceInfo()V

    .line 204
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->resetPredictionWord()V

    .line 306
    .end local v0    # "bAddSpace":[Z
    :goto_2
    return-void

    .line 131
    :cond_7
    iget v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mLastKeyCode:I

    if-ne v7, p1, :cond_8

    move v2, v5

    :goto_3
    goto/16 :goto_0

    :cond_8
    move v2, v6

    goto :goto_3

    .line 141
    :cond_9
    if-eqz v3, :cond_a

    if-nez v2, :cond_1

    .line 143
    :cond_a
    if-eqz v3, :cond_b

    .line 144
    invoke-virtual {p0, v5}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->finishComposing(Z)V

    .line 145
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->initComposingBuffer()V

    .line 146
    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    .line 148
    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 149
    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->updateShiftState()V

    goto/16 :goto_1

    .line 152
    :cond_b
    invoke-virtual {p0, v5}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->finishComposing(Z)V

    .line 153
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->initComposingBuffer()V

    .line 154
    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isAutoSpaceOn()Z

    move-result v7

    if-eqz v7, :cond_c

    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isLastActionIsTraceOrPick()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 156
    invoke-static {v10}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(C)V

    .line 157
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 159
    :cond_c
    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    goto/16 :goto_1

    .line 207
    .restart local v0    # "bAddSpace":[Z
    :cond_d
    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getCharSequence(Ljava/lang/StringBuilder;)I

    .line 208
    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->clearTraceInfo()V

    .line 209
    const/4 v4, 0x1

    .line 210
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 211
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->clearAction()V

    .line 212
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->resetPredictionWord()V

    .line 295
    .end local v0    # "bAddSpace":[Z
    :cond_e
    :goto_4
    iget v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputLanguage:I

    const/high16 v6, 0x76690000

    if-ne v5, v6, :cond_f

    .line 296
    iget-boolean v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mIsPredictionOn:Z

    invoke-virtual {p0, p1, v5}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->processVietnameseTone(IZ)V

    .line 299
    :cond_f
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->setComposingText()V

    .line 301
    if-nez v4, :cond_10

    iget-boolean v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mIsPredictionOn:Z

    if-eqz v5, :cond_1e

    .line 302
    :cond_10
    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5, v11}, Lcom/diotek/ime/framework/common/InputManager;->updateCandidates(I)V

    goto/16 :goto_2

    .line 215
    :cond_11
    iget-boolean v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mIsPredictionOn:Z

    if-eqz v7, :cond_17

    if-eqz v3, :cond_17

    .line 216
    invoke-virtual {p0, v5}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->finishComposing(Z)V

    .line 217
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->initComposingBuffer()V

    .line 218
    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isAutoSpaceOn()Z

    move-result v5

    if-eqz v5, :cond_12

    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAtText()Z

    move-result v5

    if-eqz v5, :cond_12

    .line 220
    invoke-static {v10}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(C)V

    .line 221
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 223
    :cond_12
    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v5

    if-eqz v5, :cond_13

    .line 224
    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->updateShiftState()V

    .line 226
    :cond_13
    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    .line 227
    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    if-eqz v5, :cond_14

    .line 228
    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v7, v6}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTouchPoint(I)Landroid/graphics/PointF;

    move-result-object v7

    invoke-interface {v5, p1, v7}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(ILandroid/graphics/PointF;)I

    .line 270
    :cond_14
    :goto_5
    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v5, v7}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getCharSequence(Ljava/lang/StringBuilder;)I

    .line 271
    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 272
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v1, :cond_15

    .line 273
    iget v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosNextText:I

    if-nez v5, :cond_15

    invoke-interface {v1, v6}, Landroid/view/inputmethod/InputConnection;->getSelectedText(I)Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_15

    .line 274
    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5, v6}, Lcom/diotek/ime/framework/common/InputManager;->setXt9Recapture(Z)V

    .line 275
    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 276
    int-to-char v5, p1

    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    invoke-static {v5}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(C)V

    .line 279
    :goto_6
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 280
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->processReCaptureForXT9(I)V

    .line 281
    iput v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mStateCandidate:I

    .line 285
    :cond_15
    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->isUsingToggleNumberInput()Z

    move-result v5

    if-nez v5, :cond_16

    iget-boolean v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mIsPredictionOn:Z

    if-nez v5, :cond_16

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_16

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v5

    if-eqz v5, :cond_16

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->getFirstChar()C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 289
    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v7, v6}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTouchPoint(I)Landroid/graphics/PointF;

    move-result-object v6

    invoke-interface {v5, p1, v6}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(ILandroid/graphics/PointF;)I

    .line 290
    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getExactCharSequence(Ljava/lang/StringBuilder;)I

    .line 292
    :cond_16
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->clearAction()V

    goto/16 :goto_4

    .line 230
    .end local v1    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_17
    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAtText()Z

    move-result v7

    if-eqz v7, :cond_19

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v7

    if-eqz v7, :cond_19

    .line 231
    invoke-virtual {p0, v6}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->selectWordInList(I)V

    .line 232
    invoke-virtual {p0, v5}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->finishComposing(Z)V

    .line 233
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->initComposingBuffer()V

    .line 234
    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isAutoSpaceOn()Z

    move-result v5

    if-eqz v5, :cond_18

    .line 235
    invoke-static {v10}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(C)V

    .line 236
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 237
    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v5

    if-eqz v5, :cond_18

    .line 238
    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->updateShiftState()V

    .line 241
    :cond_18
    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    if-eqz v5, :cond_14

    .line 242
    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v7, v6}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTouchPoint(I)Landroid/graphics/PointF;

    move-result-object v7

    invoke-interface {v5, p1, v7}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(ILandroid/graphics/PointF;)I

    goto/16 :goto_5

    .line 244
    :cond_19
    iget-boolean v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mIsPredictionOn:Z

    if-eqz v7, :cond_1c

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->isRecapture()Z

    move-result v7

    if-eqz v7, :cond_1c

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1c

    iget v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mStateCandidate:I

    if-ne v7, v5, :cond_1c

    .line 248
    iget v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosPrevText:I

    if-lt v5, v9, :cond_1a

    .line 249
    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    .line 251
    :cond_1a
    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v7, v6}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTouchPoint(I)Landroid/graphics/PointF;

    move-result-object v7

    invoke-interface {v5, p1, v7}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(ILandroid/graphics/PointF;)I

    .line 252
    iget v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosPrevText:I

    if-ge v5, v9, :cond_14

    .line 253
    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v5, v7}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getCharSequence(Ljava/lang/StringBuilder;)I

    .line 254
    iget v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosNextText:I

    if-nez v5, :cond_1b

    .line 255
    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5, v6}, Lcom/diotek/ime/framework/common/InputManager;->setXt9Recapture(Z)V

    .line 256
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->makeCompoingTextCursoroWrod()V

    .line 257
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->setComposingText()V

    .line 258
    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5, v11}, Lcom/diotek/ime/framework/common/InputManager;->buildSuggestions(I)V

    goto/16 :goto_2

    .line 260
    :cond_1b
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 261
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->processReCaptureForXT9(I)V

    goto/16 :goto_2

    .line 266
    :cond_1c
    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    if-eqz v5, :cond_14

    .line 267
    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v7, v6}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTouchPoint(I)Landroid/graphics/PointF;

    move-result-object v7

    invoke-interface {v5, p1, v7}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(ILandroid/graphics/PointF;)I

    goto/16 :goto_5

    .line 278
    .restart local v1    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_1d
    int-to-char v5, p1

    invoke-static {v5}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(C)V

    goto/16 :goto_6

    .line 304
    .end local v1    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_1e
    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    const/16 v6, 0x5dc

    invoke-virtual {p0, v5, v6}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->startTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;I)V

    goto/16 :goto_2
.end method

.method private processSingleTap(I[I)V
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    .line 309
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->clearCandidateList()V

    .line 311
    iget-object v0, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->isTimerRunning(Lcom/diotek/ime/framework/input/InputModule$Timer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->stopTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;)V

    .line 315
    iget-object v0, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->hasInputSequence()Z

    move-result v0

    if-nez v0, :cond_0

    .line 316
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->finishComposing(Z)V

    .line 317
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->initComposingBuffer()V

    .line 321
    :cond_0
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputStatus;->isKeyLongpressed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 322
    iget-object v0, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(I)I

    .line 328
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getExactCharSequence(Ljava/lang/StringBuilder;)I

    .line 330
    iget-boolean v0, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mIsPredictionOn:Z

    if-eqz v0, :cond_3

    .line 331
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->setComposingText()V

    .line 332
    iget-object v0, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/16 v1, 0x19

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/common/InputManager;->buildSuggestions(I)V

    .line 338
    :goto_1
    return-void

    .line 324
    :cond_2
    iget-object v0, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    if-eqz v0, :cond_1

    .line 325
    iget-object v0, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTouchPoint(I)Landroid/graphics/PointF;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(ILandroid/graphics/PointF;)I

    goto :goto_0

    .line 334
    :cond_3
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 335
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 336
    iget-object v0, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    goto :goto_1
.end method

.method private processWordSeparator(I[I)V
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    const/16 v3, 0x20

    const/4 v2, 0x1

    .line 376
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->wordSeparatorPretreatment(I)V

    .line 378
    const/16 v1, 0xa

    if-ne p1, v1, :cond_2

    .line 379
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->sendEnterKeyHandle()V

    .line 380
    iget-object v1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->breakContext()V

    .line 381
    iget-object v1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 382
    iget-object v1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->updateShiftState()V

    .line 384
    :cond_0
    iget-object v1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    .line 426
    :cond_1
    :goto_0
    return-void

    .line 387
    :cond_2
    iget-object v1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isInMultiTapInput()Z

    move-result v0

    .line 388
    .local v0, "isInMultiTap":Z
    if-eqz v0, :cond_3

    .line 389
    invoke-virtual {p0, p1, p2}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->processMultiTapSymbolicKey(I[I)V

    goto :goto_0

    .line 393
    :cond_3
    iget-object v1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->isTimerRunning(Lcom/diotek/ime/framework/input/InputModule$Timer;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-ne p1, v3, :cond_4

    .line 394
    iget-object v1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->stopTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;)V

    .line 395
    invoke-virtual {p0, v2}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->finishComposing(Z)V

    .line 396
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 423
    :goto_1
    iget-boolean v1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mIsPredictionOn:Z

    if-eqz v1, :cond_1

    .line 424
    invoke-virtual {p0, v2}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->doNextWordPrediction(Z)V

    goto :goto_0

    .line 402
    :cond_4
    iget-object v1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v1, p1}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAtSymbol(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 403
    invoke-virtual {p0, v2}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->finishComposing(Z)V

    .line 404
    invoke-static {v3}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(C)V

    .line 405
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 408
    :cond_5
    int-to-char v1, p1

    invoke-static {v1}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    .line 409
    iget-object v1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v1, p1}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAfterPunctuation(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 410
    invoke-static {v3}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    .line 414
    iget-object v1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->disableSetUpAutoSpace()V

    .line 417
    :cond_6
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method


# virtual methods
.method public closing()V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->stopTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;)V

    .line 37
    iget-object v0, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    .line 38
    invoke-super {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->closing()V

    .line 39
    return-void
.end method

.method public initialize()V
    .locals 0

    .prologue
    .line 26
    invoke-super {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->initialize()V

    .line 27
    return-void
.end method

.method public onCharacterKey(I[I)V
    .locals 9
    .param p1, "keyCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    const/4 v8, 0x2

    const/16 v7, 0x20

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 43
    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    .line 44
    .local v0, "inputMethod":I
    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v1

    .line 45
    .local v1, "inputRange":I
    const/4 v2, 0x0

    .line 46
    .local v2, "isPopupNumber":Z
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mStateCandidate:I

    if-ne v6, v4, :cond_0

    .line 48
    iget v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosNextText:I

    if-eqz v6, :cond_0

    .line 49
    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    .line 52
    :cond_0
    invoke-virtual {p0, v4}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->setPredictionWord(Z)V

    .line 53
    iget-boolean v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mIsTraceOn:Z

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v6

    if-le v6, v8, :cond_9

    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->isSymbolAndSpace()Z

    move-result v6

    if-nez v6, :cond_9

    move v3, v4

    .line 57
    .local v3, "isTraceInput":Z
    :goto_0
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputStatus;->isPhonepadPopupNumberInput()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v6, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->isNumericCharacter(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 58
    const/4 v2, 0x1

    .line 61
    :cond_1
    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v6, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->isTextCharacter(I)Z

    move-result v6

    if-eqz v6, :cond_2

    if-nez v2, :cond_2

    if-eqz v1, :cond_4

    :cond_2
    iget-boolean v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mIsPredictionOn:Z

    if-eqz v6, :cond_3

    if-nez v3, :cond_4

    :cond_3
    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->isEnableTraceInPassword()Z

    move-result v6

    if-eqz v6, :cond_d

    if-eqz v3, :cond_d

    .line 64
    :cond_4
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v6, p1, v3}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpace(IZ)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 66
    invoke-static {v7}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(C)V

    .line 67
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v6

    if-nez v6, :cond_5

    .line 69
    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 70
    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->updateShiftState()V

    .line 75
    :cond_5
    if-nez v0, :cond_a

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->processSingleTap(I[I)V

    .line 106
    :cond_6
    :goto_1
    iget-object v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getXt9Recapture()Z

    move-result v4

    if-nez v4, :cond_8

    .line 107
    if-ne p1, v7, :cond_7

    iget v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mStateCandidate:I

    if-eq v4, v8, :cond_8

    .line 109
    :cond_7
    iput v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mStateCandidate:I

    .line 112
    :cond_8
    iput p1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mLastKeyCode:I

    .line 113
    iget-object v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v4, p1, v3}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->setUpAutoSpace(IZ)V

    .line 114
    invoke-static {v5}, Lcom/diotek/ime/framework/repository/InputStatus;->setFlagPhonepadPopupNumberInput(Z)V

    .line 115
    invoke-virtual {p0, v3}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->setBeforeTraceInput(Z)V

    .line 116
    return-void

    .end local v3    # "isTraceInput":Z
    :cond_9
    move v3, v5

    .line 53
    goto :goto_0

    .line 77
    .restart local v3    # "isTraceInput":Z
    :cond_a
    if-eq v0, v4, :cond_b

    iget-object v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 78
    :cond_b
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->processMultiTap(I[I)V

    .line 79
    iget-object v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isDynamicKDB()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 80
    if-eqz p2, :cond_6

    array-length v4, p2

    if-lez v4, :cond_6

    .line 81
    aget p1, p2, v5

    goto :goto_1

    .line 86
    :cond_c
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->processSingleTap(I[I)V

    goto :goto_1

    .line 89
    :cond_d
    iget-object v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v4, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->isNumericCharacter(I)Z

    move-result v4

    if-eqz v4, :cond_10

    iget-object v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isNumberOnlyEditor()Z

    move-result v4

    if-nez v4, :cond_10

    .line 90
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_e

    iget-object v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAtNumeric()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 92
    invoke-static {v7}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(C)V

    .line 93
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 95
    :cond_e
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputStatus;->isPhonepadPopupNumberInput()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 96
    int-to-char v4, p1

    invoke-static {v4}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    .line 97
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 99
    :cond_f
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->processSingleTap(I[I)V

    goto :goto_1

    .line 102
    :cond_10
    invoke-virtual {p0, p1, p2}, Lcom/diotek/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->processSymbolicKey(I[I)V

    .line 103
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->autoPeriod(I)V

    goto/16 :goto_1
.end method

.method public onHwrPanelLongPressed(ILjava/lang/String;)V
    .locals 0
    .param p1, "selectedArrayIndex"    # I
    .param p2, "resultString"    # Ljava/lang/String;

    .prologue
    .line 557
    return-void
.end method

.method public onText(Ljava/lang/CharSequence;)V
    .locals 5
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/16 v4, 0x19

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 566
    iget-object v1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v0

    .line 567
    .local v0, "isPrediction":Z
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    .line 568
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ne v1, v2, :cond_1

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 569
    iget-object v1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-interface {v1, v2}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(I)I

    .line 570
    iget-object v1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getExactCharSequence(Ljava/lang/StringBuilder;)I

    .line 571
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->setComposingText()V

    .line 572
    iget-object v1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1, v4}, Lcom/diotek/ime/framework/common/InputManager;->buildSuggestions(I)V

    .line 573
    iget-object v1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 574
    iget-object v1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->updateShiftState()V

    .line 594
    :cond_0
    :goto_0
    return-void

    .line 576
    :cond_1
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 577
    invoke-static {v2}, Lcom/diotek/ime/framework/repository/InputStatus;->setFlagInputNumberOnComposing(Z)V

    .line 578
    iget-object v1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-interface {v1, v2}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(I)I

    .line 579
    iget-object v1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getExactCharSequence(Ljava/lang/StringBuilder;)I

    .line 580
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->setComposingText()V

    .line 581
    iget-object v1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1, v4}, Lcom/diotek/ime/framework/common/InputManager;->buildSuggestions(I)V

    .line 582
    invoke-static {v3}, Lcom/diotek/ime/framework/repository/InputStatus;->setFlagInputNumberOnComposing(Z)V

    .line 583
    iget-object v1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 584
    iget-object v1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->updateShiftState()V

    goto :goto_0

    .line 587
    :cond_2
    invoke-super {p0, p1}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->onText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 590
    :cond_3
    invoke-super {p0, p1}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->onText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected processSymbolicKey(I[I)V
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    const/16 v3, 0x20

    .line 341
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->clearCandidateList()V

    .line 343
    iget-object v1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getCandidateviewStatus()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 344
    iget-object v1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/diotek/ime/framework/common/InputManager;->setCandidateviewStatus(I)V

    .line 345
    iget-object v1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    .line 348
    :cond_0
    const-string v1, " .,;:!?\n()[]*&@{}/<>_-+=|\'\u061b\u060c\u061f\""

    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 349
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->processWordSeparator(I[I)V

    .line 373
    :goto_0
    return-void

    .line 351
    :cond_1
    const/16 v1, 0xa

    if-eq p1, v1, :cond_2

    if-ne p1, v3, :cond_3

    .line 353
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->processWordSeparator(I[I)V

    goto :goto_0

    .line 355
    :cond_3
    const/4 v1, -0x5

    if-ne p1, v1, :cond_4

    .line 356
    invoke-direct {p0}, Lcom/diotek/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;->processBackSpaceKey()V

    goto :goto_0

    .line 360
    :cond_4
    iget-object v1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isInMultiTapInput()Z

    move-result v0

    .line 361
    .local v0, "isInMultiTap":Z
    if-eqz v0, :cond_5

    .line 362
    invoke-virtual {p0, p1, p2}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->processMultiTapSymbolicKey(I[I)V

    goto :goto_0

    .line 365
    :cond_5
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->finishComposing(Z)V

    .line 366
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->initComposingBuffer()V

    .line 367
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 368
    iget-object v1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v1, p1}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAtSymbol(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 369
    invoke-static {v3}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    .line 371
    :cond_6
    int-to-char v1, p1

    invoke-static {v1}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    .line 372
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public release()V
    .locals 0

    .prologue
    .line 32
    return-void
.end method

.method public setAddStrokeCallBackOnHWREngine()V
    .locals 0

    .prologue
    .line 562
    return-void
.end method

.method public updateVOHWRSuggestion()V
    .locals 0

    .prologue
    .line 600
    return-void
.end method
