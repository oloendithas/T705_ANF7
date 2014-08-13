.class public Lcom/diotek/ime/framework/input/SwiftkeyPhonepadChineseInputModule;
.super Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;
.source "SwiftkeyPhonepadChineseInputModule.java"


# static fields
.field private static final cangjieKeyIndex:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x3

    .line 25
    const/16 v0, 0x8

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v3, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v3

    new-array v1, v3, [I

    fill-array-data v1, :array_4

    aput-object v1, v0, v4

    const/4 v1, 0x5

    new-array v2, v4, [I

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    sput-object v0, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadChineseInputModule;->cangjieKeyIndex:[[I

    return-void

    nop

    :array_0
    .array-data 4
        0x61
        0x62
        0x63
    .end array-data

    :array_1
    .array-data 4
        0x64
        0x65
        0x66
    .end array-data

    :array_2
    .array-data 4
        0x67
        0x68
        0x69
    .end array-data

    :array_3
    .array-data 4
        0x6a
        0x6b
        0x6c
    .end array-data

    :array_4
    .array-data 4
        0x6d
        0x6e
        0x6f
    .end array-data

    :array_5
    .array-data 4
        0x70
        0x71
        0x72
        0x73
    .end array-data

    :array_6
    .array-data 4
        0x74
        0x75
        0x76
    .end array-data

    :array_7
    .array-data 4
        0x77
        0x78
        0x79
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;-><init>()V

    .line 37
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->setSuggestionActiveIndex(I)V

    .line 38
    return-void
.end method

.method private isEqualKeyIndex(I)Z
    .locals 7
    .param p1, "keyCode"    # I

    .prologue
    const/4 v6, -0x1

    .line 198
    const/4 v3, -0x1

    .line 199
    .local v3, "nLastKeyIndex":I
    const/4 v2, -0x1

    .line 201
    .local v2, "nCurKeyIndex":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v4, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadChineseInputModule;->cangjieKeyIndex:[[I

    array-length v4, v4

    if-ge v0, v4, :cond_4

    .line 202
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    sget-object v4, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadChineseInputModule;->cangjieKeyIndex:[[I

    aget-object v4, v4, v0

    array-length v4, v4

    if-ge v1, v4, :cond_2

    .line 203
    iget v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mLastKeyCode:I

    sget-object v5, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadChineseInputModule;->cangjieKeyIndex:[[I

    aget-object v5, v5, v0

    aget v5, v5, v1

    if-ne v4, v5, :cond_0

    .line 204
    move v3, v0

    .line 206
    :cond_0
    sget-object v4, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadChineseInputModule;->cangjieKeyIndex:[[I

    aget-object v4, v4, v0

    aget v4, v4, v1

    if-ne p1, v4, :cond_1

    .line 207
    move v2, v0

    .line 202
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 210
    :cond_2
    if-eq v3, v6, :cond_3

    if-ne v3, v2, :cond_3

    if-eq v2, v6, :cond_3

    .line 212
    const/4 v4, 0x1

    .line 218
    .end local v1    # "j":I
    :goto_2
    return v4

    .line 214
    .restart local v1    # "j":I
    :cond_3
    const/4 v3, -0x1

    .line 215
    const/4 v2, -0x1

    .line 201
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 218
    .end local v1    # "j":I
    :cond_4
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private processBackSpaceKey()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/16 v8, 0x43

    const/16 v11, 0x2b

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 662
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 663
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    const/4 v4, 0x0

    .line 664
    .local v4, "spell":Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getInputTransResult()Ljava/lang/CharSequence;

    move-result-object v4

    .line 665
    const/4 v0, 0x0

    .line 667
    .local v0, "bIsSpellViewShown":Z
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v6}, Lcom/diotek/ime/framework/input/AbstractInputModule;->stopTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;)V

    .line 668
    const-string v2, ""

    .line 669
    .local v2, "lastChar":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 670
    invoke-interface {v1, v10, v9}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v2

    .end local v2    # "lastChar":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 671
    .restart local v2    # "lastChar":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 672
    const-string v2, ""

    .line 675
    :cond_0
    invoke-virtual {p0, v2}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setDeleteCount(Ljava/lang/String;)V

    .line 676
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->resetPredictionWord()V

    .line 677
    if-eqz v4, :cond_4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-lez v6, :cond_4

    .line 678
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    const/4 v7, -0x5

    invoke-interface {v6, v7}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(I)I

    .line 679
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getInputTransResult()Ljava/lang/CharSequence;

    move-result-object v4

    .line 680
    if-eqz v4, :cond_3

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-lez v6, :cond_3

    .line 681
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    .line 682
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v6, v7}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    .line 683
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v6, v7}, Lcom/diotek/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    .line 684
    const/4 v0, 0x1

    .line 689
    :goto_0
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSuggestion()V

    .line 725
    :cond_1
    :goto_1
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6, v4, v0}, Lcom/diotek/ime/framework/common/InputManager;->updateSpellView(Ljava/lang/CharSequence;Z)V

    .line 727
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v3

    .line 728
    .local v3, "nInputRange":I
    if-nez v3, :cond_2

    .line 729
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 730
    .local v5, "spellGroup":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v6, v5}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getPhoneticSpellGroup(Ljava/util/ArrayList;)I

    .line 731
    if-eqz v5, :cond_a

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_a

    .line 732
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v7, "CHINESE_PHONETIC_SELECT_SPELL_INDEX"

    invoke-interface {v6, v7, v9}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;I)V

    .line 733
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6, v5, v10}, Lcom/diotek/ime/framework/common/InputManager;->setPhoneticSpellLayout(Ljava/util/ArrayList;Z)V

    .line 739
    .end local v5    # "spellGroup":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    :cond_2
    :goto_2
    return-void

    .line 686
    .end local v3    # "nInputRange":I
    :cond_3
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    .line 687
    invoke-virtual {p0, v12}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSequence(Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 691
    :cond_4
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 692
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/engine/InputEngineManager;->breakContext()V

    .line 693
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 694
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 695
    invoke-virtual {p0, v9}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->postUpdateSequenceAndSuggestionDelay(I)V

    goto :goto_1

    .line 697
    :cond_5
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 698
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposingWithoutInit()V

    .line 699
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_8

    .line 700
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getDeleteCount()I

    move-result v6

    const/16 v7, 0xa

    if-le v6, v7, :cond_7

    invoke-static {}, Lcom/diotek/ime/framework/repository/PackageStatus;->getPackageName()Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    move-result-object v6

    sget-object v7, Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;->CHATON_PACKAGE_NAME:Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    if-eq v6, v7, :cond_7

    .line 702
    if-eqz v1, :cond_6

    .line 703
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getLastWordDividerIndex()I

    move-result v6

    invoke-interface {v1, v6, v9}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 710
    :cond_6
    :goto_3
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 711
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v7, 0x12c

    invoke-virtual {v6, v11, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1

    .line 706
    :cond_7
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initWordDividerIndexList()V

    .line 707
    invoke-virtual {p0, v8}, Lcom/diotek/ime/framework/input/AbstractInputModule;->onKeyDownUpHandle(I)V

    .line 708
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposingWithoutInit()V

    goto :goto_3

    .line 713
    :cond_8
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getDeleteCount()I

    move-result v6

    const/16 v7, 0x14

    if-le v6, v7, :cond_9

    invoke-static {}, Lcom/diotek/ime/framework/repository/PackageStatus;->getPackageName()Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    move-result-object v6

    sget-object v7, Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;->CHATON_PACKAGE_NAME:Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    if-eq v6, v7, :cond_9

    .line 715
    if-eqz v1, :cond_1

    .line 716
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getLastWordDividerIndex()I

    move-result v6

    invoke-interface {v1, v6, v9}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto/16 :goto_1

    .line 719
    :cond_9
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initWordDividerIndexList()V

    .line 720
    invoke-virtual {p0, v8}, Lcom/diotek/ime/framework/input/AbstractInputModule;->onKeyDownUpHandle(I)V

    goto/16 :goto_1

    .line 735
    .restart local v3    # "nInputRange":I
    .restart local v5    # "spellGroup":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    :cond_a
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v7, "CHINESE_PHONETIC_SELECT_SPELL_INDEX"

    const/4 v8, -0x1

    invoke-interface {v6, v7, v8}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;I)V

    .line 736
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6, v12, v9}, Lcom/diotek/ime/framework/common/InputManager;->setPhoneticSpellLayout(Ljava/util/ArrayList;Z)V

    goto/16 :goto_2
.end method

.method private processEnterKey()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 585
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 586
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v1, :cond_0

    .line 629
    :goto_0
    return-void

    .line 589
    :cond_0
    const/4 v4, 0x0

    .line 590
    .local v4, "spell":Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getInputTransResult()Ljava/lang/CharSequence;

    move-result-object v4

    .line 591
    if-eqz v4, :cond_4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_4

    .line 592
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-interface {v6, v8, v5}, Lcom/diotek/ime/framework/engine/InputEngineManager;->wordSelected(ILjava/lang/CharSequence;)I

    move-result v3

    .line 593
    .local v3, "nRet":I
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getInputTransResult()Ljava/lang/CharSequence;

    move-result-object v4

    .line 594
    if-lez v3, :cond_1

    .line 596
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    .line 597
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v5, v6}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    .line 598
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v5, v6}, Lcom/diotek/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    .line 599
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5, v4, v7}, Lcom/diotek/ime/framework/common/InputManager;->updateSpellView(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    .line 603
    :cond_1
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 604
    .local v0, "candidate":Ljava/lang/CharSequence;
    if-eqz v1, :cond_2

    .line 605
    invoke-interface {v1, v4, v7}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 607
    :cond_2
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    .line 608
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5, v9, v8}, Lcom/diotek/ime/framework/common/InputManager;->updateSpellView(Ljava/lang/CharSequence;Z)V

    .line 609
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5, v8}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    .line 610
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    .line 611
    invoke-virtual {p0, v7}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setPredictionWord(Z)V

    .line 613
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v5, v0, v6}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getPredictWord(Ljava/lang/CharSequence;Ljava/util/ArrayList;)I

    move-result v2

    .line 614
    .local v2, "nPredictWordNum":I
    if-lez v2, :cond_3

    .line 615
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v5, v6}, Lcom/diotek/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    .line 627
    .end local v0    # "candidate":Ljava/lang/CharSequence;
    .end local v2    # "nPredictWordNum":I
    .end local v3    # "nRet":I
    :goto_1
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v6, "CHINESE_PHONETIC_SELECT_SPELL_INDEX"

    const/4 v7, -0x1

    invoke-interface {v5, v6, v7}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;I)V

    .line 628
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5, v9, v8}, Lcom/diotek/ime/framework/common/InputManager;->setPhoneticSpellLayout(Ljava/util/ArrayList;Z)V

    goto :goto_0

    .line 617
    .restart local v0    # "candidate":Ljava/lang/CharSequence;
    .restart local v2    # "nPredictWordNum":I
    .restart local v3    # "nRet":I
    :cond_3
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5, v8}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    goto :goto_1

    .line 620
    .end local v0    # "candidate":Ljava/lang/CharSequence;
    .end local v2    # "nPredictWordNum":I
    .end local v3    # "nRet":I
    :cond_4
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->sendEnterKeyHandle()V

    .line 621
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    .line 622
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    .line 623
    invoke-virtual {p0, v7}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 624
    invoke-virtual {p0, v9}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSequence(Ljava/lang/StringBuilder;)V

    .line 625
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSuggestion()V

    goto :goto_1
