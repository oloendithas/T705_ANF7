.class public Lcom/diotek/ime/framework/input/xt9/Xt9PhonepadChineseInputModule;
.super Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;
.source "Xt9PhonepadChineseInputModule.java"


# static fields
.field private static final cangjieKeyIndex:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x3

    .line 21
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

    sput-object v0, Lcom/diotek/ime/framework/input/xt9/Xt9PhonepadChineseInputModule;->cangjieKeyIndex:[[I

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
    .line 32
    invoke-direct {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;-><init>()V

    .line 33
    iget-object v0, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->setSuggestionActiveIndex(I)V

    .line 34
    return-void
.end method

.method private isEqualKeyIndex(I)Z
    .locals 7
    .param p1, "keyCode"    # I

    .prologue
    const/4 v6, -0x1

    .line 186
    const/4 v3, -0x1

    .line 187
    .local v3, "nLastKeyIndex":I
    const/4 v2, -0x1

    .line 189
    .local v2, "nCurKeyIndex":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v4, Lcom/diotek/ime/framework/input/xt9/Xt9PhonepadChineseInputModule;->cangjieKeyIndex:[[I

    array-length v4, v4

    if-ge v0, v4, :cond_4

    .line 190
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    sget-object v4, Lcom/diotek/ime/framework/input/xt9/Xt9PhonepadChineseInputModule;->cangjieKeyIndex:[[I

    aget-object v4, v4, v0

    array-length v4, v4

    if-ge v1, v4, :cond_2

    .line 191
    iget v4, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mLastKeyCode:I

    sget-object v5, Lcom/diotek/ime/framework/input/xt9/Xt9PhonepadChineseInputModule;->cangjieKeyIndex:[[I

    aget-object v5, v5, v0

    aget v5, v5, v1

    if-ne v4, v5, :cond_0

    .line 192
    move v3, v0

    .line 194
    :cond_0
    sget-object v4, Lcom/diotek/ime/framework/input/xt9/Xt9PhonepadChineseInputModule;->cangjieKeyIndex:[[I

    aget-object v4, v4, v0

    aget v4, v4, v1

    if-ne p1, v4, :cond_1

    .line 195
    move v2, v0

    .line 190
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 198
    :cond_2
    if-eq v3, v6, :cond_3

    if-ne v3, v2, :cond_3

    if-eq v2, v6, :cond_3

    .line 200
    const/4 v4, 0x1

    .line 206
    .end local v1    # "j":I
    :goto_2
    return v4

    .line 202
    .restart local v1    # "j":I
    :cond_3
    const/4 v3, -0x1

    .line 203
    const/4 v2, -0x1

    .line 189
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 206
    .end local v1    # "j":I
    :cond_4
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private processBackSpaceKey()V
    .locals 10

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 527
    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 528
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    const/4 v4, 0x0

    .line 529
    .local v4, "spell":Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getInputTransResult()Ljava/lang/CharSequence;

    move-result-object v4

    .line 530
    const/4 v0, 0x0

    .line 532
    .local v0, "bIsSpellViewShown":Z
    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v6}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->stopTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;)V

    .line 533
    const-string v2, ""

    .line 534
    .local v2, "lastChar":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 535
    invoke-interface {v1, v8, v9}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v2

    .end local v2    # "lastChar":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 536
    .restart local v2    # "lastChar":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 537
    const-string v2, ""

    .line 540
    :cond_0
    invoke-virtual {p0, v2}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->setDeleteCount(Ljava/lang/String;)V

    .line 541
    if-eqz v4, :cond_4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-lez v6, :cond_4

    .line 542
    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    const/4 v7, -0x5

    invoke-interface {v6, v7}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(I)I

    .line 543
    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getInputTransResult()Ljava/lang/CharSequence;

    move-result-object v4

    .line 544
    if-eqz v4, :cond_3

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-lez v6, :cond_3

    .line 545
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->clearCandidateList()V

    .line 546
    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v6, v7}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    .line 547
    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v6, v7}, Lcom/diotek/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    .line 548
    const/4 v0, 0x1

    .line 571
    :cond_1
    :goto_0
    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6, v4, v0}, Lcom/diotek/ime/framework/common/InputManager;->updateSpellView(Ljava/lang/CharSequence;Z)V

    .line 573
    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v3

    .line 574
    .local v3, "nInputRange":I
    if-nez v3, :cond_2

    .line 575
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 576
    .local v5, "spellGroup":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v6, v5}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getPhoneticSpellGroup(Ljava/util/ArrayList;)I

    .line 577
    if-eqz v5, :cond_7

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_7

    .line 578
    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v7, "CHINESE_PHONETIC_SELECT_SPELL_INDEX"

    invoke-interface {v6, v7, v9}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;I)V

    .line 579
    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6, v5, v8}, Lcom/diotek/ime/framework/common/InputManager;->setPhoneticSpellLayout(Ljava/util/ArrayList;Z)V

    .line 585
    .end local v5    # "spellGroup":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    :cond_2
    :goto_1
    return-void

    .line 550
    .end local v3    # "nInputRange":I
    :cond_3
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->clearCandidateList()V

    .line 551
    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6, v9}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    .line 552
    const/4 v0, 0x0

    goto :goto_0

    .line 555
    :cond_4
    invoke-virtual {p0, v8}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->finishComposing(Z)V

    .line 556
    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    .line 557
    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6, v9}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    .line 558
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->clearCandidateList()V

    goto :goto_0

    .line 560
    :cond_5
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->getDeleteCount()I

    move-result v6

    const/16 v7, 0x14

    if-le v6, v7, :cond_6

    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentPackageName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentPackageName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.sec.chaton"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 563
    if-eqz v1, :cond_1

    .line 564
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->getLastWordDividerIndex()I

    move-result v6

    invoke-interface {v1, v6, v9}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto :goto_0

    .line 567
    :cond_6
    const/16 v6, 0x43

    invoke-virtual {p0, v6}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->onKeyDownUpHandle(I)V

    goto :goto_0

    .line 581
    .restart local v3    # "nInputRange":I
    .restart local v5    # "spellGroup":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    :cond_7
    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v7, "CHINESE_PHONETIC_SELECT_SPELL_INDEX"

    const/4 v8, -0x1

    invoke-interface {v6, v7, v8}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;I)V

    .line 582
    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v7, 0x0

    invoke-interface {v6, v7, v9}, Lcom/diotek/ime/framework/common/InputManager;->setPhoneticSpellLayout(Ljava/util/ArrayList;Z)V

    goto :goto_1
