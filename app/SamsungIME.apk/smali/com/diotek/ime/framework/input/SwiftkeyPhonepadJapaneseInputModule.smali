.class public Lcom/diotek/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;
.super Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;
.source "SwiftkeyPhonepadJapaneseInputModule.java"


# static fields
.field private static final JP_FULL_HIRAGANA_CAPITAL_REPLACE_TABLE:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final JP_FULL_HIRAGANA_DAKUTEN_REPLACE_TABLE:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final JP_FULL_HIRAGANA_HANDAKUTEN_REPLACE_TABLE:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final JP_FULL_HIRAGANA_REPLACE_TABLE:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule$1;

    invoke-direct {v0}, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule$1;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->JP_FULL_HIRAGANA_REPLACE_TABLE:Ljava/util/HashMap;

    .line 59
    new-instance v0, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule$2;

    invoke-direct {v0}, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule$2;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->JP_FULL_HIRAGANA_DAKUTEN_REPLACE_TABLE:Ljava/util/HashMap;

    .line 71
    new-instance v0, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule$3;

    invoke-direct {v0}, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule$3;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->JP_FULL_HIRAGANA_HANDAKUTEN_REPLACE_TABLE:Ljava/util/HashMap;

    .line 78
    new-instance v0, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule$4;

    invoke-direct {v0}, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule$4;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->JP_FULL_HIRAGANA_CAPITAL_REPLACE_TABLE:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;-><init>()V

    return-void
.end method

.method private AddVerbatimForRecapture(Ljava/util/ArrayList;)V
    .locals 2
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
    .line 753
    .local p1, "candidate":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 754
    .local v0, "currentText":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v1, v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getCurrentInputBuffer(Ljava/lang/StringBuilder;)V

    .line 755
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 759
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, v0}, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->addCurrentTextToCandidate(Ljava/util/ArrayList;Ljava/lang/StringBuilder;)V

    .line 761
    :cond_0
    return-void
.end method

.method private commitSelectedTextAndUpdateComposing(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "ic"    # Landroid/view/inputmethod/InputConnection;
    .param p2, "src"    # Ljava/lang/CharSequence;

    .prologue
    .line 832
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->deleteBlockText()V

    .line 833
    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 834
    return-void
.end method

.method private processBackSpaceKey()V
    .locals 9

    .prologue
    const/4 v8, -0x5

    const/16 v7, 0x43

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 530
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 531
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v0, :cond_1

    .line 600
    :cond_0
    :goto_0
    return-void

    .line 534
    :cond_1
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    .line 535
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v3, v4, v5}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;Z)I

    .line 536
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v3}, Lcom/diotek/ime/framework/input/AbstractInputModule;->stopTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;)V

    .line 537
    const-string v1, ""

    .line 538
    .local v1, "lastChar":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 539
    invoke-interface {v0, v6, v5}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .end local v1    # "lastChar":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 540
    .restart local v1    # "lastChar":Ljava/lang/String;
    if-nez v1, :cond_2

    const-string v1, ""

    .line 542
    :cond_2
    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setDeleteCount(Ljava/lang/String;)V

    .line 543
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->resetPredictionWord()V

    .line 544
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getSelectedNumOfText()I

    move-result v2

    .line 545
    .local v2, "selectedText":I
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_a

    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 546
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v3

    if-le v3, v6, :cond_4

    .line 547
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v3, v8}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(I)I

    move-result v3

    if-nez v3, :cond_3

    .line 548
    invoke-static {v6, v5}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->delete(IZ)I

    .line 549
    invoke-static {v6}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(Ljava/lang/String;)V

    .line 550
    invoke-virtual {p0, v7}, Lcom/diotek/ime/framework/input/AbstractInputModule;->onKeyDownUpHandle(I)V

    .line 551
    invoke-virtual {p0, v5}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->postUpdateSequenceAndSuggestionDelay(I)V

    goto :goto_0

    .line 554
    :cond_3
    invoke-static {v6, v5}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->delete(IZ)I

    .line 555
    invoke-static {v6}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(Ljava/lang/String;)V

    .line 556
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setComposingText()V

    .line 557
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->updateSuggestionDelay()V

    goto :goto_0

    .line 560
    :cond_4
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 561
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v3, v8}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(I)I

    .line 562
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->clear()V

    .line 563
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 564
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3, v5}, Lcom/diotek/ime/framework/common/InputManager;->setIsPendingUpdateCandidateView(Z)V

    .line 565
    invoke-virtual {p0, v5}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->postUpdateSequenceAndSuggestionDelay(I)V

    goto/16 :goto_0

    .line 568
    :cond_5
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 569
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_6

    if-lez v2, :cond_7

    .line 570
    :cond_6
    invoke-virtual {p0, v6}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setPredictionWord(Z)V

    .line 572
    :cond_7
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getDeleteCount()I

    move-result v3

    const/16 v4, 0xa

    if-le v3, v4, :cond_8

    invoke-static {}, Lcom/diotek/ime/framework/repository/PackageStatus;->getPackageName()Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    move-result-object v3

    sget-object v4, Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;->CHATON_PACKAGE_NAME:Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    if-eq v3, v4, :cond_8

    .line 574
    if-eqz v0, :cond_9

    .line 575
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getLastWordDividerIndex()I

    move-result v3

    invoke-interface {v0, v3, v5}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 576
    const/16 v3, 0x96

    invoke-virtual {p0, v3}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->postUpdateSequenceAndSuggestionDelay(I)V

    goto/16 :goto_0

    .line 580
    :cond_8
    invoke-virtual {p0, v7}, Lcom/diotek/ime/framework/input/AbstractInputModule;->onKeyDownUpHandle(I)V

    .line 581
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposingWithoutInit()V

    .line 583
    :cond_9
    invoke-virtual {p0, v5}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->postUpdateSequence(I)V

    .line 584
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->updateSuggestionDelay()V

    goto/16 :goto_0

    .line 588
    :cond_a
    invoke-virtual {p0, v6}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 589
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initComposingBuffer()V

    .line 591
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getDeleteCount()I

    move-result v3

    const/16 v4, 0x14

    if-le v3, v4, :cond_b

    invoke-static {}, Lcom/diotek/ime/framework/repository/PackageStatus;->getPackageName()Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    move-result-object v3

    sget-object v4, Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;->CHATON_PACKAGE_NAME:Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    if-eq v3, v4, :cond_b

    .line 593
    if-eqz v0, :cond_0

    .line 594
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getLastWordDividerIndex()I

    move-result v3

    invoke-interface {v0, v3, v5}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto/16 :goto_0

    .line 597
    :cond_b
    invoke-virtual {p0, v7}, Lcom/diotek/ime/framework/input/AbstractInputModule;->onKeyDownUpHandle(I)V

    goto/16 :goto_0
