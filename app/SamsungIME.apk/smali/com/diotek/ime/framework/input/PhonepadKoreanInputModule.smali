.class public Lcom/diotek/ime/framework/input/PhonepadKoreanInputModule;
.super Lcom/diotek/ime/framework/input/AbstractInputModule;
.source "PhonepadKoreanInputModule.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;-><init>()V

    .line 27
    return-void
.end method

.method private commitText(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "ic"    # Landroid/view/inputmethod/InputConnection;
    .param p2, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 617
    if-eqz p1, :cond_1

    .line 618
    sget-boolean v0, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 619
    const-string v0, "SamsungIME"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<PhonepadKoreanInputModule> commitText-(1) - Utils.getUsedTime() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/diotek/ime/framework/util/Utils;->getUsedTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    :cond_0
    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 622
    sget-boolean v0, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 623
    const-string v0, "SamsungIME"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<PhonepadKoreanInputModule> commitText-(2) - Utils.getUsedTime() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/diotek/ime/framework/util/Utils;->getUsedTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    :cond_1
    return-void
.end method

.method private getConvertTabletCjiKeyCode(I)I
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 728
    neg-int v0, p1

    add-int/lit16 v0, v0, -0x1f5

    add-int/lit8 v0, v0, 0x31

    return v0
.end method

.method public static isConsonant(I)Z
    .locals 1
    .param p0, "code"    # I

    .prologue
    .line 720
    const/16 v0, 0x3131

    if-lt p0, v0, :cond_0

    const/16 v0, 0x314e

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTabletCjiKeyCode(I)Z
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 724
    const/16 v0, -0x1f5

    if-gt p1, v0, :cond_0

    const/16 v0, -0x207

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private processBackSpaceKey()V
    .locals 17

    .prologue
    .line 502
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v8

    .line 503
    .local v8, "ic":Landroid/view/inputmethod/InputConnection;
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    .line 504
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v14, v15}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    .line 505
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 506
    .local v3, "builder":Ljava/lang/StringBuilder;
    const/4 v14, 0x1

    new-array v1, v14, [I

    .line 508
    .local v1, "activeIndex":[I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/diotek/ime/framework/input/AbstractInputModule;->stopTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;)V

    .line 509
    const-string v9, ""

    .line 510
    .local v9, "lastChar":Ljava/lang/String;
    if-eqz v8, :cond_3

    .line 514
    const/4 v13, 0x0

    .line 515
    .local v13, "ss":Landroid/text/SpannableString;
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-eqz v14, :cond_6

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v14

    if-eqz v14, :cond_6

    .line 517
    const v14, 0x7fffffff

    const/4 v15, 0x1

    :try_start_0
    invoke-interface {v8, v14, v15}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v14

    move-object v0, v14

    check-cast v0, Landroid/text/SpannableString;

    move-object v13, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 521
    :goto_0
    if-eqz v13, :cond_1

    .line 522
    const/4 v14, 0x0

    invoke-virtual {v13}, Landroid/text/SpannableString;->length()I

    move-result v15

    const-class v16, Ljava/lang/Object;

    invoke-virtual/range {v13 .. v16}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v11

    .line 523
    .local v11, "sp":[Ljava/lang/Object;
    move-object v2, v11

    .local v2, "arr$":[Ljava/lang/Object;
    array-length v10, v2

    .local v10, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_1
    if-ge v7, v10, :cond_1

    aget-object v12, v2, v7

    .line 524
    .local v12, "span":Ljava/lang/Object;
    instance-of v14, v12, Landroid/text/style/UnderlineSpan;

    if-eqz v14, :cond_0

    invoke-virtual {v13, v12}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v14

    invoke-virtual {v13}, Landroid/text/SpannableString;->length()I

    move-result v15

    if-ne v14, v15, :cond_0

    .line 525
    invoke-virtual {v13, v12}, Landroid/text/SpannableString;->getSpanStart(Ljava/lang/Object;)I

    move-result v14

    invoke-virtual {v13, v12}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v15

    invoke-interface {v8, v14, v15}, Landroid/view/inputmethod/InputConnection;->setComposingRegion(II)Z

    .line 523
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 518
    .end local v2    # "arr$":[Ljava/lang/Object;
    .end local v7    # "i$":I
    .end local v10    # "len$":I
    .end local v11    # "sp":[Ljava/lang/Object;
    .end local v12    # "span":Ljava/lang/Object;
    :catch_0
    move-exception v6

    .line 519
    .local v6, "e":Ljava/lang/ClassCastException;
    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-interface {v8, v14, v15}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v9

    .end local v9    # "lastChar":Ljava/lang/String;
    check-cast v9, Ljava/lang/String;

    .restart local v9    # "lastChar":Ljava/lang/String;
    goto :goto_0

    .line 529
    .end local v6    # "e":Ljava/lang/ClassCastException;
    :cond_1
    const-string v14, ""

    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    if-eqz v13, :cond_2

    invoke-virtual {v13}, Landroid/text/SpannableString;->length()I

    move-result v14

    if-lez v14, :cond_2

    .line 530
    invoke-virtual {v13}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v14, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 536
    :cond_2
    :goto_2
    if-nez v9, :cond_3

    .line 537
    const-string v9, ""

    .line 541
    .end local v13    # "ss":Landroid/text/SpannableString;
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setDeleteCount(Ljava/lang/String;)V

    .line 543
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v14, :cond_8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lez v14, :cond_8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_8

    .line 544
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    const/4 v15, -0x5

    invoke-interface {v14, v15}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(I)I

    .line 545
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v14, v3}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getCharSequence(Ljava/lang/StringBuilder;)I

    .line 546
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v15, "HANGUL_DELETE_LENGTH"

    const/16 v16, 0x0

    invoke-interface/range {v14 .. v16}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v5

    .line 547
    .local v5, "deleteLength":I
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v14

    if-nez v14, :cond_4

    .line 548
    const/4 v5, 0x1

    .line 550
    :cond_4
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v14

    if-le v14, v5, :cond_7

    .line 551
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v14

    sub-int/2addr v14, v5

    invoke-static {v14}, Lcom/diotek/ime/framework/input/ComposingTextManager;->setLength(I)V

    .line 555
    :goto_3
    invoke-static {v3}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    .line 557
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/PhonepadKoreanInputModule;->setComposingText()V

    .line 558
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface {v14, v15}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputCharSequence(Ljava/lang/CharSequence;)I

    .line 559
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    .line 560
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v14, v15}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    .line 561
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v14, v1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getActiveIndex([I)I

    .line 562
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v14, v15}, Lcom/diotek/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    .line 601
    .end local v5    # "deleteLength":I
    :cond_5
    :goto_4
    return-void

    .line 533
    .restart local v13    # "ss":Landroid/text/SpannableString;
    :cond_6
    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-interface {v8, v14, v15}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v9

    .end local v9    # "lastChar":Ljava/lang/String;
    check-cast v9, Ljava/lang/String;

    .restart local v9    # "lastChar":Ljava/lang/String;
    goto/16 :goto_2

    .line 553
    .end local v13    # "ss":Landroid/text/SpannableString;
    .restart local v5    # "deleteLength":I
    :cond_7
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    goto :goto_3

    .line 564
    .end local v5    # "deleteLength":I
    :cond_8
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v14

    if-eqz v14, :cond_a

    .line 565
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 566
    .local v4, "composing":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    const/4 v15, -0x5

    invoke-interface {v14, v15}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(I)I

    .line 567
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v14, v4}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getCharSequence(Ljava/lang/StringBuilder;)I

    .line 568
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v14

    const/4 v15, 0x1

    if-le v14, v15, :cond_9

    .line 569
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-static {v14}, Lcom/diotek/ime/framework/input/ComposingTextManager;->setLength(I)V

    .line 573
    :goto_5
    invoke-static {v4}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    .line 583
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/PhonepadKoreanInputModule;->setComposingText()V

    .line 584
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    const/16 v15, 0x5dc

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/diotek/ime/framework/input/AbstractInputModule;->startTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;I)V

    goto :goto_4

    .line 571
    :cond_9
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    goto :goto_5

    .line 586
    .end local v4    # "composing":Ljava/lang/StringBuilder;
    :cond_a
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 587
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/PhonepadKoreanInputModule;->initComposingBuffer()V

    .line 588
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    .line 589
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getDeleteCount()I

    move-result v14

    const/16 v15, 0x14

    if-le v14, v15, :cond_b

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentPackageName()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_b

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentPackageName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "com.sec.chaton"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_b

    .line 592
    if-eqz v8, :cond_5

    .line 593
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getLastWordDividerIndex()I

    move-result v14

    const/4 v15, 0x0

    invoke-interface {v8, v14, v15}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto/16 :goto_4

    .line 596
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initWordDividerIndexList()V

    .line 597
    const/16 v14, 0x43

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/diotek/ime/framework/input/AbstractInputModule;->onKeyDownUpHandle(I)V

    goto/16 :goto_4