.end method

.method private processEnterKey()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 496
    iget-object v3, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 497
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v0, :cond_0

    .line 524
    :goto_0
    return-void

    .line 500
    :cond_0
    const/4 v2, 0x0

    .line 501
    .local v2, "spell":Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getInputTransResult()Ljava/lang/CharSequence;

    move-result-object v2

    .line 503
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 504
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 506
    iget-object v3, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 508
    iget-object v3, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 509
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/diotek/ime/framework/input/xt9/Xt9PhonepadChineseInputModule;->removeDivChar([C)Ljava/lang/String;

    move-result-object v1

    .line 510
    .local v1, "phoneticSpell":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 511
    invoke-interface {v0, v1, v4}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 517
    .end local v1    # "phoneticSpell":Ljava/lang/String;
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    .line 518
    invoke-virtual {p0, v4}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->finishComposing(Z)V

    .line 519
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->clearCandidateList()V

    .line 520
    iget-object v3, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3, v6}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    .line 521
    iget-object v3, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3, v7, v6}, Lcom/diotek/ime/framework/common/InputManager;->updateSpellView(Ljava/lang/CharSequence;Z)V

    .line 522
    iget-object v3, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v4, "CHINESE_PHONETIC_SELECT_SPELL_INDEX"

    const/4 v5, -0x1

    invoke-interface {v3, v4, v5}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;I)V

    .line 523
    iget-object v3, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3, v7, v6}, Lcom/diotek/ime/framework/common/InputManager;->setPhoneticSpellLayout(Ljava/util/ArrayList;Z)V

    goto :goto_0

    .line 515
    :cond_2
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->sendEnterKeyHandle()V

    goto :goto_1
.end method