.end method

.method private processForwardDelete()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 499
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 500
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v1, :cond_1

    .line 527
    :cond_0
    :goto_0
    return-void

    .line 504
    :cond_1
    const-string v0, ""

    .line 505
    .local v0, "beforeChar":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 506
    const/4 v2, 0x1

    invoke-interface {v1, v2, v4}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .end local v0    # "beforeChar":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 507
    .restart local v0    # "beforeChar":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 508
    const-string v0, ""

    .line 511
    :cond_2
    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setDeleteCount(Ljava/lang/String;)V

    .line 512
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->resetPredictionWord()V

    .line 514
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getDeleteCount()I

    move-result v2

    const/16 v3, 0xa

    if-le v2, v3, :cond_4

    invoke-static {}, Lcom/diotek/ime/framework/repository/PackageStatus;->getPackageName()Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    move-result-object v2

    sget-object v3, Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;->CHATON_PACKAGE_NAME:Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    if-eq v2, v3, :cond_4

    .line 516
    if-eqz v1, :cond_3

    .line 517
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getFirstWordDividerIndex()I

    move-result v2

    invoke-interface {v1, v4, v2}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 524
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

    .line 525
    invoke-virtual {p0, v4}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->postUpdateSequenceAndSuggestionDelay(I)V

    goto :goto_0

    .line 520
    :cond_4
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initWordDividerIndexList()V

    .line 521
    const/16 v2, 0x70

    invoke-virtual {p0, v2}, Lcom/diotek/ime/framework/input/AbstractInputModule;->onKeyDownUpHandle(I)V

    goto :goto_1
.end method