.end method

.method private processMultiTap(I[I)V
    .locals 20
    .param p1, "keyCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    .line 117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/diotek/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v13

    .line 118
    .local v13, "isPrediction":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v17, v0

    const-string v18, "KOR_MODE"

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v17, v0

    const-string v18, "SETTINGS_DEFAULT_KOREAN_PREDICTION_ON"

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v13

    .line 121
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v10

    .line 124
    .local v10, "ic":Landroid/view/inputmethod/InputConnection;
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v3, v0, [I

    .line 126
    .local v3, "activeIndex":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->isTimerRunning(Lcom/diotek/ime/framework/input/InputModule$Timer;)Z

    move-result v14

    .line 127
    .local v14, "isTimerRunning":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->stopTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;)V

    .line 128
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    .local v6, "builder":Ljava/lang/StringBuilder;
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputStatus;->isCjiTurboKeyLongpress()Z

    move-result v12

    .line 132
    .local v12, "isCjiTurboLongPress":Z
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v5

    .line 133
    .local v5, "beforeComposingLength":I
    move v4, v5

    .line 135
    .local v4, "afterComposingLength":I
    if-eqz v12, :cond_9

    .line 136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/diotek/ime/framework/engine/InputEngineManager;->doResetMultitap()I

    .line 137
    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/framework/repository/InputStatus;->setFlagCjiTurboKeyLongpress(Z)V

    .line 156
    :cond_1
    :goto_0
    const/4 v8, 0x0

    .line 157
    .local v8, "deleteLength":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputMethodOnKor()I

    move-result v9

    .line 159
    .local v9, "hangulModule":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v17

    const/16 v18, 0x1e

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_2

    .line 160
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 161
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/PhonepadKoreanInputModule;->initComposingBuffer()V

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/diotek/ime/framework/engine/InputEngineManager;->breakContext()V

    .line 163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    .line 166
    :cond_2
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v9, v0, :cond_4

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v17

    if-eqz v17, :cond_4

    .line 167
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->getLastChar()C

    move-result v16

    .line 168
    .local v16, "tmpChar":C
    const/16 v17, 0x119e

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_3

    const/16 v17, 0x11a2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_4

    .line 169
    :cond_3
    const/16 v17, 0x31

    move/from16 v0, p1

    move/from16 v1, v17

    if-eq v0, v1, :cond_4

    const/16 v17, 0x32

    move/from16 v0, p1

    move/from16 v1, v17

    if-eq v0, v1, :cond_4

    const/16 v17, 0x33

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_d

    .line 175
    .end local v16    # "tmpChar":C
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(I)I

    .line 176
    if-eqz v12, :cond_6

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v17, v0

    const-string v18, "HANGUL_DELETE_LENGTH"

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v8

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v6}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getCharSequence(Ljava/lang/StringBuilder;)I

    .line 179
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v17

    sub-int v17, v17, v8

    if-ltz v17, :cond_5

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v17

    sub-int v17, v17, v8

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_e

    .line 181
    :cond_5
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 185
    :goto_2
    invoke-static {v6}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(I)I

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/diotek/ime/framework/engine/InputEngineManager;->doResetMultitap()I

    .line 190
    :cond_6
    if-eqz v10, :cond_7

    .line 191
    invoke-interface {v10}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 193
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v6}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getCharSequence(Ljava/lang/StringBuilder;)I

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v17, v0

    const-string v18, "HANGUL_DELETE_LENGTH"

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v8

    .line 201
    if-eqz v13, :cond_13

    .line 202
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v17

    const/16 v18, 0x1e

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_f

    .line 203
    if-eqz v10, :cond_8

    .line 204
    invoke-interface {v10}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 296
    :cond_8
    :goto_3
    return-void

    .line 139
    .end local v8    # "deleteLength":I
    .end local v9    # "hangulModule":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    if-eqz v17, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-lez v17, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    if-nez v17, :cond_1

    .line 141
    :cond_a
    if-nez v14, :cond_c

    .line 142
    if-eqz v10, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getTimeoutComposingLength()I

    move-result v17

    if-gtz v17, :cond_1

    .line 145
    :cond_b
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    goto/16 :goto_0

    .line 147
    :cond_c
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v17

    if-eqz v17, :cond_1

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->getLastChar()C

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Character;->isLetter(C)Z

    move-result v17

    if-nez v17, :cond_1

    const/16 v17, 0x119e

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->getLastChar()C

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1

    const/16 v17, 0x11a2

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->getLastChar()C

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1

    .line 151
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    goto/16 :goto_0

    .line 171
    .restart local v8    # "deleteLength":I
    .restart local v9    # "hangulModule":I
    .restart local v16    # "tmpChar":C
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    goto/16 :goto_1

    .line 183
    .end local v16    # "tmpChar":C
    :cond_e
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v17

    sub-int v17, v17, v8

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/framework/input/ComposingTextManager;->setLength(I)V

    goto/16 :goto_2

    .line 208
    :cond_f
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v17

    sub-int v17, v17, v8

    if-ltz v17, :cond_10

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v17

    sub-int v17, v17, v8

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_12

    .line 210
    :cond_10
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 214
    :goto_4
    invoke-static {v6}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    .line 216
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v4

    .line 217
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/PhonepadKoreanInputModule;->setComposingText()V

    .line 218
    if-eq v4, v5, :cond_11

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v17, v0

    const-string v18, "SENT_TEXT_BY_INPUTCONNECTION"

    const/16 v19, 0x1

    invoke-interface/range {v17 .. v19}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    .line 221
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v17, v0

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputCharSequence(Ljava/lang/CharSequence;)I

    .line 223
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-interface/range {v17 .. v18}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getActiveIndex([I)I

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-interface/range {v17 .. v18}, Lcom/diotek/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    .line 293
    :goto_5
    if-eqz v10, :cond_8

    .line 294
    invoke-interface {v10}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto/16 :goto_3

    .line 212
    :cond_12
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v17

    sub-int v17, v17, v8

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/framework/input/ComposingTextManager;->setLength(I)V

    goto :goto_4

    .line 228
    :cond_13
    const/4 v11, 0x0

    .line 231
    .local v11, "isCallingUpdateSelection":Z
    if-eqz v6, :cond_14

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v17

    if-gtz v17, :cond_15

    .line 232
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    move-object/from16 v17, v0

    const/16 v18, 0x5dc

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputModule;->startTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;I)V

    .line 233
    if-eqz v10, :cond_8

    .line 234
    invoke-interface {v10}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto/16 :goto_3

    .line 239
    :cond_15
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v15

    .line 241
    .local v15, "length":I
    if-eqz v10, :cond_16

    if-nez v14, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getTimeoutComposingLength()I

    move-result v17

    if-lez v17, :cond_16

    .line 242
    if-lez v15, :cond_16

    .line 243
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getTimeoutComposingLength()I

    move-result v17

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v10, v0, v1}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 244
    const/4 v11, 0x1

    .line 248
    :cond_16
    if-ge v15, v8, :cond_1b

    .line 249
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposingWithoutInit()V

    .line 250
    if-lez v15, :cond_17

    .line 251
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 252
    if-eqz v10, :cond_17

    .line 253
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v10, v8, v0}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 254
    const/4 v11, 0x1

    .line 260
    :cond_17
    :goto_6
    invoke-static {v6}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    .line 262
    const/16 v17, 0x119e

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_18

    const/16 v17, 0x11a2

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_18

    .line 264
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_1c

    .line 265
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->getLastChar()C

    move-result v7

    .line 266
    .local v7, "composing":C
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/framework/input/ComposingTextManager;->setLength(I)V

    .line 267
    const/4 v11, 0x1

    .line 268
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v10, v1}, Lcom/diotek/ime/framework/input/PhonepadKoreanInputModule;->commitText(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)V

    .line 269
    invoke-static {v7}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(C)V

    .line 278
    .end local v7    # "composing":C
    :cond_18
    :goto_7
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v4

    .line 280
    if-eqz v10, :cond_1d

    if-nez v14, :cond_1d

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getTimeoutComposingLength()I

    move-result v17

    if-lez v17, :cond_1d

    .line 281
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setComposingTextWithoutBatch(Landroid/view/inputmethod/InputConnection;)V

    .line 286
    :goto_8
    if-nez v11, :cond_19

    if-eq v4, v5, :cond_1a

    .line 287
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v17, v0

    const-string v18, "SENT_TEXT_BY_INPUTCONNECTION"

    const/16 v19, 0x1

    invoke-interface/range {v17 .. v19}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    .line 290
    :cond_1a
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setTimeoutComposingLength(I)V

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    move-object/from16 v17, v0

    const/16 v18, 0x5dc

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputModule;->startTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;I)V

    goto/16 :goto_5

    .line 258
    :cond_1b
    sub-int v17, v15, v8

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/framework/input/ComposingTextManager;->setLength(I)V

    goto/16 :goto_6

    .line 271
    :cond_1c
    if-nez v8, :cond_18

    .line 272
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposingWithoutInit()V

    .line 273
    invoke-static {v6}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(Ljava/lang/StringBuilder;)V

    goto :goto_7

    .line 283
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/PhonepadKoreanInputModule;->setComposingText()V

    goto :goto_8
