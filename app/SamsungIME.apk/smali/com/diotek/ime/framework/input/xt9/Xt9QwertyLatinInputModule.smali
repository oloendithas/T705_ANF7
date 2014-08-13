.class public Lcom/diotek/ime/framework/input/xt9/Xt9QwertyLatinInputModule;
.super Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;
.source "Xt9QwertyLatinInputModule.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;-><init>()V

    .line 27
    return-void
.end method

.method private isLetterFrontOfCursor()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 142
    iget-object v3, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 143
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v1, :cond_1

    .line 152
    :cond_0
    :goto_0
    return v2

    .line 147
    :cond_1
    const/4 v3, 0x1

    invoke-interface {v1, v3, v2}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 148
    .local v0, "frontString":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 152
    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    goto :goto_0
.end method

.method private processBackSpaceKey()V
    .locals 18

    .prologue
    .line 606
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v15}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v5

    .line 607
    .local v5, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v5, :cond_1

    .line 752
    :cond_0
    :goto_0
    return-void

    .line 611
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->clearCandidateList()V

    .line 612
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->stopTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;)V

    .line 614
    const-string v8, ""

    .line 615
    .local v8, "lastChar":Ljava/lang/String;
    const-string v10, ""

    .line 619
    .local v10, "nextChar":Ljava/lang/String;
    const/4 v14, 0x0

    .line 620
    .local v14, "ss":Landroid/text/SpannableString;
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mIsPredictionOn:Z

    if-eqz v15, :cond_9

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v15

    if-eqz v15, :cond_9

    .line 622
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

    .line 626
    :goto_1
    if-eqz v14, :cond_3

    .line 627
    const/4 v15, 0x0

    invoke-virtual {v14}, Landroid/text/SpannableString;->length()I

    move-result v16

    const-class v17, Ljava/lang/Object;

    invoke-virtual/range {v14 .. v17}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v12

    .line 628
    .local v12, "sp":[Ljava/lang/Object;
    move-object v1, v12

    .local v1, "arr$":[Ljava/lang/Object;
    array-length v9, v1

    .local v9, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_2
    if-ge v4, v9, :cond_3

    aget-object v13, v1, v4

    .line 629
    .local v13, "span":Ljava/lang/Object;
    instance-of v15, v13, Landroid/text/style/UnderlineSpan;

    if-eqz v15, :cond_2

    invoke-virtual {v14, v13}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v15

    invoke-virtual {v14}, Landroid/text/SpannableString;->length()I

    move-result v16

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    .line 630
    invoke-virtual {v14, v13}, Landroid/text/SpannableString;->getSpanStart(Ljava/lang/Object;)I

    move-result v15

    invoke-virtual {v14, v13}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v16

    move/from16 v0, v16

    invoke-interface {v5, v15, v0}, Landroid/view/inputmethod/InputConnection;->setComposingRegion(II)Z

    .line 628
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 623
    .end local v1    # "arr$":[Ljava/lang/Object;
    .end local v4    # "i$":I
    .end local v9    # "len$":I
    .end local v12    # "sp":[Ljava/lang/Object;
    .end local v13    # "span":Ljava/lang/Object;
    :catch_0
    move-exception v3

    .line 624
    .local v3, "e":Ljava/lang/ClassCastException;
    const/4 v15, 0x1

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v5, v15, v0}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v8

    .end local v8    # "lastChar":Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .restart local v8    # "lastChar":Ljava/lang/String;
    goto :goto_1

    .line 634
    .end local v3    # "e":Ljava/lang/ClassCastException;
    :cond_3
    const-string v15, ""

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    if-eqz v14, :cond_4

    invoke-virtual {v14}, Landroid/text/SpannableString;->length()I

    move-result v15

    if-lez v15, :cond_4

    .line 635
    invoke-virtual {v14}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 641
    :cond_4
    :goto_3
    const/4 v15, 0x1

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v5, v15, v0}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v10

    .end local v10    # "nextChar":Ljava/lang/String;
    check-cast v10, Ljava/lang/String;

    .line 642
    .restart local v10    # "nextChar":Ljava/lang/String;
    if-nez v8, :cond_5

    .line 643
    const-string v8, ""

    .line 645
    :cond_5
    if-nez v10, :cond_6

    .line 646
    const-string v10, ""

    .line 648
    :cond_6
    const/4 v14, 0x0

    .line 649
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->setDeleteCount(Ljava/lang/String;)V

    .line 651
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v15}, Lcom/diotek/ime/framework/engine/InputEngineManager;->hasInputSequence()Z

    move-result v15

    if-eqz v15, :cond_7

    move-object/from16 v0, p0

    iget v15, v0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mStateCandidate:I

    if-eqz v15, :cond_8

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->isBeforeTraceInput()Z

    move-result v15

    if-eqz v15, :cond_f

    .line 653
    :cond_8
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-le v15, v0, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->isBeforeTraceInput()Z

    move-result v15

    if-nez v15, :cond_c

    .line 654
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    const/16 v16, -0x5

    invoke-interface/range {v15 .. v16}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(I)I

    move-result v15

    if-nez v15, :cond_b

    .line 655
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mIsPredictionOn:Z

    if-eqz v15, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->isRecapture()Z

    move-result v15

    if-eqz v15, :cond_a

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v15

    if-eqz v15, :cond_a

    .line 656
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->finishComposing(Z)V

    .line 657
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->initComposingBuffer()V

    .line 658
    const/4 v15, -0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->processReCaptureForXT9(I)V

    .line 659
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    const/16 v16, -0x5

    invoke-interface/range {v15 .. v16}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(I)I

    .line 660
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getExactCharSequence(Ljava/lang/StringBuilder;)I

    .line 672
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->setComposingText()V

    .line 673
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/16 v16, 0x19

    invoke-interface/range {v15 .. v16}, Lcom/diotek/ime/framework/common/InputManager;->buildSuggestions(I)V

    goto/16 :goto_0

    .line 638
    :cond_9
    const/4 v15, 0x1

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v5, v15, v0}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v8

    .end local v8    # "lastChar":Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .restart local v8    # "lastChar":Ljava/lang/String;
    goto/16 :goto_3

    .line 662
    :cond_a
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->finishComposing(Z)V

    .line 663
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->initComposingBuffer()V

    .line 664
    const/16 v15, 0x43

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->onKeyDownUpHandle(I)V

    goto :goto_4

    .line 667
    :cond_b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getExactCharSequence(Ljava/lang/StringBuilder;)I

    goto :goto_4

    .line 674
    :cond_c
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v15

    if-eqz v15, :cond_d

    move-object/from16 v0, p0

    iget v15, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosPrevText:I

    const/16 v16, 0x40

    move/from16 v0, v16

    if-lt v15, v0, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->isBeforeTraceInput()Z

    move-result v15

    if-nez v15, :cond_d

    .line 675
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    const/16 v16, -0x5

    invoke-interface/range {v15 .. v16}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(I)I

    .line 676
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v15}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    .line 677
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 678
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 679
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->predictionWord()Z

    goto/16 :goto_0

    .line 680
    :cond_d
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v15

    if-eqz v15, :cond_e

    .line 681
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    const/16 v16, -0x5

    invoke-interface/range {v15 .. v16}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(I)I

    .line 682
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v15}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    .line 683
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 684
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 685
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/16 v16, 0x19

    invoke-interface/range {v15 .. v16}, Lcom/diotek/ime/framework/common/InputManager;->buildSuggestions(I)V

    goto/16 :goto_0

    .line 687
    :cond_e
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 688
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 689
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/16 v16, 0x19

    invoke-interface/range {v15 .. v16}, Lcom/diotek/ime/framework/common/InputManager;->buildSuggestions(I)V

    .line 690
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    const/16 v16, -0x1

    invoke-interface/range {v15 .. v16}, Lcom/diotek/ime/framework/engine/InputEngineManager;->setSuggestionActiveIndex(I)V

    goto/16 :goto_0

    .line 693
    :cond_f
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isAutoCompletitionInput()Z

    move-result v6

    .line 694
    .local v6, "isCompletionOn":Z
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v15}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v7

    .line 695
    .local v7, "isLandscape":Z
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v15}, Lcom/diotek/ime/framework/common/InputManager;->getCompletions()[Landroid/view/inputmethod/CompletionInfo;

    move-result-object v2

    .line 696
    .local v2, "completions":[Landroid/view/inputmethod/CompletionInfo;
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->resetPredictionWord()V

    .line 697
    if-eqz v6, :cond_12

    if-eqz v7, :cond_12

    if-eqz v2, :cond_12

    .line 698
    if-eqz v5, :cond_10

    .line 699
    invoke-interface {v5}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 701
    :cond_10
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 702
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->getDeleteCount()I

    move-result v15

    const/16 v16, 0x14

    move/from16 v0, v16

    if-le v15, v0, :cond_11

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v15}, Lcom/diotek/ime/framework/common/InputManager;->isCHAT_ON()Z

    move-result v15

    if-nez v15, :cond_11

    .line 703
    if-eqz v5, :cond_0

    .line 704
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->getLastWordDividerIndex()I

    move-result v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v5, v15, v0}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto/16 :goto_0

    .line 707
    :cond_11
    const/16 v15, 0x43

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->onKeyDownUpHandle(I)V

    goto/16 :goto_0

    .line 710
    :cond_12
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v15

    if-eqz v15, :cond_13

    .line 711
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->finishComposing(Z)V

    .line 712
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->initComposingBuffer()V

    .line 714
    :cond_13
    move-object/from16 v0, p0

    iget v15, v0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputLanguage:I

    const/high16 v16, 0x76690000

    move/from16 v0, v16

    if-ne v15, v0, :cond_14

    .line 715
    if-eqz v8, :cond_14

    .line 716
    invoke-static {v8}, Lcom/diotek/ime/framework/common/InputSequenceCheck;->normalizedNFD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 717
    .local v11, "nonNormalizedChar":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-le v15, v0, :cond_14

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v11, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    invoke-static {v15}, Lcom/diotek/ime/framework/common/InputSequenceCheck;->isVietameseTone(I)Z

    move-result v15

    if-eqz v15, :cond_14

    .line 721
    const/4 v15, 0x1

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v5, v15, v0}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 722
    invoke-static {v11}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    .line 723
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-interface {v5, v15, v0}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 724
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 728
    .end local v11    # "nonNormalizedChar":Ljava/lang/String;
    :cond_14
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    const/16 v16, -0x5

    invoke-interface/range {v15 .. v16}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(I)I

    .line 729
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->getDeleteCount()I

    move-result v15

    const/16 v16, 0x14

    move/from16 v0, v16

    if-le v15, v0, :cond_15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v15}, Lcom/diotek/ime/framework/common/InputManager;->isCHAT_ON()Z

    move-result v15

    if-nez v15, :cond_15

    .line 730
    if-eqz v5, :cond_0

    .line 731
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->getLastWordDividerIndex()I

    move-result v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v5, v15, v0}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto/16 :goto_0

    .line 734
    :cond_15
    const/16 v15, 0x43

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->onKeyDownUpHandle(I)V

    .line 735
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mIsPredictionOn:Z

    if-eqz v15, :cond_18

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->isRecapture()Z

    move-result v15

    if-eqz v15, :cond_18

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_18

    .line 737
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_17

    const/4 v15, 0x0

    invoke-virtual {v8, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    invoke-static {v15}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v15

    if-nez v15, :cond_17

    const-string v15, "\'-#_"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/String;->charAt(I)C

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_17

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v15

    if-eqz v15, :cond_16

    const/4 v15, 0x0

    invoke-virtual {v10, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    invoke-static {v15}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v15

    if-nez v15, :cond_17

    const-string v15, "\'-#_"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/String;->charAt(I)C

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_17

    .line 739
    :cond_16
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v15}, Lcom/diotek/ime/framework/common/InputManager;->postPredictionWordMessage()V

    goto/16 :goto_0

    .line 741
    :cond_17
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v15}, Lcom/diotek/ime/framework/common/InputManager;->postRecaptureWordXT9Message()V

    .line 742
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mIsRecapturingProcessed:Z

    goto/16 :goto_0

    .line 745
    :cond_18
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->finishComposing(Z)V

    .line 746
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosNextText:I

    .line 747
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosPrevText:I

    goto/16 :goto_0
