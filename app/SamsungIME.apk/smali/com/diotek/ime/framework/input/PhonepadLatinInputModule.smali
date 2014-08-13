.class public Lcom/diotek/ime/framework/input/PhonepadLatinInputModule;
.super Lcom/diotek/ime/framework/input/AbstractInputModule;
.source "PhonepadLatinInputModule.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;-><init>()V

    .line 21
    return-void
.end method

.method private processBackSpaceKey()V
    .locals 15

    .prologue
    .line 486
    iget-object v12, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v5

    .line 487
    .local v5, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v5, :cond_1

    .line 612
    :cond_0
    :goto_0
    return-void

    .line 490
    :cond_1
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    .line 491
    iget-object v12, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v13, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v12, v13}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    .line 492
    const/4 v12, 0x1

    new-array v1, v12, [I

    .line 493
    .local v1, "activeIndex":[I
    iget-object v12, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v12}, Lcom/diotek/ime/framework/input/AbstractInputModule;->stopTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;)V

    .line 495
    const-string v6, ""

    .line 499
    .local v6, "lastChar":Ljava/lang/String;
    const/4 v11, 0x0

    .line 500
    .local v11, "ss":Landroid/text/SpannableString;
    iget-boolean v12, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-eqz v12, :cond_6

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 502
    const v12, 0x7fffffff

    const/4 v13, 0x1

    :try_start_0
    invoke-interface {v5, v12, v13}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Landroid/text/SpannableString;

    move-object v11, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 506
    :goto_1
    if-eqz v11, :cond_3

    .line 507
    const/4 v12, 0x0

    invoke-virtual {v11}, Landroid/text/SpannableString;->length()I

    move-result v13

    const-class v14, Ljava/lang/Object;

    invoke-virtual {v11, v12, v13, v14}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v9

    .line 508
    .local v9, "sp":[Ljava/lang/Object;
    move-object v2, v9

    .local v2, "arr$":[Ljava/lang/Object;
    array-length v7, v2

    .local v7, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_2
    if-ge v4, v7, :cond_3

    aget-object v10, v2, v4

    .line 509
    .local v10, "span":Ljava/lang/Object;
    instance-of v12, v10, Landroid/text/style/UnderlineSpan;

    if-eqz v12, :cond_2

    invoke-virtual {v11, v10}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v12

    invoke-virtual {v11}, Landroid/text/SpannableString;->length()I

    move-result v13

    if-ne v12, v13, :cond_2

    .line 510
    invoke-virtual {v11, v10}, Landroid/text/SpannableString;->getSpanStart(Ljava/lang/Object;)I

    move-result v12

    invoke-virtual {v11, v10}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v13

    invoke-interface {v5, v12, v13}, Landroid/view/inputmethod/InputConnection;->setComposingRegion(II)Z

    .line 508
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 503
    .end local v2    # "arr$":[Ljava/lang/Object;
    .end local v4    # "i$":I
    .end local v7    # "len$":I
    .end local v9    # "sp":[Ljava/lang/Object;
    .end local v10    # "span":Ljava/lang/Object;
    :catch_0
    move-exception v3

    .line 504
    .local v3, "e":Ljava/lang/ClassCastException;
    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-interface {v5, v12, v13}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v6

    .end local v6    # "lastChar":Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .restart local v6    # "lastChar":Ljava/lang/String;
    goto :goto_1

    .line 514
    .end local v3    # "e":Ljava/lang/ClassCastException;
    :cond_3
    const-string v12, ""

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    if-eqz v11, :cond_4

    invoke-virtual {v11}, Landroid/text/SpannableString;->length()I

    move-result v12

    if-lez v12, :cond_4

    .line 515
    invoke-virtual {v11}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v12, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 521
    :cond_4
    :goto_3
    if-nez v6, :cond_5

    .line 522
    const-string v6, ""

    .line 524
    :cond_5
    const/4 v11, 0x0

    .line 525
    invoke-virtual {p0, v6}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setDeleteCount(Ljava/lang/String;)V

    .line 527
    iget-boolean v12, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-eqz v12, :cond_b

    iget-object v12, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v12, :cond_b

    iget-object v12, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_b

    iget-object v12, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_b

    iget v12, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mStateCandidate:I

    const/4 v13, 0x1

    if-eq v12, v13, :cond_b

    .line 530
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v12

    const/4 v13, 0x1

    if-le v12, v13, :cond_9

    .line 531
    iget-object v12, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    const/4 v13, -0x5

    invoke-interface {v12, v13}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(I)I

    move-result v12

    if-nez v12, :cond_8

    .line 532
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->isRecapture()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 533
    const/4 v12, 0x1

    invoke-virtual {p0, v12}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 534
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initComposingBuffer()V

    .line 535
    const/4 v12, -0x5

    invoke-virtual {p0, v12}, Lcom/diotek/ime/framework/input/AbstractInputModule;->processReCaptureForXT9(I)V

    .line 536
    iget-object v12, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    const/4 v13, -0x5

    invoke-interface {v12, v13}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(I)I

    .line 537
    iget-object v12, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-interface {v12, v13}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getCharSequence(Ljava/lang/StringBuilder;)I

    .line 547
    :goto_4
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setComposingText()V

    .line 548
    iget-object v12, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-interface {v12, v13}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputCharSequence(Ljava/lang/CharSequence;)I

    .line 549
    iget-object v12, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 550
    iget-object v12, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v13, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v12, v13}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    .line 551
    iget-object v12, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v12, v1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getActiveIndex([I)I

    .line 552
    iget-object v12, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v13, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v12, v13}, Lcom/diotek/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 518
    :cond_6
    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-interface {v5, v12, v13}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v6

    .end local v6    # "lastChar":Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .restart local v6    # "lastChar":Ljava/lang/String;
    goto/16 :goto_3

    .line 539
    :cond_7
    const/4 v12, 0x1

    invoke-virtual {p0, v12}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 540
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initComposingBuffer()V

    .line 541
    const/16 v12, 0x43

    invoke-virtual {p0, v12}, Lcom/diotek/ime/framework/input/AbstractInputModule;->onKeyDownUpHandle(I)V

    goto :goto_4

    .line 544
    :cond_8
    iget-object v12, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-interface {v12, v13}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getCharSequence(Ljava/lang/StringBuilder;)I

    goto :goto_4

    .line 553
    :cond_9
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v12

    if-eqz v12, :cond_a

    .line 554
    iget-object v12, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    const/4 v13, -0x5

    invoke-interface {v12, v13}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(I)I

    .line 555
    iget-object v12, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    .line 556
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 557
    iget-object v12, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 558
    iget-object v12, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v13, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v12, v13}, Lcom/diotek/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    .line 559
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p0, v12}, Lcom/diotek/ime/framework/input/AbstractInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 561
    :cond_a
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 562
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p0, v12}, Lcom/diotek/ime/framework/input/AbstractInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 563
    iget-object v12, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 564
    iget-object v12, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v13, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v12, v13}, Lcom/diotek/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    .line 565
    iget-object v12, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    const/4 v13, -0x1

    invoke-interface {v12, v13}, Lcom/diotek/ime/framework/engine/InputEngineManager;->setSuggestionActiveIndex(I)V

    goto/16 :goto_0

    .line 567
    :cond_b
    iget-boolean v12, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-eqz v12, :cond_c

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->isRecapture()Z

    move-result v12

    if-eqz v12, :cond_c

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_c

    .line 571
    const/4 v12, -0x5

    invoke-virtual {p0, v12}, Lcom/diotek/ime/framework/input/AbstractInputModule;->processReCaptureForXT9(I)V

    goto/16 :goto_0

    .line 574
    :cond_c
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v12

    if-eqz v12, :cond_d

    .line 575
    const/4 v12, 0x1

    invoke-virtual {p0, v12}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 576
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initComposingBuffer()V

    .line 578
    :cond_d
    iget v12, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputLanguage:I

    const/high16 v13, 0x76690000

    if-ne v12, v13, :cond_e

    .line 579
    if-eqz v6, :cond_e

    .line 580
    invoke-static {v6}, Lcom/diotek/ime/framework/common/InputSequenceCheck;->normalizedNFD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 581
    .local v8, "nonNormalizedChar":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x1

    if-le v12, v13, :cond_e

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v8, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-static {v12}, Lcom/diotek/ime/framework/common/InputSequenceCheck;->isVietameseTone(I)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 585
    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-interface {v5, v12, v13}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 586
    invoke-static {v8}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    .line 587
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x1

    invoke-interface {v5, v12, v13}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 588
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 593
    .end local v8    # "nonNormalizedChar":Ljava/lang/String;
    :cond_e
    iget-object v12, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    const/4 v13, -0x5

    invoke-interface {v12, v13}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(I)I

    .line 594
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getDeleteCount()I

    move-result v12

    const/16 v13, 0x14

    if-le v12, v13, :cond_f

    iget-object v12, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentPackageName()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_f

    iget-object v12, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentPackageName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "com.sec.chaton"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_f

    .line 598
    if-eqz v5, :cond_0

    .line 599
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getLastWordDividerIndex()I

    move-result v12

    const/4 v13, 0x0

    invoke-interface {v5, v12, v13}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto/16 :goto_0

    .line 602
    :cond_f
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initWordDividerIndexList()V

    .line 603
    const/16 v12, 0x43

    invoke-virtual {p0, v12}, Lcom/diotek/ime/framework/input/AbstractInputModule;->onKeyDownUpHandle(I)V

    .line 604
    iget-boolean v12, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-eqz v12, :cond_10

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->isRecapture()Z

    move-result v12

    if-eqz v12, :cond_10

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_10

    .line 606
    iget-object v12, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->postRecaptureWordXT9Message()V

    goto/16 :goto_0

    .line 608
    :cond_10
    const/4 v12, 0x1

    invoke-virtual {p0, v12}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    goto/16 :goto_0