.method private processMultiTap(I[I)V
    .locals 9
    .param p1, "keyCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 210
    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v5}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->isTimerRunning(Lcom/diotek/ime/framework/input/InputModule$Timer;)Z

    move-result v1

    .line 211
    .local v1, "bIsTimerRunning":Z
    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v5}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->stopTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;)V

    .line 212
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/input/xt9/Xt9PhonepadChineseInputModule;->isEqualKeyIndex(I)Z

    move-result v0

    .line 213
    .local v0, "bIsEqualKey":Z
    const/4 v4, 0x0

    .line 214
    .local v4, "spell":Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getInputTransResult()Ljava/lang/CharSequence;

    move-result-object v4

    .line 216
    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 221
    :cond_1
    if-eqz v4, :cond_2

    .line 222
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->getCurrentChineseModeMaxLength()I

    move-result v6

    if-gt v5, v6, :cond_0

    .line 227
    :cond_2
    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gtz v5, :cond_4

    .line 228
    :cond_3
    if-eqz v1, :cond_7

    .line 235
    :cond_4
    :goto_1
    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->isInMultiTapInput()Z

    move-result v2

    .line 236
    .local v2, "isInMultiTap":Z
    if-eqz v2, :cond_5

    if-eqz v0, :cond_5

    .line 237
    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    const v6, 0xff01

    invoke-interface {v5, v6}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(I)I

    .line 240
    :cond_5
    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v6, v8}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTouchPoint(I)Landroid/graphics/PointF;

    move-result-object v6

    invoke-interface {v5, p1, v6}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(ILandroid/graphics/PointF;)I

    move-result v3

    .line 241
    .local v3, "nRet":I
    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getInputTransResult()Ljava/lang/CharSequence;

    move-result-object v4

    .line 242
    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v5, v6}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    .line 244
    if-gtz v3, :cond_6

    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_6

    if-nez v0, :cond_6

    if-nez v2, :cond_6

    .line 245
    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    const/4 v6, -0x5

    invoke-interface {v5, v6}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(I)I

    .line 248
    :cond_6
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->clearCandidateList()V

    .line 249
    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v5, v6}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    .line 250
    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v5, v6}, Lcom/diotek/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    .line 251
    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5, v7}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    .line 252
    if-eqz v4, :cond_8

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_8

    .line 253
    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5, v4, v7}, Lcom/diotek/ime/framework/common/InputManager;->updateSpellView(Ljava/lang/CharSequence;Z)V

    .line 257
    :goto_2
    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    const/16 v6, 0x5dc

    invoke-virtual {p0, v5, v6}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->startTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;I)V

    goto/16 :goto_0

    .line 231
    .end local v2    # "isInMultiTap":Z
    .end local v3    # "nRet":I
    :cond_7
    invoke-virtual {p0, v7}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->finishComposing(Z)V

    goto :goto_1

    .line 255
    .restart local v2    # "isInMultiTap":Z
    .restart local v3    # "nRet":I
    :cond_8
    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v6, 0x0

    invoke-interface {v5, v6, v8}, Lcom/diotek/ime/framework/common/InputManager;->updateSpellView(Ljava/lang/CharSequence;Z)V

    goto :goto_2
.end method

