.class public Lcom/diotek/ime/framework/input/SwiftkeyQwertyLatinInputModule;
.super Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;
.source "SwiftkeyQwertyLatinInputModule.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;-><init>()V

    return-void
.end method

.method private composingForLao(I)I
    .locals 6
    .param p1, "keyCode"    # I

    .prologue
    const/16 v5, 0xeb6

    const/16 v4, 0xeb5

    const/16 v3, 0xeb4

    const/16 v2, 0xeb1

    const/16 v1, 0xeab

    .line 976
    const/16 v0, 0xecd

    if-ne p1, v0, :cond_1

    .line 977
    const/16 v0, 0xecd

    invoke-static {v0}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    .line 978
    const/16 p1, 0xec8

    .line 1012
    :cond_0
    :goto_0
    return p1

    .line 980
    :cond_1
    const/16 v0, 0xebb

    if-ne p1, v0, :cond_2

    .line 981
    const/16 v0, 0xebb

    invoke-static {v0}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    .line 982
    const/16 p1, 0xec9

    goto :goto_0

    .line 984
    :cond_2
    const/16 v0, 0xeb3

    if-ne p1, v0, :cond_3

    .line 985
    const/16 v0, 0xec9

    invoke-static {v0}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    .line 986
    const/16 p1, 0xeb3

    goto :goto_0

    .line 988
    :cond_3
    if-ne p1, v3, :cond_4

    .line 989
    invoke-static {v3}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    .line 990
    const/16 p1, 0xec9

    goto :goto_0

    .line 992
    :cond_4
    if-ne p1, v4, :cond_5

    .line 993
    invoke-static {v4}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    .line 994
    const/16 p1, 0xec9

    goto :goto_0

    .line 996
    :cond_5
    if-ne p1, v1, :cond_6

    .line 997
    invoke-static {v1}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    .line 998
    const/16 p1, 0xebc

    goto :goto_0

    .line 1000
    :cond_6
    if-ne p1, v2, :cond_7

    .line 1001
    invoke-static {v2}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    .line 1002
    const/16 p1, 0xec9

    goto :goto_0

    .line 1004
    :cond_7
    if-ne p1, v5, :cond_8

    .line 1005
    invoke-static {v5}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    .line 1006
    const/16 p1, 0xec9

    goto :goto_0

    .line 1008
    :cond_8
    const/16 v0, 0xeb7

    if-ne p1, v0, :cond_0

    .line 1009
    const/16 v0, 0xeb7

    invoke-static {v0}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    .line 1010
    const/16 p1, 0xec9

    goto :goto_0
.end method