.end method

.method private processForwardDelete()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 632
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 633
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v0, :cond_1

    .line 659
    :cond_0
    :goto_0
    return-void

    .line 637
    :cond_1
    const-string v1, ""

    .line 638
    .local v1, "lastChar":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 639
    const/4 v2, 0x1

    invoke-interface {v0, v2, v4}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .end local v1    # "lastChar":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 640
    .restart local v1    # "lastChar":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 641
    const-string v1, ""

    .line 644
    :cond_2
    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setDeleteCount(Ljava/lang/String;)V

    .line 645
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->resetPredictionWord()V

    .line 646
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 647
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposingWithoutInit()V

    .line 649
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getDeleteCount()I

    move-result v2

    const/16 v3, 0x14

    if-le v2, v3, :cond_3

    invoke-static {}, Lcom/diotek/ime/framework/repository/PackageStatus;->getPackageName()Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    move-result-object v2

    sget-object v3, Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;->CHATON_PACKAGE_NAME:Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    if-eq v2, v3, :cond_3

    .line 652
    if-eqz v0, :cond_0

    .line 653
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getFirstWordDividerIndex()I

    move-result v2

    invoke-interface {v0, v4, v2}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto :goto_0

    .line 656
    :cond_3
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initWordDividerIndexList()V

    .line 657
    const/16 v2, 0x70

    invoke-virtual {p0, v2}, Lcom/diotek/ime/framework/input/AbstractInputModule;->onKeyDownUpHandle(I)V

    goto :goto_0