.method private processSingleTap(I[I)V
    .locals 13
    .param p1, "keyCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    const/4 v12, 0x0

    const/4 v11, -0x1

    const/4 v10, -0x5

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 261
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 262
    .local v3, "spellGroup":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isChineseStrokeModeOn()Z

    move-result v4

    .line 263
    .local v4, "strokeModeOn":Z
    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 264
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    const/4 v1, 0x0

    .line 266
    .local v1, "nRet":I
    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v5}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->isTimerRunning(Lcom/diotek/ime/framework/input/InputModule$Timer;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 267
    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v5}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->stopTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;)V

    .line 268
    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1

    .line 269
    :cond_0
    invoke-virtual {p0, v9}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->finishComposing(Z)V

    .line 273
    :cond_1
    const/4 v2, 0x0

    .line 274
    .local v2, "spell":Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getInputTransResult()Ljava/lang/CharSequence;

    move-result-object v2

    .line 276
    if-eqz v4, :cond_3

    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_3

    .line 337
    :cond_2
    :goto_0
    return-void

    .line 282
    :cond_3
    if-eqz v2, :cond_4

    .line 283
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->getCurrentChineseModeMaxLength()I

    move-result v6

    if-gt v5, v6, :cond_2

    .line 288
    :cond_4
    iget-boolean v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mIsTraceOn:Z

    if-eqz v5, :cond_a

    if-nez v4, :cond_a

    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v5

    const/4 v6, 0x2

    if-le v5, v6, :cond_a

    .line 289
    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    .line 290
    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-interface {v6, v8, v5}, Lcom/diotek/ime/framework/engine/InputEngineManager;->wordSelected(ILjava/lang/CharSequence;)I

    move-result v1

    .line 291
    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getInputTransResult()Ljava/lang/CharSequence;

    move-result-object v2

    .line 292
    if-nez v1, :cond_6

    if-eqz v0, :cond_6

    .line 293
    invoke-interface {v0, v2, v9}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 294
    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    .line 299
    :cond_5
    :goto_1
    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTracePoint()[Landroid/graphics/PointF;

    move-result-object v6

    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v7

    invoke-interface {v5, v6, v7, v11}, Lcom/diotek/ime/framework/engine/InputEngineManager;->processTrace([Landroid/graphics/PointF;IB)S

    move-result v5

    if-eqz v5, :cond_7

    .line 300
    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->clearTraceInfo()V

    goto :goto_0

    .line 296
    :cond_6
    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v5, v10}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(I)I

    goto :goto_1

    .line 303
    :cond_7
    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->clearTraceInfo()V

    .line 310
    :cond_8
    :goto_2
    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v5, v3}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getPhoneticSpellGroup(Ljava/util/ArrayList;)I

    .line 311
    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v5, v6}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    .line 313
    if-gtz v1, :cond_9

    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 314
    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v5, v10}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(I)I

    .line 317
    :cond_9
    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getInputTransResult()Ljava/lang/CharSequence;

    move-result-object v2

    .line 319
    if-eqz v3, :cond_b

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_b

    if-nez v4, :cond_b

    .line 321
    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v6, "CHINESE_PHONETIC_SELECT_SPELL_INDEX"

    invoke-interface {v5, v6, v8}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;I)V

    .line 322
    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5, v3, v9}, Lcom/diotek/ime/framework/common/InputManager;->setPhoneticSpellLayout(Ljava/util/ArrayList;Z)V

    .line 328
    :goto_3
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->clearCandidateList()V

    .line 329
    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v5, v6}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    .line 330
    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v5, v6}, Lcom/diotek/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    .line 332
    if-eqz v2, :cond_c

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_c

    .line 333
    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5, v2, v9}, Lcom/diotek/ime/framework/common/InputManager;->updateSpellView(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_0

    .line 305
    :cond_a
    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    if-eqz v5, :cond_8

    .line 306
    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v6, v8}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTouchPoint(I)Landroid/graphics/PointF;

    move-result-object v6

    invoke-interface {v5, p1, v6}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(ILandroid/graphics/PointF;)I

    move-result v1

    goto :goto_2

    .line 324
    :cond_b
    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v6, "CHINESE_PHONETIC_SELECT_SPELL_INDEX"

    invoke-interface {v5, v6, v11}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;I)V

    .line 325
    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5, v12, v8}, Lcom/diotek/ime/framework/common/InputManager;->setPhoneticSpellLayout(Ljava/util/ArrayList;Z)V

    goto :goto_3

    .line 335
    :cond_c
    iget-object v5, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5, v12, v8}, Lcom/diotek/ime/framework/common/InputManager;->updateSpellView(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_0
.end method

.method private processSpaceKey()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 437
    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 438
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isChineseStrokeModeOn()Z

    move-result v6

    .line 439
    .local v6, "strokeModeOn":Z
    const/4 v4, 0x0

    .line 440
    .local v4, "spell":Ljava/lang/CharSequence;
    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getInputTransResult()Ljava/lang/CharSequence;

    move-result-object v4

    .line 442
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_7

    .line 443
    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-gtz v7, :cond_1

    .line 444
    iget v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputLanguage:I

    const v8, 0x7a68484b

    if-eq v7, v8, :cond_0

    if-eqz v1, :cond_0

    .line 445
    invoke-interface {v1, v4, v9}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 447
    :cond_0
    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    .line 493
    :goto_0
    return-void

    .line 450
    :cond_1
    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v8, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v7, v8}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    .line 451
    iget-object v8, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-interface {v8, v10, v7}, Lcom/diotek/ime/framework/engine/InputEngineManager;->wordSelected(ILjava/lang/CharSequence;)I

    move-result v3

    .line 452
    .local v3, "nRet":I
    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getInputTransResult()Ljava/lang/CharSequence;

    move-result-object v4

    .line 453
    if-lez v3, :cond_4

    .line 454
    iget v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputLanguage:I

    const v8, 0x7a68434e

    if-eq v7, v8, :cond_2

    iget v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputLanguage:I

    const v8, 0x7a685457

    if-ne v7, v8, :cond_3

    :cond_2
    if-nez v6, :cond_3

    .line 456
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 457
    .local v5, "spellGroup":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v7, v5}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getPhoneticSpellGroup(Ljava/util/ArrayList;)I

    .line 458
    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7, v5, v9}, Lcom/diotek/ime/framework/common/InputManager;->setPhoneticSpellLayout(Ljava/util/ArrayList;Z)V

    .line 459
    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v8, "CHINESE_PHONETIC_SELECT_SPELL_INDEX"

    invoke-interface {v7, v8, v10}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;I)V

    .line 462
    .end local v5    # "spellGroup":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    :cond_3
    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v8, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v7, v8}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    .line 463
    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v8, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v7, v8}, Lcom/diotek/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    .line 464
    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7, v4, v9}, Lcom/diotek/ime/framework/common/InputManager;->updateSpellView(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    .line 468
    :cond_4
    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 469
    .local v0, "candidate":Ljava/lang/CharSequence;
    if-eqz v1, :cond_5

    .line 470
    invoke-interface {v1, v4, v9}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 472
    :cond_5
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->clearCandidateList()V

    .line 473
    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7, v10}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    .line 474
    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    .line 475
    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7, v11, v10}, Lcom/diotek/ime/framework/common/InputManager;->updateSpellView(Ljava/lang/CharSequence;Z)V

    .line 476
    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7, v11, v10}, Lcom/diotek/ime/framework/common/InputManager;->setPhoneticSpellLayout(Ljava/util/ArrayList;Z)V

    .line 477
    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v8, "CHINESE_PHONETIC_SELECT_SPELL_INDEX"

    const/4 v9, -0x1

    invoke-interface {v7, v8, v9}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;I)V

    .line 479
    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v8, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v7, v0, v8}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getPredictWord(Ljava/lang/CharSequence;Ljava/util/ArrayList;)I

    move-result v2

    .line 481
    .local v2, "nPredictWordNum":I
    if-lez v2, :cond_6

    .line 482
    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v8, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v7, v8}, Lcom/diotek/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 484
    :cond_6
    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7, v10}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    goto/16 :goto_0

    .line 487
    .end local v0    # "candidate":Ljava/lang/CharSequence;
    .end local v2    # "nPredictWordNum":I
    .end local v3    # "nRet":I
    :cond_7
    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    .line 488
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->clearCandidateList()V

    .line 489
    invoke-virtual {p0, v9}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->finishComposing(Z)V

    .line 490
    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7, v10}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    .line 491
    const/16 v7, 0x3e

    invoke-virtual {p0, v7}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->onKeyDownUpHandle(I)V

    goto/16 :goto_0