.method private isAcceptableThai(I)Z
    .locals 4
    .param p1, "keyCode"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 411
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v2

    if-le v2, v1, :cond_1

    .line 412
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v3

    invoke-static {v2, v3}, Lcom/diotek/ime/framework/input/ComposingTextManager;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->checkAcceptableThai(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v3

    invoke-static {v2, v3}, Lcom/diotek/ime/framework/input/ComposingTextManager;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->checkAcceptableThai(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 427
    :cond_0
    :goto_0
    return v0

    .line 416
    :cond_1
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 417
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v3

    invoke-static {v2, v3}, Lcom/diotek/ime/framework/input/ComposingTextManager;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->checkAcceptableThai(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    .line 427
    goto :goto_0

    .line 421
    :cond_3
    const-string v2, ""

    invoke-virtual {p0, v2, p1}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->checkAcceptableThai(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 422
    int-to-char v1, p1

    invoke-static {v1}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    .line 423
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private isNotSpaceFrontOfCursor()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 961
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 962
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v1, :cond_1

    .line 973
    :cond_0
    :goto_0
    return v2

    .line 966
    :cond_1
    invoke-interface {v1, v3, v2}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 967
    .local v0, "frontString":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-eqz v4, :cond_0

    .line 969
    if-eqz v0, :cond_2

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    :cond_2
    move v2, v3

    .line 973
    goto :goto_0
.end method

.method private processBackSpaceKey()V
    .locals 20

    .prologue
    .line 633
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v6

    .line 634
    .local v6, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v6, :cond_1

    .line 812
    :cond_0
    :goto_0
    return-void

    .line 640
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->stopTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;)V

    .line 644
    const-string v9, ""

    .line 648
    .local v9, "lastChar":Ljava/lang/String;
    const/16 v16, 0x0

    .line 649
    .local v16, "ss":Landroid/text/SpannableString;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    move/from16 v17, v0

    if-eqz v17, :cond_4

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v17

    if-eqz v17, :cond_4

    .line 651
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->isEnableAutoCorrection()Z

    move-result v17

    if-nez v17, :cond_2

    .line 652
    const v17, 0x7fffffff

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v6, v0, v1}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v16

    .end local v16    # "ss":Landroid/text/SpannableString;
    check-cast v16, Landroid/text/SpannableString;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 657
    .restart local v16    # "ss":Landroid/text/SpannableString;
    :cond_2
    :goto_1
    if-eqz v16, :cond_4

    .line 658
    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v16}, Landroid/text/SpannableString;->length()I

    move-result v18

    const-class v19, Ljava/lang/Object;

    invoke-virtual/range {v16 .. v19}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v14

    .line 659
    .local v14, "sp":[Ljava/lang/Object;
    move-object v2, v14

    .local v2, "arr$":[Ljava/lang/Object;
    array-length v10, v2

    .local v10, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_2
    if-ge v5, v10, :cond_4

    aget-object v15, v2, v5

    .line 660
    .local v15, "span":Ljava/lang/Object;
    instance-of v0, v15, Landroid/text/style/UnderlineSpan;

    move/from16 v17, v0

    if-eqz v17, :cond_3

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v17

    invoke-virtual/range {v16 .. v16}, Landroid/text/SpannableString;->length()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 661
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/text/SpannableString;->getSpanStart(Ljava/lang/Object;)I

    move-result v17

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v6, v0, v1}, Landroid/view/inputmethod/InputConnection;->setComposingRegion(II)Z

    .line 659
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 654
    .end local v2    # "arr$":[Ljava/lang/Object;
    .end local v5    # "i$":I
    .end local v10    # "len$":I
    .end local v14    # "sp":[Ljava/lang/Object;
    .end local v15    # "span":Ljava/lang/Object;
    .end local v16    # "ss":Landroid/text/SpannableString;
    :catch_0
    move-exception v4

    .line 655
    .local v4, "e":Ljava/lang/ClassCastException;
    const/16 v16, 0x0

    .restart local v16    # "ss":Landroid/text/SpannableString;
    goto :goto_1

    .line 666
    .end local v4    # "e":Ljava/lang/ClassCastException;
    :cond_4
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v17

    if-eqz v17, :cond_7

    .line 667
    const-string v9, " "

    .line 686
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setDeleteCount(Ljava/lang/String;)V

    .line 687
    const/16 v16, 0x0

    .line 689
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->resetPredictionWord()V

    .line 690
    const/4 v13, 0x0

    .line 691
    .local v13, "selectedText":I
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getDeleteCount()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    .line 692
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/diotek/ime/framework/common/InputManager;->getSelectedNumOfText()I

    move-result v13

    .line 695
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    if-eqz v17, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-lez v17, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    if-eqz v17, :cond_18

    .line 696
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/diotek/ime/framework/common/InputManager;->isEmptyComposingSpan()Z

    move-result v17

    if-nez v17, :cond_e

    .line 697
    if-lez v13, :cond_b

    .line 698
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 699
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initComposingBuffer()V

    .line 700
    const/16 v17, 0x43

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->onKeyDownUpHandle(I)V

    .line 701
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->postUpdateSequenceAndSuggestionDelay(I)V

    goto/16 :goto_0

    .line 670
    .end local v13    # "selectedText":I
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    move/from16 v17, v0

    if-eqz v17, :cond_a

    const-string v17, ""

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a

    if-eqz v16, :cond_a

    invoke-virtual/range {v16 .. v16}, Landroid/text/SpannableString;->length()I

    move-result v17

    if-lez v17, :cond_a

    .line 671
    invoke-virtual/range {v16 .. v16}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v16}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 675
    :goto_4
    if-nez v9, :cond_8

    .line 676
    const-string v9, ""

    .line 678
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    move/from16 v17, v0

    if-nez v17, :cond_5

    .line 679
    sget-object v17, Lcom/diotek/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mCommitHistory:Ljava/lang/StringBuilder;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    .line 680
    .local v11, "length":I
    if-lez v11, :cond_9

    .line 681
    sget-object v17, Lcom/diotek/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mCommitHistory:Ljava/lang/StringBuilder;

    add-int/lit8 v18, v11, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v11}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 682
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->mSwiftKeyKeyLearningManager:Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;->deleteLastTouchPoint()V

    goto/16 :goto_3

    .line 673
    .end local v11    # "length":I
    :cond_a
    const/16 v17, 0x1

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v6, v0, v1}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v9

    .end local v9    # "lastChar":Ljava/lang/String;
    check-cast v9, Ljava/lang/String;

    .restart local v9    # "lastChar":Ljava/lang/String;
    goto :goto_4

    .line 703
    .restart local v13    # "selectedText":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v17, v0

    const/16 v18, -0x5

    invoke-interface/range {v17 .. v18}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(I)I

    move-result v17

    if-nez v17, :cond_d

    .line 704
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 705
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 706
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/diotek/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v17

    if-eqz v17, :cond_c

    .line 707
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/diotek/ime/framework/common/InputManager;->updateShiftState()V

    .line 709
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-interface/range {v17 .. v18}, Lcom/diotek/ime/framework/common/InputManager;->setIsPendingUpdateCandidateView(Z)V

    .line 710
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->postUpdateSequenceAndSuggestionDelay(I)V

    goto/16 :goto_0

    .line 713
    :cond_d
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v11

    .line 714
    .restart local v11    # "length":I
    add-int/lit8 v17, v11, -0x1

    move/from16 v0, v17

    invoke-static {v0, v11}, Lcom/diotek/ime/framework/input/ComposingTextManager;->delete(II)V

    .line 716
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setComposingText()V

    .line 717
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->mSwiftKeyKeyLearningManager:Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;->deleteLastTouchPoint()V

    .line 718
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSuggestionDelay()V

    goto/16 :goto_0

    .line 721
    .end local v11    # "length":I
    :cond_e
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v17

    if-eqz v17, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/diotek/ime/framework/common/InputManager;->isEmptyComposingSpan()Z

    move-result v17

    if-nez v17, :cond_10

    .line 722
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v17, v0

    const/16 v18, -0x5

    invoke-interface/range {v17 .. v18}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(I)I

    .line 723
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 724
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 725
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/diotek/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v17

    if-eqz v17, :cond_f

    .line 726
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/diotek/ime/framework/common/InputManager;->updateShiftState()V

    .line 728
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->mSwiftKeyKeyLearningManager:Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;->deleteLastTouchPoint()V

    .line 729
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-interface/range {v17 .. v18}, Lcom/diotek/ime/framework/common/InputManager;->setIsPendingUpdateCandidateView(Z)V

    .line 730
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->postUpdateSequenceAndSuggestionDelay(I)V

    goto/16 :goto_0

    .line 733
    :cond_10
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 734
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v17

    if-gtz v17, :cond_11

    if-lez v13, :cond_12

    .line 735
    :cond_11
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setPredictionWord(Z)V

    .line 737
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getDeleteCount()I

    move-result v17

    const/16 v18, 0xa

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_13

    invoke-static {}, Lcom/diotek/ime/framework/repository/PackageStatus;->getPackageName()Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    move-result-object v17

    sget-object v18, Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;->CHATON_PACKAGE_NAME:Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_13

    .line 739
    if-eqz v6, :cond_15

    .line 740
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getLastWordDividerIndex()I

    move-result v17

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v6, v0, v1}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 741
    const/16 v17, 0x96

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->postUpdateSequenceAndSuggestionDelay(I)V

    goto/16 :goto_0

    .line 745
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initWordDividerIndexList()V

    .line 746
    invoke-static {}, Lcom/diotek/ime/framework/repository/PackageStatus;->getPackageName()Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    move-result-object v17

    sget-object v18, Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;->Utorrent_PACKAGE_NAME:Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_17

    .line 747
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/diotek/ime/framework/common/InputManager;->getSelectedNumOfText()I

    move-result v17

    if-nez v17, :cond_16

    if-eqz v6, :cond_16

    .line 748
    const/16 v17, 0x1

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v6, v0, v1}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 757
    :cond_14
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposingWithoutInit()V

    .line 759
    :cond_15
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->postUpdateSequence(I)V

    .line 760
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSuggestionDelay()V

    goto/16 :goto_0

    .line 749
    :cond_16
    if-eqz v6, :cond_14

    .line 750
    invoke-interface {v6}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 751
    const-string v17, ""

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v6, v0, v1}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 752
    invoke-interface {v6}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto :goto_5

    .line 755
    :cond_17
    const/16 v17, 0x43

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->onKeyDownUpHandle(I)V

    goto :goto_5

    .line 764
    :cond_18
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isAutoCompletitionInput()Z

    move-result v7

    .line 765
    .local v7, "isCompletionOn":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v8

    .line 766
    .local v8, "isLandscape":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/diotek/ime/framework/common/InputManager;->getCompletions()[Landroid/view/inputmethod/CompletionInfo;

    move-result-object v3

    .line 768
    .local v3, "completions":[Landroid/view/inputmethod/CompletionInfo;
    if-eqz v7, :cond_1b

    if-eqz v8, :cond_1b

    if-eqz v3, :cond_1b

    .line 769
    if-eqz v6, :cond_19

    .line 770
    invoke-interface {v6}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 772
    :cond_19
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 773
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getDeleteCount()I

    move-result v17

    const/16 v18, 0x14

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_1a

    invoke-static {}, Lcom/diotek/ime/framework/repository/PackageStatus;->getPackageName()Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    move-result-object v17

    sget-object v18, Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;->CHATON_PACKAGE_NAME:Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_1a

    .line 775
    if-eqz v6, :cond_0

    .line 776
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getLastWordDividerIndex()I

    move-result v17

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v6, v0, v1}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto/16 :goto_0

    .line 779
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initWordDividerIndexList()V

    .line 780
    const/16 v17, 0x43

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->onKeyDownUpHandle(I)V

    goto/16 :goto_0

    .line 783
    :cond_1b
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 784
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initComposingBuffer()V

    .line 786
    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputLanguage:I

    move/from16 v17, v0

    const/high16 v18, 0x76690000

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsVietnameseTelexInput:Z

    move/from16 v17, v0

    if-nez v17, :cond_1c

    .line 787
    if-eqz v9, :cond_1c

    .line 788
    invoke-static {v9}, Lcom/diotek/ime/framework/common/InputSequenceCheck;->normalizedNFD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 789
    .local v12, "nonNormalizedChar":Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_1c

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/String;->charAt(I)C

    move-result v17

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/framework/common/InputSequenceCheck;->isVietameseTone(I)Z

    move-result v17

    if-eqz v17, :cond_1c

    .line 793
    const/16 v17, 0x1

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v6, v0, v1}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 794
    invoke-static {v12}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    .line 795
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v6, v0, v1}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 796
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 801
    .end local v12    # "nonNormalizedChar":Ljava/lang/String;
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getDeleteCount()I

    move-result v17

    const/16 v18, 0x14

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_1d

    invoke-static {}, Lcom/diotek/ime/framework/repository/PackageStatus;->getPackageName()Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    move-result-object v17

    sget-object v18, Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;->CHATON_PACKAGE_NAME:Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_1d

    .line 803
    if-eqz v6, :cond_0

    .line 804
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getLastWordDividerIndex()I

    move-result v17

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v6, v0, v1}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto/16 :goto_0

    .line 807
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initWordDividerIndexList()V

    .line 808
    const/16 v17, 0x43

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->onKeyDownUpHandle(I)V

    goto/16 :goto_0
.end method