.end method

.method private processSingleTap(I[I)V
    .locals 10
    .param p1, "keyCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 334
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v4

    .line 335
    .local v4, "ic":Landroid/view/inputmethod/InputConnection;
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v5

    .line 336
    .local v5, "isPrediction":Z
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v7, "KOR_MODE"

    invoke-interface {v6, v7, v8}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 337
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v7, "SETTINGS_DEFAULT_KOREAN_PREDICTION_ON"

    invoke-interface {v6, v7, v8}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v5

    .line 343
    :cond_0
    new-array v0, v9, [I

    .line 345
    .local v0, "activeIndex":[I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 346
    .local v1, "builder":Ljava/lang/StringBuilder;
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v6}, Lcom/diotek/ime/framework/input/AbstractInputModule;->stopTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;)V

    .line 347
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v6, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(I)I

    .line 348
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v6, v1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getCharSequence(Ljava/lang/StringBuilder;)I

    .line 350
    if-nez v5, :cond_3

    .line 351
    invoke-static {v1}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(Ljava/lang/StringBuilder;)V

    .line 352
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v7, "HANGUL_DELETE_LENGTH"

    invoke-interface {v6, v7, v8}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v3

    .line 353
    .local v3, "deleteLength":I
    if-eqz v4, :cond_1

    .line 354
    invoke-interface {v4, v3, v8}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 356
    :cond_1
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v6

    if-le v6, v9, :cond_2

    .line 357
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->getLastChar()C

    move-result v2

    .line 358
    .local v2, "composing":C
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-static {v6}, Lcom/diotek/ime/framework/input/ComposingTextManager;->setLength(I)V

    .line 359
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/diotek/ime/framework/input/AbstractInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 360
    invoke-static {v2}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    .line 361
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/PhonepadKoreanInputModule;->setComposingText()V

    .line 387
    .end local v2    # "composing":C
    :goto_0
    return-void

    .line 363
    :cond_2
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/PhonepadKoreanInputModule;->setComposingText()V

    goto :goto_0

    .line 366
    .end local v3    # "deleteLength":I
    :cond_3
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v7, "HANGUL_DELETE_LENGTH"

    invoke-interface {v6, v7, v8}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v3

    .line 367
    .restart local v3    # "deleteLength":I
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v6

    sub-int/2addr v6, v3

    if-ltz v6, :cond_4

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v6

    sub-int/2addr v6, v3

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v7

    if-le v6, v7, :cond_5

    .line 369
    :cond_4
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 373
    :goto_1
    invoke-static {v1}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    .line 379
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/PhonepadKoreanInputModule;->setComposingText()V

    .line 380
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputCharSequence(Ljava/lang/CharSequence;)I

    .line 381
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 382
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v6, v7}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    .line 383
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v6, v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getActiveIndex([I)I

    .line 384
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v6, v7}, Lcom/diotek/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 371
    :cond_5
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v6

    sub-int/2addr v6, v3

    invoke-static {v6}, Lcom/diotek/ime/framework/input/ComposingTextManager;->setLength(I)V

    goto :goto_1