.end method

.method private processMultiTap(I[I)V
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 156
    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v5

    iput-boolean v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mIsPredictionOn:Z

    .line 157
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->clearCandidateList()V

    .line 159
    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v5}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->isTimerRunning(Lcom/diotek/ime/framework/input/InputModule$Timer;)Z

    move-result v2

    .line 160
    .local v2, "isTimerRunning":Z
    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v5}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->stopTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;)V

    .line 161
    iget v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mLastKeyCode:I

    if-ne v5, p1, :cond_3

    move v0, v3

    .line 162
    .local v0, "isEqualKey":Z
    :goto_0
    iget-boolean v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mIsPredictionOn:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/engine/InputEngineManager;->hasInputSequence()Z

    move-result v5

    if-nez v5, :cond_1

    .line 164
    :cond_0
    if-eqz v2, :cond_4

    if-eqz v0, :cond_4

    .line 186
    :cond_1
    :goto_1
    const/4 v1, 0x0

    .line 187
    .local v1, "isThaiMultitapComposing":Z
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasOneChar()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 188
    const/4 v1, 0x1

    .line 190
    :cond_2
    iget-object v3, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    if-nez v3, :cond_5

    .line 206
    :goto_2
    return-void

    .end local v0    # "isEqualKey":Z
    .end local v1    # "isThaiMultitapComposing":Z
    :cond_3
    move v0, v4

    .line 161
    goto :goto_0

    .line 167
    .restart local v0    # "isEqualKey":Z
    :cond_4
    invoke-virtual {p0, v3}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->finishComposing(Z)V

    .line 168
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->initComposingBuffer()V

    .line 169
    iget-object v3, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    goto :goto_1

    .line 192
    .restart local v1    # "isThaiMultitapComposing":Z
    :cond_5
    iget-object v3, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v5, v4}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTouchPoint(I)Landroid/graphics/PointF;

    move-result-object v4

    invoke-interface {v3, p1, v4}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(ILandroid/graphics/PointF;)I

    .line 193
    iget-object v3, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getExactCharSequence(Ljava/lang/StringBuilder;)I

    .line 195
    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->isThaiAcceptable(Z)Z

    move-result v3

    if-nez v3, :cond_6

    .line 196
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 198
    :cond_6
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->setComposingText()V

    .line 200
    iget-boolean v3, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mIsPredictionOn:Z

    if-eqz v3, :cond_7

    .line 201
    iget-object v3, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/16 v4, 0x19

    invoke-interface {v3, v4}, Lcom/diotek/ime/framework/common/InputManager;->buildSuggestions(I)V

    goto :goto_2

    .line 203
    :cond_7
    iget-object v3, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    const/16 v4, 0x5dc

    invoke-virtual {p0, v3, v4}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->startTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;I)V

    goto :goto_2