.end method

.method private processMultiTap(I[I)V
    .locals 13
    .param p1, "keyCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    const/16 v12, 0x49

    const/16 v10, 0x40

    const/16 v11, 0x20

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 109
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    .line 110
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v6, v9}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    .line 111
    new-array v0, v7, [I

    .line 113
    .local v0, "activeIndex":[I
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v6}, Lcom/diotek/ime/framework/input/AbstractInputModule;->isTimerRunning(Lcom/diotek/ime/framework/input/InputModule$Timer;)Z

    move-result v5

    .line 114
    .local v5, "isTimerRunning":Z
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v6}, Lcom/diotek/ime/framework/input/AbstractInputModule;->stopTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;)V

    .line 115
    iget v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mLastKeyCode:I

    if-ne v6, p1, :cond_6

    move v4, v7

    .line 116
    .local v4, "isEqualKey":Z
    :goto_0
    iget-boolean v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->isEnableTraceInPassword()Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_0
    move v3, v7

    .line 117
    .local v3, "isEnableTraceInput":Z
    :goto_1
    iget-boolean v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v6, :cond_8

    .line 118
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v6

    if-lt v6, v10, :cond_1

    .line 119
    invoke-virtual {p0, v7}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 120
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initComposingBuffer()V

    .line 121
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/engine/InputEngineManager;->breakContext()V

    .line 122
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    .line 146
    :cond_1
    :goto_2
    if-eqz v3, :cond_11

    iget-boolean v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsTraceOn:Z

    if-eqz v6, :cond_11

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    if-eqz v6, :cond_11

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v6

    const/4 v9, 0x2

    if-le v6, v9, :cond_11

    .line 147
    new-array v1, v7, [Z

    .line 148
    .local v1, "bAddSpace":[Z
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v9}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTracePoint()[Landroid/graphics/PointF;

    move-result-object v9

    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v10}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v10

    invoke-interface {v6, v9, v10, v1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->isAutoAcceptBeforeTrace([Landroid/graphics/PointF;I[Z)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 150
    aget-boolean v6, v1, v8

    if-eqz v6, :cond_c

    .line 151
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v6, v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getActiveIndex([I)I

    .line 152
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v6, :cond_2

    aget v6, v0, v8

    if-ltz v6, :cond_2

    aget v6, v0, v8

    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v6, v9, :cond_2

    .line 153
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    aget v9, v0, v8

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v6}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(Ljava/lang/CharSequence;)V

    .line 154
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setComposingText()V

    .line 155
    aget v6, v0, v8

    invoke-virtual {p0, v6}, Lcom/diotek/ime/framework/input/AbstractInputModule;->selectWordInList(I)V

    .line 156
    invoke-virtual {p0, v7}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 157
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initComposingBuffer()V

    .line 158
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->reset()V

    .line 159
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isAutoSpaceOn()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 160
    invoke-static {v11}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(C)V

    .line 161
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/diotek/ime/framework/input/AbstractInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v6

    if-nez v6, :cond_2

    .line 163
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 164
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->updateShiftState()V

    .line 173
    :cond_2
    :goto_3
    if-eqz v5, :cond_5

    .line 174
    invoke-virtual {p0, v7}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 175
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initComposingBuffer()V

    .line 176
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAtTrace()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 177
    invoke-static {v11}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(C)V

    .line 178
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/diotek/ime/framework/input/AbstractInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 180
    :cond_3
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 181
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->updateShiftState()V

    .line 183
    :cond_4
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    .line 185
    :cond_5
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTracePoint()[Landroid/graphics/PointF;

    move-result-object v7

    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v9}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v9

    const/4 v10, -0x1

    invoke-interface {v6, v7, v9, v10}, Lcom/diotek/ime/framework/engine/InputEngineManager;->processTrace([Landroid/graphics/PointF;IB)S

    move-result v6

    if-eqz v6, :cond_d

    .line 187
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->clearTraceInfo()V

    .line 188
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->resetPredictionWord()V

    .line 279
    .end local v1    # "bAddSpace":[Z
    :goto_4
    return-void

    .end local v3    # "isEnableTraceInput":Z
    .end local v4    # "isEqualKey":Z
    :cond_6
    move v4, v8

    .line 115
    goto/16 :goto_0

    .restart local v4    # "isEqualKey":Z
    :cond_7
    move v3, v8

    .line 116
    goto/16 :goto_1

    .line 125
    .restart local v3    # "isEnableTraceInput":Z
    :cond_8
    if-eqz v5, :cond_9

    if-nez v4, :cond_1

    .line 127
    :cond_9
    if-eqz v5, :cond_a

    .line 128
    invoke-virtual {p0, v7}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 129
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initComposingBuffer()V

    .line 130
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    .line 132
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 133
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->updateShiftState()V

    goto/16 :goto_2

    .line 136
    :cond_a
    invoke-virtual {p0, v7}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 137
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initComposingBuffer()V

    .line 138
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isAutoSpaceOn()Z

    move-result v6

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isLastActionIsTraceOrPick()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 140
    invoke-static {v11}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(C)V

    .line 141
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/diotek/ime/framework/input/AbstractInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 143
    :cond_b
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    goto/16 :goto_2

    .line 170
    .restart local v1    # "bAddSpace":[Z
    :cond_c
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    goto/16 :goto_3

    .line 191
    :cond_d
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getCharSequence(Ljava/lang/StringBuilder;)I

    .line 192
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->clearTraceInfo()V

    .line 193
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_e

    .line 194
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearAction()V

    .line 195
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->resetPredictionWord()V

    .line 260
    .end local v1    # "bAddSpace":[Z
    :cond_e
    :goto_5
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->isLaoAcceptable()Z

    move-result v6

    if-nez v6, :cond_f

    if-nez v4, :cond_f

    .line 261
    invoke-static {v8}, Lcom/diotek/ime/framework/input/ComposingTextManager;->setLength(I)V

    .line 262
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    .line 265
    :cond_f
    iget v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputLanguage:I

    const/high16 v7, 0x76690000

    if-ne v6, v7, :cond_10

    .line 266
    iget-boolean v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    invoke-virtual {p0, p1, v6}, Lcom/diotek/ime/framework/input/AbstractInputModule;->processVietnameseTone(IZ)V

    .line 269
    :cond_10
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setComposingText()V

    .line 271
    iget-boolean v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-eqz v6, :cond_1d

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v6, :cond_1d

    .line 272
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 273
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v6, v7}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    .line 274
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v6, v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getActiveIndex([I)I

    .line 275
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v6, v7}, Lcom/diotek/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    goto/16 :goto_4

    .line 198
    :cond_11
    iget-boolean v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-eqz v6, :cond_17

    if-eqz v5, :cond_17

    .line 199
    invoke-virtual {p0, v7}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 200
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initComposingBuffer()V

    .line 201
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isAutoSpaceOn()Z

    move-result v6

    if-eqz v6, :cond_12

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAtText()Z

    move-result v6

    if-eqz v6, :cond_12

    .line 203
    invoke-static {v11}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(C)V

    .line 204
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/diotek/ime/framework/input/AbstractInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 206
    :cond_12
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v6

    if-eqz v6, :cond_13

    .line 207
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->updateShiftState()V

    .line 209
    :cond_13
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    .line 210
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v6, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(I)I

    .line 237
    :cond_14
    :goto_6
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getCharSequence(Ljava/lang/StringBuilder;)I

    .line 239
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v6

    if-eqz v6, :cond_15

    .line 240
    iget v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputLanguage:I

    const/high16 v7, 0x74720000

    if-ne v6, v7, :cond_15

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v6

    if-eqz v6, :cond_15

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getXt9Version()I

    move-result v6

    if-nez v6, :cond_15

    .line 243
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->getFirstChar()C

    move-result v2

    .line 244
    .local v2, "code":C
    if-ne v2, v12, :cond_1c

    .line 245
    const/16 v6, 0x130

    invoke-static {v8, v6}, Lcom/diotek/ime/framework/input/ComposingTextManager;->setCharAt(IC)V

    .line 252
    .end local v2    # "code":C
    :cond_15
    :goto_7
    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->isUsingToggleNumberInput()Z

    move-result v6

    if-nez v6, :cond_16

    iget-boolean v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-nez v6, :cond_16

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v6

    if-eqz v6, :cond_16

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->getFirstChar()C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 254
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v6, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(I)I

    .line 255
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getCharSequence(Ljava/lang/StringBuilder;)I

    .line 257
    :cond_16
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearAction()V

    goto/16 :goto_5

    .line 211
    :cond_17
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAtText()Z

    move-result v6

    if-eqz v6, :cond_19

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v6

    if-eqz v6, :cond_19

    .line 212
    invoke-virtual {p0, v8}, Lcom/diotek/ime/framework/input/AbstractInputModule;->selectWordInList(I)V

    .line 213
    invoke-virtual {p0, v7}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 214
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initComposingBuffer()V

    .line 215
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isAutoSpaceOn()Z

    move-result v6

    if-eqz v6, :cond_18

    .line 216
    invoke-static {v11}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(C)V

    .line 217
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/diotek/ime/framework/input/AbstractInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 218
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v6

    if-eqz v6, :cond_18

    .line 219
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->updateShiftState()V

    .line 222
    :cond_18
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v6, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(I)I

    goto/16 :goto_6

    .line 223
    :cond_19
    iget-boolean v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-eqz v6, :cond_1b

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->isRecapture()Z

    move-result v6

    if-eqz v6, :cond_1b

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1b

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v6, :cond_1a

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_1a

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_1b

    :cond_1a
    iget v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mStateCandidate:I

    if-ne v6, v7, :cond_1b

    .line 228
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v6, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(I)I

    .line 229
    iget v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosPrevText:I

    if-ge v6, v10, :cond_14

    .line 230
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getCharSequence(Ljava/lang/StringBuilder;)I

    .line 231
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/diotek/ime/framework/input/AbstractInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 232
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->processReCaptureForXT9(I)V

    goto/16 :goto_6

    .line 235
    :cond_1b
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v6, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(I)I

    goto/16 :goto_6

    .line 246
    .restart local v2    # "code":C
    :cond_1c
    const/16 v6, 0x130

    if-ne v2, v6, :cond_15

    .line 247
    invoke-static {v8, v12}, Lcom/diotek/ime/framework/input/ComposingTextManager;->setCharAt(IC)V

    goto/16 :goto_7

    .line 277
    .end local v2    # "code":C
    :cond_1d
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    const/16 v7, 0x5dc

    invoke-virtual {p0, v6, v7}, Lcom/diotek/ime/framework/input/AbstractInputModule;->startTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;I)V

    goto/16 :goto_4
.end method

.method private processSingleTap(I[I)V
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    const/4 v3, 0x1

    .line 282
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    .line 283
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v1, v2}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    .line 284
    new-array v0, v3, [I

    .line 286
    .local v0, "activeIndex":[I
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->isTimerRunning(Lcom/diotek/ime/framework/input/InputModule$Timer;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 289
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->stopTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;)V

    .line 290
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 291
    :cond_0
    invoke-virtual {p0, v3}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 292
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initComposingBuffer()V

    .line 296
    :cond_1
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v1, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(I)I

    .line 297
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getCharSequence(Ljava/lang/StringBuilder;)I

    .line 299
    iget-boolean v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-eqz v1, :cond_3

    .line 300
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setComposingText()V

    .line 301
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputCharSequence(Ljava/lang/CharSequence;)I

    .line 302
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 303
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 304
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v1, v2}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    .line 305
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v1, v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getActiveIndex([I)I

    .line 306
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v1, v2}, Lcom/diotek/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    .line 313
    :cond_2
    :goto_0
    return-void

    .line 309
    :cond_3
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 310
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 311
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    goto :goto_0
.end method

.method private processWordSeparator(I[I)V
    .locals 13
    .param p1, "keyCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    const/16 v12, 0x20

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 371
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    .line 372
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v6, v7}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    .line 373
    new-array v1, v11, [I

    .line 374
    .local v1, "activeIndex":[I
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v6, v1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getActiveIndex([I)I

    .line 375
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v7, "SETTINGS_DEFAULT_NEXTWORDPREDICTION"

    invoke-interface {v6, v7, v10}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v4

    .line 377
    .local v4, "isNextWordPredictionOn":Z
    const/4 v2, 0x0

    .line 378
    .local v2, "isActiveIndex":Z
    const/4 v0, 0x0

    .line 379
    .local v0, "ActiveText":Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_2

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_2

    aget v6, v1, v10

    if-ltz v6, :cond_2

    aget v6, v1, v10

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 381
    iget v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPickSuggestionIndex:I

    .line 382
    .local v5, "pickeSuggestionIndex":I
    iget v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mStateCandidate:I

    if-nez v6, :cond_1

    .line 383
    const/4 v6, -0x1

    if-eq v5, v6, :cond_6

    .line 384
    iget-boolean v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsDisableAddwordbyCSC:Z

    if-eqz v6, :cond_0

    .line 385
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mBackupCandidate:Ljava/lang/StringBuilder;

    invoke-interface {v6, v7, v5}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getCharSequence(Ljava/lang/StringBuilder;I)I

    .line 386
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mBackupCandidate:Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Lcom/diotek/ime/framework/input/AbstractInputModule;->isNeedToAddUDB(Ljava/lang/CharSequence;)V

    .line 387
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v7, "ADDWORD_BACKUP_CADIDATE"

    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mBackupCandidate:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    :cond_0
    invoke-virtual {p0, v5}, Lcom/diotek/ime/framework/input/AbstractInputModule;->selectWordInList(I)V

    .line 399
    :cond_1
    :goto_0
    aget v6, v1, v10

    if-ltz v6, :cond_2

    aget v6, v1, v10

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 400
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    aget v8, v1, v10

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    aget v9, v1, v10

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-interface {v7, v8, v6}, Lcom/diotek/ime/framework/engine/InputEngineManager;->wordSelected(ILjava/lang/CharSequence;)I

    .line 401
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    .line 403
    aget v6, v1, v10

    if-eqz v6, :cond_8

    .line 404
    const/4 v2, 0x1

    .line 405
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    aget v7, v1, v10

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "ActiveText":Ljava/lang/CharSequence;
    check-cast v0, Ljava/lang/CharSequence;

    .line 413
    .end local v5    # "pickeSuggestionIndex":I
    .restart local v0    # "ActiveText":Ljava/lang/CharSequence;
    :cond_2
    :goto_1
    const/16 v6, 0xa

    if-ne p1, v6, :cond_9

    .line 414
    if-eqz v2, :cond_3

    .line 415
    invoke-static {v0}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(Ljava/lang/CharSequence;)V

    .line 416
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setComposingText()V

    .line 417
    invoke-virtual {p0, v11}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 418
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initComposingBuffer()V

    .line 420
    :cond_3
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->sendEnterKeyHandle()V

    .line 421
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/engine/InputEngineManager;->breakContext()V

    .line 422
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 423
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->updateShiftState()V

    .line 425
    :cond_4
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6, v10}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    .line 483
    :cond_5
    :goto_2
    return-void

    .line 391
    .restart local v5    # "pickeSuggestionIndex":I
    :cond_6
    iget-boolean v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsDisableAddwordbyCSC:Z

    if-eqz v6, :cond_7

    .line 392
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mBackupCandidate:Ljava/lang/StringBuilder;

    aget v8, v1, v10

    invoke-interface {v6, v7, v8}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getCharSequence(Ljava/lang/StringBuilder;I)I

    .line 393
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mBackupCandidate:Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Lcom/diotek/ime/framework/input/AbstractInputModule;->isNeedToAddUDB(Ljava/lang/CharSequence;)V

    .line 394
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v7, "ADDWORD_BACKUP_CADIDATE"

    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mBackupCandidate:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    :cond_7
    aget v6, v1, v10

    invoke-virtual {p0, v6}, Lcom/diotek/ime/framework/input/AbstractInputModule;->selectWordInList(I)V

    goto/16 :goto_0

    .line 407
    :cond_8
    invoke-virtual {p0, v11}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 408
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initComposingBuffer()V

    goto :goto_1

    .line 428
    .end local v5    # "pickeSuggestionIndex":I
    :cond_9
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->isInMultiTapInput()Z

    move-result v3

    .line 429
    .local v3, "isInMultiTap":Z
    if-eqz v3, :cond_a

    .line 430
    invoke-virtual {p0, p1, p2}, Lcom/diotek/ime/framework/input/AbstractInputModule;->processMultiTapSymbolicKey(I[I)V

    goto :goto_2

    .line 434
    :cond_a
    if-nez v2, :cond_b

    .line 435
    invoke-virtual {p0, v11}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 436
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 438
    :cond_b
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v6}, Lcom/diotek/ime/framework/input/AbstractInputModule;->isTimerRunning(Lcom/diotek/ime/framework/input/InputModule$Timer;)Z

    move-result v6

    if-eqz v6, :cond_d

    if-ne p1, v12, :cond_d

    .line 439
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v6}, Lcom/diotek/ime/framework/input/AbstractInputModule;->stopTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;)V

    .line 440
    invoke-virtual {p0, v11}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 441
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 442
    iget-boolean v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsKorMode:Z

    if-nez v6, :cond_c

    .line 443
    int-to-char v6, p1

    invoke-static {v6}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    .line 444
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/diotek/ime/framework/input/AbstractInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 478
    :cond_c
    :goto_3
    iget-boolean v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-eqz v6, :cond_5

    if-eqz v4, :cond_5

    iget v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mStateCandidate:I

    if-nez v6, :cond_5

    .line 481
    invoke-virtual {p0, v11}, Lcom/diotek/ime/framework/input/AbstractInputModule;->doNextWordPrediction(Z)V

    goto :goto_2

    .line 447
    :cond_d
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v6, p1}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAtSymbol(I)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 448
    invoke-virtual {p0, v11}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 449
    invoke-static {v12}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(C)V

    .line 450
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/diotek/ime/framework/input/AbstractInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 452
    :cond_e
    if-eqz v2, :cond_10

    .line 453
    invoke-static {v0}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(Ljava/lang/CharSequence;)V

    .line 454
    int-to-char v6, p1

    invoke-static {v6}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    .line 455
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v6, p1}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAfterPunctuation(I)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 456
    invoke-static {v12}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    .line 460
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->disableSetUpAutoSpace()V

    .line 462
    :cond_f
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/diotek/ime/framework/input/AbstractInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 464
    :cond_10
    invoke-virtual {p0, v11}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 465
    int-to-char v6, p1

    invoke-static {v6}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(C)V

    .line 466
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v6, p1}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAfterPunctuation(I)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 467
    invoke-static {v12}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    .line 471
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->disableSetUpAutoSpace()V

    .line 473
    :cond_11
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/diotek/ime/framework/input/AbstractInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method


# virtual methods
.method public closing()V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->stopTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;)V

    .line 36
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    .line 37
    invoke-super {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->closing()V

    .line 38
    return-void
.end method

.method public initialize()V
    .locals 0

    .prologue
    .line 25
    invoke-super {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initialize()V

    .line 26
    return-void
.end method

.method public onCharacterKey(I[I)V
    .locals 9
    .param p1, "keyCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    const/4 v8, 0x2

    const/16 v7, 0x20

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 42
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    .line 43
    .local v0, "inputMethod":I
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v1

    .line 44
    .local v1, "inputRange":I
    const/4 v2, 0x0

    .line 45
    .local v2, "isPopupNumber":Z
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mStateCandidate:I

    if-ne v6, v4, :cond_0

    .line 47
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    .line 49
    :cond_0
    invoke-virtual {p0, v4}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setPredictionWord(Z)V

    .line 50
    iget-boolean v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsTraceOn:Z

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v6

    if-le v6, v8, :cond_7

    move v3, v4

    .line 53
    .local v3, "isTraceInput":Z
    :goto_0
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputStatus;->isPhonepadPopupNumberInput()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v6, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->isNumericCharacter(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 54
    const/4 v2, 0x1

    .line 57
    :cond_1
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v6, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->isTextCharacter(I)Z

    move-result v6

    if-eqz v6, :cond_2

    if-nez v2, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    iget-boolean v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-eqz v6, :cond_b

    if-eqz v3, :cond_b

    .line 60
    :cond_3
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v6, p1, v3}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpace(IZ)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 62
    invoke-static {v7}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(C)V

    .line 63
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/diotek/ime/framework/input/AbstractInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v6

    if-nez v6, :cond_4

    .line 65
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 66
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->updateShiftState()V

    .line 71
    :cond_4
    if-nez v0, :cond_8

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/input/PhonepadLatinInputModule;->processSingleTap(I[I)V

    .line 99
    :goto_1
    if-ne p1, v7, :cond_5

    iget v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mStateCandidate:I

    if-eq v4, v8, :cond_6

    .line 101
    :cond_5
    iput v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mStateCandidate:I

    .line 103
    :cond_6
    iput p1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mLastKeyCode:I

    .line 104
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v4, p1, v3}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->setUpAutoSpace(IZ)V

    .line 105
    invoke-static {v5}, Lcom/diotek/ime/framework/repository/InputStatus;->setFlagPhonepadPopupNumberInput(Z)V

    .line 106
    return-void

    .end local v3    # "isTraceInput":Z
    :cond_7
    move v3, v5

    .line 50
    goto :goto_0

    .line 73
    .restart local v3    # "isTraceInput":Z
    :cond_8
    if-eq v0, v4, :cond_9

    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 74
    :cond_9
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/input/PhonepadLatinInputModule;->processMultiTap(I[I)V

    goto :goto_1

    .line 76
    :cond_a
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/input/PhonepadLatinInputModule;->processSingleTap(I[I)V

    goto :goto_1

    .line 79
    :cond_b
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v4, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->isNumericCharacter(I)Z

    move-result v4

    if-eqz v4, :cond_e

    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isNumberOnlyEditor()Z

    move-result v4

    if-nez v4, :cond_e

    .line 80
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAtNumeric()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 82
    invoke-static {v7}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(C)V

    .line 83
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/diotek/ime/framework/input/AbstractInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 85
    :cond_c
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputStatus;->isPhonepadPopupNumberInput()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 86
    int-to-char v4, p1

    invoke-static {v4}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    .line 87
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/diotek/ime/framework/input/AbstractInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 89
    :cond_d
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/input/PhonepadLatinInputModule;->processSingleTap(I[I)V

    goto :goto_1

    .line 92
    :cond_e
    invoke-virtual {p0, p1, p2}, Lcom/diotek/ime/framework/input/PhonepadLatinInputModule;->processSymbolicKey(I[I)V

    .line 93
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->autoPeriod(I)V

    goto :goto_1
.end method

.method public onHwrPanelLongPressed(ILjava/lang/String;)V
    .locals 0
    .param p1, "selectedArrayIndex"    # I
    .param p2, "resultString"    # Ljava/lang/String;

    .prologue
    .line 619
    return-void
.end method

.method public onText(Ljava/lang/CharSequence;)V
    .locals 5
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 628
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v1

    .line 629
    .local v1, "isPrediction":Z
    if-eqz v1, :cond_1

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 630
    new-array v0, v3, [I

    .line 631
    .local v0, "activeIndex":[I
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getStateCandidate()I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 632
    invoke-super {p0, p1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->onText(Ljava/lang/CharSequence;)V

    .line 633
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->processRecaptureXT9()V

    .line 649
    .end local v0    # "activeIndex":[I
    :goto_0
    return-void

    .line 635
    .restart local v0    # "activeIndex":[I
    :cond_0
    invoke-static {v3}, Lcom/diotek/ime/framework/repository/InputStatus;->setFlagInputNumberOnComposing(Z)V

    .line 636
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-interface {v2, v3}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(I)I

    .line 637
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getCharSequence(Ljava/lang/StringBuilder;)I

    .line 638
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setComposingText()V

    .line 639
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputCharSequence(Ljava/lang/CharSequence;)I

    .line 640
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 641
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v2, v3}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    .line 642
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v2, v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getActiveIndex([I)I

    .line 643
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v2, v3}, Lcom/diotek/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    .line 644
    invoke-static {v4}, Lcom/diotek/ime/framework/repository/InputStatus;->setFlagInputNumberOnComposing(Z)V

    goto :goto_0

    .line 647
    .end local v0    # "activeIndex":[I
    :cond_1
    invoke-super {p0, p1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->onText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected processSymbolicKey(I[I)V
    .locals 7
    .param p1, "keyCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    const/16 v6, 0x20

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 326
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    .line 327
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v2, v3}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    .line 328
    new-array v0, v5, [I

    .line 330
    .local v0, "activeIndex":[I
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getCandidateviewStatus()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 331
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Lcom/diotek/ime/framework/common/InputManager;->setCandidateviewStatus(I)V

    .line 332
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2, v4}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    .line 335
    :cond_0
    const-string v2, " .,;:!?\n()[]*&@{}/<>_-+=|\'\u061b\u060c\u061f\""

    invoke-virtual {v2, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 336
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/input/PhonepadLatinInputModule;->processWordSeparator(I[I)V

    .line 368
    :goto_0
    return-void

    .line 338
    :cond_1
    const/16 v2, 0xa

    if-eq p1, v2, :cond_2

    if-ne p1, v6, :cond_3

    .line 340
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/input/PhonepadLatinInputModule;->processWordSeparator(I[I)V

    goto :goto_0

    .line 342
    :cond_3
    const/4 v2, -0x5

    if-ne p1, v2, :cond_4

    .line 343
    invoke-direct {p0}, Lcom/diotek/ime/framework/input/PhonepadLatinInputModule;->processBackSpaceKey()V

    goto :goto_0

    .line 345
    :cond_4
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_5

    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 346
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    int-to-char v3, p1

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputCharSequence(Ljava/lang/CharSequence;)I

    .line 347
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getCharSequence(Ljava/lang/StringBuilder;)I

    .line 348
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setComposingText()V

    .line 349
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 350
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v2, v3}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    .line 351
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v2, v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getActiveIndex([I)I

    .line 352
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v2, v3}, Lcom/diotek/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    .line 355
    :cond_5
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isInMultiTapInput()Z

    move-result v1

    .line 356
    .local v1, "isInMultiTap":Z
    if-eqz v1, :cond_6

    .line 357
    invoke-virtual {p0, p1, p2}, Lcom/diotek/ime/framework/input/AbstractInputModule;->processMultiTapSymbolicKey(I[I)V

    goto :goto_0

    .line 360
    :cond_6
    invoke-virtual {p0, v5}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 361
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initComposingBuffer()V

    .line 362
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 363
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v2, p1}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAtSymbol(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 364
    invoke-static {v6}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    .line 366
    :cond_7
    int-to-char v2, p1

    invoke-static {v2}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    .line 367
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/diotek/ime/framework/input/AbstractInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public release()V
    .locals 0

    .prologue
    .line 31
    return-void
.end method

.method public setAddStrokeCallBackOnHWREngine()V
    .locals 0

    .prologue
    .line 624
    return-void
.end method

.method public updateVOHWRSuggestion()V
    .locals 0

    .prologue
    .line 653
    return-void
.end method