.end method

.method private processWordSeparator(I[I)V
    .locals 11
    .param p1, "keyCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    const/16 v10, 0x20

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 450
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    .line 451
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v5, v6}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    .line 452
    new-array v0, v9, [I

    .line 453
    .local v0, "activeIndex":[I
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v5, v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getActiveIndex([I)I

    .line 455
    const/4 v2, 0x0

    .line 456
    .local v2, "isComposing":Z
    const/4 v4, -0x1

    .line 457
    .local v4, "lastCharCode":I
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 458
    const/4 v2, 0x1

    .line 459
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v5}, Lcom/diotek/ime/framework/input/ComposingTextManager;->codePointAt(I)I

    move-result v4

    .line 462
    :cond_0
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_1

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 463
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    aget v7, v0, v8

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    aget v8, v0, v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-interface {v6, v7, v5}, Lcom/diotek/ime/framework/engine/InputEngineManager;->wordSelected(ILjava/lang/CharSequence;)I

    .line 464
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    .line 465
    invoke-virtual {p0, v9}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 466
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/PhonepadKoreanInputModule;->initComposingBuffer()V

    .line 469
    :cond_1
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    .line 471
    const/16 v5, 0xa

    if-ne p1, v5, :cond_3

    .line 472
    invoke-virtual {p0, v9}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 473
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->sendEnterKeyHandle()V

    .line 499
    :cond_2
    :goto_0
    return-void

    .line 476
    :cond_3
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->isInMultiTapInput()Z

    move-result v3

    .line 477
    .local v3, "isInMultiTap":Z
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputMethodOnKor()I

    move-result v1

    .line 478
    .local v1, "hangulModule":I
    if-eqz v3, :cond_4

    .line 479
    invoke-virtual {p0, p1, p2}, Lcom/diotek/ime/framework/input/AbstractInputModule;->processMultiTapSymbolicKey(I[I)V

    goto :goto_0

    .line 482
    :cond_4
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposingWithoutInit()V

    .line 483
    const/4 v5, 0x4

    if-eq v1, v5, :cond_6

    if-eqz v2, :cond_6

    .line 485
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v5}, Lcom/diotek/ime/framework/input/AbstractInputModule;->isTimerRunning(Lcom/diotek/ime/framework/input/InputModule$Timer;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 486
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v5}, Lcom/diotek/ime/framework/input/AbstractInputModule;->stopTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;)V

    .line 488
    :cond_5
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->resetTimeoutComposingLength()V

    .line 489
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/PhonepadKoreanInputModule;->initComposingBuffer()V

    .line 490
    if-ne p1, v10, :cond_6

    const/4 v5, 0x2

    if-ne v1, v5, :cond_2

    invoke-static {v4}, Lcom/diotek/ime/framework/input/PhonepadKoreanInputModule;->isConsonant(I)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v4}, Ljava/lang/Character;->isLetter(I)Z

    move-result v5

    if-nez v5, :cond_6

    if-eq p1, v10, :cond_2

    .line 496
    :cond_6
    int-to-char v5, p1

    invoke-static {v5}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(C)V

    .line 497
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/diotek/ime/framework/input/AbstractInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public closing()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->stopTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;)V

    .line 55
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    .line 56
    return-void