.method private processMultiTap(I[I)V
    .locals 16
    .param p1, "keyCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    .line 183
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v4

    .line 184
    .local v4, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v4, :cond_0

    .line 297
    :goto_0
    return-void

    .line 187
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Lcom/diotek/ime/framework/common/InputManager;->setCandidateviewStatus(I)V

    .line 188
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    .line 189
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-interface {v12, v13, v14}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;Z)I

    .line 190
    const/4 v12, 0x1

    new-array v1, v12, [I

    .line 191
    .local v1, "activeIndex":[I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
    .local v3, "currentWord":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/diotek/ime/framework/input/AbstractInputModule;->isTimerRunning(Lcom/diotek/ime/framework/input/InputModule$Timer;)Z

    move-result v10

    .line 193
    .local v10, "isTimerRunning":Z
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/diotek/ime/framework/input/AbstractInputModule;->stopTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;)V

    .line 194
    const/4 v7, 0x0

    .line 195
    .local v7, "isEqualKey":Z
    const/4 v6, 0x0

    .line 196
    .local v6, "isEnableTraceInput":Z
    const/4 v9, 0x0

    .line 197
    .local v9, "isReplace":Z
    if-eqz p2, :cond_1

    move-object/from16 v0, p2

    array-length v12, v0

    if-lez v12, :cond_1

    move-object/from16 v0, p0

    iget v12, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mLastKeyCode:I

    const/4 v13, 0x0

    aget v13, p2, v13

    if-ne v12, v13, :cond_1

    .line 198
    const/4 v7, 0x1

    .line 201
    :cond_1
    if-eqz v10, :cond_2

    if-eqz v7, :cond_2

    .line 202
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 204
    const/4 v9, 0x1

    .line 207
    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->delete(IZ)I

    .line 212
    :cond_2
    if-eqz v6, :cond_7

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsTraceOn:Z

    if-eqz v12, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    if-eqz v12, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v12}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v12

    const/4 v13, 0x2

    if-le v12, v13, :cond_7

    .line 213
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v12

    if-eqz v12, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-interface {v12, v13, v14, v15}, Lcom/diotek/ime/framework/engine/InputEngineManager;->isAutoAcceptBeforeTrace([Landroid/graphics/PointF;I[Z)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 214
    const/4 v12, 0x0

    aget v12, v1, v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/diotek/ime/framework/input/AbstractInputModule;->selectWordInList(I)V

    .line 215
    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 228
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v13}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTracePoint()[Landroid/graphics/PointF;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v14}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v14

    const/4 v15, -0x1

    invoke-interface {v12, v13, v14, v15}, Lcom/diotek/ime/framework/engine/InputEngineManager;->processTrace([Landroid/graphics/PointF;IB)S

    move-result v12

    if-nez v12, :cond_4

    .line 230
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v12}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->clearTraceInfo()V

    .line 231
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->resetPredictionWord()V

    .line 232
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSequence(Ljava/lang/StringBuilder;)V

    .line 233
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->updateSuggestion()V

    .line 234
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->cancelPreviewTrace()V

    goto/16 :goto_0

    .line 237
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x0

    invoke-interface {v12, v13, v14}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getCharSequence(Ljava/lang/StringBuilder;I)I

    .line 238
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v12}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->clearTraceInfo()V

    .line 239
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 240
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->resetPredictionWord()V

    .line 258
    :cond_5
    :goto_1
    if-eqz v9, :cond_a

    .line 260
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    const/4 v13, 0x0

    move/from16 v0, p1

    invoke-interface {v12, v0, v13}, Lcom/diotek/ime/framework/engine/InputEngineManager;->replaceKey(ILandroid/graphics/PointF;)I

    move-result v12

    if-gez v12, :cond_6

    .line 274
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v12, :cond_b

    .line 275
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    const/16 v13, 0x5dc

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/diotek/ime/framework/input/AbstractInputModule;->startTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;I)V

    .line 276
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->updateSuggestionDelay()V

    goto/16 :goto_0

    .line 243
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->cancelPreviewTrace()V

    .line 245
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->getSelectedNumOfText()I

    move-result v11

    .line 246
    .local v11, "selectText":I
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_9

    if-gtz v11, :cond_8

    move-object/from16 v0, p0

    iget v12, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosNextText:I

    if-nez v12, :cond_9

    .line 248
    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/engine/InputEngineManager;->breakContext()V

    .line 252
    :cond_9
    invoke-static/range {p1 .. p1}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->append(I)Z

    goto :goto_1

    .line 267
    .end local v11    # "selectText":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    const/4 v13, 0x0

    move/from16 v0, p1

    invoke-interface {v12, v0, v13}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(ILandroid/graphics/PointF;)I

    move-result v12

    if-gez v12, :cond_6

    goto :goto_2

    .line 279
    :cond_b
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isAutoCompletitionInput()Z

    move-result v5

    .line 280
    .local v5, "isCompletionOn":Z
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v8

    .line 281
    .local v8, "isLandscape":Z
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->getCompletions()[Landroid/view/inputmethod/CompletionInfo;

    move-result-object v2

    .line 282
    .local v2, "completions":[Landroid/view/inputmethod/CompletionInfo;
    if-eqz v5, :cond_d

    if-eqz v8, :cond_d

    if-eqz v2, :cond_d

    .line 283
    if-eqz v4, :cond_c

    .line 284
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x1

    invoke-interface {v4, v12, v13}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 286
    :cond_c
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 292
    :goto_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    const/16 v13, 0x5dc

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/diotek/ime/framework/input/AbstractInputModule;->startTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;I)V

    .line 293
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->updateViewStatus()V

    goto/16 :goto_0

    .line 288
    :cond_d
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 289
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    goto :goto_3
.end method

.method private processReplaceKey(I)V
    .locals 7
    .param p1, "keyCode"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 603
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 604
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v0, :cond_1

    .line 660
    :cond_0
    :goto_0
    return-void

    .line 608
    :cond_1
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 612
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3, v5}, Lcom/diotek/ime/framework/common/InputManager;->setCandidateviewStatus(I)V

    .line 613
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    .line 614
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v3, v4, v5}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;Z)I

    .line 616
    invoke-interface {v0, v6, v5}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 617
    .local v1, "lastChar":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 621
    invoke-direct {p0, p1, v1}, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->replaceShiftVoice(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 623
    .local v2, "replaceString":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 624
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v3}, Lcom/diotek/ime/framework/input/AbstractInputModule;->isTimerRunning(Lcom/diotek/ime/framework/input/InputModule$Timer;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 625
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v3}, Lcom/diotek/ime/framework/input/AbstractInputModule;->stopTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;)V

    .line 626
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->updateViewStatus()V

    goto :goto_0

    .line 631
    :cond_2
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v3}, Lcom/diotek/ime/framework/input/AbstractInputModule;->isTimerRunning(Lcom/diotek/ime/framework/input/InputModule$Timer;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 632
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v3}, Lcom/diotek/ime/framework/input/AbstractInputModule;->stopTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;)V

    .line 635
    :cond_3
    invoke-static {v6, v5}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->delete(IZ)I

    .line 636
    new-instance v3, Lcom/diotek/ime/framework/input/StrSegment;

    invoke-direct {v3, v2}, Lcom/diotek/ime/framework/input/StrSegment;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v6, v3}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->insertStrSegment(IILcom/diotek/ime/framework/input/StrSegment;)V

    .line 639
    invoke-static {v6}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(Ljava/lang/String;)V

    .line 656
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 657
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSequence(Ljava/lang/StringBuilder;)V

    .line 658
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->updateSuggestion()V

    goto :goto_0