.end method

.method private removeDivChar([C)Ljava/lang/String;
    .locals 6
    .param p1, "array"    # [C

    .prologue
    .line 422
    const/4 v4, 0x0

    .line 423
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

    .line 424
    .local v1, "i":C
    const/16 v5, 0x27

    if-eq v1, v5, :cond_0

    .line 425
    if-nez v4, :cond_1

    .line 426
    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    .line 423
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 428
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

    .line 433
    .end local v1    # "i":C
    :cond_2
    return-object v4
.end method


# virtual methods
.method public closing()V
    .locals 0

    .prologue
    .line 144
    return-void
.end method

.method public initCandidates(Ljava/util/ArrayList;)V
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
    .line 624
    .local p1, "defaultCandidateList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    iget-object v0, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesDelayed(Ljava/util/ArrayList;I)V

    .line 625
    return-void
.end method

.method public isPredictionWord()Z
    .locals 1

    .prologue
    .line 601
    const/4 v0, 0x0

    return v0
.end method

.method public onCharacterKey(I[I)V
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    const/16 v4, -0x7a

    .line 148
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v0

    .line 149
    .local v0, "nInputMethod":I
    iget-object v2, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isChineseStrokeModeOn()Z

    move-result v1

    .line 153
    .local v1, "strokeModeOn":Z
    iget-object v2, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isChineseSpellText()Z

    move-result v2

    if-eqz v2, :cond_0

    if-ne p1, v4, :cond_0

    .line 154
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getSyllableDelimiter()I

    move-result p1

    .line 157
    :cond_0
    iget-object v2, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v2, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->isTextCharacter(I)Z

    move-result v2

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mIsTraceOn:Z

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_9

    .line 159
    :cond_1
    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    iget v2, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputLanguage:I

    const v3, 0x7a68484b

    if-ne v2, v3, :cond_3

    :cond_2
    if-eqz v1, :cond_5

    .line 161
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/input/xt9/Xt9PhonepadChineseInputModule;->processSingleTap(I[I)V

    .line 162
    if-nez v1, :cond_4

    .line 163
    iget-object v2, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2, v4}, Lcom/diotek/ime/framework/common/InputManager;->invalidateKey(I)V

    .line 182
    :cond_4
    :goto_0
    iput p1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mLastKeyCode:I

    .line 183
    return-void

    .line 165
    :cond_5
    const/16 v2, 0x8

    if-ne v0, v2, :cond_6

    iget-object v2, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v2

    if-nez v2, :cond_7

    :cond_6
    if-eqz v1, :cond_8

    .line 168
    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/input/xt9/Xt9PhonepadChineseInputModule;->processSingleTap(I[I)V

    .line 169
    if-nez v1, :cond_4

    .line 170
    iget-object v2, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2, v4}, Lcom/diotek/ime/framework/common/InputManager;->invalidateKey(I)V

    goto :goto_0

    .line 173
    :cond_8
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/input/xt9/Xt9PhonepadChineseInputModule;->processMultiTap(I[I)V

    goto :goto_0

    .line 176
    :cond_9
    invoke-virtual {p0, p1, p2}, Lcom/diotek/ime/framework/input/xt9/Xt9PhonepadChineseInputModule;->processSymbolicKey(I[I)V

    .line 177
    iget-object v2, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isChineseSpellText()Z

    move-result v2

    if-nez v2, :cond_4

    if-nez v1, :cond_4

    .line 178
    iget-object v2, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2, v4}, Lcom/diotek/ime/framework/common/InputManager;->invalidateKey(I)V

    goto :goto_0
.end method

.method public onHwrPanelLongPressed(ILjava/lang/String;)V
    .locals 0
    .param p1, "selectedArrayIndex"    # I
    .param p2, "resultString"    # Ljava/lang/String;

    .prologue
    .line 592
    return-void
.end method

.method public onHwrTouchDown(IIJ)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "eventTime"    # J

    .prologue
    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public onHwrTouchMove(IIJ)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "eventTime"    # J

    .prologue
    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method public onHwrTouchUp(IIJ)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "eventTime"    # J

    .prologue
    .line 134
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

    .line 38
    const/4 v1, 0x0

    .line 39
    .local v1, "spell":Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 40
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_1

    .line 41
    iget-object v2, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getInputTransResult()Ljava/lang/CharSequence;

    move-result-object v1

    .line 42
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 43
    iget-object v2, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v3, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v2, v3}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    .line 44
    iget-object v2, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 45
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 46
    iget-object v3, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v2, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v3, v4, v2}, Lcom/diotek/ime/framework/engine/InputEngineManager;->wordSelected(ILjava/lang/CharSequence;)I

    .line 47
    iget-object v2, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getInputTransResult()Ljava/lang/CharSequence;

    move-result-object v1

    .line 48
    invoke-interface {v0, v1, v5}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 49
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->clearCandidateList()V

    .line 50
    iget-object v2, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2, v4}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    .line 51
    iget-object v2, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    .line 52
    iget-object v2, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2, v6, v4}, Lcom/diotek/ime/framework/common/InputManager;->updateSpellView(Ljava/lang/CharSequence;Z)V

    .line 53
    iget-object v2, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2, v6, v4}, Lcom/diotek/ime/framework/common/InputManager;->setPhoneticSpellLayout(Ljava/util/ArrayList;Z)V

    .line 54
    iget-object v2, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v3, "CHINESE_PHONETIC_SELECT_SPELL_INDEX"

    const/4 v4, -0x1

    invoke-interface {v2, v3, v4}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;I)V

    .line 57
    :cond_0
    invoke-virtual {p0, v5}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->finishComposing(Z)V

    .line 58
    invoke-static {p1}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    .line 59
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 60
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 62
    :cond_1
    return-void