.end method

.method public initComposingBuffer()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 630
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    .line 632
    .local v0, "inputMethod":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 634
    :cond_0
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->doResetMultitap()I

    .line 636
    :cond_1
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getTimeoutComposingLength()I

    move-result v1

    if-nez v1, :cond_2

    .line 637
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    .line 638
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 640
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    .line 642
    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->isEnableDefaultCandidateview()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 643
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getCandidateviewStatus()I

    move-result v1

    if-nez v1, :cond_2

    .line 644
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1, v2}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    .line 651
    :cond_2
    :goto_0
    return-void

    .line 647
    :cond_3
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1, v2}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    goto :goto_0
.end method

.method public initInputEngineAndComposing(IIII)V
    .locals 1
    .param p1, "oldSelStart"    # I
    .param p2, "oldSelEnd"    # I
    .param p3, "newSelStart"    # I
    .param p4, "newSelEnd"    # I

    .prologue
    .line 655
    if-ne p3, p4, :cond_0

    sub-int v0, p2, p1

    if-lez v0, :cond_0

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 674
    :goto_0
    return-void

    .line 671
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    .line 672
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    goto :goto_0
.end method

.method public isPredictionWord()Z
    .locals 1

    .prologue
    .line 738
    const/4 v0, 0x0

    return v0