.end method

.method private processMultiTap(I[I)V
    .locals 9
    .param p1, "keyCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 222
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v5}, Lcom/diotek/ime/framework/input/AbstractInputModule;->isTimerRunning(Lcom/diotek/ime/framework/input/InputModule$Timer;)Z

    move-result v1

    .line 223
    .local v1, "bIsTimerRunning":Z
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v5}, Lcom/diotek/ime/framework/input/AbstractInputModule;->stopTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;)V

    .line 224
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadChineseInputModule;->isEqualKeyIndex(I)Z

    move-result v0

    .line 225
    .local v0, "bIsEqualKey":Z
    const/4 v4, 0x0

    .line 226
    .local v4, "spell":Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getInputTransResult()Ljava/lang/CharSequence;

    move-result-object v4

    .line 228
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 274
    :cond_0
    :goto_0
    return-void

    .line 233
    :cond_1
    if-eqz v4, :cond_2

    .line 234
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getCurrentChineseModeMaxLength()I

    move-result v6

    if-gt v5, v6, :cond_0

    .line 239
    :cond_2
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gtz v5, :cond_4

    .line 240
    :cond_3
    if-eqz v1, :cond_8

    .line 247
    :cond_4
    :goto_1
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->isInMultiTapInput()Z

    move-result v2

    .line 248
    .local v2, "isInMultiTap":Z
    if-eqz v2, :cond_5

    if-eqz v0, :cond_5

    .line 249
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    const v6, 0xff01

    invoke-interface {v5, v6}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(I)I

    .line 252
    :cond_5
    const/4 v3, -0x1

    .line 253
    .local v3, "nRet":I
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    if-eqz v5, :cond_6

    .line 254
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v6, v7}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTouchPoint(I)Landroid/graphics/PointF;

    move-result-object v6

    invoke-interface {v5, p1, v6}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(ILandroid/graphics/PointF;)I

    move-result v3

    .line 257
    :cond_6
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getInputTransResult()Ljava/lang/CharSequence;

    move-result-object v4

    .line 258
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v5, v6, v7}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;Z)I

    .line 260
    if-gtz v3, :cond_7

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_7

    if-nez v0, :cond_7

    if-nez v2, :cond_7

    .line 261
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    const/4 v6, -0x5

    invoke-interface {v5, v6}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(I)I

    .line 264
    :cond_7
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    .line 265
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v5, v6}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    .line 266
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v5, v6}, Lcom/diotek/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    .line 267
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5, v8}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    .line 268
    if-eqz v4, :cond_9

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_9

    .line 269
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5, v4, v8}, Lcom/diotek/ime/framework/common/InputManager;->updateSpellView(Ljava/lang/CharSequence;Z)V

    .line 273
    :goto_2
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    const/16 v6, 0x5dc

    invoke-virtual {p0, v5, v6}, Lcom/diotek/ime/framework/input/AbstractInputModule;->startTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;I)V

    goto/16 :goto_0

    .line 243
    .end local v2    # "isInMultiTap":Z
    .end local v3    # "nRet":I
    :cond_8
    invoke-virtual {p0, v8}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    goto :goto_1

    .line 271
    .restart local v2    # "isInMultiTap":Z
    .restart local v3    # "nRet":I
    :cond_9
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v6, 0x0

    invoke-interface {v5, v6, v7}, Lcom/diotek/ime/framework/common/InputManager;->updateSpellView(Ljava/lang/CharSequence;Z)V

    goto :goto_2