.end method

.method public pickSuggestionManually(ILjava/lang/CharSequence;)V
    .locals 10
    .param p1, "nIndex"    # I
    .param p2, "candidate"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 66
    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 67
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v0, :cond_0

    .line 117
    :goto_0
    return-void

    .line 70
    :cond_0
    const/4 v3, 0x0

    .line 71
    .local v3, "spell":Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getInputTransResult()Ljava/lang/CharSequence;

    move-result-object v3

    .line 73
    const/4 v2, 0x0

    .line 74
    .local v2, "nRet":I
    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v6, p1, p2}, Lcom/diotek/ime/framework/engine/InputEngineManager;->wordSelected(ILjava/lang/CharSequence;)I

    move-result v2

    .line 76
    if-eqz v3, :cond_4

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-lez v6, :cond_4

    .line 77
    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getInputTransResult()Ljava/lang/CharSequence;

    move-result-object v3

    .line 78
    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isChineseStrokeModeOn()Z

    move-result v5

    .line 79
    .local v5, "strokeModeOn":Z
    if-lez v2, :cond_3

    .line 80
    iget v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputLanguage:I

    const v7, 0x7a68434e

    if-eq v6, v7, :cond_1

    iget v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputLanguage:I

    const v7, 0x7a685457

    if-ne v6, v7, :cond_2

    :cond_1
    if-nez v5, :cond_2

    .line 82
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .local v4, "spellGroup":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v6, v4}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getPhoneticSpellGroup(Ljava/util/ArrayList;)I

    .line 84
    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6, v4, v8}, Lcom/diotek/ime/framework/common/InputManager;->setPhoneticSpellLayout(Ljava/util/ArrayList;Z)V

    .line 85
    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v7, "CHINESE_PHONETIC_SELECT_SPELL_INDEX"

    invoke-interface {v6, v7, v9}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;I)V

    .line 88
    .end local v4    # "spellGroup":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    :cond_2
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->clearCandidateList()V

    .line 89
    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v6, v7}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    .line 90
    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v6, v7}, Lcom/diotek/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    .line 91
    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6, v3, v8}, Lcom/diotek/ime/framework/common/InputManager;->updateSpellView(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    .line 94
    :cond_3
    invoke-interface {v0, v3, v8}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 99
    .end local v5    # "strokeModeOn":Z
    :goto_1
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->clearCandidateList()V

    .line 100
    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6, v9}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    .line 101
    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    .line 102
    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6, v7, v9}, Lcom/diotek/ime/framework/common/InputManager;->updateSpellView(Ljava/lang/CharSequence;Z)V

    .line 103
    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6, v7, v9}, Lcom/diotek/ime/framework/common/InputManager;->setPhoneticSpellLayout(Ljava/util/ArrayList;Z)V

    .line 104
    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v7, "CHINESE_PHONETIC_SELECT_SPELL_INDEX"

    const/4 v8, -0x1

    invoke-interface {v6, v7, v8}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;I)V

    .line 106
    if-eqz p2, :cond_6

    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {p2, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-interface {v6, v7}, Lcom/diotek/ime/framework/engine/InputEngineManager;->isTextCharacter(I)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 107
    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v6, p2, v7}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getPredictWord(Ljava/lang/CharSequence;Ljava/util/ArrayList;)I

    move-result v1

    .line 109
    .local v1, "nPredictWordNum":I
    if-lez v1, :cond_5

    .line 110
    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v7, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v6, v7}, Lcom/diotek/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 96
    .end local v1    # "nPredictWordNum":I
    :cond_4
    invoke-interface {v0, p2, v8}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    goto :goto_1

    .line 112
    .restart local v1    # "nPredictWordNum":I
    :cond_5
    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6, v9}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    goto/16 :goto_0

    .line 115
    .end local v1    # "nPredictWordNum":I
    :cond_6
    iget-object v6, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6, v9}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    goto/16 :goto_0