.end method

.method private processSingleChar(I)V
    .locals 6
    .param p1, "code"    # I

    .prologue
    const/4 v5, 0x0

    .line 450
    iget-object v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4, p1}, Lcom/diotek/ime/framework/common/InputManager;->getLabelFromCurrentView(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 451
    .local v3, "text":Ljava/lang/CharSequence;
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 487
    :cond_0
    :goto_0
    return-void

    .line 455
    :cond_1
    iget-object v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isAutoSpaceOn()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAtText()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 456
    const/16 v4, 0x20

    invoke-static {v4}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    .line 459
    :cond_2
    invoke-interface {v3, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {p0, v4}, Lcom/diotek/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->getSecondaryChar(I)I

    move-result v4

    int-to-char v1, v4

    .line 460
    .local v1, "secondaryKeyChar":C
    if-eqz v1, :cond_3

    .line 461
    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    .line 464
    :cond_3
    invoke-interface {v3, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 465
    invoke-static {v3}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    .line 474
    :goto_1
    iget-object v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 475
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_4

    .line 477
    invoke-interface {v0, v5}, Landroid/view/inputmethod/InputConnection;->getSelectedText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 478
    .local v2, "selectedText":Ljava/lang/CharSequence;
    if-eqz v2, :cond_7

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 479
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 485
    .end local v2    # "selectedText":Ljava/lang/CharSequence;
    :cond_4
    :goto_2
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 486
    iget-object v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    goto :goto_0

    .line 467
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_5
    iget-object v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v4

    if-eqz v4, :cond_6

    move-object v4, v3

    .line 468
    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_6
    move-object v4, v3

    .line 470
    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 481
    .restart local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    .restart local v2    # "selectedText":Ljava/lang/CharSequence;
    :cond_7
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->commitText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method private processSingleTap(I[I)V
    .locals 12
    .param p1, "keyCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    const/16 v11, 0x19

    const/16 v10, 0x20

    const/16 v9, 0x40

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 209
    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v6

    iput-boolean v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mIsPredictionOn:Z

    .line 210
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->clearCandidateList()V

    .line 211
    const/4 v2, 0x0

    .line 212
    .local v2, "isTraceInput":Z
    int-to-char v6, p1

    invoke-virtual {p0, v6}, Lcom/diotek/ime/framework/input/AbstractInputModule;->isEnableAutoCorrection(C)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getXt9AutoReplacementCondition()Z

    move-result v6

    if-eqz v6, :cond_5

    move v1, v4

    .line 214
    .local v1, "isEnableAutoCorrection":Z
    :goto_0
    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v6}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->isTimerRunning(Lcom/diotek/ime/framework/input/InputModule$Timer;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 217
    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v6}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->stopTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;)V

    .line 218
    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/engine/InputEngineManager;->hasInputSequence()Z

    move-result v6

    if-nez v6, :cond_0

    .line 219
    invoke-virtual {p0, v4}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->finishComposing(Z)V

    .line 220
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->initComposingBuffer()V

    .line 223
    :cond_0
    iget-boolean v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mIsPredictionOn:Z

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->isEnableTraceInPassword()Z

    move-result v6

    if-eqz v6, :cond_10

    :cond_1
    iget-boolean v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mIsTraceOn:Z

    if-eqz v6, :cond_10

    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    if-eqz v6, :cond_10

    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v6

    const/4 v7, 0x2

    if-le v6, v7, :cond_10

    .line 224
    new-array v0, v4, [Z

    .line 225
    .local v0, "bAddSpace":[Z
    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTracePoint()[Landroid/graphics/PointF;

    move-result-object v7

    iget-object v8, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v8}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v8

    invoke-interface {v6, v7, v8, v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->isAutoAcceptBeforeTrace([Landroid/graphics/PointF;I[Z)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 228
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v6

    if-eqz v6, :cond_6

    if-eqz v1, :cond_6

    .line 229
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 230
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->wordSeparatorPretreatment(I)V

    .line 232
    iget-object v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isAutoSpaceOn()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->isSymbolAndSpace()Z

    move-result v4

    if-nez v4, :cond_2

    .line 233
    invoke-static {v10}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    .line 234
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 235
    iget-object v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v4

    if-nez v4, :cond_2

    .line 236
    iget-object v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 237
    iget-object v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->updateShiftState()V

    .line 258
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->isSymbolAndSpace()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 259
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 260
    iget-object v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getSymbolKeyCode()I

    move-result v3

    .line 261
    .local v3, "symbol":I
    const/16 v4, -0xff

    if-eq v3, v4, :cond_3

    .line 262
    int-to-char v4, v3

    invoke-static {v4}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    .line 264
    :cond_3
    invoke-static {v10}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    .line 265
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 266
    iget-object v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 268
    iget-object v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->updateShiftState()V

    .line 270
    :cond_4
    iget-object v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->clearTraceInfo()V

    .line 271
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->resetPredictionWord()V

    .line 447
    .end local v0    # "bAddSpace":[Z
    .end local v3    # "symbol":I
    :goto_2
    return-void

    .end local v1    # "isEnableAutoCorrection":Z
    :cond_5
    move v1, v5

    .line 212
    goto/16 :goto_0

    .line 243
    .restart local v0    # "bAddSpace":[Z
    .restart local v1    # "isEnableAutoCorrection":Z
    :cond_6
    invoke-virtual {p0, v5}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->selectWordInList(I)V

    .line 244
    invoke-virtual {p0, v4}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->finishComposing(Z)V

    .line 245
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->initComposingBuffer()V

    .line 246
    iget-object v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isAutoSpaceOn()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->isSymbolAndSpace()Z

    move-result v4

    if-nez v4, :cond_2

    .line 247
    invoke-static {v10}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(C)V

    .line 248
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 249
    iget-object v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v4

    if-nez v4, :cond_2

    .line 250
    iget-object v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 251
    iget-object v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->updateShiftState()V

    goto :goto_1

    .line 274
    :cond_7
    iget-object v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTracePoint()[Landroid/graphics/PointF;

    move-result-object v6

    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v7

    const/4 v8, -0x1

    invoke-interface {v4, v6, v7, v8}, Lcom/diotek/ime/framework/engine/InputEngineManager;->processTrace([Landroid/graphics/PointF;IB)S

    move-result v4

    if-eqz v4, :cond_8

    .line 276
    iget-object v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->clearTraceInfo()V

    .line 277
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->resetPredictionWord()V

    goto :goto_2

    .line 280
    :cond_8
    iget-object v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->clearTraceInfo()V

    .line 281
    const/4 v2, 0x1

    .line 395
    .end local v0    # "bAddSpace":[Z
    :goto_3
    iget-boolean v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mIsPredictionOn:Z

    if-eqz v4, :cond_9

    if-nez v2, :cond_a

    :cond_9
    iget-object v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isEnableTraceInPassword()Z

    move-result v4

    if-eqz v4, :cond_21

    if-eqz v2, :cond_21

    .line 396
    :cond_a
    iget-object v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v4, v6}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getCharSequence(Ljava/lang/StringBuilder;)I

    .line 406
    :cond_b
    :goto_4
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_c

    if-eqz v2, :cond_c

    .line 407
    iget-object v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->disableSetUpAutoSpace()V

    .line 408
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->resetPredictionWord()V

    .line 411
    :cond_c
    iget-boolean v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mIsPredictionOn:Z

    if-nez v4, :cond_d

    invoke-static {p1}, Ljava/lang/Character;->isDigit(I)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 412
    int-to-char v4, p1

    invoke-static {v4}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(C)V

    .line 413
    iget-object v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    .line 416
    :cond_d
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->isThaiAcceptable()Z

    move-result v4

    if-nez v4, :cond_e

    iget-boolean v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mIsPredictionOn:Z

    if-eqz v4, :cond_e

    .line 417
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 418
    iget-object v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    .line 421
    :cond_e
    iget v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputLanguage:I

    const/high16 v6, 0x76690000

    if-ne v4, v6, :cond_f

    .line 422
    iget-boolean v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mIsPredictionOn:Z

    invoke-virtual {p0, p1, v4}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->processVietnameseTone(IZ)V

    .line 426
    :cond_f
    iget-boolean v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mIsPredictionOn:Z

    if-eqz v4, :cond_22

    if-eqz v2, :cond_22

    .line 427
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->setComposingText()V

    .line 428
    iget-object v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4, v11}, Lcom/diotek/ime/framework/common/InputManager;->updateCandidates(I)V

    goto/16 :goto_2

    .line 283
    :cond_10
    iget-boolean v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mIsPredictionOn:Z

    if-eqz v6, :cond_11

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v6

    if-lt v6, v9, :cond_11

    .line 284
    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/engine/InputEngineManager;->breakContext()V

    .line 285
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->resetPredictionWord()V

    .line 286
    invoke-virtual {p0, v4}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->finishComposing(Z)V

    .line 287
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->clearCandidateList()V

    .line 288
    iput v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosPrevText:I

    .line 289
    iput v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosNextText:I

    .line 292
    :cond_11
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v6

    if-eqz v6, :cond_15

    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAtText()Z

    move-result v6

    if-eqz v6, :cond_15

    .line 293
    invoke-virtual {p0, v5}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->selectWordInList(I)V

    .line 294
    invoke-virtual {p0, v4}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->finishComposing(Z)V

    .line 295
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->initComposingBuffer()V

    .line 296
    iget-object v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isAutoSpaceOn()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 297
    invoke-static {v10}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(C)V

    .line 298
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 299
    iget-object v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v4

    if-nez v4, :cond_12

    .line 300
    iget-object v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 301
    iget-object v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->updateShiftState()V

    .line 305
    :cond_12
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputStatus;->isKeyLongpressed()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 306
    iget-object v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v4, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(I)I

    move-result v4

    if-nez v4, :cond_20

    .line 307
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->resetPredictionWord()V

    goto/16 :goto_2

    .line 311
    :cond_13
    iget-object v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isDeviceHasHardwareKeypad()Z

    move-result v4

    if-eqz v4, :cond_14

    iget-object v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isHWKeyboardOpen()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 312
    iget-object v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v4, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(I)I

    move-result v4

    if-nez v4, :cond_20

    .line 313
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->resetPredictionWord()V

    goto/16 :goto_2

    .line 317
    :cond_14
    iget-object v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    if-eqz v4, :cond_20

    iget-object v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v6, v5}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTouchPoint(I)Landroid/graphics/PointF;

    move-result-object v6

    invoke-interface {v4, p1, v6}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(ILandroid/graphics/PointF;)I

    move-result v4

    if-nez v4, :cond_20

    .line 318
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->resetPredictionWord()V

    goto/16 :goto_2

    .line 323
    :cond_15
    iget-boolean v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mIsPredictionOn:Z

    if-eqz v6, :cond_1d

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1d

    iget v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mStateCandidate:I

    if-eq v6, v4, :cond_16

    iget v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosPrevText:I

    if-lez v4, :cond_1d

    iget-boolean v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mIsRecapturingProcessed:Z

    if-nez v4, :cond_1d

    .line 329
    :cond_16
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputStatus;->isKeyLongpressed()Z

    move-result v4

    if-eqz v4, :cond_17

    .line 330
    iget-object v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v4, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(I)I

    move-result v4

    if-nez v4, :cond_1a

    .line 331
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->resetPredictionWord()V

    goto/16 :goto_2

    .line 335
    :cond_17
    iget-object v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isDeviceHasHardwareKeypad()Z

    move-result v4

    if-eqz v4, :cond_18

    iget-object v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isHWKeyboardOpen()Z

    move-result v4

    if-eqz v4, :cond_18

    .line 336
    iget-object v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v4, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(I)I

    move-result v4

    if-nez v4, :cond_1a

    .line 337
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->resetPredictionWord()V

    goto/16 :goto_2

    .line 341
    :cond_18
    iget v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosPrevText:I

    if-lt v4, v9, :cond_19

    .line 342
    iget-object v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    .line 344
    :cond_19
    iget-object v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    if-eqz v4, :cond_1a

    iget-object v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v6, v5}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTouchPoint(I)Landroid/graphics/PointF;

    move-result-object v6

    invoke-interface {v4, p1, v6}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(ILandroid/graphics/PointF;)I

    move-result v4

    if-nez v4, :cond_1a

    .line 345
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->resetPredictionWord()V

    goto/16 :goto_2

    .line 350
    :cond_1a
    iget v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosPrevText:I

    if-ge v4, v9, :cond_20

    .line 351
    iget-object v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v4, v6}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getExactCharSequence(Ljava/lang/StringBuilder;)I

    .line 352
    iget v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosNextText:I

    if-nez v4, :cond_1c

    .line 353
    iget-object v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4, v5}, Lcom/diotek/ime/framework/common/InputManager;->setXt9Recapture(Z)V

    .line 354
    iget-object v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 355
    int-to-char v4, p1

    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    invoke-static {v4}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(C)V

    .line 358
    :goto_5
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 359
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->processReCaptureForXT9(I)V

    .line 360
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->makeCompoingTextCursoroWrod()V

    .line 361
    iget-object v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v4, v6}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getExactCharSequence(Ljava/lang/StringBuilder;)I

    .line 362
    iput v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mStateCandidate:I

    goto/16 :goto_2

    .line 357
    :cond_1b
    int-to-char v4, p1

    invoke-static {v4}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(C)V

    goto :goto_5

    .line 367
    :cond_1c
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 368
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->processReCaptureForXT9(I)V

    goto/16 :goto_2

    .line 373
    :cond_1d
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputStatus;->isKeyLongpressed()Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 374
    iget-object v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v4, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(I)I

    move-result v4

    if-nez v4, :cond_20

    .line 375
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->resetPredictionWord()V

    goto/16 :goto_2

    .line 379
    :cond_1e
    iget-object v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isDeviceHasHardwareKeypad()Z

    move-result v4

    if-eqz v4, :cond_1f

    iget-object v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isHWKeyboardOpen()Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 380
    iget-object v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v4, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(I)I

    move-result v4

    if-nez v4, :cond_20

    .line 381
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->resetPredictionWord()V

    goto/16 :goto_2

    .line 385
    :cond_1f
    iget-object v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    if-eqz v4, :cond_20

    iget-object v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v6, v5}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTouchPoint(I)Landroid/graphics/PointF;

    move-result-object v6

    invoke-interface {v4, p1, v6}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(ILandroid/graphics/PointF;)I

    move-result v4

    if-nez v4, :cond_20

    .line 386
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->resetPredictionWord()V

    goto/16 :goto_2

    .line 392
    :cond_20
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->clearAction()V

    goto/16 :goto_3

    .line 398
    :cond_21
    iget-object v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v4, v6}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getExactCharSequence(Ljava/lang/StringBuilder;)I

    .line 399
    iget-boolean v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mIsPredictionOn:Z

    if-nez v4, :cond_b

    .line 400
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->isAvailablePrediction()Z

    move-result v4

    if-nez v4, :cond_b

    if-nez v2, :cond_b

    .line 401
    iget-object v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    goto/16 :goto_4

    .line 429
    :cond_22
    iget-boolean v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mIsPredictionOn:Z

    if-eqz v4, :cond_23

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->isAvailablePrediction()Z

    move-result v4

    if-eqz v4, :cond_23

    .line 431
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->setComposingText()V

    .line 432
    iget-object v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4, v11}, Lcom/diotek/ime/framework/common/InputManager;->buildSuggestions(I)V

    goto/16 :goto_2

    .line 433
    :cond_23
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isPasswordInputType()Z

    move-result v4

    if-eqz v4, :cond_24

    if-eqz v2, :cond_24

    iget-object v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isEnableTraceInPassword()Z

    move-result v4

    if-eqz v4, :cond_24

    .line 434
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->setComposingText()V

    goto/16 :goto_2

    .line 436
    :cond_24
    iget-boolean v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mIsPredictionOn:Z

    if-nez v4, :cond_25

    iget v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosPrevText:I

    if-ge v4, v9, :cond_25

    iget v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosNextText:I

    if-nez v4, :cond_25

    .line 437
    iget-object v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4, v5}, Lcom/diotek/ime/framework/common/InputManager;->setXt9Recapture(Z)V

    .line 438
    iget-object v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v4

    if-eqz v4, :cond_26

    .line 439
    int-to-char v4, p1

    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    invoke-static {v4}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(C)V

    .line 443
    :cond_25
    :goto_6
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 444
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 445
    iget-object v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    goto/16 :goto_2

    .line 441
    :cond_26
    int-to-char v4, p1

    invoke-static {v4}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(C)V

    goto :goto_6