.end method

.method private processMultiTapTone(I[I)V
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    .line 277
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->stopTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;)V

    .line 278
    const/4 v0, 0x0

    .line 279
    .local v0, "spell":Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getInputTransResult()Ljava/lang/CharSequence;

    move-result-object v0

    .line 281
    if-eqz v0, :cond_0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 301
    :cond_0
    :goto_0
    return-void

    .line 285
    :cond_1
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getCurrentChineseModeMaxLength()I

    move-result v2

    if-gt v1, v2, :cond_0

    .line 289
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 300
    :goto_1
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    const/16 v2, 0x5dc

    invoke-virtual {p0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputModule;->startTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;I)V

    goto :goto_0

    .line 294
    :sswitch_0
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    const/4 v2, -0x5

    invoke-interface {v1, v2}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(I)I

    goto :goto_1

    .line 289
    nop

    :sswitch_data_0
    .sparse-switch
        0x2c7 -> :sswitch_0
        0x2ca -> :sswitch_0
        0x2cb -> :sswitch_0
        0x2d9 -> :sswitch_0
    .end sparse-switch
.end method

.method private processSingleTap(I[I)V
    .locals 11
    .param p1, "keyCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    const/16 v6, 0x27

    const/4 v10, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 314
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 315
    .local v2, "spellGroup":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isChineseStrokeModeOn()Z

    move-result v3

    .line 316
    .local v3, "strokeModeOn":Z
    const/4 v0, 0x0

    .line 317
    .local v0, "nRet":I
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4, v7}, Lcom/diotek/ime/framework/common/InputManager;->setCandidateviewStatus(I)V

    .line 318
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v4}, Lcom/diotek/ime/framework/input/AbstractInputModule;->isTimerRunning(Lcom/diotek/ime/framework/input/InputModule$Timer;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 319
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v4}, Lcom/diotek/ime/framework/input/AbstractInputModule;->stopTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;)V

    .line 320
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    .line 321
    :cond_0
    invoke-virtual {p0, v9}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 325
    :cond_1
    const/4 v1, 0x0

    .line 326
    .local v1, "spell":Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getInputTransResult()Ljava/lang/CharSequence;

    move-result-object v1

    .line 328
    if-eqz v3, :cond_3

    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 409
    :cond_2
    :goto_0
    return-void

    .line 334
    :cond_3
    if-eqz v1, :cond_4

    .line 335
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getCurrentChineseModeMaxLength()I

    move-result v5

    if-gt v4, v5, :cond_2

    .line 338
    if-ne p1, v6, :cond_4

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_4

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-eq v4, v6, :cond_2

    .line 345
    :cond_4
    iget-boolean v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsTraceOn:Z

    if-eqz v4, :cond_8

    if-nez v3, :cond_8

    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v4

    const/4 v5, 0x2

    if-le v4, v5, :cond_8

    .line 346
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v4, v8, v7, v8}, Lcom/diotek/ime/framework/engine/InputEngineManager;->isAutoAcceptBeforeTrace([Landroid/graphics/PointF;I[Z)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 348
    invoke-virtual {p0, v7}, Lcom/diotek/ime/framework/input/AbstractInputModule;->selectWordInList(I)V

    .line 349
    invoke-virtual {p0, v9}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 351
    :cond_5
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTracePoint()[Landroid/graphics/PointF;

    move-result-object v5

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v6

    invoke-interface {v4, v5, v6, v10}, Lcom/diotek/ime/framework/engine/InputEngineManager;->processTrace([Landroid/graphics/PointF;IB)S

    move-result v4

    if-nez v4, :cond_6

    .line 352
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->clearTraceInfo()V

    .line 353
    invoke-virtual {p0, v8}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSequence(Ljava/lang/StringBuilder;)V

    .line 354
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSuggestion()V

    .line 355
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadChineseInputModule;->cancelPreviewTrace()V

    goto :goto_0

    .line 358
    :cond_6
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->clearTraceInfo()V

    .line 359
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v4, v5, v7}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getCharSequence(Ljava/lang/StringBuilder;I)I

    .line 360
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 361
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->disableSetUpAutoSpace()V

    .line 362
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->resetPredictionWord()V

    .line 364
    :cond_7
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setComposingText()V

    .line 398
    :goto_1
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getInputTransResult()Ljava/lang/CharSequence;

    move-result-object v1

    .line 400
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    .line 401
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v4, v5}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    .line 402
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v4, v5}, Lcom/diotek/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    .line 404
    if-eqz v1, :cond_e

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_e

    .line 405
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4, v1, v9}, Lcom/diotek/ime/framework/common/InputManager;->updateSpellView(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_0

    .line 366
    :cond_8
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v4, p1, v8}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(ILandroid/graphics/PointF;)I

    move-result v0

    .line 367
    if-gez v0, :cond_9

    .line 368
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    if-eqz v4, :cond_2

    .line 369
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->clearTraceInfo()V

    goto/16 :goto_0

    .line 373
    :cond_9
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v4, v2}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getPhoneticSpellGroup(Ljava/util/ArrayList;)I

    .line 374
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v4, v5, v7}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;Z)I

    .line 376
    iget v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputLanguage:I

    const v5, 0x7a685457

    if-ne v4, v5, :cond_a

    .line 377
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getInputTransResult()Ljava/lang/CharSequence;

    move-result-object v1

    .line 378
    if-eqz v1, :cond_b

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_b

    .line 379
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4, v1, v9}, Lcom/diotek/ime/framework/common/InputManager;->updateSpellView(Ljava/lang/CharSequence;Z)V

    .line 385
    :cond_a
    :goto_2
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v5, "CHINESE_PHONETIC_SPELL_LAYOUT_SHOWN"

    invoke-interface {v4, v5, v7}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 386
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4, v2}, Lcom/diotek/ime/framework/common/InputManager;->updatePhoneticSpell(Ljava/util/ArrayList;)V

    goto :goto_1

    .line 381
    :cond_b
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4, v8, v7}, Lcom/diotek/ime/framework/common/InputManager;->updateSpellView(Ljava/lang/CharSequence;Z)V

    goto :goto_2

    .line 388
    :cond_c
    if-eqz v2, :cond_d

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_d

    if-nez v3, :cond_d

    .line 390
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v5, "CHINESE_PHONETIC_SELECT_SPELL_INDEX"

    invoke-interface {v4, v5, v7}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;I)V

    .line 391
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4, v2, v9}, Lcom/diotek/ime/framework/common/InputManager;->setPhoneticSpellLayout(Ljava/util/ArrayList;Z)V

    goto/16 :goto_1

    .line 393
    :cond_d
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v5, "CHINESE_PHONETIC_SELECT_SPELL_INDEX"

    invoke-interface {v4, v5, v10}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;I)V

    .line 394
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4, v8, v7}, Lcom/diotek/ime/framework/common/InputManager;->setPhoneticSpellLayout(Ljava/util/ArrayList;Z)V

    goto/16 :goto_1

    .line 407
    :cond_e
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4, v8, v7}, Lcom/diotek/ime/framework/common/InputManager;->updateSpellView(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_0
.end method

.method private processSpaceKey()V
    .locals 12

    .prologue
    const/4 v9, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 524
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 525
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isChineseStrokeModeOn()Z

    move-result v6

    .line 526
    .local v6, "strokeModeOn":Z
    const/4 v4, 0x0

    .line 527
    .local v4, "spell":Ljava/lang/CharSequence;
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getInputTransResult()Ljava/lang/CharSequence;

    move-result-object v4

    .line 529
    if-eqz v4, :cond_4

    if-eqz v1, :cond_4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_4

    .line 530
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-gtz v7, :cond_0

    .line 531
    invoke-interface {v1, v4, v11}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 532
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    .line 533
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7, v4, v11}, Lcom/diotek/ime/framework/common/InputManager;->updateSpellView(Ljava/lang/CharSequence;Z)V

    .line 582
    :goto_0
    return-void

    .line 536
    :cond_0
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v7, v8, v10}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;Z)I

    .line 537
    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-interface {v8, v10, v7}, Lcom/diotek/ime/framework/engine/InputEngineManager;->wordSelected(ILjava/lang/CharSequence;)I

    move-result v3

    .line 538
    .local v3, "nRet":I
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getInputTransResult()Ljava/lang/CharSequence;

    move-result-object v4

    .line 539
    if-lez v3, :cond_2

    .line 540
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v7

    if-eqz v7, :cond_1

    if-nez v6, :cond_1

    .line 542
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 543
    .local v5, "spellGroup":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v7, v5}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getPhoneticSpellGroup(Ljava/util/ArrayList;)I

    .line 544
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7, v5, v11}, Lcom/diotek/ime/framework/common/InputManager;->setPhoneticSpellLayout(Ljava/util/ArrayList;Z)V

    .line 545
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v8, "CHINESE_PHONETIC_SELECT_SPELL_INDEX"

    invoke-interface {v7, v8, v10}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;I)V

    .line 548
    .end local v5    # "spellGroup":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    :cond_1
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    .line 549
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v7, v8}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    .line 550
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v7, v8}, Lcom/diotek/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    .line 551
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7, v4, v11}, Lcom/diotek/ime/framework/common/InputManager;->updateSpellView(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    .line 555
    :cond_2
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 556
    .local v0, "candidate":Ljava/lang/CharSequence;
    invoke-interface {v1, v4, v11}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 557
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    .line 558
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    .line 559
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7, v9, v10}, Lcom/diotek/ime/framework/common/InputManager;->updateSpellView(Ljava/lang/CharSequence;Z)V

    .line 560
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7, v9, v10}, Lcom/diotek/ime/framework/common/InputManager;->setPhoneticSpellLayout(Ljava/util/ArrayList;Z)V

    .line 561
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7, v10}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    .line 562
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v8, "CHINESE_PHONETIC_SELECT_SPELL_INDEX"

    const/4 v9, -0x1

    invoke-interface {v7, v8, v9}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;I)V

    .line 563
    invoke-virtual {p0, v11}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setPredictionWord(Z)V

    .line 565
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v7, v0, v8}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getPredictWord(Ljava/lang/CharSequence;Ljava/util/ArrayList;)I

    move-result v2

    .line 567
    .local v2, "nPredictWordNum":I
    if-lez v2, :cond_3

    .line 568
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v7, v8}, Lcom/diotek/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 570
    :cond_3
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7, v10}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    goto/16 :goto_0

    .line 573
    .end local v0    # "candidate":Ljava/lang/CharSequence;
    .end local v2    # "nPredictWordNum":I
    .end local v3    # "nRet":I
    :cond_4
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    .line 574
    invoke-virtual {p0, v11}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 575
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isLastActionIsTraceOrPick()Z

    move-result v7

    if-nez v7, :cond_5

    .line 576
    const/16 v7, 0x3e

    invoke-virtual {p0, v7}, Lcom/diotek/ime/framework/input/AbstractInputModule;->onKeyDownUpHandle(I)V

    .line 578
    :cond_5
    invoke-virtual {p0, v9}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSequence(Ljava/lang/StringBuilder;)V

    .line 579
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSuggestion()V

    .line 580
    invoke-virtual {p0, v11}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setPredictionWord(Z)V

    goto/16 :goto_0