.end method

.method private processSingleTap(I[I)V
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    const/4 v2, 0x0

    .line 300
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    .line 301
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;Z)I

    .line 303
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->isTimerRunning(Lcom/diotek/ime/framework/input/InputModule$Timer;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 304
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->stopTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;)V

    .line 305
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 306
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 307
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initComposingBuffer()V

    .line 311
    :cond_1
    invoke-static {p1}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->append(I)Z

    .line 312
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(I)I

    .line 313
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setComposingText()V

    .line 314
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->updateSuggestionDelay()V

    .line 315
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    .line 319
    return-void
.end method

.method private processWordSeparator(I[I)V
    .locals 11
    .param p1, "keyCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    const/4 v10, 0x0

    const/16 v9, 0x20

    const/16 v8, 0xa

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 425
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    .line 426
    if-eq p1, v8, :cond_0

    if-ne p1, v9, :cond_1

    .line 428
    :cond_0
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4, v6}, Lcom/diotek/ime/framework/common/InputManager;->doRecaptureWord(Z)V

    .line 431
    :cond_1
    const/4 v1, 0x1

    .line 433
    .local v1, "bDoSendEnterKey":Z
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v4, v5, v6}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;Z)I

    .line 434
    new-array v0, v7, [I

    .line 435
    .local v0, "activeIndex":[I
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v4, v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getActiveIndex([I)I

    .line 437
    if-ne p1, v8, :cond_3

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 439
    const/4 v1, 0x0

    .line 446
    :cond_2
    :goto_0
    if-ne p1, v8, :cond_8

    .line 447
    if-eqz v1, :cond_4

    .line 448
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v6, v5}, Lcom/diotek/ime/framework/engine/InputEngineManager;->wordSelected(ILjava/lang/CharSequence;)I

    .line 449
    invoke-virtual {p0, v7}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 450
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initComposingBuffer()V

    .line 451
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->sendEnterKeyHandle()V

    .line 452
    invoke-virtual {p0, v6}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->postUpdateSequenceAndSuggestionDelay(I)V

    .line 472
    :goto_1
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v4}, Lcom/diotek/ime/framework/input/AbstractInputModule;->stopTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;)V

    .line 496
    :goto_2
    return-void

    .line 440
    :cond_3
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 441
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v6, v5}, Lcom/diotek/ime/framework/engine/InputEngineManager;->wordSelected(ILjava/lang/CharSequence;)I

    .line 442
    invoke-virtual {p0, v7}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 443
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initComposingBuffer()V

    goto :goto_0

    .line 454
    :cond_4
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->OnBlockPrediction()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 455
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->getBlockText()Ljava/lang/String;

    move-result-object v3

    .line 456
    .local v3, "strBlock":Ljava/lang/String;
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-gez v4, :cond_6

    .line 457
    :cond_5
    invoke-virtual {p0, v7}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 458
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initComposingBuffer()V

    .line 464
    :goto_3
    invoke-virtual {p0, v10}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSequence(Ljava/lang/StringBuilder;)V

    .line 465
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->updateSuggestionDelay()V

    goto :goto_1

    .line 460
    :cond_6
    invoke-virtual {p0, v3}, Lcom/diotek/ime/framework/input/AbstractInputModule;->commitText(Ljava/lang/CharSequence;)V

    .line 461
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->deleteBlockText()V

    .line 462
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setComposingText()V

    goto :goto_3

    .line 467
    .end local v3    # "strBlock":Ljava/lang/String;
    :cond_7
    invoke-virtual {p0, v7}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 468
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initComposingBuffer()V

    .line 469
    invoke-virtual {p0, v6}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->postUpdateSequenceAndSuggestionDelay(I)V

    goto :goto_1

    .line 475
    :cond_8
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isInMultiTapInput()Z

    move-result v2

    .line 476
    .local v2, "isInMultiTap":Z
    if-eqz v2, :cond_9

    .line 477
    invoke-virtual {p0, p1, p2}, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->processMultiTapSymbolicKey(I[I)V

    goto :goto_2

    .line 481
    :cond_9
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v4}, Lcom/diotek/ime/framework/input/AbstractInputModule;->isTimerRunning(Lcom/diotek/ime/framework/input/InputModule$Timer;)Z

    move-result v4

    if-eqz v4, :cond_a

    if-ne p1, v9, :cond_a

    .line 482
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v4}, Lcom/diotek/ime/framework/input/AbstractInputModule;->stopTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;)V

    .line 483
    invoke-virtual {p0, v7}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 484
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 485
    int-to-char v4, p1

    invoke-static {v4}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    .line 486
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 493
    :goto_4
    invoke-virtual {p0, v10}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSequence(Ljava/lang/StringBuilder;)V

    .line 494
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->updateSuggestion()V

    goto/16 :goto_2

    .line 488
    :cond_a
    invoke-virtual {p0, v7}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 489
    int-to-char v4, p1

    invoke-static {v4}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(C)V

    .line 490
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    goto :goto_4
.end method