.end method

.method public predictionWord()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 606
    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->isEnableDefaultCandidateview()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 607
    iget-object v0, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/common/InputManager;->setCandidateviewStatus(I)V

    .line 609
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0, v2}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    .line 610
    return v2
.end method

.method public predictionWordStartInputViewContinue()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 615
    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->isEnableDefaultCandidateview()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 616
    iget-object v0, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/common/InputManager;->setCandidateviewStatus(I)V

    .line 618
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0, v2}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    .line 619
    return v2
.end method

.method protected processSymbolicKey(I[I)V
    .locals 13
    .param p1, "keyCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    const/4 v10, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 351
    const/16 v8, 0xa

    if-ne p1, v8, :cond_0

    .line 352
    invoke-direct {p0}, Lcom/diotek/ime/framework/input/xt9/Xt9PhonepadChineseInputModule;->processEnterKey()V

    .line 419
    :goto_0
    return-void

    .line 354
    :cond_0
    const/16 v8, 0x20

    if-ne p1, v8, :cond_1

    .line 355
    invoke-direct {p0}, Lcom/diotek/ime/framework/input/xt9/Xt9PhonepadChineseInputModule;->processSpaceKey()V

    goto :goto_0

    .line 357
    :cond_1
    const/4 v8, -0x5

    if-ne p1, v8, :cond_2

    .line 358
    invoke-direct {p0}, Lcom/diotek/ime/framework/input/xt9/Xt9PhonepadChineseInputModule;->processBackSpaceKey()V

    goto :goto_0

    .line 360
    :cond_2
    iget-object v8, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_3

    .line 361
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->clearCandidateList()V

    .line 362
    iget-object v8, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8, v11}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    .line 365
    :cond_3
    const/4 v5, 0x0

    .line 366
    .local v5, "spell":Ljava/lang/CharSequence;
    iget-object v8, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getInputTransResult()Ljava/lang/CharSequence;

    move-result-object v5

    .line 367
    iget-object v8, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    .line 368
    .local v2, "ic":Landroid/view/inputmethod/InputConnection;
    iget-object v8, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v8}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isChineseStrokeModeOn()Z

    move-result v7

    .line 369
    .local v7, "strokeModeOn":Z
    iget-object v8, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v9, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v8, v9}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    .line 371
    iget-object v8, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_8

    .line 372
    if-eqz v5, :cond_8

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_8

    .line 374
    iget-object v9, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v8, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    invoke-interface {v9, v11, v8}, Lcom/diotek/ime/framework/engine/InputEngineManager;->wordSelected(ILjava/lang/CharSequence;)I

    move-result v4

    .line 375
    .local v4, "nRet":I
    iget-object v8, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getInputTransResult()Ljava/lang/CharSequence;

    move-result-object v5

    .line 376
    if-lez v4, :cond_6

    .line 377
    iget v8, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputLanguage:I

    const v9, 0x7a68434e

    if-eq v8, v9, :cond_4

    iget v8, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputLanguage:I

    const v9, 0x7a685457

    if-ne v8, v9, :cond_5

    :cond_4
    if-nez v7, :cond_5

    .line 379
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 380
    .local v6, "spellGroup":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    iget-object v8, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v8, v6}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getPhoneticSpellGroup(Ljava/util/ArrayList;)I

    .line 381
    iget-object v8, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8, v6, v12}, Lcom/diotek/ime/framework/common/InputManager;->setPhoneticSpellLayout(Ljava/util/ArrayList;Z)V

    .line 382
    iget-object v8, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v9, "CHINESE_PHONETIC_SELECT_SPELL_INDEX"

    invoke-interface {v8, v9, v11}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;I)V

    .line 385
    .end local v6    # "spellGroup":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    :cond_5
    iget-object v8, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v9, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v8, v9}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    .line 386
    iget-object v8, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v9, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v8, v9}, Lcom/diotek/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    .line 387
    iget-object v8, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8, v5, v12}, Lcom/diotek/ime/framework/common/InputManager;->updateSpellView(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_0

    .line 391
    :cond_6
    iget-object v8, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 392
    .local v1, "candidate":Ljava/lang/CharSequence;
    if-eqz v2, :cond_7

    .line 393
    invoke-interface {v2, v5, v12}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 395
    :cond_7
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->clearCandidateList()V

    .line 396
    iget-object v8, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8, v11}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    .line 397
    iget-object v8, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    .line 398
    iget-object v8, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8, v10, v11}, Lcom/diotek/ime/framework/common/InputManager;->updateSpellView(Ljava/lang/CharSequence;Z)V

    .line 399
    iget-object v8, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8, v10, v11}, Lcom/diotek/ime/framework/common/InputManager;->setPhoneticSpellLayout(Ljava/util/ArrayList;Z)V

    .line 400
    iget-object v8, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v9, "CHINESE_PHONETIC_SELECT_SPELL_INDEX"

    const/4 v10, -0x1

    invoke-interface {v8, v9, v10}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;I)V

    .line 402
    iget-object v8, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v9, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v8, v1, v9}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getPredictWord(Ljava/lang/CharSequence;Ljava/util/ArrayList;)I

    move-result v3

    .line 404
    .local v3, "nPredictWordNum":I
    if-lez v3, :cond_9

    .line 405
    iget-object v8, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v9, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v8, v9}, Lcom/diotek/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    .line 411
    .end local v1    # "candidate":Ljava/lang/CharSequence;
    .end local v3    # "nPredictWordNum":I
    .end local v4    # "nRet":I
    :cond_8
    :goto_1
    iget-object v8, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->isInMultiTapInput()Z

    move-result v0

    .line 412
    .local v0, "bIsInMultiTap":Z
    if-eqz v0, :cond_a

    .line 413
    invoke-virtual {p0, p1, p2}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->processMultiTapSymbolicKey(I[I)V

    goto/16 :goto_0

    .line 407
    .end local v0    # "bIsInMultiTap":Z
    .restart local v1    # "candidate":Ljava/lang/CharSequence;
    .restart local v3    # "nPredictWordNum":I
    .restart local v4    # "nRet":I
    :cond_9
    iget-object v8, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8, v11}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    goto :goto_1

    .line 416
    .end local v1    # "candidate":Ljava/lang/CharSequence;
    .end local v3    # "nPredictWordNum":I
    .end local v4    # "nRet":I
    .restart local v0    # "bIsInMultiTap":Z
    :cond_a
    invoke-virtual {p0, v12}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->finishComposing(Z)V

    .line 417
    int-to-char v8, p1

    invoke-static {v8}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(C)V

    .line 418
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public release()V
    .locals 0

    .prologue
    .line 140
    return-void
.end method

.method public setAddStrokeCallBackOnHWREngine()V
    .locals 0

    .prologue
    .line 597
    return-void
.end method

.method public updateVOHWRSuggestion()V
    .locals 0

    .prologue
    .line 631
    return-void
.end method