.end method

.method public onCharacterKey(I[I)V
    .locals 9
    .param p1, "keyCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    const/4 v8, 0x1

    .line 60
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    .line 61
    .local v0, "inputMethod":I
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v1

    .line 63
    .local v1, "inputRange":I
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isKorTabletCji()Z

    move-result v3

    .line 64
    .local v3, "isTabletCji":Z
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isKorNote3x4Keypad()Z

    move-result v2

    .line 66
    .local v2, "isNote3x4Keypad":Z
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    .line 67
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v6, v7}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    .line 68
    move v5, p1

    .line 69
    .local v5, "tempKeyCode":I
    const/4 v4, 0x0

    .line 70
    .local v4, "isTabletCjiKey":Z
    if-eqz v3, :cond_1

    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/input/PhonepadKoreanInputModule;->isTabletCjiKeyCode(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 71
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/input/PhonepadKoreanInputModule;->getConvertTabletCjiKeyCode(I)I

    move-result v5

    .line 72
    const/4 v4, 0x1

    .line 77
    :goto_0
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v6, v5}, Lcom/diotek/ime/framework/engine/InputEngineManager;->isTextCharacter(I)Z

    move-result v6

    if-eqz v6, :cond_7

    if-eqz v1, :cond_0

    if-eqz v3, :cond_7

    :cond_0
    if-eqz p2, :cond_7

    array-length v6, p2

    if-ne v6, v8, :cond_7

    .line 80
    if-nez v0, :cond_2

    .line 81
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/input/PhonepadKoreanInputModule;->processSingleTap(I[I)V

    .line 113
    :goto_1
    iput v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mLastKeyCode:I

    .line 114
    return-void

    .line 74
    :cond_1
    move v5, p1

    goto :goto_0

    .line 82
    :cond_2
    if-eq v0, v8, :cond_3

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getCurrentPreferenceInputMethod()I

    move-result v6

    if-eq v6, v8, :cond_3

    if-eqz v3, :cond_5

    .line 85
    :cond_3
    if-eqz v3, :cond_4

    if-nez v4, :cond_4

    .line 86
    invoke-virtual {p0, p1, p2}, Lcom/diotek/ime/framework/input/PhonepadKoreanInputModule;->processSymbolicKey(I[I)V

    .line 90
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->autoPeriod(I)V

    goto :goto_1

    .line 92
    :cond_4
    invoke-direct {p0, v5, p2}, Lcom/diotek/ime/framework/input/PhonepadKoreanInputModule;->processMultiTap(I[I)V

    goto :goto_1

    .line 94
    :cond_5
    if-eqz v2, :cond_6

    .line 95
    invoke-direct {p0, v5, p2}, Lcom/diotek/ime/framework/input/PhonepadKoreanInputModule;->processMultiTap(I[I)V

    goto :goto_1

    .line 97
    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/input/PhonepadKoreanInputModule;->processSingleTap(I[I)V

    goto :goto_1

    .line 101
    :cond_7
    invoke-virtual {p0, p1, p2}, Lcom/diotek/ime/framework/input/PhonepadKoreanInputModule;->processSymbolicKey(I[I)V

    .line 102
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->autoPeriod(I)V

    goto :goto_1
.end method

.method public onHwrPanelLongPressed(ILjava/lang/String;)V
    .locals 0
    .param p1, "selectedArrayIndex"    # I
    .param p2, "resultString"    # Ljava/lang/String;

    .prologue
    .line 608
    return-void
.end method

.method public onHwrTouchDown(IIJ)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "eventTime"    # J

    .prologue
    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public onHwrTouchMove(IIJ)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "eventTime"    # J

    .prologue
    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public onHwrTouchUp(IIJ)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "eventTime"    # J

    .prologue
    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public onText(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 752
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v1

    .line 753
    .local v1, "isPrediction":Z
    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 754
    const/4 v2, 0x1

    new-array v0, v2, [I

    .line 755
    .local v0, "activeIndex":[I
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    .line 756
    invoke-static {p1}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    .line 757
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/PhonepadKoreanInputModule;->setComposingText()V

    .line 758
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 759
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputCharSequence(Ljava/lang/CharSequence;)I

    .line 760
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v2, v3}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    .line 761
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v2, v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getActiveIndex([I)I

    .line 762
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v2, v3}, Lcom/diotek/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    .line 766
    .end local v0    # "activeIndex":[I
    :goto_0
    return-void

    .line 764
    :cond_0
    invoke-super {p0, p1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->onText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public pickSuggestionManually(ILjava/lang/CharSequence;)V
    .locals 11
    .param p1, "index"    # I
    .param p2, "suggestion"    # Ljava/lang/CharSequence;

    .prologue
    .line 678
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v3

    .line 679
    .local v3, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v3, :cond_1

    .line 680
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isAutoCompletitionInput()Z

    move-result v4

    .line 681
    .local v4, "isCompletionOn":Z
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v5

    .line 682
    .local v5, "isLandscape":Z
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->getCompletions()[Landroid/view/inputmethod/CompletionInfo;

    move-result-object v2

    .line 683
    .local v2, "completions":[Landroid/view/inputmethod/CompletionInfo;
    if-eqz v4, :cond_2

    if-eqz v5, :cond_2

    if-eqz v2, :cond_2

    .line 684
    if-ltz p1, :cond_0

    array-length v7, v2

    if-ge p1, v7, :cond_0

    .line 685
    aget-object v1, v2, p1

    .line 686
    .local v1, "completion":Landroid/view/inputmethod/CompletionInfo;
    invoke-interface {v3, v1}, Landroid/view/inputmethod/InputConnection;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z

    .line 715
    .end local v1    # "completion":Landroid/view/inputmethod/CompletionInfo;
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    .line 717
    .end local v2    # "completions":[Landroid/view/inputmethod/CompletionInfo;
    .end local v4    # "isCompletionOn":Z
    .end local v5    # "isLandscape":Z
    :cond_1
    return-void

    .line 689
    .restart local v2    # "completions":[Landroid/view/inputmethod/CompletionInfo;
    .restart local v4    # "isCompletionOn":Z
    .restart local v5    # "isLandscape":Z
    :cond_2
    invoke-static {p2}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(Ljava/lang/CharSequence;)V

    .line 690
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/PhonepadKoreanInputModule;->setComposingText()V

    .line 691
    iput p1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPickSuggestionIndex:I

    .line 692
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v7, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->processWhenPickSuggestionManually(I)I

    .line 694
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    .line 695
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v7, v8}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    .line 696
    const/4 v7, 0x1

    new-array v0, v7, [I

    .line 697
    .local v0, "activeIndex":[I
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v7, v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getActiveIndex([I)I

    .line 699
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_3

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 700
    iget v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPickSuggestionIndex:I

    .line 701
    .local v6, "pickeSuggestionIndex":I
    const/4 v7, -0x1

    if-eq v6, v7, :cond_4

    .line 702
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v7, v6}, Lcom/diotek/ime/framework/engine/InputEngineManager;->doNoteWordDoneForXt9(I)I

    .line 706
    :goto_1
    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    const/4 v7, 0x0

    aget v9, v0, v7

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    const/4 v10, 0x0

    aget v10, v0, v10

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-interface {v8, v9, v7}, Lcom/diotek/ime/framework/engine/InputEngineManager;->wordSelected(ILjava/lang/CharSequence;)I

    .line 707
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    .line 709
    .end local v6    # "pickeSuggestionIndex":I
    :cond_3
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 710
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/PhonepadKoreanInputModule;->initComposingBuffer()V

    .line 712
    const/4 v7, -0x1

    iput v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPickSuggestionIndex:I

    .line 713
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    goto :goto_0

    .line 704
    .restart local v6    # "pickeSuggestionIndex":I
    :cond_4
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    const/4 v8, 0x0

    aget v8, v0, v8

    invoke-interface {v7, v8}, Lcom/diotek/ime/framework/engine/InputEngineManager;->doNoteWordDoneForXt9(I)I

    goto :goto_1
.end method

.method public predictionWord()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 743
    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->isEnableDefaultCandidateview()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 744
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/common/InputManager;->setCandidateviewStatus(I)V

    .line 746
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0, v2}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    .line 747
    return v2
.end method

.method protected processSymbolicKey(I[I)V
    .locals 9
    .param p1, "keyCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    const/16 v8, 0x20

    const/4 v7, -0x5

    const/4 v4, 0x1

    .line 400
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    .line 401
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v5, v6}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    .line 402
    new-array v0, v4, [I

    .line 403
    .local v0, "activeIndex":[I
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v3

    .line 404
    .local v3, "isPrediction":Z
    int-to-char v5, p1

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-nez v5, :cond_2

    int-to-char v5, p1

    invoke-static {v5}, Ljava/lang/Character;->isLetter(C)Z

    move-result v5

    if-nez v5, :cond_2

    if-eq p1, v7, :cond_2

    if-eq p1, v8, :cond_2

    move v1, v4

    .line 407
    .local v1, "isFinishComposingKeyCode":Z
    :goto_0
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v5}, Lcom/diotek/ime/framework/input/AbstractInputModule;->isTimerRunning(Lcom/diotek/ime/framework/input/InputModule$Timer;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 408
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getTimeoutComposingLength()I

    move-result v5

    if-gtz v5, :cond_0

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getTimeoutComposingLength()I

    move-result v5

    if-nez v5, :cond_1

    if-eqz v1, :cond_1

    .line 410
    :cond_0
    invoke-virtual {p0, v4}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 414
    :cond_1
    const-string v5, " .,;:!?\n()[]*&@{}/<>_-+=|\'\u061b\u060c\u061f\""

    invoke-virtual {v5, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    .line 415
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/input/PhonepadKoreanInputModule;->processWordSeparator(I[I)V

    .line 447
    :goto_1
    return-void

    .line 404
    .end local v1    # "isFinishComposingKeyCode":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 417
    .restart local v1    # "isFinishComposingKeyCode":Z
    :cond_3
    const/16 v5, 0xa

    if-eq p1, v5, :cond_4

    if-ne p1, v8, :cond_5

    .line 419
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/input/PhonepadKoreanInputModule;->processWordSeparator(I[I)V

    goto :goto_1

    .line 421
    :cond_5
    if-ne p1, v7, :cond_6

    .line 422
    invoke-direct {p0}, Lcom/diotek/ime/framework/input/PhonepadKoreanInputModule;->processBackSpaceKey()V

    goto :goto_1

    .line 424
    :cond_6
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v5

    if-ne v5, v4, :cond_7

    if-eqz v3, :cond_7

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v5, :cond_7

    .line 426
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    .line 427
    int-to-char v4, p1

    invoke-static {v4}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    .line 428
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/PhonepadKoreanInputModule;->setComposingText()V

    .line 429
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 430
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputCharSequence(Ljava/lang/CharSequence;)I

    .line 431
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v4, v5}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    .line 432
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v4, v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getActiveIndex([I)I

    .line 433
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v4, v5}, Lcom/diotek/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    goto :goto_1

    .line 437
    :cond_7
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->isInMultiTapInput()Z

    move-result v2

    .line 438
    .local v2, "isInMultiTap":Z
    if-eqz v2, :cond_8

    .line 439
    invoke-virtual {p0, p1, p2}, Lcom/diotek/ime/framework/input/AbstractInputModule;->processMultiTapSymbolicKey(I[I)V

    goto :goto_1

    .line 442
    :cond_8
    invoke-virtual {p0, v4}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 443
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    .line 444
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/PhonepadKoreanInputModule;->initComposingBuffer()V

    .line 445
    int-to-char v4, p1

    invoke-static {v4}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(C)V

    .line 446
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/diotek/ime/framework/input/AbstractInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public release()V
    .locals 0

    .prologue
    .line 50
    return-void
.end method

.method public setAddStrokeCallBackOnHWREngine()V
    .locals 0

    .prologue
    .line 734
    return-void
.end method

.method public setComposingText()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 300
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 301
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_2

    .line 303
    const/4 v1, 0x1

    .line 304
    .local v1, "isComposible":Z
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasOneChar()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->getHashCode()I

    move-result v4

    invoke-static {v4}, Lcom/diotek/ime/framework/common/InputSequenceCheck;->isVietameseTone(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 305
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 306
    invoke-interface {v0, v7, v6}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 307
    .local v2, "leadingChar":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 308
    invoke-static {v2}, Lcom/diotek/ime/framework/common/InputSequenceCheck;->getVietnameseLeadingChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 309
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->getHashCode()I

    move-result v4

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v5

    invoke-static {v4, v5}, Lcom/diotek/ime/framework/common/InputSequenceCheck;->isVietnameseAcceptable(II)Z

    move-result v1

    .line 311
    if-eqz v1, :cond_2

    .line 312
    invoke-interface {v0, v7, v6}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 313
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 314
    .local v3, "normalizedChar":Ljava/lang/String;
    invoke-static {v3}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(Ljava/lang/String;)V

    .line 321
    .end local v2    # "leadingChar":Ljava/lang/String;
    .end local v3    # "normalizedChar":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->nomalizerFormNFC()V

    .line 322
    sget-boolean v4, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v4, :cond_1

    .line 323
    const-string v4, "SamsungIME"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<PhonepadKoreanInputModule> setComposingText-(1) - Utils.getUsedTime() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/diotek/ime/framework/util/Utils;->getUsedTime()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :cond_1
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0, v4, v7}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 326
    sget-boolean v4, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v4, :cond_2

    .line 327
    const-string v4, "SamsungIME"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<PhonepadKoreanInputModule> setComposingText-(2) - Utils.getUsedTime() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/diotek/ime/framework/util/Utils;->getUsedTime()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    .end local v1    # "isComposible":Z
    :cond_2
    return-void
.end method

.method public updateVOHWRSuggestion()V
    .locals 0

    .prologue
    .line 770
    return-void
.end method