.method private processForwardDelete()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 602
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 603
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v1, :cond_1

    .line 630
    :cond_0
    :goto_0
    return-void

    .line 607
    :cond_1
    const-string v0, ""

    .line 608
    .local v0, "beforeChar":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 609
    const/4 v2, 0x1

    invoke-interface {v1, v2, v4}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .end local v0    # "beforeChar":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 610
    .restart local v0    # "beforeChar":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 611
    const-string v0, ""

    .line 614
    :cond_2
    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setDeleteCount(Ljava/lang/String;)V

    .line 615
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->resetPredictionWord()V

    .line 617
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getDeleteCount()I

    move-result v2

    const/16 v3, 0xa

    if-le v2, v3, :cond_4

    invoke-static {}, Lcom/diotek/ime/framework/repository/PackageStatus;->getPackageName()Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    move-result-object v2

    sget-object v3, Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;->CHATON_PACKAGE_NAME:Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    if-eq v2, v3, :cond_4

    .line 619
    if-eqz v1, :cond_3

    .line 620
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getFirstWordDividerIndex()I

    move-result v2

    invoke-interface {v1, v4, v2}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 627
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

    .line 628
    const/16 v2, 0x96

    invoke-virtual {p0, v2}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->postUpdateSequenceAndSuggestionDelay(I)V

    goto :goto_0

    .line 623
    :cond_4
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initWordDividerIndexList()V

    .line 624
    const/16 v2, 0x70

    invoke-virtual {p0, v2}, Lcom/diotek/ime/framework/input/AbstractInputModule;->onKeyDownUpHandle(I)V

    goto :goto_1
.end method