.end method

.method private processWordSeparator(I[I)V
    .locals 7
    .param p1, "keyCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    const/16 v6, 0x20

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 546
    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v5

    iget v5, v5, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v0, v5, 0xff0

    .line 547
    .local v0, "editorInfo":I
    int-to-char v5, p1

    invoke-virtual {p0, v5}, Lcom/diotek/ime/framework/input/AbstractInputModule;->isEnableAutoCorrection(C)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getXt9AutoReplacementCondition()Z

    move-result v5

    if-eqz v5, :cond_3

    move v1, v3

    .line 548
    .local v1, "isEnableAutoCorrection":Z
    :goto_0
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v5

    if-nez v5, :cond_0

    if-eqz v1, :cond_1

    .line 549
    :cond_0
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->wordSeparatorPretreatment(I)V

    .line 550
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 553
    :cond_1
    const/16 v5, 0xa

    if-ne p1, v5, :cond_4

    .line 554
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->sendEnterKeyHandle()V

    .line 555
    iget-object v3, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    .line 556
    iget-object v3, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    .line 557
    iget-object v3, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->updateShiftState()V

    .line 558
    iget-object v3, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3, v4}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    .line 559
    iput v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosPrevText:I

    .line 560
    iput v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosNextText:I

    .line 603
    :cond_2
    :goto_1
    return-void

    .end local v1    # "isEnableAutoCorrection":Z
    :cond_3
    move v1, v4

    .line 547
    goto :goto_0

    .line 563
    .restart local v1    # "isEnableAutoCorrection":Z
    :cond_4
    iget-object v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isInMultiTapInput()Z

    move-result v2

    .line 564
    .local v2, "isInMultiTap":Z
    if-eqz v2, :cond_5

    .line 565
    invoke-virtual {p0, p1, p2}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->processMultiTapSymbolicKey(I[I)V

    goto :goto_1

    .line 568
    :cond_5
    iget-object v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v4, p1}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAtSymbol(I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 569
    invoke-virtual {p0, v3}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->finishComposing(Z)V

    .line 570
    invoke-static {v6}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(C)V

    .line 571
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 581
    :goto_2
    int-to-char v4, p1

    invoke-static {v4}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    .line 582
    iget-object v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v4, p1}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAfterPunctuation(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 583
    invoke-static {v6}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    .line 587
    iget-object v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->disableSetUpAutoSpace()V

    .line 590
    :cond_6
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 592
    iget-object v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v4, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->isTreatedAsLetter(I)Z

    move-result v4

    if-nez v4, :cond_a

    .line 593
    iget-object v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v4, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->doNoteWordDoneForXt9WithoutIndex(I)I

    .line 600
    :goto_3
    iget-boolean v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mIsPredictionOn:Z

    if-eqz v4, :cond_2

    .line 601
    invoke-virtual {p0, v3}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->doNextWordPrediction(Z)V

    goto :goto_1

    .line 572
    :cond_7
    const/16 v4, 0x10

    if-eq v0, v4, :cond_8

    if-ne v0, v6, :cond_9

    .line 574
    :cond_8
    invoke-virtual {p0, v3}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->finishComposing(Z)V

    .line 575
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 578
    :cond_9
    invoke-virtual {p0, v3}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->finishComposing(Z)V

    goto :goto_2

    .line 596
    :cond_a
    iget-object v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v4, v3}, Lcom/diotek/ime/framework/engine/InputEngineManager;->refreshContextBuffer(Z)I

    goto :goto_3