.method private replaceShiftVoice(ILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "src"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 803
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 804
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v0, :cond_1

    move-object v1, v3

    .line 828
    :cond_0
    :goto_0
    return-object v1

    .line 808
    :cond_1
    if-nez p2, :cond_2

    move-object v1, v3

    .line 809
    goto :goto_0

    .line 811
    :cond_2
    const/4 v2, 0x0

    .line 812
    .local v2, "replaceTable":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 813
    .local v1, "replaceChar":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 821
    :goto_1
    if-eqz v2, :cond_3

    .line 822
    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "replaceChar":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 824
    .restart local v1    # "replaceChar":Ljava/lang/String;
    :cond_3
    if-nez v1, :cond_0

    move-object v1, v3

    .line 828
    goto :goto_0

    .line 815
    :pswitch_0
    sget-object v2, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->JP_FULL_HIRAGANA_REPLACE_TABLE:Ljava/util/HashMap;

    .line 816
    goto :goto_1

    .line 813
    nop

    :pswitch_data_0
    .packed-switch -0x107
        :pswitch_0
    .end packed-switch
.end method

.method private setVerbatirmsInPrediction()V
    .locals 5

    .prologue
    .line 837
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 839
    .local v2, "verbatims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->getBlockText()Ljava/lang/String;

    move-result-object v0

    .line 840
    .local v0, "hiragana":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 841
    :cond_0
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/diotek/ime/framework/engine/InputEngineManager;->setVerbatirmsInPrediction(Ljava/util/ArrayList;)V

    .line 856
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v3, v2}, Lcom/diotek/ime/framework/engine/InputEngineManager;->setVerbatirmsInPrediction(Ljava/util/ArrayList;)V

    .line 857
    return-void

    .line 844
    :cond_2
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 846
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v3, v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->hiraganaToKatakana(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 847
    .local v1, "katakana":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 851
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 853
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v3, v1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->fullToHalfWidth(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method protected addCurrentTextToCandidate(Ljava/util/ArrayList;Ljava/lang/StringBuilder;)V
    .locals 4
    .param p2, "currentText"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/lang/StringBuilder;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "candidate":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v3, 0x0

    .line 764
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    const v2, 0xfffc

    if-ne v1, v2, :cond_1

    .line 784
    :cond_0
    :goto_0
    return-void

    .line 768
    :cond_1
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 769
    .local v0, "index":I
    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setIndexOfInputBuffer(I)V

    .line 771
    if-eqz v0, :cond_0

    .line 774
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 775
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 776
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 777
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 778
    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 779
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 781
    :cond_3
    invoke-virtual {p1, v3, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public cancelPreviewTrace()V
    .locals 0

    .prologue
    .line 166
    return-void
.end method

.method public closing()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->stopTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;)V

    .line 92
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    .line 93
    invoke-super {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->closing()V

    .line 94
    return-void
.end method

.method public endMultitapTimer()V
    .locals 2

    .prologue
    .line 793
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/input/InputModule$Timer;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 799
    :goto_0
    return-void

    .line 796
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/InputModule$Timer;->setRunning(Z)V

    .line 797
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTimmerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 798
    const/4 v0, -0x1

    iput v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mLastKeyCode:I

    goto :goto_0
.end method

.method public isSwiftPhonepadInput()Z
    .locals 1

    .prologue
    .line 726
    const/4 v0, 0x1

    return v0
.end method

.method public onCharacterKey(I[I)V
    .locals 10
    .param p1, "keyCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 105
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v1

    .line 106
    .local v1, "inputMethod":I
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v2

    .line 108
    .local v2, "inputRange":I
    invoke-virtual {p0, v9}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setPredictionWord(Z)V

    .line 109
    iput-boolean v8, p0, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->bSymbolMultitapKeyPressed:Z

    .line 110
    const/4 v4, 0x0

    .line 111
    .local v4, "isTraceInput":Z
    const/4 v3, 0x0

    .line 112
    .local v3, "isEnableTraceInput":Z
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v6, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->isTextCharacter(I)Z

    move-result v6

    if-eqz v6, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    if-eqz v3, :cond_9

    if-eqz v4, :cond_9

    .line 116
    :cond_1
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 117
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v0, :cond_3

    .line 155
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_2
    :goto_0
    return-void

    .line 120
    .restart local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_3
    const-string v5, ""

    .line 121
    .local v5, "lastChar":Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 122
    invoke-interface {v0, v9, v8}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v5

    .end local v5    # "lastChar":Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 123
    .restart local v5    # "lastChar":Ljava/lang/String;
    if-nez v5, :cond_4

    const-string v5, ""

    .line 125
    :cond_4
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_5

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-interface {v6, v7}, Lcom/diotek/ime/framework/engine/InputEngineManager;->isTextCharacter(I)Z

    move-result v6

    if-nez v6, :cond_5

    .line 126
    invoke-virtual {p0, v9}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 127
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    .line 130
    :cond_5
    if-eq v1, v9, :cond_6

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v6

    if-eqz v6, :cond_8

    :cond_6
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->isInMultiTapInput()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 133
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->processMultiTap(I[I)V

    .line 134
    if-eqz p2, :cond_7

    array-length v6, p2

    if-lez v6, :cond_7

    .line 135
    aget p1, p2, v8

    .line 150
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v5    # "lastChar":Ljava/lang/String;
    :cond_7
    :goto_1
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->setVerbatimToEngine()V

    .line 152
    const/16 v6, -0x104

    if-eq p1, v6, :cond_2

    .line 153
    iput p1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mLastKeyCode:I

    goto :goto_0

    .line 138
    .restart local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    .restart local v5    # "lastChar":Ljava/lang/String;
    :cond_8
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->processSingleTap(I[I)V

    goto :goto_1

    .line 141
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v5    # "lastChar":Ljava/lang/String;
    :cond_9
    invoke-virtual {p0, p1, p2}, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->processSymbolicKey(I[I)V

    .line 142
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->autoPeriod(I)V

    goto :goto_1
.end method

.method public onHwrPanelLongPressed(ILjava/lang/String;)V
    .locals 0
    .param p1, "selectedArrayIndex"    # I
    .param p2, "resultString"    # Ljava/lang/String;

    .prologue
    .line 666
    return-void
.end method

.method public pickSuggestionManually(ILjava/lang/CharSequence;)V
    .locals 10
    .param p1, "index"    # I
    .param p2, "suggestion"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 670
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v3

    .line 671
    .local v3, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v3, :cond_0

    .line 672
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isAutoCompletitionInput()Z

    move-result v4

    .line 673
    .local v4, "isCompletionOn":Z
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v5

    .line 674
    .local v5, "isLandscape":Z
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->getCompletions()[Landroid/view/inputmethod/CompletionInfo;

    move-result-object v2

    .line 675
    .local v2, "completions":[Landroid/view/inputmethod/CompletionInfo;
    if-eqz v4, :cond_1

    if-eqz v5, :cond_1

    if-eqz v2, :cond_1

    .line 676
    if-ltz p1, :cond_0

    array-length v6, v2

    if-ge p1, v6, :cond_0

    .line 677
    aget-object v1, v2, p1

    .line 678
    .local v1, "completion":Landroid/view/inputmethod/CompletionInfo;
    invoke-interface {v3, v1}, Landroid/view/inputmethod/InputConnection;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z

    .line 717
    .end local v1    # "completion":Landroid/view/inputmethod/CompletionInfo;
    .end local v2    # "completions":[Landroid/view/inputmethod/CompletionInfo;
    .end local v4    # "isCompletionOn":Z
    .end local v5    # "isLandscape":Z
    :cond_0
    :goto_0
    return-void

    .line 681
    .restart local v2    # "completions":[Landroid/view/inputmethod/CompletionInfo;
    .restart local v4    # "isCompletionOn":Z
    .restart local v5    # "isLandscape":Z
    :cond_1
    invoke-interface {v3}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 682
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->getCandidateviewStatus()I

    move-result v0

    .line 683
    .local v0, "candidateStatus":I
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    iget v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mStateCandidate:I

    if-ne v6, v9, :cond_2

    if-nez v0, :cond_2

    .line 686
    iget v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosPrevText:I

    iget v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosNextText:I

    invoke-interface {v3, v6, v7}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 687
    iput v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosPrevText:I

    .line 688
    iput v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosNextText:I

    .line 690
    :cond_2
    if-eqz p2, :cond_3

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v6

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-eq v6, v7, :cond_3

    .line 691
    invoke-virtual {p0, v9}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setPredictionWord(Z)V

    .line 693
    :cond_3
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 696
    invoke-static {p2}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    .line 697
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->replaceSpaceToSymbol(Ljava/lang/StringBuilder;)V

    .line 699
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setComposingText()V

    .line 701
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->OnBlockPrediction()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 702
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v3, v6, v9}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 703
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->deleteBlockText()V

    .line 704
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSequence(Ljava/lang/StringBuilder;)V

    .line 705
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->updateSuggestionDelay()V

    .line 714
    :goto_1
    invoke-interface {v3}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto :goto_0

    .line 707
    :cond_4
    iput p1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPickSuggestionIndex:I

    .line 708
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->selectWordInList(I)V

    .line 709
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    .line 710
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 711
    invoke-direct {p0}, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->setVerbatirmsInPrediction()V

    .line 712
    invoke-virtual {p0, v8}, Lcom/diotek/ime/framework/input/AbstractInputModule;->doNextWordPrediction(Z)V

    goto :goto_1
.end method

.method public previewTrace(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 161
    return-void
.end method

.method public processLeftKeyEvent(I[I)V
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    const/4 v4, 0x1

    .line 324
    new-instance v0, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;

    invoke-direct {v0}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;-><init>()V

    .line 325
    .local v0, "composingText":Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;
    const/4 v1, 0x0

    new-instance v2, Lcom/diotek/ime/framework/input/StrSegment;

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/diotek/ime/framework/input/StrSegment;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v4, v2}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->insertStrSegment(IILcom/diotek/ime/framework/input/StrSegment;)V

    .line 331
    const/4 v1, -0x1

    invoke-static {v4, v1}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->moveCursor(II)I

    .line 333
    return-void
.end method

.method protected processMultiTapSymbolicKey(I[I)V
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    const/4 v5, 0x1

    .line 393
    const/4 v2, 0x0

    .line 394
    .local v2, "nIndex":I
    const/4 v1, 0x0

    .line 396
    .local v1, "nCodeLength":I
    if-nez p2, :cond_1

    .line 423
    :cond_0
    :goto_0
    return-void

    .line 400
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, p2

    if-ge v0, v3, :cond_4

    .line 401
    iget v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mLastKeyCode:I

    aget v4, p2, v0

    if-ne v3, v4, :cond_3

    .line 402
    move v2, v0

    .line 407
    :cond_2
    add-int/lit8 v1, v0, 0x1

    .line 400
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 403
    :cond_3
    aget v3, p2, v0

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 404
    move v1, v0

    .line 410
    :cond_4
    if-le v1, v5, :cond_0

    .line 411
    iget v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mLastKeyCode:I

    aget v4, p2, v2

    if-ne v3, v4, :cond_5

    .line 412
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->deleteLastChar()V

    .line 416
    :goto_2
    int-to-char v3, p1

    invoke-static {v3}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->append(I)Z

    .line 417
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setComposingText()V

    .line 418
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v3}, Lcom/diotek/ime/framework/input/AbstractInputModule;->stopTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;)V

    .line 419
    iput-boolean v5, p0, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->bSymbolMultitapKeyPressed:Z

    .line 420
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    const/16 v4, 0x5dc

    invoke-virtual {p0, v3, v4}, Lcom/diotek/ime/framework/input/AbstractInputModule;->startTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;I)V

    goto :goto_0

    .line 414
    :cond_5
    invoke-virtual {p0, v5}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    goto :goto_2
.end method

.method protected processSymbolicKey(I[I)V
    .locals 22
    .param p1, "keyCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    .line 337
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->cancelTrace()Z

    .line 338
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    .line 339
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-interface {v1, v4, v5}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;Z)I

    .line 341
    const-string v1, " .,;:!?\n()[]*&@{}/<>_-+=|\'\u061b\u060c\u061f\""

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    .line 342
    invoke-direct/range {p0 .. p2}, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->processWordSeparator(I[I)V

    .line 390
    :cond_0
    :goto_0
    return-void

    .line 344
    :cond_1
    const/16 v1, 0xa

    move/from16 v0, p1

    if-eq v0, v1, :cond_2

    const/16 v1, 0x20

    move/from16 v0, p1

    if-ne v0, v1, :cond_3

    .line 346
    :cond_2
    invoke-direct/range {p0 .. p2}, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->processWordSeparator(I[I)V

    goto :goto_0

    .line 348
    :cond_3
    const/4 v1, -0x5

    move/from16 v0, p1

    if-ne v0, v1, :cond_4

    .line 349
    invoke-direct/range {p0 .. p0}, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->processBackSpaceKey()V

    goto :goto_0

    .line 351
    :cond_4
    const/16 v1, -0x3eb

    move/from16 v0, p1

    if-ne v0, v1, :cond_5

    .line 352
    invoke-direct/range {p0 .. p0}, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->processForwardDelete()V

    goto :goto_0

    .line 354
    :cond_5
    const/16 v1, -0x107

    move/from16 v0, p1

    if-ne v0, v1, :cond_6

    .line 355
    invoke-direct/range {p0 .. p1}, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->processReplaceKey(I)V

    goto :goto_0

    .line 357
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v1, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 358
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->updateSuggestion()V

    .line 361
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isInMultiTapInput()Z

    move-result v21

    .line 362
    .local v21, "isInMultiTap":Z
    if-eqz v21, :cond_8

    .line 363
    invoke-virtual/range {p0 .. p2}, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->processMultiTapSymbolicKey(I[I)V

    goto :goto_0

    .line 366
    :cond_8
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 367
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initComposingBuffer()V

    .line 368
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 369
    move/from16 v0, p1

    int-to-char v1, v0

    invoke-static {v1}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    .line 370
    const/16 v1, 0x30

    move/from16 v0, p1

    if-lt v0, v1, :cond_a

    const/16 v1, 0x39

    move/from16 v0, p1

    if-gt v0, v1, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v1

    const/4 v4, 0x1

    if-eq v1, v4, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingNumberInputKeyboardForMultiWindow()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 373
    :cond_9
    add-int/lit8 v1, p1, -0x30

    add-int/lit8 v7, v1, 0x7

    .line 374
    .local v7, "code":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v20

    .line 375
    .local v20, "ic":Landroid/view/inputmethod/InputConnection;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 376
    .local v2, "eventTime":J
    if-eqz v20, :cond_0

    .line 377
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

    .line 380
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

    .line 386
    .end local v2    # "eventTime":J
    .end local v7    # "code":I
    .end local v20    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_a
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 388
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSequence(Ljava/lang/StringBuilder;)V

    .line 389
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->updateSuggestion()V

    goto/16 :goto_0
.end method

.method public release()V
    .locals 0

    .prologue
    .line 100
    return-void
.end method

.method public toUpperCaseOfTurkish(I)I
    .locals 1
    .param p1, "keyCode"    # I

    .prologue
    .line 171
    const/16 v0, 0x69

    if-ne p1, v0, :cond_0

    .line 172
    const/16 v0, 0x49

    .line 178
    :goto_0
    return v0

    .line 173
    :cond_0
    const/16 v0, 0x131

    if-ne p1, v0, :cond_1

    .line 174
    const/16 p1, 0x130

    move v0, p1

    goto :goto_0

    .line 175
    :cond_1
    invoke-static {p1}, Ljava/lang/Character;->isLowerCase(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 176
    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(I)I

    move-result v0

    goto :goto_0

    :cond_2
    move v0, p1

    .line 178
    goto :goto_0
.end method

.method public updateSuggestion()V
    .locals 2

    .prologue
    .line 731
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isDeviceHasHardwareKeypad()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isHWKeyboardOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 749
    :cond_0
    :goto_0
    return-void

    .line 736
    :cond_1
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->updateViewStatus()V

    .line 737
    invoke-direct {p0}, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->setVerbatirmsInPrediction()V

    .line 739
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 740
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 741
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    .line 742
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->AddVerbatimForRecapture(Ljava/util/ArrayList;)V

    .line 743
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-eqz v0, :cond_2

    .line 744
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCurrentSequenceString:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 746
    :cond_2
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->setSuggestionActiveIndex(I)V

    .line 747
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public updateSuggestionDelay()V
    .locals 1

    .prologue
    .line 788
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->updateViewStatus()V

    .line 789
    invoke-super {p0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSuggestionDelay()V

    .line 790
    return-void
.end method

.method public updateVOHWRSuggestion()V
    .locals 0

    .prologue
    .line 721
    return-void
.end method