.method private processSingleTap(I[I)V
    .locals 37
    .param p1, "keyCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    .line 160
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v24

    .line 161
    .local v24, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v24, :cond_1

    .line 408
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v5, 0x0

    invoke-interface {v2, v5}, Lcom/diotek/ime/framework/common/InputManager;->setCandidateviewStatus(I)V

    .line 165
    const/16 v21, 0x0

    .line 166
    .local v21, "commitAndUpdateSequnce":Z
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    .local v23, "currentWord":Ljava/lang/StringBuilder;
    const/16 v30, 0x0

    .line 168
    .local v30, "isMakeComposingText":Z
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isEnableTraceInPassword()Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_2
    const/16 v27, 0x1

    .line 169
    .local v27, "isEnableTraceInput":Z
    :goto_1
    const/16 v32, 0x0

    .line 171
    .local v32, "isTrace":Z
    if-eqz v27, :cond_c

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsTraceOn:Z

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v2

    const/4 v5, 0x2

    if-le v2, v5, :cond_c

    .line 172
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface {v2, v5, v6, v7}, Lcom/diotek/ime/framework/engine/InputEngineManager;->isAutoAcceptBeforeTrace([Landroid/graphics/PointF;I[Z)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 173
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/diotek/ime/framework/input/AbstractInputModule;->selectWordInList(I)V

    .line 174
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 175
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isAutoSpaceOn()Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->isSymbolAndSpace()Z

    move-result v2

    if-nez v2, :cond_3

    .line 176
    const/16 v2, 0x20

    invoke-static {v2}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(C)V

    .line 177
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 178
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

    .line 180
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->updateShiftState()V

    .line 184
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->isSymbolAndSpace()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 185
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 186
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getSymbolKeyCode()I

    move-result v35

    .line 187
    .local v35, "symbol":I
    const/16 v2, -0xff

    move/from16 v0, v35

    if-eq v0, v2, :cond_4

    .line 188
    move/from16 v0, v35

    int-to-char v2, v0

    invoke-static {v2}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    .line 190
    :cond_4
    const/16 v2, 0x20

    invoke-static {v2}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    .line 191
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 193
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v2

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 194
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->updateShiftState()V

    .line 196
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->clearTraceInfo()V

    .line 197
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->resetPredictionWord()V

    .line 198
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->cancelPreviewTrace()V

    goto/16 :goto_0

    .line 168
    .end local v27    # "isEnableTraceInput":Z
    .end local v32    # "isTrace":Z
    .end local v35    # "symbol":I
    :cond_6
    const/16 v27, 0x0

    goto/16 :goto_1

    .line 202
    .restart local v27    # "isEnableTraceInput":Z
    .restart local v32    # "isTrace":Z
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getSelectedNumOfText()I

    move-result v34

    .line 203
    .local v34, "selectText":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-eqz v2, :cond_8

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    if-lez v34, :cond_8

    .line 204
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/engine/InputEngineManager;->breakContext()V

    .line 206
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v5, 0x0

    invoke-interface {v2, v5}, Lcom/diotek/ime/framework/common/InputManager;->setIsPendingUpdateCandidateView(Z)V

    .line 207
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

    if-nez v2, :cond_9

    .line 208
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->clearTraceInfo()V

    .line 209
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->resetPredictionWord()V

    .line 210
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSequence(Ljava/lang/StringBuilder;)V

    .line 211
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSuggestionDelay()V

    .line 212
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->cancelPreviewTrace()V

    goto/16 :goto_0

    .line 215
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->clearTraceInfo()V

    .line 217
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v2, v5, v6}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getCharSequence(Ljava/lang/StringBuilder;I)I

    .line 218
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 219
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->disableSetUpAutoSpace()V

    .line 220
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->resetPredictionWord()V

    .line 222
    :cond_a
    const/16 v32, 0x1

    .line 354
    .end local v34    # "selectText":I
    :goto_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputLanguage:I

    const/high16 v5, 0x76690000

    if-ne v2, v5, :cond_b

    .line 355
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputModule;->processVietnameseTone(IZ)V

    .line 358
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-eqz v2, :cond_2d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v2, :cond_2d

    move-object/from16 v0, p0

    iget v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosNextText:I

    if-nez v2, :cond_2d

    .line 360
    if-eqz v30, :cond_2b

    .line 361
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v2, v5}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->makeComposingText(Landroid/view/inputmethod/InputConnection;IZ)V

    .line 362
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->mSwiftKeyKeyLearningManager:Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;->addNewText(Ljava/lang/StringBuilder;)V

    .line 366
    :goto_3
    if-eqz v32, :cond_2c

    .line 367
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/SwiftkeyQwertyLatinInputModule;->updateSuggestion()V

    goto/16 :goto_0

    .line 224
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->cancelPreviewTrace()V

    .line 225
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputLanguage:I

    const/high16 v5, 0x74680000

    if-ne v2, v5, :cond_d

    .line 226
    invoke-direct/range {p0 .. p1}, Lcom/diotek/ime/framework/input/SwiftkeyQwertyLatinInputModule;->isAcceptableThai(I)Z

    move-result v2

    if-nez v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    if-eqz v2, :cond_d

    .line 227
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->clearTraceInfo()V

    .line 228
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->resetPredictionWord()V

    goto/16 :goto_0

    .line 232
    :cond_d
    const/16 v31, 0x0

    .line 233
    .local v31, "isOverMaximumChar":Z
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-eqz v2, :cond_e

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v2

    const/16 v5, 0x40

    if-lt v2, v5, :cond_e

    .line 234
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/engine/InputEngineManager;->breakContext()V

    .line 235
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->resetPredictionWord()V

    .line 236
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 237
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    .line 238
    const/16 v2, 0x40

    move-object/from16 v0, p0

    iput v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosPrevText:I

    .line 239
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosNextText:I

    .line 240
    const/16 v31, 0x1

    .line 242
    :cond_e
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v2

    if-eqz v2, :cond_16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAtText()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 243
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/diotek/ime/framework/input/AbstractInputModule;->selectWordInList(I)V

    .line 244
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 245
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/engine/InputEngineManager;->breakContext()V

    .line 246
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isAutoSpaceOn()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 247
    const/16 v2, 0x20

    invoke-static {v2}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(C)V

    .line 248
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 249
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v2

    if-nez v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 250
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->updateShiftState()V

    .line 274
    :cond_f
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsVietnameseTelexInput:Z

    if-eqz v2, :cond_10

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setVietnameseTelexComposing()V

    .line 276
    :cond_10
    move-object/from16 v0, p0

    iget v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputLanguage:I

    const/high16 v5, 0x74720000

    if-ne v2, v5, :cond_1f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 277
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v5, "SETTINGS_TURKISH_KEYBOARD_TYPE"

    const/4 v6, 0x0

    invoke-interface {v2, v5, v6}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v36

    .line 279
    .local v36, "turkishKeyboardType":I
    if-eqz v36, :cond_1d

    .line 280
    invoke-virtual/range {p0 .. p1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->toUpperCaseOfTurkish(I)I

    move-result p1

    .line 292
    .end local v36    # "turkishKeyboardType":I
    :cond_11
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsVietnameseTelexInput:Z

    if-eqz v2, :cond_23

    .line 293
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    int-to-char v5, v0

    invoke-static {v2, v5}, Lcom/diotek/ime/framework/input/Telex/Telex;->join(Ljava/lang/StringBuilder;C)Ljava/lang/StringBuilder;

    .line 294
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v2, v5}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputString(Ljava/lang/StringBuilder;)I

    .line 299
    :goto_6
    if-eqz v21, :cond_24

    .line 300
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 301
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSequence(Ljava/lang/StringBuilder;)V

    .line 335
    :cond_12
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-nez v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getSwiftkeyVersion()I

    move-result v2

    const/4 v5, 0x3

    if-ne v2, v5, :cond_13

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isPasswordInputType()Z

    move-result v2

    if-nez v2, :cond_13

    .line 336
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTouchPoint(I)Landroid/graphics/PointF;

    move-result-object v5

    move/from16 v0, p1

    invoke-interface {v2, v0, v5}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKeyWithoutBuild(ILandroid/graphics/PointF;)I

    .line 339
    :cond_13
    if-eqz v21, :cond_14

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_14

    move-object/from16 v0, p0

    iget v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosNextText:I

    if-nez v2, :cond_14

    move-object/from16 v0, p0

    iget v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputLanguage:I

    const/high16 v5, 0x74680000

    if-eq v2, v5, :cond_14

    .line 340
    move-object/from16 v0, p0

    iget v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosPrevText:I

    const/16 v5, 0x40

    if-lt v2, v5, :cond_2a

    .line 341
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/engine/InputEngineManager;->breakContext()V

    .line 347
    :cond_14
    :goto_8
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-nez v2, :cond_15

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isPasswordInputType()Z

    move-result v2

    if-nez v2, :cond_15

    .line 348
    sget-object v2, Lcom/diotek/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mCommitHistory:Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 349
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->mSwiftKeyKeyLearningManager:Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;

    sget-object v5, Lcom/diotek/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mCommitHistory:Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTouchPoint(I)Landroid/graphics/PointF;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;->addTouchPoint(Ljava/lang/StringBuilder;Landroid/graphics/PointF;)V

    .line 351
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearAction()V

    goto/16 :goto_2

    .line 253
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-eqz v2, :cond_f

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 254
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getSelectedNumOfText()I

    move-result v34

    .line 255
    .restart local v34    # "selectText":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v25

    .line 256
    .local v25, "info":Landroid/view/inputmethod/EditorInfo;
    const/16 v33, 0x0

    .line 257
    .local v33, "packageName":Ljava/lang/String;
    if-eqz v25, :cond_17

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    move-object/from16 v33, v0

    .line 258
    :cond_17
    if-gtz v34, :cond_18

    move-object/from16 v0, p0

    iget v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputLanguage:I

    const/high16 v5, 0x74680000

    if-eq v2, v5, :cond_18

    if-eqz v33, :cond_19

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_19

    const-string v2, "com.android.chrome"

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 259
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/engine/InputEngineManager;->breakContext()V

    goto/16 :goto_4

    .line 260
    :cond_19
    move-object/from16 v0, p0

    iget v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosNextText:I

    if-nez v2, :cond_f

    if-nez v31, :cond_f

    .line 261
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v0, v23

    invoke-interface {v2, v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getCharSequence(Ljava/lang/StringBuilder;)I

    .line 262
    move-object/from16 v0, p0

    iget v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosPrevText:I

    const/16 v5, 0x40

    if-lt v2, v5, :cond_1a

    .line 263
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/engine/InputEngineManager;->breakContext()V

    goto/16 :goto_4

    .line 264
    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isAutoSpacePreferenceOn()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-gtz v2, :cond_1b

    if-lez v34, :cond_1c

    :cond_1b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosNextText:I

    if-nez v2, :cond_1c

    .line 267
    const/16 v21, 0x1

    goto/16 :goto_4

    .line 268
    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isAutoSpacePreferenceOn()Z

    move-result v2

    if-nez v2, :cond_f

    .line 269
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/engine/InputEngineManager;->breakContext()V

    goto/16 :goto_4

    .line 282
    .end local v25    # "info":Landroid/view/inputmethod/EditorInfo;
    .end local v33    # "packageName":Ljava/lang/String;
    .end local v34    # "selectText":I
    .restart local v36    # "turkishKeyboardType":I
    :cond_1d
    invoke-static/range {p1 .. p1}, Ljava/lang/Character;->isLowerCase(I)Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-static/range {p1 .. p1}, Ljava/lang/Character;->toUpperCase(I)I

    move-result p1

    :cond_1e
    goto/16 :goto_5

    .line 284
    .end local v36    # "turkishKeyboardType":I
    :cond_1f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputLanguage:I

    const/high16 v5, 0x617a0000

    if-ne v2, v5, :cond_20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 285
    invoke-virtual/range {p0 .. p1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->toUpperCaseOfTurkish(I)I

    move-result p1

    goto/16 :goto_5

    .line 286
    :cond_20
    move-object/from16 v0, p0

    iget v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputLanguage:I

    const/high16 v5, 0x656c0000

    if-ne v2, v5, :cond_21

    const/16 v2, 0x3c2

    move/from16 v0, p1

    if-eq v0, v2, :cond_11

    .line 289
    :cond_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-static/range {p1 .. p1}, Ljava/lang/Character;->isLowerCase(I)Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-static/range {p1 .. p1}, Ljava/lang/Character;->toUpperCase(I)I

    move-result p1

    :cond_22
    goto/16 :goto_5

    .line 296
    :cond_23
    move/from16 v0, p1

    int-to-char v2, v0

    invoke-static {v2}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    goto/16 :goto_6

    .line 303
    :cond_24
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-eqz v2, :cond_25

    move-object/from16 v0, p0

    iget v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosNextText:I

    if-lez v2, :cond_25

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsVietnameseTelexInput:Z

    if-nez v2, :cond_25

    .line 304
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 305
    const/16 v2, 0x96

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->postUpdateSequenceAndSuggestionDelay(I)V

    goto/16 :goto_7

    .line 308
    :cond_25
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-nez v2, :cond_26

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getSwiftkeyVersion()I

    move-result v2

    const/4 v5, 0x3

    if-ne v2, v5, :cond_26

    move-object/from16 v0, p0

    iget v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosNextText:I

    if-lez v2, :cond_26

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsVietnameseTelexInput:Z

    if-nez v2, :cond_26

    .line 309
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 310
    const/16 v2, 0x96

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->postUpdateSequenceAndSuggestionDelay(I)V

    goto/16 :goto_7

    .line 312
    :cond_26
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsVietnameseTelexInput:Z

    if-nez v2, :cond_12

    .line 313
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputStatus;->isKeyLongpressed()Z

    move-result v29

    .line 314
    .local v29, "isLongPress":Z
    if-nez v29, :cond_27

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v2

    const/4 v5, 0x7

    if-ne v2, v5, :cond_29

    .line 315
    :cond_27
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->mSwiftKeyKeyLearningManager:Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    int-to-char v6, v0

    invoke-virtual {v2, v5, v6}, Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;->addKeyCode(Ljava/lang/StringBuilder;C)V

    .line 316
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    const/4 v5, 0x0

    move/from16 v0, p1

    invoke-interface {v2, v0, v5}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(ILandroid/graphics/PointF;)I

    move-result v2

    if-gez v2, :cond_28

    .line 317
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 318
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->deleteLastChar()V

    .line 321
    :cond_28
    if-eqz v29, :cond_12

    .line 322
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move/from16 v0, p1

    int-to-char v5, v0

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Lcom/diotek/ime/framework/engine/InputEngineManager;->setIntentionalEvent(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 325
    :cond_29
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->mSwiftKeyKeyLearningManager:Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTouchPoint(I)Landroid/graphics/PointF;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;->addTouchPoint(Ljava/lang/StringBuilder;Landroid/graphics/PointF;)V

    .line 326
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

    if-gez v2, :cond_12

    .line 327
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v2

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isKorMode()Z

    move-result v2

    if-nez v2, :cond_12

    .line 328
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->deleteLastChar()V

    goto/16 :goto_7

    .line 343
    .end local v29    # "isLongPress":Z
    :cond_2a
    invoke-static/range {v23 .. v23}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(Ljava/lang/StringBuilder;)V

    .line 344
    const/16 v30, 0x1

    goto/16 :goto_8

    .line 364
    .end local v31    # "isOverMaximumChar":Z
    :cond_2b
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setComposingText()V

    goto/16 :goto_3

    .line 369
    :cond_2c
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSuggestionDelay()V

    goto/16 :goto_0

    .line 372
    :cond_2d
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isAutoCompletitionInput()Z

    move-result v26

    .line 373
    .local v26, "isCompletionOn":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v28

    .line 374
    .local v28, "isLandscape":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getCompletions()[Landroid/view/inputmethod/CompletionInfo;

    move-result-object v22

    .line 375
    .local v22, "completions":[Landroid/view/inputmethod/CompletionInfo;
    if-eqz v26, :cond_2f

    if-eqz v28, :cond_2f

    if-eqz v22, :cond_2f

    .line 376
    if-eqz v24, :cond_2e

    .line 377
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v5, 0x1

    move-object/from16 v0, v24

    invoke-interface {v0, v2, v5}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 379
    :cond_2e
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    goto/16 :goto_0

    .line 381
    :cond_2f
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsVietnameseTelexInput:Z

    if-eqz v2, :cond_30

    .line 382
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setComposingText()V

    goto/16 :goto_0

    .line 384
    :cond_30
    const/16 v2, 0x30

    move/from16 v0, p1

    if-lt v0, v2, :cond_32

    const/16 v2, 0x39

    move/from16 v0, p1

    if-gt v0, v2, :cond_32

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v2

    const/4 v5, 0x1

    if-eq v2, v5, :cond_31

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingNumberInputKeyboardForMultiWindow()Z

    move-result v2

    if-eqz v2, :cond_32

    .line 387
    :cond_31
    add-int/lit8 v2, p1, -0x30

    add-int/lit8 v8, v2, 0x7

    .line 388
    .local v8, "code":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 389
    .local v3, "eventTime":J
    if-eqz v24, :cond_0

    .line 390
    new-instance v2, Landroid/view/KeyEvent;

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x6

    move-wide v5, v3

    invoke-direct/range {v2 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 393
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

    move-object/from16 v0, v24

    invoke-interface {v0, v9}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    goto/16 :goto_0

    .line 399
    .end local v3    # "eventTime":J
    .end local v8    # "code":I
    :cond_32
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 401
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 402
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    goto/16 :goto_0
.end method

.method private processWordSeparator(I[I)V
    .locals 11
    .param p1, "keyCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    const/16 v10, 0x20

    const/4 v9, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 511
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 512
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v1, :cond_1

    .line 599
    :cond_0
    :goto_0
    return-void

    .line 516
    :cond_1
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    .line 517
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v6, v7, v5}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;Z)I

    .line 518
    new-array v0, v4, [I

    .line 519
    .local v0, "activeIndex":[I
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v6, v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getActiveIndex([I)I

    .line 520
    int-to-char v6, p1

    invoke-virtual {p0, v6}, Lcom/diotek/ime/framework/input/AbstractInputModule;->isEnableAutoCorrection(C)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v6

    if-lez v6, :cond_5

    move v2, v4

    .line 521
    .local v2, "isEnableAutoCorrection":Z
    :goto_1
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_3

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 522
    if-eqz v2, :cond_6

    iget-boolean v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsTraceInput:Z

    if-nez v6, :cond_6

    .line 523
    invoke-virtual {p0, v1, v0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->doAutoCorrection(Landroid/view/inputmethod/InputConnection;[I)V

    .line 547
    :cond_2
    :goto_2
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    int-to-char v7, p1

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/diotek/ime/framework/engine/InputEngineManager;->setIntentionalEvent(Ljava/lang/String;)V

    .line 550
    :cond_3
    const/16 v6, 0xa

    if-ne p1, v6, :cond_9

    .line 551
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->sendEnterKeyHandle()V

    .line 552
    iget-boolean v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-eqz v4, :cond_4

    .line 553
    invoke-virtual {p0, v5}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->postUpdateSequenceAndSuggestionDelay(I)V

    .line 556
    :cond_4
    iget-boolean v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getSwiftkeyVersion()I

    move-result v4

    if-ne v4, v9, :cond_0

    .line 557
    invoke-virtual {p0, v5}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->postUpdateSequenceAndSuggestionDelay(I)V

    goto :goto_0

    .end local v2    # "isEnableAutoCorrection":Z
    :cond_5
    move v2, v5

    .line 520
    goto :goto_1

    .line 527
    .restart local v2    # "isEnableAutoCorrection":Z
    :cond_6
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    const/4 v7, -0x1

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/diotek/ime/framework/engine/InputEngineManager;->wordSelected(ILjava/lang/CharSequence;)I

    .line 528
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_8

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->mSwiftKeyKeyLearningManager:Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;->needToKeyLearning(Ljava/lang/StringBuilder;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 530
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->mSwiftKeyKeyLearningManager:Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;->getOriginalTouchKeys()Ljava/util/LinkedList;

    move-result-object v7

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/diotek/ime/framework/engine/InputEngineManager;->updateKeyPressModeling(Ljava/util/LinkedList;Ljava/lang/StringBuilder;)V

    .line 541
    :cond_7
    :goto_3
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->mSwiftKeyKeyLearningManager:Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;->clearTouchPoints()V

    .line 542
    invoke-virtual {p0, v4}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 543
    sget-object v6, Lcom/diotek/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mCommitHistory:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-eqz v6, :cond_2

    .line 544
    sget-object v6, Lcom/diotek/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mCommitHistory:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_2

    .line 535
    :cond_8
    sget-object v6, Lcom/diotek/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mCommitHistory:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->mSwiftKeyKeyLearningManager:Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;

    sget-object v7, Lcom/diotek/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mCommitHistory:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;->needToKeyLearning(Ljava/lang/StringBuilder;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 536
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->mSwiftKeyKeyLearningManager:Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;->getOriginalTouchKeys()Ljava/util/LinkedList;

    move-result-object v7

    sget-object v8, Lcom/diotek/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mCommitHistory:Ljava/lang/StringBuilder;

    invoke-interface {v6, v7, v8}, Lcom/diotek/ime/framework/engine/InputEngineManager;->updateKeyPressModeling(Ljava/util/LinkedList;Ljava/lang/StringBuilder;)V

    goto :goto_3

    .line 561
    :cond_9
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->isInMultiTapInput()Z

    move-result v3

    .line 562
    .local v3, "isInMultiTap":Z
    if-eqz v3, :cond_a

    .line 563
    invoke-virtual {p0, p1, p2}, Lcom/diotek/ime/framework/input/AbstractInputModule;->processMultiTapSymbolicKey(I[I)V

    goto/16 :goto_0

    .line 566
    :cond_a
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v6, p1}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAtSymbol(I)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 567
    invoke-virtual {p0, v4}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 568
    invoke-static {v10}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(C)V

    .line 569
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 571
    :cond_b
    invoke-virtual {p0, v4}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 572
    int-to-char v4, p1

    invoke-static {v4}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(C)V

    .line 573
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v4, p1}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAfterPunctuation(I)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 579
    invoke-static {v10}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    .line 580
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 585
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->disableSetUpAutoSpace()V

    .line 590
    :goto_4
    iget-boolean v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-eqz v4, :cond_c

    .line 591
    invoke-virtual {p0, v5}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->postUpdateSequenceAndSuggestionDelay(I)V

    .line 595
    :cond_c
    iget-boolean v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getSwiftkeyVersion()I

    move-result v4

    if-ne v4, v9, :cond_0

    .line 596
    invoke-virtual {p0, v5}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->postUpdateSequenceAndSuggestionDelay(I)V

    goto/16 :goto_0

    .line 587
    :cond_d
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    goto :goto_4
.end method

.method private updateAutoCorrectionSuggestion(Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "candidate":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 941
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 942
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v3, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    .line 943
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->isEnableAutoCorrection()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsTraceInput:Z

    if-nez v3, :cond_0

    .line 944
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 945
    .local v1, "currentText":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v3, v1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getCurrentInputBuffer(Ljava/lang/StringBuilder;)V

    .line 946
    invoke-virtual {p0, p1, v1}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->addCurrentTextToCandidate(Ljava/util/ArrayList;Ljava/lang/StringBuilder;)V

    .line 947
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->isEnableAutoCorrectionDA()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 948
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    .line 949
    .local v2, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_0

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasKeyAT()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasWWWdot()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasKeydot()Z

    move-result v3

    if-nez v3, :cond_0

    .line 951
    new-instance v0, Landroid/text/SpannableString;

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 952
    .local v0, "SpannableText":Landroid/text/SpannableString;
    new-instance v3, Landroid/text/style/SuggestionSpan;

    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/String;

    const-string v6, ""

    aput-object v6, v5, v7

    const/4 v6, 0x4

    invoke-direct {v3, v4, v5, v6}, Landroid/text/style/SuggestionSpan;-><init>(Landroid/content/Context;[Ljava/lang/String;I)V

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v4

    const/16 v5, 0x11

    invoke-virtual {v0, v3, v7, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 954
    invoke-interface {v2, v0, v8}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 958
    .end local v0    # "SpannableText":Landroid/text/SpannableString;
    .end local v1    # "currentText":Ljava/lang/StringBuilder;
    .end local v2    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_0
    return-void
.end method


# virtual methods
.method public closing()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->stopTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;)V

    .line 51
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    .line 52
    invoke-super {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->closing()V

    .line 53
    return-void
.end method

.method public onCharacterKey(I[I)V
    .locals 13
    .param p1, "keyCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    .line 58
    iget-object v11, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v11}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v5

    .line 59
    .local v5, "inputRange":I
    iget-object v11, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v11}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isVietnameseTelexEnable()Z

    move-result v11

    iput-boolean v11, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsVietnameseTelexInput:Z

    .line 61
    const/4 v11, 0x1

    invoke-virtual {p0, v11}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setPredictionWord(Z)V

    .line 62
    iget-object v11, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v11}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v11

    if-nez v11, :cond_1

    .line 63
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->getSecondaryChar(I)I

    move-result p1

    .line 64
    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->getWindowHeight()I

    move-result v9

    .line 65
    .local v9, "mWindowHeight":I
    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->getWindowWidth()I

    move-result v10

    .line 66
    .local v10, "mWindowWidth":I
    const/16 v11, 0xa00

    if-ne v9, v11, :cond_c

    const/16 v11, 0x640

    if-ne v10, v11, :cond_c

    const/4 v2, 0x1

    .line 67
    .local v2, "IS_WQXGA":Z
    :goto_0
    const/16 v11, 0x780

    if-ne v9, v11, :cond_d

    const/16 v11, 0x438

    if-ne v10, v11, :cond_d

    const/4 v0, 0x1

    .line 68
    .local v0, "IS_FHD":Z
    :goto_1
    const/16 v11, 0x500

    if-ne v9, v11, :cond_e

    const/16 v11, 0x2d0

    if-ne v10, v11, :cond_e

    const/4 v1, 0x1

    .line 69
    .local v1, "IS_HD":Z
    :goto_2
    const/16 v11, 0x500

    if-ne v9, v11, :cond_f

    const/16 v11, 0x320

    if-ne v10, v11, :cond_f

    const/4 v3, 0x1

    .line 70
    .local v3, "IS_WXGA":Z
    :goto_3
    iget-object v11, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/ShiftStateController;->getShiftState()Z

    move-result v11

    if-eqz v11, :cond_1

    iget v11, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputLanguage:I

    const/high16 v12, 0x6c6f0000

    if-ne v11, v12, :cond_1

    if-nez v2, :cond_0

    if-nez v0, :cond_0

    if-nez v3, :cond_0

    if-eqz v1, :cond_1

    .line 71
    :cond_0
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/input/SwiftkeyQwertyLatinInputModule;->composingForLao(I)I

    move-result p1

    .line 75
    .end local v0    # "IS_FHD":Z
    .end local v1    # "IS_HD":Z
    .end local v2    # "IS_WQXGA":Z
    .end local v3    # "IS_WXGA":Z
    .end local v9    # "mWindowHeight":I
    .end local v10    # "mWindowWidth":I
    :cond_1
    iget-boolean v11, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsTraceOn:Z

    if-eqz v11, :cond_10

    iget-object v11, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    if-eqz v11, :cond_10

    iget-object v11, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v11}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v11

    const/4 v12, 0x2

    if-le v11, v12, :cond_10

    iget-object v11, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v11}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->isSymbolAndSpace()Z

    move-result v11

    if-nez v11, :cond_10

    const/4 v6, 0x1

    .line 76
    .local v6, "isTraceInput":Z
    :goto_4
    iget-boolean v11, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-nez v11, :cond_2

    iget-object v11, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->isEnableTraceInPassword()Z

    move-result v11

    if-eqz v11, :cond_11

    :cond_2
    iget-boolean v11, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsTraceOn:Z

    if-eqz v11, :cond_11

    iget-object v11, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    if-eqz v11, :cond_11

    iget-object v11, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v11}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v11

    const/4 v12, 0x2

    if-le v11, v12, :cond_11

    const/4 v7, 0x1

    .line 77
    .local v7, "isTraceON":Z
    :goto_5
    iget v11, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputLanguage:I

    const v12, 0x6d795a57

    if-ne v11, v12, :cond_4

    .line 78
    iget-object v11, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v4

    .line 79
    .local v4, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v4, :cond_3

    .line 81
    invoke-static {v4, p1}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->getMyanmarCode(Landroid/view/inputmethod/InputConnection;I)I

    move-result p1

    .line 83
    :cond_3
    const/4 v11, 0x0

    sput-boolean v11, Lcom/diotek/ime/framework/input/SwiftkeyQwertyLatinInputModule;->IS_PLUS_MYANMAR:Z

    .line 86
    .end local v4    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_4
    iget v11, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputLanguage:I

    const/high16 v12, 0x6b6d0000

    if-ne v11, v12, :cond_6

    .line 88
    iget-object v11, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v4

    .line 89
    .restart local v4    # "ic":Landroid/view/inputmethod/InputConnection;
    const-string v8, ""

    .line 90
    .local v8, "leadingChar":Ljava/lang/String;
    if-eqz v4, :cond_12

    .line 92
    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-interface {v4, v11, v12}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v8

    .end local v8    # "leadingChar":Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .line 96
    .restart local v8    # "leadingChar":Ljava/lang/String;
    :goto_6
    if-nez v8, :cond_5

    const-string v8, ""

    .line 97
    :cond_5
    invoke-static {v8, p1}, Lcom/diotek/ime/framework/common/InputSequenceCheck;->adjustKhmerPosition(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    .line 99
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v11

    const/16 v12, 0x17bb

    if-ne v11, v12, :cond_6

    const/16 v11, 0x17bb

    if-eq p1, v11, :cond_6

    if-eqz v4, :cond_6

    .line 101
    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-interface {v4, v11, v12}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 102
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v11

    int-to-char v11, v11

    invoke-static {v11}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    .line 103
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setComposingText()V

    .line 106
    .end local v4    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v8    # "leadingChar":Ljava/lang/String;
    :cond_6
    iget-object v11, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v11, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->isTextCharacter(I)Z

    move-result v11

    if-eqz v11, :cond_7

    if-eqz v5, :cond_8

    :cond_7
    if-eqz v7, :cond_15

    .line 107
    :cond_8
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_13

    iget-object v11, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    if-eqz v11, :cond_13

    iget-object v11, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v11}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->isSymbolAndSpace()Z

    move-result v11

    if-nez v11, :cond_13

    iget-object v11, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v11, p1, v6}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpace(IZ)Z

    move-result v11

    if-eqz v11, :cond_13

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isPasswordInputType()Z

    move-result v11

    if-nez v11, :cond_13

    .line 110
    const/16 v11, 0x20

    invoke-static {v11}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(C)V

    .line 111
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v11, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v11

    if-nez v11, :cond_9

    .line 113
    iget-object v11, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v11

    if-eqz v11, :cond_9

    .line 114
    iget-object v11, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->updateShiftState()V

    .line 118
    :cond_9
    iget-boolean v11, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-eqz v11, :cond_a

    .line 119
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSequence(Ljava/lang/StringBuilder;)V

    .line 130
    :cond_a
    :goto_7
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/input/SwiftkeyQwertyLatinInputModule;->processSingleTap(I[I)V

    .line 131
    if-eqz v7, :cond_b

    .line 132
    iget-object v11, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/engine/InputEngineManager;->updateShiftState()V

    .line 153
    :cond_b
    :goto_8
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->setVerbatimToEngine()V

    .line 154
    iput p1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mLastKeyCode:I

    .line 155
    iget-object v11, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v11, p1, v6}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->setUpAutoSpace(IZ)V

    .line 156
    iput-boolean v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsTraceInput:Z

    .line 157
    return-void

    .line 66
    .end local v6    # "isTraceInput":Z
    .end local v7    # "isTraceON":Z
    .restart local v9    # "mWindowHeight":I
    .restart local v10    # "mWindowWidth":I
    :cond_c
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 67
    .restart local v2    # "IS_WQXGA":Z
    :cond_d
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 68
    .restart local v0    # "IS_FHD":Z
    :cond_e
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 69
    .restart local v1    # "IS_HD":Z
    :cond_f
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 75
    .end local v0    # "IS_FHD":Z
    .end local v1    # "IS_HD":Z
    .end local v2    # "IS_WQXGA":Z
    .end local v9    # "mWindowHeight":I
    .end local v10    # "mWindowWidth":I
    :cond_10
    const/4 v6, 0x0

    goto/16 :goto_4

    .line 76
    .restart local v6    # "isTraceInput":Z
    :cond_11
    const/4 v7, 0x0

    goto/16 :goto_5

    .line 94
    .restart local v4    # "ic":Landroid/view/inputmethod/InputConnection;
    .restart local v7    # "isTraceON":Z
    .restart local v8    # "leadingChar":Ljava/lang/String;
    :cond_12
    const/4 v8, 0x0

    goto/16 :goto_6

    .line 121
    .end local v4    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v8    # "leadingChar":Ljava/lang/String;
    :cond_13
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_a

    if-eqz v6, :cond_a

    iget-object v11, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v11, p1, v6}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpace(IZ)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 123
    invoke-direct {p0}, Lcom/diotek/ime/framework/input/SwiftkeyQwertyLatinInputModule;->isNotSpaceFrontOfCursor()Z

    move-result v11

    if-eqz v11, :cond_a

    .line 124
    iget-object v11, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v11, p1, v6}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpace(IZ)Z

    move-result v11

    if-eqz v11, :cond_14

    .line 125
    const/16 v11, 0x20

    invoke-static {v11}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(C)V

    .line 127
    :cond_14
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 135
    :cond_15
    iget-object v11, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v11, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->isNumericCharacter(I)Z

    move-result v11

    if-eqz v11, :cond_17

    .line 136
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_16

    iget-object v11, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v11}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAtNumeric()Z

    move-result v11

    if-eqz v11, :cond_16

    .line 138
    const/16 v11, 0x20

    invoke-static {v11}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(C)V

    .line 139
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 140
    iget-boolean v11, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-eqz v11, :cond_16

    .line 141
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSequence(Ljava/lang/StringBuilder;)V

    .line 144
    :cond_16
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/input/SwiftkeyQwertyLatinInputModule;->processSingleTap(I[I)V

    .line 151
    :goto_9
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->autoPeriod(I)V

    goto :goto_8

    .line 146
    :cond_17
    invoke-virtual {p0, p1, p2}, Lcom/diotek/ime/framework/input/SwiftkeyQwertyLatinInputModule;->processSymbolicKey(I[I)V

    goto :goto_9
.end method

.method public onHwrPanelLongPressed(ILjava/lang/String;)V
    .locals 0
    .param p1, "selectedArrayIndex"    # I
    .param p2, "resultString"    # Ljava/lang/String;

    .prologue
    .line 921
    return-void
.end method

.method public pickSuggestionManually(ILjava/lang/CharSequence;)V
    .locals 11
    .param p1, "index"    # I
    .param p2, "suggestion"    # Ljava/lang/CharSequence;

    .prologue
    .line 816
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v4

    .line 817
    .local v4, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v4, :cond_0

    .line 818
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isAutoCompletitionInput()Z

    move-result v5

    .line 819
    .local v5, "isCompletionOn":Z
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v6

    .line 820
    .local v6, "isLandscape":Z
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->getCompletions()[Landroid/view/inputmethod/CompletionInfo;

    move-result-object v2

    .line 821
    .local v2, "completions":[Landroid/view/inputmethod/CompletionInfo;
    if-eqz v5, :cond_1

    if-eqz v6, :cond_1

    if-eqz v2, :cond_1

    .line 822
    if-ltz p1, :cond_0

    array-length v9, v2

    if-ge p1, v9, :cond_0

    .line 823
    aget-object v1, v2, p1

    .line 824
    .local v1, "completion":Landroid/view/inputmethod/CompletionInfo;
    invoke-interface {v4, v1}, Landroid/view/inputmethod/InputConnection;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z

    .line 916
    .end local v1    # "completion":Landroid/view/inputmethod/CompletionInfo;
    .end local v2    # "completions":[Landroid/view/inputmethod/CompletionInfo;
    .end local v5    # "isCompletionOn":Z
    .end local v6    # "isLandscape":Z
    :cond_0
    :goto_0
    return-void

    .line 827
    .restart local v2    # "completions":[Landroid/view/inputmethod/CompletionInfo;
    .restart local v5    # "isCompletionOn":Z
    .restart local v6    # "isLandscape":Z
    :cond_1
    invoke-interface {v4}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 828
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->getCandidateviewStatus()I

    move-result v0

    .line 829
    .local v0, "candidateStatus":I
    const/4 v8, 0x0

    .line 830
    .local v8, "isPickNextWordPrediction":Z
    const/4 v7, 0x0

    .line 831
    .local v7, "isNeedAutoSpace":Z
    const/4 v3, 0x0

    .line 832
    .local v3, "deletedTextLeft":I
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_8

    iget v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mStateCandidate:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_8

    if-nez v0, :cond_8

    .line 835
    iget v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosPrevText:I

    iget v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosNextText:I

    invoke-interface {v4, v9, v10}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 836
    iget v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosPrevText:I

    .line 846
    :cond_2
    :goto_1
    iget-boolean v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsVietnameseTelexInput:Z

    if-eqz v9, :cond_3

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v9

    if-eqz v9, :cond_3

    iget v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mStateCandidate:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_3

    if-nez v0, :cond_3

    .line 849
    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-interface {v4, v9, v10}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 850
    iget v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosNextText:I

    .line 852
    :cond_3
    if-eqz p2, :cond_4

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-eq v3, v9, :cond_4

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v9

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-eq v9, v10, :cond_4

    .line 855
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setPredictionWord(Z)V

    .line 858
    :cond_4
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 859
    if-eqz v7, :cond_5

    .line 860
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->isTalkbackEnabled()Z

    move-result v9

    if-eqz v9, :cond_9

    const-string v9, ".,;!?\u061b\u060c\u061f"

    const/4 v10, 0x0

    invoke-interface {p2, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_9

    .line 862
    const-string v9, " "

    const/4 v10, 0x1

    invoke-interface {v4, v9, v10}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 868
    :cond_5
    :goto_2
    invoke-static {p2}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    .line 870
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->replaceSpaceToSymbol(Ljava/lang/StringBuilder;)V

    .line 871
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setComposingText()V

    .line 873
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->isEnableAutoCorrection()Z

    move-result v9

    if-eqz v9, :cond_f

    if-nez v8, :cond_f

    .line 874
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getIndexOfInputBuffer()I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_b

    .line 875
    const/4 v9, 0x1

    if-eq p1, v9, :cond_a

    .line 876
    const/4 v9, 0x1

    if-le p1, v9, :cond_6

    add-int/lit8 p1, p1, -0x1

    .line 877
    :cond_6
    iput p1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPickSuggestionIndex:I

    .line 878
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->selectWordInList(I)V

    .line 898
    :goto_3
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    .line 899
    if-eqz p2, :cond_10

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-lez v9, :cond_10

    const-string v9, ".,;!?\u061b\u060c\u061f"

    const/4 v10, 0x0

    invoke-interface {p2, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_10

    .line 901
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v9}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->reset()V

    .line 905
    :goto_4
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 906
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 907
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->updateShiftState()V

    .line 909
    :cond_7
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/diotek/ime/framework/input/AbstractInputModule;->doNextWordPrediction(Z)V

    .line 910
    invoke-interface {v4}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 911
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->setVerbatimToEngine()V

    .line 912
    const/4 v9, 0x0

    iput v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosPrevText:I

    .line 913
    const/4 v9, 0x0

    iput v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosNextText:I

    goto/16 :goto_0

    .line 837
    :cond_8
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_2

    iget v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mStateCandidate:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_2

    if-nez v0, :cond_2

    .line 840
    const/4 v8, 0x1

    .line 841
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v9}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAtNextWordPrediction()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 842
    const/4 v7, 0x1

    goto/16 :goto_1

    .line 864
    :cond_9
    const/16 v9, 0x20

    invoke-static {v9}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    goto/16 :goto_2

    .line 880
    :cond_a
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    const/4 v10, -0x1

    invoke-interface {v9, v10, p2}, Lcom/diotek/ime/framework/engine/InputEngineManager;->wordSelected(ILjava/lang/CharSequence;)I

    goto :goto_3

    .line 882
    :cond_b
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getIndexOfInputBuffer()I

    move-result v9

    if-lez v9, :cond_e

    .line 883
    const/4 v9, 0x1

    if-ne p1, v9, :cond_d

    .line 884
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getIndexOfInputBuffer()I

    move-result p1

    .line 888
    :cond_c
    :goto_5
    iput p1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPickSuggestionIndex:I

    .line 889
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->selectWordInList(I)V

    goto :goto_3

    .line 885
    :cond_d
    const/4 v9, 0x1

    if-le p1, v9, :cond_c

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getIndexOfInputBuffer()I

    move-result v9

    if-gt p1, v9, :cond_c

    .line 886
    add-int/lit8 p1, p1, -0x1

    goto :goto_5

    .line 891
    :cond_e
    iput p1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPickSuggestionIndex:I

    .line 892
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->selectWordInList(I)V

    goto/16 :goto_3

    .line 895
    :cond_f
    iput p1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPickSuggestionIndex:I

    .line 896
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->selectWordInList(I)V

    goto/16 :goto_3

    .line 903
    :cond_10
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v9}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->setUpByPickSuggestion()V

    goto :goto_4
.end method

.method protected processSymbolicKey(I[I)V
    .locals 10
    .param p1, "keyCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    const/16 v9, 0x20

    const/4 v8, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 431
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/engine/InputEngineManager;->cancelTrace()Z

    .line 432
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    .line 433
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v4, v5, v6}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;Z)I

    .line 435
    const-string v4, " .,;:!?\n()[]*&@{}/<>_-+=|\'\u061b\u060c\u061f\""

    invoke-virtual {v4, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-eq v4, v8, :cond_1

    .line 436
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/input/SwiftkeyQwertyLatinInputModule;->processWordSeparator(I[I)V

    .line 508
    :cond_0
    :goto_0
    return-void

    .line 438
    :cond_1
    const/16 v4, 0xa

    if-eq p1, v4, :cond_2

    if-ne p1, v9, :cond_3

    .line 440
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/input/SwiftkeyQwertyLatinInputModule;->processWordSeparator(I[I)V

    goto :goto_0

    .line 442
    :cond_3
    const/4 v4, -0x5

    if-ne p1, v4, :cond_4

    .line 443
    invoke-direct {p0}, Lcom/diotek/ime/framework/input/SwiftkeyQwertyLatinInputModule;->processBackSpaceKey()V

    goto :goto_0

    .line 445
    :cond_4
    const/16 v4, -0x3eb

    if-ne p1, v4, :cond_5

    .line 446
    invoke-direct {p0}, Lcom/diotek/ime/framework/input/SwiftkeyQwertyLatinInputModule;->processForwardDelete()V

    goto :goto_0

    .line 448
    :cond_5
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_6

    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 449
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSuggestionDelay()V

    .line 452
    :cond_6
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isInMultiTapInput()Z

    move-result v2

    .line 453
    .local v2, "isInMultiTap":Z
    if-eqz v2, :cond_7

    iget-boolean v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsVietnameseTelexInput:Z

    if-nez v4, :cond_7

    invoke-static {p1}, Lcom/diotek/ime/framework/util/Utils;->isZawgyiChar(I)Z

    move-result v4

    if-nez v4, :cond_7

    .line 454
    invoke-virtual {p0, p1, p2}, Lcom/diotek/ime/framework/input/AbstractInputModule;->processMultiTapSymbolicKey(I[I)V

    goto :goto_0

    .line 457
    :cond_7
    iget-boolean v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsVietnameseTelexInput:Z

    if-eqz v4, :cond_b

    .line 458
    const-string v4, "769,768,777,771,803"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 459
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setVietnameseTelexComposing()V

    .line 461
    :cond_8
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v4

    int-to-char v5, p1

    invoke-static {v4, v5}, Lcom/diotek/ime/framework/input/Telex/Telex;->join(Ljava/lang/StringBuilder;C)Ljava/lang/StringBuilder;

    .line 462
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setComposingText()V

    .line 499
    :cond_9
    :goto_1
    iget-boolean v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-eqz v4, :cond_a

    .line 500
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4, v6}, Lcom/diotek/ime/framework/common/InputManager;->setIsPendingUpdateCandidateView(Z)V

    .line 501
    invoke-virtual {p0, v6}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->postUpdateSequenceAndSuggestionDelay(I)V

    .line 505
    :cond_a
    iget-boolean v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getSwiftkeyVersion()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    .line 506
    invoke-virtual {p0, v6}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->postUpdateSequenceAndSuggestionDelay(I)V

    goto/16 :goto_0

    .line 463
    :cond_b
    iget v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputLanguage:I

    const/high16 v5, 0x66720000

    if-eq v4, v5, :cond_c

    iget v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputLanguage:I

    const v5, 0x66724652

    if-eq v4, v5, :cond_c

    iget v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputLanguage:I

    const/high16 v5, 0x6e6c0000

    if-ne v4, v5, :cond_10

    :cond_c
    invoke-static {p1}, Lcom/diotek/ime/framework/common/InputSequenceCheck;->isFreanchAccentType(I)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 467
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 468
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    const-string v3, ""

    .line 469
    .local v3, "leadingChar":Ljava/lang/String;
    if-eqz v1, :cond_e

    invoke-interface {v1, v7, v6}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v3, v4

    .line 470
    :goto_2
    if-nez v3, :cond_d

    const-string v3, ""

    .line 471
    :cond_d
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v7, :cond_9

    .line 472
    invoke-static {v3, p1}, Lcom/diotek/ime/framework/common/InputSequenceCheck;->convertFrenchAccentedCharacter(Ljava/lang/String;I)I

    move-result v0

    .line 473
    .local v0, "changedCode":I
    if-eq v0, v8, :cond_9

    .line 474
    move p1, v0

    .line 475
    aput v0, p2, v6

    .line 477
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 478
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->deleteLastChar()V

    .line 479
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    const/4 v5, 0x0

    invoke-interface {v4, p1, v5}, Lcom/diotek/ime/framework/engine/InputEngineManager;->replaceKey(ILandroid/graphics/PointF;)I

    .line 480
    int-to-char v4, p1

    invoke-static {v4}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    .line 481
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setComposingText()V

    goto :goto_1

    .line 469
    .end local v0    # "changedCode":I
    :cond_e
    const-string v3, ""

    goto :goto_2

    .line 483
    .restart local v0    # "changedCode":I
    :cond_f
    invoke-interface {v1, v7, v6}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 484
    int-to-char v4, p1

    invoke-static {v4}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    .line 485
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 490
    .end local v0    # "changedCode":I
    .end local v1    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v3    # "leadingChar":Ljava/lang/String;
    :cond_10
    invoke-virtual {p0, v7}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 491
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initComposingBuffer()V

    .line 492
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 493
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v4, p1}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAtSymbol(I)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 494
    invoke-static {v9}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    .line 496
    :cond_11
    int-to-char v4, p1

    invoke-static {v4}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    .line 497
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method

.method public release()V
    .locals 0

    .prologue
    .line 46
    return-void
.end method

.method public updateSuggestion()V
    .locals 2

    .prologue
    .line 930
    iget-boolean v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isDeviceHasHardwareKeypad()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isHWKeyboardOpen()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isSmartPrediction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 938
    :cond_1
    :goto_0
    return-void

    .line 935
    :cond_2
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/input/SwiftkeyQwertyLatinInputModule;->updateAutoCorrectionSuggestion(Ljava/util/ArrayList;)V

    .line 936
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->setSuggestionActiveIndex(I)V

    .line 937
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public updateVOHWRSuggestion()V
    .locals 0

    .prologue
    .line 925
    return-void
.end method