.end method


# virtual methods
.method public closing()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->stopTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;)V

    .line 42
    iget-object v0, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    .line 43
    invoke-super {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->closing()V

    .line 44
    return-void
.end method

.method public getSecondaryChar(I)I
    .locals 7
    .param p1, "keyCode"    # I

    .prologue
    .line 490
    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v3

    .line 491
    .local v3, "shiftState":Z
    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->isAcuteAccentState()Z

    move-result v0

    .line 492
    .local v0, "accentState":Z
    move v2, p1

    .line 493
    .local v2, "secondaryKeyCode":I
    invoke-static {}, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyManager;->getInstance()Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyManager;

    move-result-object v1

    .line 494
    .local v1, "secKeyManager":Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyManager;
    iget v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputLanguage:I

    const/high16 v6, 0x6b610000

    if-ne v5, v6, :cond_0

    if-nez v3, :cond_5

    :cond_0
    iget v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputLanguage:I

    const/high16 v6, 0x656c0000

    if-ne v5, v6, :cond_1

    if-nez v0, :cond_5

    :cond_1
    iget v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputLanguage:I

    const/high16 v6, 0x6c760000

    if-ne v5, v6, :cond_2

    if-nez v0, :cond_5

    :cond_2
    iget v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputLanguage:I

    const/high16 v6, 0x61720000

    if-ne v5, v6, :cond_3

    if-nez v3, :cond_5

    :cond_3
    iget v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputLanguage:I

    const/high16 v6, 0x66610000

    if-ne v5, v6, :cond_4

    if-nez v3, :cond_5

    :cond_4
    iget v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputLanguage:I

    const/high16 v6, 0x75720000

    if-ne v5, v6, :cond_6

    if-eqz v3, :cond_6

    .line 500
    :cond_5
    invoke-virtual {v1, p1}, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyManager;->getSecondaryKey(I)I

    move-result v4

    .line 501
    .local v4, "tempKeyCode":I
    const/16 v5, -0xff

    if-eq v4, v5, :cond_6

    .line 502
    move v2, v4

    .line 505
    .end local v4    # "tempKeyCode":I
    :cond_6
    return v2
.end method

.method public initialize()V
    .locals 0

    .prologue
    .line 31
    invoke-super {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->initialize()V

    .line 32
    return-void
.end method

.method public onCharacterKey(I[I)V
    .locals 10
    .param p1, "keyCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    const/16 v9, 0x20

    const/4 v8, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 48
    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v1

    .line 49
    .local v1, "inputMethod":I
    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->getInputLanguage()I

    move-result v0

    .line 50
    .local v0, "inputLanguage":I
    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v2

    .line 51
    .local v2, "inputRange":I
    const/4 v3, 0x1

    .line 52
    .local v3, "isDisableAutoCorrection":Z
    iget-boolean v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mIsTraceOn:Z

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v7

    if-le v7, v8, :cond_9

    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->isSymbolAndSpace()Z

    move-result v7

    if-nez v7, :cond_9

    move v4, v5

    .line 54
    .local v4, "isTraceInput":Z
    :goto_0
    if-eqz v3, :cond_2

    .line 55
    const v7, 0x656e4742

    if-eq v0, v7, :cond_0

    const v7, 0x656e5553

    if-ne v0, v7, :cond_a

    :cond_0
    const/16 v7, 0x69

    if-ne p1, v7, :cond_a

    invoke-direct {p0}, Lcom/diotek/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->isLetterFrontOfCursor()Z

    move-result v7

    if-nez v7, :cond_a

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isLastActionIsTraceOrPick()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 59
    :cond_1
    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v7, v5}, Lcom/diotek/ime/framework/engine/InputEngineManager;->setActiveWordStatusChangable(Z)V

    .line 65
    :cond_2
    :goto_1
    iput-boolean v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mIgnorePredictionWord:Z

    .line 66
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    iget v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mStateCandidate:I

    if-ne v7, v5, :cond_3

    .line 68
    iget v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosNextText:I

    if-eqz v7, :cond_3

    .line 69
    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    .line 72
    :cond_3
    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v7, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->isTextCharacter(I)Z

    move-result v7

    if-nez v7, :cond_4

    iget-boolean v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mIsPredictionOn:Z

    if-eqz v7, :cond_12

    iget-boolean v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mIsTraceOn:Z

    if-eqz v7, :cond_12

    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    if-eqz v7, :cond_12

    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v7

    if-le v7, v8, :cond_12

    .line 75
    :cond_4
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->isSymbolAndSpace()Z

    move-result v7

    if-nez v7, :cond_5

    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v7, p1, v4}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpace(IZ)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 78
    invoke-static {v9}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(C)V

    .line 79
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v7

    if-nez v7, :cond_5

    .line 81
    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 82
    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->updateShiftState()V

    .line 86
    :cond_5
    if-eqz v1, :cond_6

    const/4 v7, 0x7

    if-eq v1, v7, :cond_6

    const/16 v7, 0x8

    if-ne v1, v7, :cond_10

    .line 89
    :cond_6
    iget-boolean v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mIsPredictionOn:Z

    if-nez v5, :cond_b

    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v5

    if-nez v5, :cond_b

    invoke-static {v0, p1}, Lcom/diotek/ime/framework/util/Utils;->isMultitapKey(II)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 91
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->processMultiTap(I[I)V

    .line 129
    :goto_2
    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getXt9Recapture()Z

    move-result v5

    if-nez v5, :cond_8

    .line 130
    if-ne p1, v9, :cond_7

    iget v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mStateCandidate:I

    if-eq v5, v8, :cond_8

    .line 132
    :cond_7
    iput v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mStateCandidate:I

    .line 136
    :cond_8
    iput p1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mLastKeyCode:I

    .line 137
    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v5, p1, v4}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->setUpAutoSpace(IZ)V

    .line 138
    invoke-virtual {p0, v4}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->setBeforeTraceInput(Z)V

    .line 139
    return-void

    .end local v4    # "isTraceInput":Z
    :cond_9
    move v4, v6

    .line 52
    goto/16 :goto_0

    .line 61
    .restart local v4    # "isTraceInput":Z
    :cond_a
    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v7, v6}, Lcom/diotek/ime/framework/engine/InputEngineManager;->setActiveWordStatusChangable(Z)V

    goto/16 :goto_1

    .line 92
    :cond_b
    iget-boolean v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mIsPredictionOn:Z

    if-nez v5, :cond_c

    const/high16 v5, 0x74680000

    if-ne v0, v5, :cond_c

    .line 93
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->processMultiTap(I[I)V

    goto :goto_2

    .line 95
    :cond_c
    iget-boolean v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mIsPredictionOn:Z

    if-nez v5, :cond_e

    invoke-static {v0}, Lcom/diotek/ime/framework/util/Utils;->isLaggingModeLanguage(I)Z

    move-result v5

    if-eqz v5, :cond_e

    const/high16 v5, 0x6b6f0000

    if-ne v0, v5, :cond_e

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isPasswordInputType()Z

    move-result v5

    if-nez v5, :cond_e

    .line 97
    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->isEnableTraceInPassword()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 98
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->processSingleTap(I[I)V

    goto :goto_2

    .line 101
    :cond_d
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->processSingleChar(I)V

    goto :goto_2

    .line 104
    :cond_e
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isUrlInputType()Z

    move-result v5

    if-eqz v5, :cond_f

    if-nez v4, :cond_f

    .line 105
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->processSingleChar(I)V

    goto :goto_2

    .line 107
    :cond_f
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->processSingleTap(I[I)V

    goto :goto_2

    .line 111
    :cond_10
    if-ne v1, v5, :cond_11

    .line 112
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->processMultiTap(I[I)V

    goto :goto_2

    .line 114
    :cond_11
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->processSingleTap(I[I)V

    goto :goto_2

    .line 117
    :cond_12
    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v5, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->isNumericCharacter(I)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 118
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_13

    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAtNumeric()Z

    move-result v5

    if-eqz v5, :cond_13

    .line 120
    invoke-static {v9}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(C)V

    .line 121
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 123
    :cond_13
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->processSingleTap(I[I)V

    .line 127
    :goto_3
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->autoPeriod(I)V

    goto/16 :goto_2

    .line 125
    :cond_14
    invoke-virtual {p0, p1, p2}, Lcom/diotek/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->processSymbolicKey(I[I)V

    goto :goto_3
.end method

.method public onHwrPanelLongPressed(ILjava/lang/String;)V
    .locals 0
    .param p1, "selectedArrayIndex"    # I
    .param p2, "resultString"    # Ljava/lang/String;

    .prologue
    .line 759
    return-void
.end method

.method protected processSymbolicKey(I[I)V
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    const/16 v3, 0x20

    .line 509
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->clearCandidateList()V

    .line 511
    iget-object v1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getCandidateviewStatus()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 512
    iget-object v1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/diotek/ime/framework/common/InputManager;->setCandidateviewStatus(I)V

    .line 513
    iget-object v1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    .line 516
    :cond_0
    const-string v1, " .,;:!?\n()[]*&@{}/<>_-+=|\'\u061b\u060c\u061f\""

    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 517
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->processWordSeparator(I[I)V

    .line 543
    :goto_0
    return-void

    .line 519
    :cond_1
    const/16 v1, 0xa

    if-eq p1, v1, :cond_2

    if-ne p1, v3, :cond_3

    .line 521
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->processWordSeparator(I[I)V

    goto :goto_0

    .line 523
    :cond_3
    const/4 v1, -0x5

    if-ne p1, v1, :cond_4

    .line 524
    invoke-direct {p0}, Lcom/diotek/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->processBackSpaceKey()V

    goto :goto_0

    .line 528
    :cond_4
    iget-object v1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isInMultiTapInput()Z

    move-result v0

    .line 529
    .local v0, "isInMultiTap":Z
    if-eqz v0, :cond_5

    .line 530
    invoke-virtual {p0, p1, p2}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->processMultiTapSymbolicKey(I[I)V

    goto :goto_0

    .line 534
    :cond_5
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->finishComposing(Z)V

    .line 535
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->initComposingBuffer()V

    .line 536
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 538
    iget-object v1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v1, p1}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAtSymbol(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 539
    invoke-static {v3}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    .line 541
    :cond_6
    int-to-char v1, p1

    invoke-static {v1}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    .line 542
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public release()V
    .locals 0

    .prologue
    .line 37
    return-void
.end method

.method public setAddStrokeCallBackOnHWREngine()V
    .locals 0

    .prologue
    .line 764
    return-void
.end method

.method public updateVOHWRSuggestion()V
    .locals 0

    .prologue
    .line 770
    return-void
.end method