.end method

.method private removeDivChar([C)Ljava/lang/String;
    .locals 6
    .param p1, "array"    # [C

    .prologue
    .line 509
    const/4 v4, 0x0

    .line 510
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

    .line 511
    .local v1, "i":C
    const/16 v5, 0x27

    if-eq v1, v5, :cond_0

    .line 512
    if-nez v4, :cond_1

    .line 513
    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    .line 510
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 515
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

    .line 520
    .end local v1    # "i":C
    :cond_2
    return-object v4
.end method


# virtual methods
.method public cancelPreviewTrace()V
    .locals 0

    .prologue
    .line 311
    return-void
.end method

.method public closing()V
    .locals 0

    .prologue
    .line 146
    return-void
.end method

.method public onCharacterKey(I[I)V
    .locals 7
    .param p1, "keyCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    const/4 v3, 0x1

    const/16 v6, -0x7a

    .line 150
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v1

    .line 151
    .local v1, "nInputMethod":I
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isChineseStrokeModeOn()Z

    move-result v2

    .line 152
    .local v2, "strokeModeOn":Z
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isChineseSpellText()Z

    move-result v4

    if-eqz v4, :cond_0

    if-ne p1, v6, :cond_0

    .line 153
    const/16 p1, 0x27

    .line 155
    :cond_0
    iget-boolean v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsTraceOn:Z

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v4

    const/4 v5, 0x2

    if-le v4, v5, :cond_5

    move v0, v3

    .line 156
    .local v0, "isTraceInput":Z
    :goto_0
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v4, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->isTextCharacter(I)Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz v0, :cond_a

    .line 158
    :cond_1
    if-eq v1, v3, :cond_2

    if-eqz v2, :cond_6

    .line 159
    :cond_2
    invoke-static {p2}, Lcom/diotek/ime/framework/util/Utils;->isZhuyinToneKey([I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 160
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadChineseInputModule;->processMultiTapTone(I[I)V

    .line 162
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadChineseInputModule;->processSingleTap(I[I)V

    .line 163
    if-nez v2, :cond_4

    .line 164
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3, v6}, Lcom/diotek/ime/framework/common/InputManager;->invalidateKey(I)V

    .line 193
    :cond_4
    :goto_1
    iput p1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mLastKeyCode:I

    .line 194
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v3, p1, v0}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->setUpAutoSpace(IZ)V

    .line 195
    return-void

    .line 155
    .end local v0    # "isTraceInput":Z
    :cond_5
    const/4 v0, 0x0

    goto :goto_0

    .line 166
    .restart local v0    # "isTraceInput":Z
    :cond_6
    const/16 v3, 0x8

    if-ne v1, v3, :cond_7

    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v3

    if-nez v3, :cond_8

    :cond_7
    if-eqz v2, :cond_9

    .line 169
    :cond_8
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadChineseInputModule;->processSingleTap(I[I)V

    .line 170
    if-nez v2, :cond_4

    .line 171
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3, v6}, Lcom/diotek/ime/framework/common/InputManager;->invalidateKey(I)V

    goto :goto_1

    .line 175
    :cond_9
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadChineseInputModule;->processMultiTap(I[I)V

    goto :goto_1

    .line 178
    :cond_a
    invoke-virtual {p0, p1, p2}, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadChineseInputModule;->processSymbolicKey(I[I)V

    .line 179
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->isChineseSpellText()Z

    move-result v3

    if-nez v3, :cond_b

    if-nez v2, :cond_b

    .line 180
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3, v6}, Lcom/diotek/ime/framework/common/InputManager;->invalidateKey(I)V

    .line 182
    :cond_b
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->autoPeriod(I)V

    goto :goto_1
.end method

.method public onHwrPanelLongPressed(ILjava/lang/String;)V
    .locals 0
    .param p1, "selectedArrayIndex"    # I
    .param p2, "resultString"    # Ljava/lang/String;

    .prologue
    .line 746
    return-void
.end method

.method public onHwrTouchDown(IIJ)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "eventTime"    # J

    .prologue
    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method public onHwrTouchMove(IIJ)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "eventTime"    # J

    .prologue
    .line 130
    const/4 v0, 0x0

    return v0
.end method

.method public onHwrTouchUp(IIJ)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "eventTime"    # J

    .prologue
    .line 136
    const/4 v0, 0x0

    return v0
.end method

.method public onText(Ljava/lang/CharSequence;)V
    .locals 7
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 42
    const/4 v1, 0x0

    .line 43
    .local v1, "spell":Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 44
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_1

    .line 45
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getInputTransResult()Ljava/lang/CharSequence;

    move-result-object v1

    .line 46
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 47
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v2, v3, v4}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;Z)I

    .line 48
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 49
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 50
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v3, v4, v2}, Lcom/diotek/ime/framework/engine/InputEngineManager;->wordSelected(ILjava/lang/CharSequence;)I

    .line 51
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getInputTransResult()Ljava/lang/CharSequence;

    move-result-object v1

    .line 52
    invoke-interface {v0, v1, v5}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 53
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    .line 54
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2, v4}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    .line 55
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    .line 56
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2, v6, v4}, Lcom/diotek/ime/framework/common/InputManager;->updateSpellView(Ljava/lang/CharSequence;Z)V

    .line 57
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2, v6, v4}, Lcom/diotek/ime/framework/common/InputManager;->setPhoneticSpellLayout(Ljava/util/ArrayList;Z)V

    .line 58
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v3, "CHINESE_PHONETIC_SELECT_SPELL_INDEX"

    const/4 v4, -0x1

    invoke-interface {v2, v3, v4}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;I)V

    .line 61
    :cond_0
    invoke-virtual {p0, v5}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 62
    invoke-static {p1}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    .line 63
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 64
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 66
    :cond_1
    return-void
.end method

.method public pickSuggestionManually(ILjava/lang/CharSequence;)V
    .locals 10
    .param p1, "nIndex"    # I
    .param p2, "candidate"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v6, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 70
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 71
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v0, :cond_0

    .line 119
    :goto_0
    return-void

    .line 74
    :cond_0
    const/4 v3, 0x0

    .line 75
    .local v3, "spell":Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getInputTransResult()Ljava/lang/CharSequence;

    move-result-object v3

    .line 77
    const/4 v2, 0x0

    .line 78
    .local v2, "nRet":I
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v5, p1, p2}, Lcom/diotek/ime/framework/engine/InputEngineManager;->wordSelected(ILjava/lang/CharSequence;)I

    move-result v2

    .line 80
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 81
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getInputTransResult()Ljava/lang/CharSequence;

    move-result-object v3

    .line 82
    if-lez v2, :cond_1

    .line 83
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .local v4, "spellGroup":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v5, v4}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getPhoneticSpellGroup(Ljava/util/ArrayList;)I

    .line 85
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5, v4, v9}, Lcom/diotek/ime/framework/common/InputManager;->setPhoneticSpellLayout(Ljava/util/ArrayList;Z)V

    .line 86
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v6, "CHINESE_PHONETIC_SELECT_SPELL_INDEX"

    invoke-interface {v5, v6, v8}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;I)V

    .line 88
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    .line 89
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v5, v6}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    .line 90
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v5, v6}, Lcom/diotek/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    .line 91
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5, v3, v9}, Lcom/diotek/ime/framework/common/InputManager;->updateSpellView(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    .line 94
    .end local v4    # "spellGroup":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    :cond_1
    invoke-interface {v0, v3, v9}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 99
    :goto_1
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    .line 100
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5, v8}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    .line 101
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    .line 102
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5, v6, v8}, Lcom/diotek/ime/framework/common/InputManager;->updateSpellView(Ljava/lang/CharSequence;Z)V

    .line 103
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5, v6, v8}, Lcom/diotek/ime/framework/common/InputManager;->setPhoneticSpellLayout(Ljava/util/ArrayList;Z)V

    .line 104
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v6, "CHINESE_PHONETIC_SELECT_SPELL_INDEX"

    const/4 v7, -0x1

    invoke-interface {v5, v6, v7}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;I)V

    .line 105
    invoke-virtual {p0, v9}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setPredictionWord(Z)V

    .line 106
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->updateChineseFullStopCharacter()V

    .line 108
    if-eqz p2, :cond_4

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_4

    .line 109
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v5, p2, v6}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getPredictWord(Ljava/lang/CharSequence;Ljava/util/ArrayList;)I

    move-result v1

    .line 111
    .local v1, "nPredictWordNum":I
    if-lez v1, :cond_3

    .line 112
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v5, v6}, Lcom/diotek/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 96
    .end local v1    # "nPredictWordNum":I
    :cond_2
    invoke-interface {v0, p2, v9}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    goto :goto_1

    .line 114
    .restart local v1    # "nPredictWordNum":I
    :cond_3
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5, v8}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    goto/16 :goto_0

    .line 117
    .end local v1    # "nPredictWordNum":I
    :cond_4
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5, v8}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    goto/16 :goto_0
.end method

.method public previewTrace(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 306
    return-void
.end method

.method protected processSymbolicKey(I[I)V
    .locals 29
    .param p1, "keyCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    .line 412
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/engine/InputEngineManager;->cancelTrace()Z

    .line 413
    const/16 v2, 0xa

    move/from16 v0, p1

    if-ne v0, v2, :cond_1

    .line 414
    invoke-direct/range {p0 .. p0}, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadChineseInputModule;->processEnterKey()V

    .line 506
    :cond_0
    :goto_0
    return-void

    .line 416
    :cond_1
    const/16 v2, 0x20

    move/from16 v0, p1

    if-ne v0, v2, :cond_2

    .line 417
    invoke-direct/range {p0 .. p0}, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadChineseInputModule;->processSpaceKey()V

    goto :goto_0

    .line 419
    :cond_2
    const/4 v2, -0x5

    move/from16 v0, p1

    if-ne v0, v2, :cond_3

    .line 420
    invoke-direct/range {p0 .. p0}, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadChineseInputModule;->processBackSpaceKey()V

    goto :goto_0

    .line 422
    :cond_3
    const/16 v2, -0x3eb

    move/from16 v0, p1

    if-ne v0, v2, :cond_4

    .line 423
    invoke-direct/range {p0 .. p0}, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadChineseInputModule;->processForwardDelete()V

    goto :goto_0

    .line 425
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 426
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    .line 427
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v5, 0x0

    invoke-interface {v2, v5}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    .line 430
    :cond_5
    const/16 v26, 0x0

    .line 431
    .local v26, "spell":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getInputTransResult()Ljava/lang/CharSequence;

    move-result-object v26

    .line 432
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v23

    .line 433
    .local v23, "ic":Landroid/view/inputmethod/InputConnection;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isChineseStrokeModeOn()Z

    move-result v28

    .line 434
    .local v28, "strokeModeOn":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-interface {v2, v5, v6}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;Z)I

    .line 436
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v2, :cond_8

    if-eqz v23, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_8

    .line 437
    if-eqz v26, :cond_8

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_8

    .line 439
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

    move-result v25

    .line 440
    .local v25, "nRet":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getInputTransResult()Ljava/lang/CharSequence;

    move-result-object v26

    .line 441
    if-lez v25, :cond_7

    .line 442
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v2

    if-eqz v2, :cond_6

    if-nez v28, :cond_6

    .line 444
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 445
    .local v27, "spellGroup":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v0, v27

    invoke-interface {v2, v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getPhoneticSpellGroup(Ljava/util/ArrayList;)I

    .line 446
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v5, 0x1

    move-object/from16 v0, v27

    invoke-interface {v2, v0, v5}, Lcom/diotek/ime/framework/common/InputManager;->setPhoneticSpellLayout(Ljava/util/ArrayList;Z)V

    .line 447
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v5, "CHINESE_PHONETIC_SELECT_SPELL_INDEX"

    const/4 v6, 0x0

    invoke-interface {v2, v5, v6}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;I)V

    .line 450
    .end local v27    # "spellGroup":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v2, v5}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    .line 451
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v2, v5}, Lcom/diotek/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    .line 452
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v5, 0x1

    move-object/from16 v0, v26

    invoke-interface {v2, v0, v5}, Lcom/diotek/ime/framework/common/InputManager;->updateSpellView(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_0

    .line 456
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/CharSequence;

    .line 457
    .local v22, "candidate":Ljava/lang/CharSequence;
    const/4 v2, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 458
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    .line 459
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v5, 0x0

    invoke-interface {v2, v5}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    .line 460
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    .line 461
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v2, v5, v6}, Lcom/diotek/ime/framework/common/InputManager;->updateSpellView(Ljava/lang/CharSequence;Z)V

    .line 462
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v2, v5, v6}, Lcom/diotek/ime/framework/common/InputManager;->setPhoneticSpellLayout(Ljava/util/ArrayList;Z)V

    .line 463
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v5, "CHINESE_PHONETIC_SELECT_SPELL_INDEX"

    const/4 v6, -0x1

    invoke-interface {v2, v5, v6}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;I)V

    .line 465
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    move-object/from16 v0, v22

    invoke-interface {v2, v0, v5}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getPredictWord(Ljava/lang/CharSequence;Ljava/util/ArrayList;)I

    move-result v24

    .line 467
    .local v24, "nPredictWordNum":I
    if-lez v24, :cond_9

    .line 468
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v2, v5}, Lcom/diotek/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    .line 474
    .end local v22    # "candidate":Ljava/lang/CharSequence;
    .end local v24    # "nPredictWordNum":I
    .end local v25    # "nRet":I
    :cond_8
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isInMultiTapInput()Z

    move-result v21

    .line 475
    .local v21, "bIsInMultiTap":Z
    if-eqz v21, :cond_a

    .line 476
    invoke-virtual/range {p0 .. p2}, Lcom/diotek/ime/framework/input/AbstractInputModule;->processMultiTapSymbolicKey(I[I)V

    goto/16 :goto_0

    .line 470
    .end local v21    # "bIsInMultiTap":Z
    .restart local v22    # "candidate":Ljava/lang/CharSequence;
    .restart local v24    # "nPredictWordNum":I
    .restart local v25    # "nRet":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v5, 0x0

    invoke-interface {v2, v5}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    goto :goto_1

    .line 479
    .end local v22    # "candidate":Ljava/lang/CharSequence;
    .end local v24    # "nPredictWordNum":I
    .end local v25    # "nRet":I
    .restart local v21    # "bIsInMultiTap":Z
    :cond_a
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 480
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 481
    const/16 v2, 0x1a

    move/from16 v0, p1

    if-eq v0, v2, :cond_b

    .line 482
    move/from16 v0, p1

    int-to-char v2, v0

    invoke-static {v2}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    .line 484
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

    .line 487
    :cond_c
    add-int/lit8 v2, p1, -0x30

    add-int/lit8 v8, v2, 0x7

    .line 488
    .local v8, "code":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 489
    .local v3, "eventTime":J
    if-eqz v23, :cond_0

    .line 490
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

    .line 493
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

    .line 499
    .end local v3    # "eventTime":J
    .end local v8    # "code":I
    :cond_d
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 501
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-eqz v2, :cond_e

    .line 502
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSequence(Ljava/lang/StringBuilder;)V

    .line 503
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSuggestion()V

    .line 505
    :cond_e
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setPredictionWord(Z)V

    goto/16 :goto_0
.end method

.method public release()V
    .locals 0

    .prologue
    .line 142
    return-void
.end method

.method public setAddStrokeCallBackOnHWREngine()V
    .locals 0

    .prologue
    .line 751
    return-void
.end method

.method public updateVOHWRSuggestion()V
    .locals 0

    .prologue
    .line 755
    return-void
.end method
