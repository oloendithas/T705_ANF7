.class public Lcom/diotek/ime/framework/input/QwertyLatinInputModule;
.super Lcom/diotek/ime/framework/input/AbstractInputModule;
.source "QwertyLatinInputModule.java"


# instance fields
.field private deleteCountInRepeatKey:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;-><init>()V

    .line 33
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/input/QwertyLatinInputModule;->deleteCountInRepeatKey:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 35
    return-void
.end method

.method private isLetterFrontOfCursor()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 182
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 183
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v1, :cond_1

    .line 192
    :cond_0
    :goto_0
    return v2

    .line 187
    :cond_1
    const/4 v3, 0x1

    invoke-interface {v1, v3, v2}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 188
    .local v0, "frontString":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 192
    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    goto :goto_0
.end method

.method private processBackSpaceKey()V
    .locals 11

    .prologue
    .line 848
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getXt9Version()I

    move-result v9

    if-eqz v9, :cond_1

    .line 849
    invoke-direct {p0}, Lcom/diotek/ime/framework/input/QwertyLatinInputModule;->processBackSpaceKey_9()V

    .line 976
    :cond_0
    :goto_0
    return-void

    .line 852
    :cond_1
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v3

    .line 853
    .local v3, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v3, :cond_0

    .line 857
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    .line 858
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v9, v10}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    .line 859
    const/4 v9, 0x1

    new-array v1, v9, [I

    .line 860
    .local v1, "activeIndex":[I
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v9}, Lcom/diotek/ime/framework/input/AbstractInputModule;->stopTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;)V

    .line 862
    const-string v6, ""

    .line 863
    .local v6, "lastChar":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 864
    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-interface {v3, v9, v10}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v6

    .end local v6    # "lastChar":Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .line 865
    .restart local v6    # "lastChar":Ljava/lang/String;
    if-nez v6, :cond_2

    const-string v6, ""

    .line 867
    :cond_2
    invoke-virtual {p0, v6}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setDeleteCount(Ljava/lang/String;)V

    .line 868
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->resetPredictionWord()V

    .line 869
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->getSelectedNumOfText()I

    move-result v8

    .line 870
    .local v8, "selectedText":I
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_8

    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_8

    iget v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mStateCandidate:I

    const/4 v10, 0x1

    if-eq v9, v10, :cond_8

    .line 872
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_6

    .line 873
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    const/4 v10, -0x5

    invoke-interface {v9, v10}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(I)I

    move-result v9

    if-eqz v9, :cond_3

    if-lez v8, :cond_5

    .line 875
    :cond_3
    iget-boolean v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-eqz v9, :cond_4

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->isRecapture()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 876
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 877
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initComposingBuffer()V

    .line 878
    const/4 v9, -0x5

    invoke-virtual {p0, v9}, Lcom/diotek/ime/framework/input/AbstractInputModule;->processReCaptureForXT9(I)V

    .line 879
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    const/4 v10, -0x5

    invoke-interface {v9, v10}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(I)I

    .line 880
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v9, v10}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getCharSequence(Ljava/lang/StringBuilder;)I

    .line 892
    :goto_1
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setComposingText()V

    .line 893
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v9, v10}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputCharSequence(Ljava/lang/CharSequence;)I

    .line 894
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 895
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v9, v10}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    .line 896
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v9, v1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getActiveIndex([I)I

    .line 897
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v9, v10}, Lcom/diotek/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 882
    :cond_4
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 883
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initComposingBuffer()V

    .line 884
    const/16 v9, 0x43

    invoke-virtual {p0, v9}, Lcom/diotek/ime/framework/input/AbstractInputModule;->onKeyDownUpHandle(I)V

    goto :goto_1

    .line 887
    :cond_5
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v9, v10}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getCharSequence(Ljava/lang/StringBuilder;)I

    goto :goto_1

    .line 898
    :cond_6
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 902
    const/16 v9, 0x43

    invoke-virtual {p0, v9}, Lcom/diotek/ime/framework/input/AbstractInputModule;->onKeyDownUpHandle(I)V

    .line 903
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 904
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->postRecaptureWordXT9Message()V

    goto/16 :goto_0

    .line 906
    :cond_7
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 907
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/diotek/ime/framework/input/AbstractInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 908
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 909
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v9, v10}, Lcom/diotek/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    .line 910
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    const/4 v10, -0x1

    invoke-interface {v9, v10}, Lcom/diotek/ime/framework/engine/InputEngineManager;->setSuggestionActiveIndex(I)V

    goto/16 :goto_0

    .line 913
    :cond_8
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isAutoCompletitionInput()Z

    move-result v4

    .line 914
    .local v4, "isCompletionOn":Z
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v5

    .line 915
    .local v5, "isLandscape":Z
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->getCompletions()[Landroid/view/inputmethod/CompletionInfo;

    move-result-object v2

    .line 916
    .local v2, "completions":[Landroid/view/inputmethod/CompletionInfo;
    if-eqz v4, :cond_b

    if-eqz v5, :cond_b

    if-eqz v2, :cond_b

    .line 917
    if-eqz v3, :cond_9

    .line 918
    invoke-interface {v3}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 920
    :cond_9
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 921
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getDeleteCount()I

    move-result v9

    const/16 v10, 0x14

    if-le v9, v10, :cond_a

    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentPackageName()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_a

    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentPackageName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "com.sec.chaton"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_a

    .line 925
    if-eqz v3, :cond_0

    .line 926
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getLastWordDividerIndex()I

    move-result v9

    const/4 v10, 0x0

    invoke-interface {v3, v9, v10}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto/16 :goto_0

    .line 929
    :cond_a
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initWordDividerIndexList()V

    .line 930
    const/16 v9, 0x43

    invoke-virtual {p0, v9}, Lcom/diotek/ime/framework/input/AbstractInputModule;->onKeyDownUpHandle(I)V

    goto/16 :goto_0

    .line 933
    :cond_b
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v9

    if-eqz v9, :cond_c

    .line 935
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v9}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isVietnameseTelexEnable()Z

    move-result v9

    if-eqz v9, :cond_e

    .line 937
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-static {v9}, Lcom/diotek/ime/framework/input/ComposingTextManager;->deleteCharAt(I)V

    .line 946
    :cond_c
    :goto_2
    iget v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputLanguage:I

    const/high16 v10, 0x76690000

    if-ne v9, v10, :cond_d

    .line 947
    if-eqz v6, :cond_d

    .line 948
    invoke-static {v6}, Lcom/diotek/ime/framework/common/InputSequenceCheck;->normalizedNFD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 949
    .local v7, "nonNormalizedChar":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_d

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v7, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Lcom/diotek/ime/framework/common/InputSequenceCheck;->isVietameseTone(I)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 953
    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-interface {v3, v9, v10}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 954
    invoke-static {v7}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    .line 955
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x1

    invoke-interface {v3, v9, v10}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 956
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 960
    .end local v7    # "nonNormalizedChar":Ljava/lang/String;
    :cond_d
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    const/4 v10, -0x5

    invoke-interface {v9, v10}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(I)I

    .line 961
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentPackageName()Ljava/lang/String;

    move-result-object v0

    .line 962
    .local v0, "PACKAGE_NAME":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getDeleteCount()I

    move-result v9

    const/16 v10, 0x14

    if-le v9, v10, :cond_f

    if-eqz v0, :cond_f

    const-string v9, "com.sec.chaton"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_f

    .line 966
    if-eqz v3, :cond_0

    .line 967
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getLastWordDividerIndex()I

    move-result v9

    const/4 v10, 0x0

    invoke-interface {v3, v9, v10}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto/16 :goto_0

    .line 940
    .end local v0    # "PACKAGE_NAME":Ljava/lang/String;
    :cond_e
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposingWithoutInit()V

    .line 941
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    goto :goto_2

    .line 970
    .restart local v0    # "PACKAGE_NAME":Ljava/lang/String;
    :cond_f
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initWordDividerIndexList()V

    .line 971
    const/16 v9, 0x43

    invoke-virtual {p0, v9}, Lcom/diotek/ime/framework/input/AbstractInputModule;->onKeyDownUpHandle(I)V

    goto/16 :goto_0
.end method

.method private processBackSpaceKey_9()V
    .locals 22

    .prologue
    .line 979
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v8

    .line 980
    .local v8, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v8, :cond_1

    .line 1148
    :cond_0
    :goto_0
    return-void

    .line 984
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    .line 985
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-interface/range {v19 .. v20}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    .line 986
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v2, v0, [I

    .line 987
    .local v2, "activeIndex":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->stopTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;)V

    .line 989
    const-string v12, ""

    .line 993
    .local v12, "lastChar":Ljava/lang/String;
    const/16 v18, 0x0

    .line 994
    .local v18, "ss":Landroid/text/SpannableString;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    move/from16 v19, v0

    if-eqz v19, :cond_8

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v19

    if-eqz v19, :cond_8

    .line 996
    const v19, 0x7fffffff

    const/16 v20, 0x1

    :try_start_0
    move/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v8, v0, v1}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v19

    move-object/from16 v0, v19

    check-cast v0, Landroid/text/SpannableString;

    move-object/from16 v18, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1000
    :goto_1
    if-eqz v18, :cond_3

    .line 1001
    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v18}, Landroid/text/SpannableString;->length()I

    move-result v20

    const-class v21, Ljava/lang/Object;

    invoke-virtual/range {v18 .. v21}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v16

    .line 1002
    .local v16, "sp":[Ljava/lang/Object;
    move-object/from16 v3, v16

    .local v3, "arr$":[Ljava/lang/Object;
    array-length v13, v3

    .local v13, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_2
    if-ge v7, v13, :cond_3

    aget-object v17, v3, v7

    .line 1003
    .local v17, "span":Ljava/lang/Object;
    move-object/from16 v0, v17

    instance-of v0, v0, Landroid/text/style/UnderlineSpan;

    move/from16 v19, v0

    if-eqz v19, :cond_2

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v19

    invoke-virtual/range {v18 .. v18}, Landroid/text/SpannableString;->length()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    .line 1004
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/SpannableString;->getSpanStart(Ljava/lang/Object;)I

    move-result v19

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v8, v0, v1}, Landroid/view/inputmethod/InputConnection;->setComposingRegion(II)Z

    .line 1002
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 997
    .end local v3    # "arr$":[Ljava/lang/Object;
    .end local v7    # "i$":I
    .end local v13    # "len$":I
    .end local v16    # "sp":[Ljava/lang/Object;
    .end local v17    # "span":Ljava/lang/Object;
    :catch_0
    move-exception v6

    .line 998
    .local v6, "e":Ljava/lang/ClassCastException;
    const/16 v19, 0x1

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v8, v0, v1}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v12

    .end local v12    # "lastChar":Ljava/lang/String;
    check-cast v12, Ljava/lang/String;

    .restart local v12    # "lastChar":Ljava/lang/String;
    goto :goto_1

    .line 1008
    .end local v6    # "e":Ljava/lang/ClassCastException;
    :cond_3
    const-string v19, ""

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4

    if-eqz v18, :cond_4

    invoke-virtual/range {v18 .. v18}, Landroid/text/SpannableString;->length()I

    move-result v19

    if-lez v19, :cond_4

    .line 1009
    invoke-virtual/range {v18 .. v18}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v18}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 1015
    :cond_4
    :goto_3
    if-nez v12, :cond_5

    const-string v12, ""

    .line 1016
    :cond_5
    const/16 v18, 0x0

    .line 1018
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/diotek/ime/framework/common/InputManager;->isInRepeatKey()Z

    move-result v10

    .line 1019
    .local v10, "isInRepeatKey":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setDeleteCount(Ljava/lang/String;)V

    .line 1020
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->resetPredictionWord()V

    .line 1021
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    if-eqz v19, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-lez v19, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    if-eqz v19, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mStateCandidate:I

    move/from16 v19, v0

    if-nez v19, :cond_e

    .line 1023
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_c

    .line 1024
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v19, v0

    const/16 v20, -0x5

    invoke-interface/range {v19 .. v20}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(I)I

    move-result v19

    if-eqz v19, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->isBeforeTraceInput()Z

    move-result v19

    if-eqz v19, :cond_a

    .line 1025
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    move/from16 v19, v0

    if-eqz v19, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->isRecapture()Z

    move-result v19

    if-eqz v19, :cond_9

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v19

    if-eqz v19, :cond_9

    .line 1026
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 1027
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initComposingBuffer()V

    .line 1028
    const/16 v19, -0x5

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->processReCaptureForXT9(I)V

    .line 1029
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v19, v0

    const/16 v20, -0x5

    invoke-interface/range {v19 .. v20}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(I)I

    .line 1030
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v19, v0

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getCharSequence(Ljava/lang/StringBuilder;)I

    .line 1032
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 1033
    .local v15, "seq":Ljava/lang/String;
    if-eqz v15, :cond_7

    const-string v19, "null"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 1034
    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Lcom/diotek/ime/framework/input/ComposingTextManager;->setLength(I)V

    .line 1052
    .end local v15    # "seq":Ljava/lang/String;
    :cond_7
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setComposingText()V

    .line 1053
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v19, v0

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputCharSequence(Ljava/lang/CharSequence;)I

    .line 1054
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->clear()V

    .line 1055
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-interface/range {v19 .. v20}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    .line 1056
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getActiveIndex([I)I

    .line 1057
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-interface/range {v19 .. v20}, Lcom/diotek/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 1012
    .end local v10    # "isInRepeatKey":Z
    :cond_8
    const/16 v19, 0x1

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v8, v0, v1}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v12

    .end local v12    # "lastChar":Ljava/lang/String;
    check-cast v12, Ljava/lang/String;

    .restart local v12    # "lastChar":Ljava/lang/String;
    goto/16 :goto_3

    .line 1038
    .restart local v10    # "isInRepeatKey":Z
    :cond_9
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 1039
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initComposingBuffer()V

    .line 1040
    const/16 v19, 0x43

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->onKeyDownUpHandle(I)V

    goto :goto_4

    .line 1043
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->isEnableAutoCorrection()Z

    move-result v19

    if-nez v19, :cond_b

    .line 1044
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v19, v0

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getCharSequence(Ljava/lang/StringBuilder;)I

    goto :goto_4

    .line 1046
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v19, v0

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x0

    invoke-interface/range {v19 .. v21}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getCharSequence(Ljava/lang/StringBuilder;I)I

    goto/16 :goto_4

    .line 1058
    :cond_c
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v19

    if-eqz v19, :cond_d

    .line 1059
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v19, v0

    const/16 v20, -0x5

    invoke-interface/range {v19 .. v20}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(I)I

    .line 1060
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    .line 1061
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 1062
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->clear()V

    .line 1063
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 1064
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-interface/range {v19 .. v20}, Lcom/diotek/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 1066
    :cond_d
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 1067
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 1068
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->clear()V

    .line 1069
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-interface/range {v19 .. v20}, Lcom/diotek/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    .line 1070
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v19, v0

    const/16 v20, -0x1

    invoke-interface/range {v19 .. v20}, Lcom/diotek/ime/framework/engine/InputEngineManager;->setSuggestionActiveIndex(I)V

    goto/16 :goto_0

    .line 1073
    :cond_e
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isAutoCompletitionInput()Z

    move-result v9

    .line 1074
    .local v9, "isCompletionOn":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v11

    .line 1075
    .local v11, "isLandscape":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/diotek/ime/framework/common/InputManager;->getCompletions()[Landroid/view/inputmethod/CompletionInfo;

    move-result-object v4

    .line 1076
    .local v4, "completions":[Landroid/view/inputmethod/CompletionInfo;
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->resetPredictionWord()V

    .line 1078
    if-eqz v9, :cond_11

    if-eqz v11, :cond_11

    if-eqz v4, :cond_11

    .line 1079
    if-eqz v8, :cond_f

    .line 1080
    invoke-interface {v8}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 1082
    :cond_f
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 1083
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getDeleteCount()I

    move-result v19

    const/16 v20, 0x14

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/diotek/ime/framework/common/InputManager;->isCHAT_ON()Z

    move-result v19

    if-nez v19, :cond_10

    .line 1084
    if-eqz v8, :cond_0

    .line 1085
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getLastWordDividerIndex()I

    move-result v19

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v8, v0, v1}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto/16 :goto_0

    .line 1088
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initWordDividerIndexList()V

    .line 1089
    const/16 v19, 0x43

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->onKeyDownUpHandle(I)V

    goto/16 :goto_0

    .line 1092
    :cond_11
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v19

    if-eqz v19, :cond_12

    .line 1094
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isVietnameseTelexEnable()Z

    move-result v19

    if-eqz v19, :cond_14

    .line 1096
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    invoke-static/range {v19 .. v19}, Lcom/diotek/ime/framework/input/ComposingTextManager;->deleteCharAt(I)V

    .line 1107
    :cond_12
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputLanguage:I

    move/from16 v19, v0

    const/high16 v20, 0x76690000

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_13

    .line 1108
    if-eqz v12, :cond_13

    .line 1109
    invoke-static {v12}, Lcom/diotek/ime/framework/common/InputSequenceCheck;->normalizedNFD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1110
    .local v14, "nonNormalizedChar":Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_13

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/String;->charAt(I)C

    move-result v19

    invoke-static/range {v19 .. v19}, Lcom/diotek/ime/framework/common/InputSequenceCheck;->isVietameseTone(I)Z

    move-result v19

    if-eqz v19, :cond_13

    .line 1114
    const/16 v19, 0x1

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v8, v0, v1}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 1115
    invoke-static {v14}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    .line 1116
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v8, v0, v1}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1117
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 1121
    .end local v14    # "nonNormalizedChar":Ljava/lang/String;
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v19, v0

    const/16 v20, -0x5

    invoke-interface/range {v19 .. v20}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(I)I

    .line 1122
    const/4 v5, 0x0

    .line 1123
    .local v5, "deleteCount":I
    if-eqz v10, :cond_15

    .line 1124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/QwertyLatinInputModule;->deleteCountInRepeatKey:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v5

    .line 1128
    :goto_6
    if-eqz v10, :cond_16

    const/16 v19, 0x5

    move/from16 v0, v19

    if-le v5, v0, :cond_16

    const/16 v19, 0x14

    move/from16 v0, v19

    if-gt v5, v0, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/diotek/ime/framework/common/InputManager;->isCHAT_ON()Z

    move-result v19

    if-nez v19, :cond_16

    .line 1131
    const/16 v19, 0x43

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->onKeyDownUpHandle(I)V

    goto/16 :goto_0

    .line 1100
    .end local v5    # "deleteCount":I
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposingWithoutInit()V

    .line 1102
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    goto/16 :goto_5

    .line 1126
    .restart local v5    # "deleteCount":I
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/QwertyLatinInputModule;->deleteCountInRepeatKey:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_6

    .line 1132
    :cond_16
    const/16 v19, 0x14

    move/from16 v0, v19

    if-le v5, v0, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/diotek/ime/framework/common/InputManager;->isCHAT_ON()Z

    move-result v19

    if-nez v19, :cond_17

    .line 1133
    if-eqz v8, :cond_0

    .line 1134
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getLastWordDividerIndex()I

    move-result v19

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v8, v0, v1}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto/16 :goto_0

    .line 1137
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initWordDividerIndexList()V

    .line 1138
    const/16 v19, 0x43

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->onKeyDownUpHandle(I)V

    .line 1139
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    move/from16 v19, v0

    if-eqz v19, :cond_18

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->isRecapture()Z

    move-result v19

    if-eqz v19, :cond_18

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v19

    if-eqz v19, :cond_18

    .line 1141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/diotek/ime/framework/common/InputManager;->postRecaptureWordXT9Message()V

    goto/16 :goto_0

    .line 1143
    :cond_18
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    goto/16 :goto_0
.end method

.method private processMultiTap(I[I)V
    .locals 8
    .param p1, "keyCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 196
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v6

    iput-boolean v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    .line 197
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    .line 198
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v6, v7}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    .line 199
    new-array v0, v4, [I

    .line 201
    .local v0, "activeIndex":[I
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v6}, Lcom/diotek/ime/framework/input/AbstractInputModule;->isTimerRunning(Lcom/diotek/ime/framework/input/InputModule$Timer;)Z

    move-result v3

    .line 202
    .local v3, "isTimerRunning":Z
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v6}, Lcom/diotek/ime/framework/input/AbstractInputModule;->stopTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;)V

    .line 203
    iget v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mLastKeyCode:I

    if-ne v6, p1, :cond_5

    move v1, v4

    .line 204
    .local v1, "isEqualKey":Z
    :goto_0
    iget-boolean v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1

    .line 207
    :cond_0
    if-eqz v3, :cond_6

    if-eqz v1, :cond_6

    .line 216
    :cond_1
    :goto_1
    const/4 v2, 0x0

    .line 217
    .local v2, "isThaiMultitapComposing":Z
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasOneChar()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 218
    const/4 v2, 0x1

    .line 221
    :cond_2
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v4, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(I)I

    .line 222
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getCharSequence(Ljava/lang/StringBuilder;)I

    .line 224
    invoke-virtual {p0, v2}, Lcom/diotek/ime/framework/input/AbstractInputModule;->isThaiAcceptable(Z)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->isLaoAcceptable()Z

    move-result v4

    if-nez v4, :cond_4

    .line 225
    :cond_3
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 227
    :cond_4
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setComposingText()V

    .line 229
    iget-boolean v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v4, :cond_7

    .line 230
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 231
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v4, v5}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    .line 232
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v4, v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getActiveIndex([I)I

    .line 233
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v4, v5}, Lcom/diotek/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    .line 238
    :goto_2
    return-void

    .end local v1    # "isEqualKey":Z
    .end local v2    # "isThaiMultitapComposing":Z
    :cond_5
    move v1, v5

    .line 203
    goto :goto_0

    .line 210
    .restart local v1    # "isEqualKey":Z
    :cond_6
    invoke-virtual {p0, v4}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 211
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initComposingBuffer()V

    .line 212
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    goto :goto_1

    .line 235
    .restart local v2    # "isThaiMultitapComposing":Z
    :cond_7
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    const/16 v5, 0x5dc

    invoke-virtual {p0, v4, v5}, Lcom/diotek/ime/framework/input/AbstractInputModule;->startTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;I)V

    goto :goto_2
.end method

.method private processSingleChar(I)V
    .locals 7
    .param p1, "code"    # I

    .prologue
    const/4 v6, 0x0

    .line 444
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4, p1}, Lcom/diotek/ime/framework/common/InputManager;->getLabelFromCurrentView(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 445
    .local v2, "text":Ljava/lang/CharSequence;
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 511
    :cond_0
    :goto_0
    return-void

    .line 449
    :cond_1
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isAutoSpaceOn()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAtText()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 450
    const/16 v4, 0x20

    invoke-static {v4}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    .line 453
    :cond_2
    invoke-interface {v2, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {p0, v4}, Lcom/diotek/ime/framework/input/QwertyLatinInputModule;->getSecondaryChar(I)I

    move-result v4

    int-to-char v1, v4

    .line 454
    .local v1, "secondaryKeyChar":C
    if-eqz v1, :cond_3

    .line 455
    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    .line 457
    :cond_3
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isVietnameseTelexEnable()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 459
    invoke-interface {v2, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 461
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v4, v5}, Lcom/diotek/ime/framework/input/Telex/Telex;->join(Ljava/lang/StringBuilder;C)Ljava/lang/StringBuilder;

    .line 477
    :goto_1
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setComposingText()V

    .line 504
    :goto_2
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 505
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_4

    .line 506
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 507
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v0, v4, v5}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 508
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 510
    :cond_4
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    goto :goto_0

    .line 465
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_5
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 467
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    invoke-static {v4, v5}, Lcom/diotek/ime/framework/input/Telex/Telex;->join(Ljava/lang/StringBuilder;C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 471
    :cond_6
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v5

    invoke-static {v4, v5}, Lcom/diotek/ime/framework/input/Telex/Telex;->join(Ljava/lang/StringBuilder;C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 480
    :cond_7
    invoke-interface {v2, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 481
    invoke-static {v2}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 483
    :cond_8
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 484
    iget v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputLanguage:I

    const/high16 v5, 0x74720000

    if-ne v4, v5, :cond_a

    .line 485
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v5, "SETTINGS_TURKISH_KEYBOARD_TYPE"

    invoke-interface {v4, v5, v6}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v3

    .line 487
    .local v3, "turkishKeyboardType":I
    if-eqz v3, :cond_9

    .line 488
    invoke-interface {v2, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {p0, v4}, Lcom/diotek/ime/framework/input/AbstractInputModule;->toUpperCaseOfTurkish(I)I

    move-result v4

    int-to-char v4, v4

    invoke-static {v4}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    goto :goto_2

    .line 490
    :cond_9
    invoke-interface {v2, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    invoke-static {v4}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    goto :goto_2

    .line 492
    .end local v3    # "turkishKeyboardType":I
    :cond_a
    iget v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputLanguage:I

    const/high16 v5, 0x617a0000

    if-ne v4, v5, :cond_b

    .line 493
    invoke-interface {v2, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {p0, v4}, Lcom/diotek/ime/framework/input/AbstractInputModule;->toUpperCaseOfTurkish(I)I

    move-result v4

    int-to-char v4, v4

    invoke-static {v4}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    goto/16 :goto_2

    .line 495
    :cond_b
    invoke-interface {v2, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    invoke-static {v4}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    goto/16 :goto_2

    .line 498
    :cond_c
    invoke-interface {v2, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    invoke-static {v4}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    goto/16 :goto_2
.end method

.method private processSingleTap(I[I)V
    .locals 14
    .param p1, "keyCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    .line 241
    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v10

    iput-boolean v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    .line 242
    const/4 v10, 0x1

    new-array v0, v10, [I

    .line 243
    .local v0, "activeIndex":[I
    const/4 v7, 0x0

    .line 244
    .local v7, "isTraceInput":Z
    iget-boolean v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-nez v10, :cond_0

    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/InputManager;->isEnableTraceInPassword()Z

    move-result v10

    if-eqz v10, :cond_7

    :cond_0
    const/4 v5, 0x1

    .line 246
    .local v5, "isEnableTraceInput":Z
    :goto_0
    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v10}, Lcom/diotek/ime/framework/input/AbstractInputModule;->isTimerRunning(Lcom/diotek/ime/framework/input/InputModule$Timer;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 249
    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v10}, Lcom/diotek/ime/framework/input/AbstractInputModule;->stopTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;)V

    .line 250
    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_1

    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_2

    .line 251
    :cond_1
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 252
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initComposingBuffer()V

    .line 256
    :cond_2
    if-eqz v5, :cond_16

    iget-boolean v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsTraceOn:Z

    if-eqz v10, :cond_16

    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    if-eqz v10, :cond_16

    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v10}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v10

    const/4 v11, 0x2

    if-le v10, v11, :cond_16

    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v10, :cond_16

    .line 257
    const/4 v10, 0x1

    new-array v1, v10, [Z

    .line 258
    .local v1, "bAddSpace":[Z
    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v11, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v11}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTracePoint()[Landroid/graphics/PointF;

    move-result-object v11

    iget-object v12, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v12}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v12

    invoke-interface {v10, v11, v12, v1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->isAutoAcceptBeforeTrace([Landroid/graphics/PointF;I[Z)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 260
    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v10, v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getActiveIndex([I)I

    .line 261
    const/4 v10, 0x0

    aget v10, v0, v10

    if-ltz v10, :cond_9

    const/4 v10, 0x0

    aget v10, v0, v10

    iget-object v11, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v10, v11, :cond_9

    .line 262
    const/4 v10, 0x0

    aget-boolean v10, v1, v10

    if-eqz v10, :cond_8

    .line 263
    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    const/4 v11, 0x0

    aget v11, v0, v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/CharSequence;

    invoke-static {v10}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(Ljava/lang/CharSequence;)V

    .line 264
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setComposingText()V

    .line 265
    const/4 v10, 0x0

    aget v10, v0, v10

    invoke-virtual {p0, v10}, Lcom/diotek/ime/framework/input/AbstractInputModule;->selectWordInList(I)V

    .line 266
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 267
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initComposingBuffer()V

    .line 268
    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v10}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isAutoSpaceOn()Z

    move-result v10

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v10}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->isSymbolAndSpace()Z

    move-result v10

    if-nez v10, :cond_3

    .line 269
    const/16 v10, 0x20

    invoke-static {v10}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(C)V

    .line 270
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/diotek/ime/framework/input/AbstractInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 271
    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v10

    if-nez v10, :cond_3

    .line 272
    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 273
    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/InputManager;->updateShiftState()V

    .line 285
    :cond_3
    :goto_1
    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v10}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->isSymbolAndSpace()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 286
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 287
    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v10}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getSymbolKeyCode()I

    move-result v9

    .line 288
    .local v9, "symbol":I
    const/16 v10, -0xff

    if-eq v9, v10, :cond_4

    .line 289
    int-to-char v10, v9

    invoke-static {v10}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    .line 291
    :cond_4
    const/16 v10, 0x20

    invoke-static {v10}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    .line 292
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/diotek/ime/framework/input/AbstractInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 293
    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v10

    if-nez v10, :cond_5

    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 295
    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/InputManager;->updateShiftState()V

    .line 297
    :cond_5
    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v10}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->clearTraceInfo()V

    .line 298
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->resetPredictionWord()V

    .line 441
    .end local v1    # "bAddSpace":[Z
    .end local v9    # "symbol":I
    :cond_6
    :goto_2
    return-void

    .line 244
    .end local v5    # "isEnableTraceInput":Z
    :cond_7
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 278
    .restart local v1    # "bAddSpace":[Z
    .restart local v5    # "isEnableTraceInput":Z
    :cond_8
    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v10}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    goto :goto_1

    .line 280
    :cond_9
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v10

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/InputManager;->isEnableTraceInPassword()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 281
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 282
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initComposingBuffer()V

    goto :goto_1

    .line 301
    :cond_a
    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v11, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v11}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTracePoint()[Landroid/graphics/PointF;

    move-result-object v11

    iget-object v12, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v12}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v12

    const/4 v13, -0x1

    invoke-interface {v10, v11, v12, v13}, Lcom/diotek/ime/framework/engine/InputEngineManager;->processTrace([Landroid/graphics/PointF;IB)S

    move-result v10

    if-eqz v10, :cond_b

    .line 303
    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v10}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->clearTraceInfo()V

    .line 304
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->resetPredictionWord()V

    goto :goto_2

    .line 307
    :cond_b
    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v10}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->clearTraceInfo()V

    .line 308
    const/4 v7, 0x1

    .line 372
    .end local v1    # "bAddSpace":[Z
    :goto_3
    iget-boolean v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-nez v10, :cond_c

    iget-boolean v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsTraceOn:Z

    if-eqz v10, :cond_d

    if-eqz v5, :cond_d

    :cond_c
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->isAvailablePrediction()Z

    move-result v10

    if-nez v10, :cond_1e

    if-nez v7, :cond_1e

    .line 373
    :cond_d
    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v10, v11, v12}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getCharSequence(Ljava/lang/StringBuilder;I)I

    .line 374
    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v10}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    .line 396
    :cond_e
    :goto_4
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_f

    if-eqz v7, :cond_f

    .line 397
    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v10}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->disableSetUpAutoSpace()V

    .line 398
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->resetPredictionWord()V

    .line 401
    :cond_f
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->isThaiAcceptable()Z

    move-result v10

    if-nez v10, :cond_10

    iget-boolean v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-nez v10, :cond_11

    :cond_10
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->isLaoAcceptable()Z

    move-result v10

    if-nez v10, :cond_12

    .line 402
    :cond_11
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 403
    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v10}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    .line 406
    :cond_12
    iget v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputLanguage:I

    const/high16 v11, 0x76690000

    if-ne v10, v11, :cond_13

    .line 407
    iget-boolean v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    invoke-virtual {p0, p1, v10}, Lcom/diotek/ime/framework/input/AbstractInputModule;->processVietnameseTone(IZ)V

    .line 410
    :cond_13
    iget-boolean v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-nez v10, :cond_14

    iget-boolean v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsTraceOn:Z

    if-eqz v10, :cond_21

    if-eqz v5, :cond_21

    :cond_14
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->isAvailablePrediction()Z

    move-result v10

    if-nez v10, :cond_15

    if-eqz v7, :cond_21

    :cond_15
    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v10, :cond_21

    .line 412
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setComposingText()V

    .line 413
    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v10, v11}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputCharSequence(Ljava/lang/CharSequence;)I

    .line 414
    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 415
    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v11, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v10, v11}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    .line 416
    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v10, v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getActiveIndex([I)I

    .line 417
    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v11, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v10, v11}, Lcom/diotek/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    goto/16 :goto_2

    .line 310
    :cond_16
    iget-boolean v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-eqz v10, :cond_17

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v10

    const/16 v11, 0x40

    if-lt v10, v11, :cond_17

    .line 311
    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v10}, Lcom/diotek/ime/framework/engine/InputEngineManager;->breakContext()V

    .line 312
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->resetPredictionWord()V

    .line 313
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 314
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    .line 315
    const/16 v10, 0x40

    iput v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosPrevText:I

    .line 316
    const/4 v10, 0x0

    iput v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosNextText:I

    .line 319
    :cond_17
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v10

    if-eqz v10, :cond_19

    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v10}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAtText()Z

    move-result v10

    if-eqz v10, :cond_19

    .line 320
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/diotek/ime/framework/input/AbstractInputModule;->selectWordInList(I)V

    .line 321
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 322
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initComposingBuffer()V

    .line 323
    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v10}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isAutoSpaceOn()Z

    move-result v10

    if-eqz v10, :cond_18

    .line 324
    const/16 v10, 0x20

    invoke-static {v10}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(C)V

    .line 325
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/diotek/ime/framework/input/AbstractInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 326
    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v10

    if-nez v10, :cond_18

    .line 327
    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v10

    if-eqz v10, :cond_18

    .line 328
    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/InputManager;->updateShiftState()V

    .line 332
    :cond_18
    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v10, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(I)I

    move-result v10

    if-nez v10, :cond_1d

    .line 333
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->resetPredictionWord()V

    goto/16 :goto_2

    .line 336
    :cond_19
    iget-boolean v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-eqz v10, :cond_1b

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->isRecapture()Z

    move-result v10

    if-eqz v10, :cond_1b

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_1b

    iget v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mStateCandidate:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1b

    .line 341
    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v10, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(I)I

    move-result v10

    if-nez v10, :cond_1a

    .line 342
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->resetPredictionWord()V

    goto/16 :goto_2

    .line 345
    :cond_1a
    iget v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosPrevText:I

    const/16 v11, 0x40

    if-ge v10, v11, :cond_1d

    .line 346
    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v10, v11}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getCharSequence(Ljava/lang/StringBuilder;)I

    .line 348
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/diotek/ime/framework/input/AbstractInputModule;->commitText(Ljava/lang/CharSequence;)V

    .line 349
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 350
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposingWithoutInit()V

    .line 352
    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v10}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    .line 353
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->resetPredictionWord()V

    goto/16 :goto_2

    .line 357
    :cond_1b
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->isZawgyiAcceptable(I)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 359
    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10, p1}, Lcom/diotek/ime/framework/common/InputManager;->getLabelFromCurrentView(I)Ljava/lang/CharSequence;

    move-result-object v10

    if-eqz v10, :cond_1c

    .line 360
    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10, p1}, Lcom/diotek/ime/framework/common/InputManager;->getLabelFromCurrentView(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->hashCode()I

    move-result v10

    invoke-virtual {p0, v10}, Lcom/diotek/ime/framework/input/AbstractInputModule;->isLaoAcceptable(I)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 364
    :cond_1c
    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v10, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(I)I

    move-result v10

    if-nez v10, :cond_1d

    .line 365
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->resetPredictionWord()V

    goto/16 :goto_2

    .line 369
    :cond_1d
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearAction()V

    goto/16 :goto_3

    .line 376
    :cond_1e
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->isEnableAutoCorrection()Z

    move-result v10

    if-nez v10, :cond_20

    .line 377
    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v10, v11}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getCharSequence(Ljava/lang/StringBuilder;)I

    .line 378
    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v10}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isVietnameseTelexEnable()Z

    move-result v10

    if-eqz v10, :cond_e

    .line 379
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->getLastChar()C

    move-result v8

    .line 380
    .local v8, "lastChar":C
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-static {v10}, Lcom/diotek/ime/framework/input/ComposingTextManager;->deleteCharAt(I)V

    .line 381
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v10, v8}, Lcom/diotek/ime/framework/input/Telex/Telex;->isRecapture(Ljava/lang/StringBuilder;C)Z

    move-result v10

    if-eqz v10, :cond_1f

    .line 382
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v10, v8}, Lcom/diotek/ime/framework/input/Telex/Telex;->join(Ljava/lang/StringBuilder;C)Ljava/lang/StringBuilder;

    .line 383
    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v12

    int-to-short v12, v12

    const/4 v13, 0x1

    invoke-interface {v10, v11, v12, v13}, Lcom/diotek/ime/framework/engine/InputEngineManager;->doRecaptureForXt9(Ljava/lang/String;SZ)I

    goto/16 :goto_4

    .line 385
    :cond_1f
    invoke-static {v8}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    goto/16 :goto_4

    .line 389
    .end local v8    # "lastChar":C
    :cond_20
    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v10, v11, v12}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getCharSequence(Ljava/lang/StringBuilder;I)I

    goto/16 :goto_4

    .line 418
    :cond_21
    iget-boolean v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-eqz v10, :cond_23

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->isRecapture()Z

    move-result v10

    if-nez v10, :cond_23

    iget v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mStateCandidate:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_23

    .line 419
    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v3

    .line 420
    .local v3, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v3, :cond_22

    .line 421
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x1

    invoke-interface {v3, v10, v11}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 423
    :cond_22
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 424
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->resetPredictionWord()V

    goto/16 :goto_2

    .line 426
    .end local v3    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_23
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isAutoCompletitionInput()Z

    move-result v4

    .line 427
    .local v4, "isCompletionOn":Z
    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v6

    .line 428
    .local v6, "isLandscape":Z
    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/InputManager;->getCompletions()[Landroid/view/inputmethod/CompletionInfo;

    move-result-object v2

    .line 429
    .local v2, "completions":[Landroid/view/inputmethod/CompletionInfo;
    if-eqz v4, :cond_25

    if-eqz v6, :cond_25

    if-eqz v2, :cond_25

    .line 430
    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v3

    .line 431
    .restart local v3    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v3, :cond_24

    .line 432
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x1

    invoke-interface {v3, v10, v11}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 434
    :cond_24
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    goto/16 :goto_2

    .line 436
    .end local v3    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_25
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/diotek/ime/framework/input/AbstractInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 437
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 438
    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v10}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    goto/16 :goto_2
.end method

.method private processWordSeparator(I[I)V
    .locals 12
    .param p1, "keyCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    .line 591
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getXt9Version()I

    move-result v8

    if-eqz v8, :cond_1

    .line 592
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/input/QwertyLatinInputModule;->processWordSeparator_9(I[I)V

    .line 709
    :cond_0
    :goto_0
    return-void

    .line 595
    :cond_1
    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    .line 596
    .local v2, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_0

    .line 599
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    .line 600
    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v9, "SETTINGS_DEFAULT_NEXTWORDPREDICTION"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v6

    .line 602
    .local v6, "isNextWordPredictionOn":Z
    const/4 v3, 0x0

    .line 603
    .local v3, "isActiveIndex":Z
    const/4 v4, 0x0

    .line 604
    .local v4, "isComposingCurrent":Z
    const/4 v0, 0x0

    .line 606
    .local v0, "ActiveText":Ljava/lang/CharSequence;
    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v8, v9}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    .line 607
    const/4 v8, 0x1

    new-array v1, v8, [I

    .line 608
    .local v1, "activeIndex":[I
    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v8, v1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getActiveIndex([I)I

    .line 609
    const/16 v8, 0x20

    if-ne p1, v8, :cond_2

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 610
    const/4 v4, 0x1

    .line 612
    :cond_2
    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_5

    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_5

    const/4 v8, 0x0

    aget v8, v1, v8

    if-ltz v8, :cond_5

    const/4 v8, 0x0

    aget v8, v1, v8

    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_5

    .line 614
    iget v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mStateCandidate:I

    if-nez v8, :cond_4

    .line 615
    iget v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPickSuggestionIndex:I

    .line 616
    .local v7, "pickeSuggestionIndex":I
    const/4 v8, -0x1

    if-eq v7, v8, :cond_7

    .line 617
    iget-boolean v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsDisableAddwordbyCSC:Z

    if-eqz v8, :cond_3

    .line 618
    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mBackupCandidate:Ljava/lang/StringBuilder;

    invoke-interface {v8, v9, v7}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getCharSequence(Ljava/lang/StringBuilder;I)I

    .line 619
    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mBackupCandidate:Ljava/lang/StringBuilder;

    invoke-virtual {p0, v8}, Lcom/diotek/ime/framework/input/AbstractInputModule;->isNeedToAddUDB(Ljava/lang/CharSequence;)V

    .line 620
    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v9, "ADDWORD_BACKUP_CADIDATE"

    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mBackupCandidate:Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    :cond_3
    invoke-virtual {p0, v7}, Lcom/diotek/ime/framework/input/AbstractInputModule;->selectWordInList(I)V

    .line 632
    .end local v7    # "pickeSuggestionIndex":I
    :cond_4
    :goto_1
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    const/4 v8, 0x0

    aget v10, v1, v8

    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    const/4 v11, 0x0

    aget v11, v1, v11

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    invoke-interface {v9, v10, v8}, Lcom/diotek/ime/framework/engine/InputEngineManager;->wordSelected(ILjava/lang/CharSequence;)I

    .line 633
    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    .line 635
    const/4 v8, 0x0

    aget v8, v1, v8

    if-eqz v8, :cond_9

    .line 636
    const/4 v3, 0x1

    .line 637
    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    const/4 v9, 0x0

    aget v9, v1, v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "ActiveText":Ljava/lang/CharSequence;
    check-cast v0, Ljava/lang/CharSequence;

    .line 644
    .restart local v0    # "ActiveText":Ljava/lang/CharSequence;
    :cond_5
    :goto_2
    const/16 v8, 0xa

    if-ne p1, v8, :cond_a

    .line 645
    if-eqz v3, :cond_6

    .line 646
    invoke-static {v0}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(Ljava/lang/CharSequence;)V

    .line 647
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setComposingText()V

    .line 648
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 649
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initComposingBuffer()V

    .line 651
    :cond_6
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->sendEnterKeyHandle()V

    .line 652
    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/engine/InputEngineManager;->breakContext()V

    .line 653
    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    .line 654
    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->updateShiftState()V

    .line 655
    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    goto/16 :goto_0

    .line 624
    .restart local v7    # "pickeSuggestionIndex":I
    :cond_7
    iget-boolean v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsDisableAddwordbyCSC:Z

    if-eqz v8, :cond_8

    .line 625
    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mBackupCandidate:Ljava/lang/StringBuilder;

    const/4 v10, 0x0

    aget v10, v1, v10

    invoke-interface {v8, v9, v10}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getCharSequence(Ljava/lang/StringBuilder;I)I

    .line 626
    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mBackupCandidate:Ljava/lang/StringBuilder;

    invoke-virtual {p0, v8}, Lcom/diotek/ime/framework/input/AbstractInputModule;->isNeedToAddUDB(Ljava/lang/CharSequence;)V

    .line 627
    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v9, "ADDWORD_BACKUP_CADIDATE"

    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mBackupCandidate:Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    :cond_8
    const/4 v8, 0x0

    aget v8, v1, v8

    invoke-virtual {p0, v8}, Lcom/diotek/ime/framework/input/AbstractInputModule;->selectWordInList(I)V

    goto :goto_1

    .line 639
    .end local v7    # "pickeSuggestionIndex":I
    :cond_9
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 640
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initComposingBuffer()V

    goto :goto_2

    .line 658
    :cond_a
    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->isInMultiTapInput()Z

    move-result v5

    .line 659
    .local v5, "isInMultiTap":Z
    if-eqz v5, :cond_b

    .line 660
    invoke-virtual {p0, p1, p2}, Lcom/diotek/ime/framework/input/AbstractInputModule;->processMultiTapSymbolicKey(I[I)V

    goto/16 :goto_0

    .line 663
    :cond_b
    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v8, p1}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAtSymbol(I)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 664
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 665
    const/16 v8, 0x20

    invoke-static {v8}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(C)V

    .line 666
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/diotek/ime/framework/input/AbstractInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 669
    :cond_c
    if-eqz v3, :cond_e

    .line 670
    invoke-static {v0}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(Ljava/lang/CharSequence;)V

    .line 675
    :goto_3
    int-to-char v8, p1

    invoke-static {v8}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    .line 676
    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v8, p1}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAfterPunctuation(I)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 677
    const/16 v8, 0x20

    invoke-static {v8}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    .line 681
    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v8}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->disableSetUpAutoSpace()V

    .line 683
    :cond_d
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/diotek/ime/framework/input/AbstractInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 685
    const/16 v8, 0x2e

    if-eq p1, v8, :cond_0

    const/16 v8, 0x2c

    if-eq p1, v8, :cond_0

    const/16 v8, 0x3f

    if-eq p1, v8, :cond_0

    const/16 v8, 0x21

    if-eq p1, v8, :cond_0

    .line 693
    iget-boolean v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-eqz v8, :cond_0

    if-eqz v6, :cond_0

    iget v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mStateCandidate:I

    if-nez v8, :cond_0

    .line 695
    const/16 v8, 0x20

    if-ne p1, v8, :cond_10

    .line 696
    if-eqz v4, :cond_f

    .line 697
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/diotek/ime/framework/input/AbstractInputModule;->doNextWordPrediction(Z)V

    goto/16 :goto_0

    .line 672
    :cond_e
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 673
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    goto :goto_3

    .line 698
    :cond_f
    if-nez v4, :cond_0

    iget v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mStateCandidate:I

    if-nez v8, :cond_0

    .line 699
    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/engine/InputEngineManager;->reflashSelectList()I

    .line 700
    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 701
    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v8, v9}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    .line 702
    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v8, v9}, Lcom/diotek/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    .line 703
    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Lcom/diotek/ime/framework/common/InputManager;->setXt9NextWordPrediction(Z)V

    goto/16 :goto_0

    .line 706
    :cond_10
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/diotek/ime/framework/input/AbstractInputModule;->doNextWordPrediction(Z)V

    goto/16 :goto_0
.end method

.method private processWordSeparator_9(I[I)V
    .locals 13
    .param p1, "keyCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    .line 712
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    .line 713
    .local v2, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v2, :cond_1

    .line 845
    :cond_0
    :goto_0
    return-void

    .line 716
    :cond_1
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    .line 717
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v10, "SETTINGS_DEFAULT_NEXTWORDPREDICTION"

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v6

    .line 719
    .local v6, "isNextWordPredictionOn":Z
    const/4 v3, 0x0

    .line 720
    .local v3, "isActiveIndex":Z
    const/4 v4, 0x0

    .line 721
    .local v4, "isComposingCurrent":Z
    const/4 v0, 0x0

    .line 723
    .local v0, "ActiveText":Ljava/lang/CharSequence;
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v9, v10}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    .line 725
    const/4 v9, 0x1

    new-array v1, v9, [I

    .line 726
    .local v1, "activeIndex":[I
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v9, v1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getActiveIndex([I)I

    .line 727
    const/16 v9, 0x20

    if-ne p1, v9, :cond_2

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 728
    const/4 v4, 0x1

    .line 730
    :cond_2
    const/16 v9, 0x20

    if-ne p1, v9, :cond_5

    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_5

    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_5

    const/4 v9, 0x0

    aget v9, v1, v9

    if-ltz v9, :cond_5

    const/4 v9, 0x0

    aget v9, v1, v9

    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v9, v10, :cond_5

    .line 733
    iget v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mStateCandidate:I

    const/4 v10, 0x2

    if-eq v9, v10, :cond_4

    .line 734
    iget v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPickSuggestionIndex:I

    .line 735
    .local v8, "pickeSuggestionIndex":I
    const/4 v9, -0x1

    if-eq v8, v9, :cond_7

    .line 736
    iget-boolean v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsDisableAddwordbyCSC:Z

    if-eqz v9, :cond_3

    .line 737
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mBackupCandidate:Ljava/lang/StringBuilder;

    invoke-interface {v9, v10, v8}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getCharSequence(Ljava/lang/StringBuilder;I)I

    .line 738
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mBackupCandidate:Ljava/lang/StringBuilder;

    invoke-virtual {p0, v9}, Lcom/diotek/ime/framework/input/AbstractInputModule;->isNeedToAddUDB(Ljava/lang/CharSequence;)V

    .line 739
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v10, "ADDWORD_BACKUP_CADIDATE"

    iget-object v11, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mBackupCandidate:Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    :cond_3
    invoke-virtual {p0, v8}, Lcom/diotek/ime/framework/input/AbstractInputModule;->selectWordInList(I)V

    .line 751
    .end local v8    # "pickeSuggestionIndex":I
    :cond_4
    :goto_1
    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    const/4 v9, 0x0

    aget v11, v1, v9

    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    const/4 v12, 0x0

    aget v12, v1, v12

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    invoke-interface {v10, v11, v9}, Lcom/diotek/ime/framework/engine/InputEngineManager;->wordSelected(ILjava/lang/CharSequence;)I

    .line 752
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    .line 754
    const/4 v9, 0x0

    aget v9, v1, v9

    if-eqz v9, :cond_9

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->isEnableAutoCorrection()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 755
    const/4 v3, 0x1

    .line 756
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    const/4 v10, 0x0

    aget v10, v1, v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "ActiveText":Ljava/lang/CharSequence;
    check-cast v0, Ljava/lang/CharSequence;

    .line 763
    .restart local v0    # "ActiveText":Ljava/lang/CharSequence;
    :cond_5
    :goto_2
    const/16 v9, 0xa

    if-ne p1, v9, :cond_a

    .line 764
    if-eqz v3, :cond_6

    .line 765
    invoke-static {v0}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(Ljava/lang/CharSequence;)V

    .line 766
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setComposingText()V

    .line 767
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 768
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initComposingBuffer()V

    .line 770
    :cond_6
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->sendEnterKeyHandle()V

    .line 771
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/engine/InputEngineManager;->breakContext()V

    .line 772
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    .line 773
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->updateShiftState()V

    .line 774
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    goto/16 :goto_0

    .line 743
    .restart local v8    # "pickeSuggestionIndex":I
    :cond_7
    iget-boolean v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsDisableAddwordbyCSC:Z

    if-eqz v9, :cond_8

    .line 744
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mBackupCandidate:Ljava/lang/StringBuilder;

    const/4 v11, 0x0

    aget v11, v1, v11

    invoke-interface {v9, v10, v11}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getCharSequence(Ljava/lang/StringBuilder;I)I

    .line 745
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mBackupCandidate:Ljava/lang/StringBuilder;

    invoke-virtual {p0, v9}, Lcom/diotek/ime/framework/input/AbstractInputModule;->isNeedToAddUDB(Ljava/lang/CharSequence;)V

    .line 746
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v10, "ADDWORD_BACKUP_CADIDATE"

    iget-object v11, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mBackupCandidate:Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    :cond_8
    const/4 v9, 0x0

    aget v9, v1, v9

    invoke-virtual {p0, v9}, Lcom/diotek/ime/framework/input/AbstractInputModule;->selectWordInList(I)V

    goto/16 :goto_1

    .line 758
    .end local v8    # "pickeSuggestionIndex":I
    :cond_9
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 759
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initComposingBuffer()V

    goto :goto_2

    .line 777
    :cond_a
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->isInMultiTapInput()Z

    move-result v5

    .line 778
    .local v5, "isInMultiTap":Z
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->isRecapture()Z

    move-result v7

    .line 779
    .local v7, "isRecapture":Z
    if-eqz v5, :cond_b

    .line 780
    invoke-virtual {p0, p1, p2}, Lcom/diotek/ime/framework/input/AbstractInputModule;->processMultiTapSymbolicKey(I[I)V

    goto/16 :goto_0

    .line 783
    :cond_b
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v9, p1}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAtSymbol(I)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 784
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 785
    const/16 v9, 0x20

    invoke-static {v9}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(C)V

    .line 786
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/diotek/ime/framework/input/AbstractInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 789
    :cond_c
    if-eqz v3, :cond_10

    .line 790
    invoke-static {v0}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(Ljava/lang/CharSequence;)V

    .line 800
    :goto_3
    int-to-char v9, p1

    invoke-static {v9}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    .line 801
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v9, p1}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAfterPunctuation(I)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 802
    const/16 v9, 0x20

    invoke-static {v9}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    .line 806
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v9}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->disableSetUpAutoSpace()V

    .line 809
    :cond_d
    iget-boolean v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-eqz v9, :cond_13

    if-eqz v7, :cond_13

    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v9, :cond_e

    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_e

    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_13

    :cond_e
    iget v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mStateCandidate:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_13

    .line 812
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/diotek/ime/framework/input/AbstractInputModule;->commitText(Ljava/lang/CharSequence;)V

    .line 813
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 823
    :goto_4
    const/16 v9, 0x2e

    if-eq p1, v9, :cond_f

    const/16 v9, 0x2c

    if-eq p1, v9, :cond_f

    const/16 v9, 0x3f

    if-eq p1, v9, :cond_f

    const/16 v9, 0x21

    if-ne p1, v9, :cond_16

    .line 827
    :cond_f
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    goto/16 :goto_0

    .line 791
    :cond_10
    iget-boolean v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-eqz v9, :cond_12

    if-eqz v7, :cond_12

    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v9, :cond_11

    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_11

    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_12

    :cond_11
    iget v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mStateCandidate:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_12

    .line 794
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposingWithoutInit()V

    .line 795
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    goto :goto_3

    .line 797
    :cond_12
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 798
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    goto/16 :goto_3

    .line 814
    :cond_13
    if-eqz v4, :cond_14

    .line 815
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/diotek/ime/framework/input/AbstractInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 816
    :cond_14
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->isEnableAutoCorrection()Z

    move-result v9

    if-eqz v9, :cond_15

    .line 817
    invoke-virtual {p0, v2}, Lcom/diotek/ime/framework/input/AbstractInputModule;->doAutoCorrection(Landroid/view/inputmethod/InputConnection;)V

    goto :goto_4

    .line 819
    :cond_15
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/diotek/ime/framework/input/AbstractInputModule;->commitText(Ljava/lang/CharSequence;)V

    .line 820
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    goto :goto_4

    .line 832
    :cond_16
    iget-boolean v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-eqz v9, :cond_0

    if-eqz v6, :cond_0

    const/16 v9, 0x20

    if-ne p1, v9, :cond_0

    .line 833
    if-eqz v4, :cond_17

    .line 834
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/diotek/ime/framework/input/AbstractInputModule;->doNextWordPrediction(Z)V

    goto/16 :goto_0

    .line 835
    :cond_17
    if-nez v4, :cond_18

    iget v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mStateCandidate:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_18

    .line 836
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/engine/InputEngineManager;->reflashSelectList()I

    .line 837
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 838
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v9, v10}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    .line 839
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v9, v10}, Lcom/diotek/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    .line 840
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Lcom/diotek/ime/framework/common/InputManager;->setXt9NextWordPrediction(Z)V

    goto/16 :goto_0

    .line 841
    :cond_18
    iget v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mStateCandidate:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_0

    .line 842
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    goto/16 :goto_0
.end method


# virtual methods
.method public closing()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->stopTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;)V

    .line 50
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    .line 51
    invoke-super {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->closing()V

    .line 52
    return-void
.end method

.method public getSecondaryChar(I)I
    .locals 7
    .param p1, "keyCode"    # I

    .prologue
    .line 514
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v3

    .line 515
    .local v3, "shiftState":Z
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->isAcuteAccentState()Z

    move-result v0

    .line 516
    .local v0, "accentState":Z
    move v2, p1

    .line 517
    .local v2, "secondaryKeyCode":I
    invoke-static {}, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyManager;->getInstance()Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyManager;

    move-result-object v1

    .line 518
    .local v1, "secKeyManager":Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyManager;
    iget v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputLanguage:I

    const/high16 v6, 0x6b610000

    if-ne v5, v6, :cond_0

    if-nez v3, :cond_5

    :cond_0
    iget v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputLanguage:I

    const/high16 v6, 0x656c0000

    if-ne v5, v6, :cond_1

    if-nez v0, :cond_5

    :cond_1
    iget v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputLanguage:I

    const/high16 v6, 0x6c760000

    if-ne v5, v6, :cond_2

    if-nez v0, :cond_5

    :cond_2
    iget v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputLanguage:I

    const/high16 v6, 0x61720000

    if-ne v5, v6, :cond_3

    if-nez v3, :cond_5

    :cond_3
    iget v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputLanguage:I

    const/high16 v6, 0x66610000

    if-ne v5, v6, :cond_4

    if-nez v3, :cond_5

    :cond_4
    iget v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputLanguage:I

    const/high16 v6, 0x75720000

    if-ne v5, v6, :cond_6

    if-eqz v3, :cond_6

    .line 524
    :cond_5
    invoke-virtual {v1, p1}, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyManager;->getSecondaryKey(I)I

    move-result v4

    .line 525
    .local v4, "tempKeyCode":I
    const/16 v5, -0xff

    if-eq v4, v5, :cond_6

    .line 526
    move v2, v4

    .line 529
    .end local v4    # "tempKeyCode":I
    :cond_6
    return v2
.end method

.method public initialize()V
    .locals 0

    .prologue
    .line 39
    invoke-super {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initialize()V

    .line 40
    return-void
.end method

.method public onCharacterKey(I[I)V
    .locals 13
    .param p1, "keyCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    .line 56
    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v10}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v2

    .line 57
    .local v2, "inputMethod":I
    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/InputManager;->getInputLanguage()I

    move-result v1

    .line 58
    .local v1, "inputLanguage":I
    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v10}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v3

    .line 59
    .local v3, "inputRange":I
    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v11, "ENABLE_AUTO_CORRECTION"

    const/4 v12, 0x0

    invoke-interface {v10, v11, v12}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v11, "SETTINGS_DEFAULT_AUTO_CORRECTION"

    const/4 v12, 0x0

    invoke-interface {v10, v11, v12}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_4

    const/4 v4, 0x1

    .line 61
    .local v4, "isEnableAutoCorrection":Z
    :goto_0
    iget-boolean v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsTraceOn:Z

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v10}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v10

    const/4 v11, 0x2

    if-le v10, v11, :cond_5

    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v10}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->isSymbolAndSpace()Z

    move-result v10

    if-nez v10, :cond_5

    const/4 v6, 0x1

    .line 63
    .local v6, "isTraceInput":Z
    :goto_1
    iget-boolean v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-nez v10, :cond_0

    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/InputManager;->isEnableTraceInPassword()Z

    move-result v10

    if-eqz v10, :cond_6

    :cond_0
    const/4 v5, 0x1

    .line 65
    .local v5, "isEnableTraceInput":Z
    :goto_2
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->isEnableAutoCorrection()Z

    move-result v10

    if-nez v10, :cond_3

    .line 66
    const v10, 0x656e4742

    if-eq v1, v10, :cond_1

    const v10, 0x656e5553

    if-ne v1, v10, :cond_9

    :cond_1
    const/16 v10, 0x69

    if-ne p1, v10, :cond_9

    .line 68
    invoke-direct {p0}, Lcom/diotek/ime/framework/input/QwertyLatinInputModule;->isLetterFrontOfCursor()Z

    move-result v10

    if-nez v10, :cond_7

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_2

    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v10}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isLastActionIsTraceOrPick()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 70
    :cond_2
    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Lcom/diotek/ime/framework/engine/InputEngineManager;->setActiveWordStatusChangable(Z)V

    .line 80
    :cond_3
    :goto_3
    const v10, 0x6d795a57

    if-ne v1, v10, :cond_c

    .line 81
    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 82
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    const-string v7, ""

    .line 83
    .local v7, "leadingChar":Ljava/lang/String;
    if-nez v0, :cond_a

    .line 179
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v7    # "leadingChar":Ljava/lang/String;
    :goto_4
    return-void

    .line 59
    .end local v4    # "isEnableAutoCorrection":Z
    .end local v5    # "isEnableTraceInput":Z
    .end local v6    # "isTraceInput":Z
    :cond_4
    const/4 v4, 0x0

    goto :goto_0

    .line 61
    .restart local v4    # "isEnableAutoCorrection":Z
    :cond_5
    const/4 v6, 0x0

    goto :goto_1

    .line 63
    .restart local v6    # "isTraceInput":Z
    :cond_6
    const/4 v5, 0x0

    goto :goto_2

    .line 71
    .restart local v5    # "isEnableTraceInput":Z
    :cond_7
    iget-boolean v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-eqz v10, :cond_8

    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v10}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isAutoSpaceOn()Z

    move-result v10

    if-eqz v10, :cond_8

    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v10}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAtText()Z

    move-result v10

    if-eqz v10, :cond_8

    if-nez v6, :cond_8

    .line 72
    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Lcom/diotek/ime/framework/engine/InputEngineManager;->setActiveWordStatusChangable(Z)V

    goto :goto_3

    .line 74
    :cond_8
    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Lcom/diotek/ime/framework/engine/InputEngineManager;->setActiveWordStatusChangable(Z)V

    goto :goto_3

    .line 77
    :cond_9
    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Lcom/diotek/ime/framework/engine/InputEngineManager;->setActiveWordStatusChangable(Z)V

    goto :goto_3

    .line 86
    .restart local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    .restart local v7    # "leadingChar":Ljava/lang/String;
    :cond_a
    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-interface {v0, v10, v11}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v7

    .end local v7    # "leadingChar":Ljava/lang/String;
    check-cast v7, Ljava/lang/String;

    .line 87
    .restart local v7    # "leadingChar":Ljava/lang/String;
    if-nez v7, :cond_b

    const-string v7, ""

    .line 88
    :cond_b
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v10

    invoke-static {p1, v10}, Lcom/diotek/ime/framework/common/InputSequenceCheck;->adjustZawgyiPosition(II)I

    move-result v8

    .line 89
    .local v8, "mCode":I
    const/16 v10, 0x107d

    if-ne v8, v10, :cond_15

    .line 91
    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-interface {v0, v10, v11}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 92
    int-to-char v10, v8

    invoke-static {v10}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    .line 93
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setComposingText()V

    .line 98
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v7    # "leadingChar":Ljava/lang/String;
    .end local v8    # "mCode":I
    :cond_c
    :goto_5
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setPredictionWord(Z)V

    .line 99
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_e

    iget v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mStateCandidate:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_e

    const/16 v10, 0x20

    if-ne p1, v10, :cond_d

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->isEnableAutoCorrection()Z

    move-result v10

    if-nez v10, :cond_e

    .line 102
    :cond_d
    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v10}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    .line 104
    :cond_e
    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v10, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->isTextCharacter(I)Z

    move-result v10

    if-eqz v10, :cond_f

    if-eqz v3, :cond_10

    :cond_f
    if-eqz v5, :cond_1f

    iget-boolean v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsTraceOn:Z

    if-eqz v10, :cond_1f

    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    if-eqz v10, :cond_1f

    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v10}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v10

    const/4 v11, 0x2

    if-le v10, v11, :cond_1f

    .line 107
    :cond_10
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_11

    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    if-eqz v10, :cond_11

    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v10}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->isSymbolAndSpace()Z

    move-result v10

    if-nez v10, :cond_11

    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v10, p1, v6}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpace(IZ)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 110
    const/16 v10, 0x20

    invoke-static {v10}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(C)V

    .line 111
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/diotek/ime/framework/input/AbstractInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v10

    if-nez v10, :cond_11

    .line 113
    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v10

    if-eqz v10, :cond_11

    .line 114
    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/InputManager;->updateShiftState()V

    .line 118
    :cond_11
    if-eqz v2, :cond_12

    const/4 v10, 0x7

    if-eq v2, v10, :cond_12

    const/16 v10, 0x8

    if-ne v2, v10, :cond_1d

    .line 121
    :cond_12
    if-nez v5, :cond_16

    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v10

    if-nez v10, :cond_16

    invoke-static {v1, p1}, Lcom/diotek/ime/framework/util/Utils;->isMultitapKey(II)Z

    move-result v10

    if-eqz v10, :cond_16

    .line 123
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/input/QwertyLatinInputModule;->processMultiTap(I[I)V

    .line 171
    :goto_6
    const/4 v10, -0x5

    if-eq p1, v10, :cond_14

    const/16 v10, 0x20

    if-ne p1, v10, :cond_13

    iget v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mStateCandidate:I

    const/4 v11, 0x2

    if-eq v10, v11, :cond_14

    .line 174
    :cond_13
    const/4 v10, 0x0

    iput v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mStateCandidate:I

    .line 176
    :cond_14
    iput p1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mLastKeyCode:I

    .line 177
    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v10, p1, v6}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->setUpAutoSpace(IZ)V

    .line 178
    invoke-virtual {p0, v6}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setBeforeTraceInput(Z)V

    goto/16 :goto_4

    .line 95
    .restart local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    .restart local v7    # "leadingChar":Ljava/lang/String;
    .restart local v8    # "mCode":I
    :cond_15
    move p1, v8

    goto/16 :goto_5

    .line 124
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v7    # "leadingChar":Ljava/lang/String;
    .end local v8    # "mCode":I
    :cond_16
    if-nez v5, :cond_17

    const/high16 v10, 0x74680000

    if-ne v1, v10, :cond_17

    .line 125
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/input/QwertyLatinInputModule;->processMultiTap(I[I)V

    goto :goto_6

    .line 126
    :cond_17
    if-nez v5, :cond_18

    const/high16 v10, 0x6b6d0000

    if-ne v1, v10, :cond_18

    .line 127
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/input/QwertyLatinInputModule;->processSingleTap(I[I)V

    goto :goto_6

    .line 129
    :cond_18
    if-nez v5, :cond_19

    invoke-static {v1}, Lcom/diotek/ime/framework/util/Utils;->isLaggingModeLanguage(I)Z

    move-result v10

    if-eqz v10, :cond_19

    .line 130
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/input/QwertyLatinInputModule;->processSingleChar(I)V

    goto :goto_6

    .line 132
    :cond_19
    const/high16 v10, 0x74720000

    if-ne v1, v10, :cond_1a

    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v10

    if-eqz v10, :cond_1a

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getXt9Version()I

    move-result v10

    if-nez v10, :cond_1a

    .line 135
    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v11, "SETTINGS_TURKISH_KEYBOARD_TYPE"

    const/4 v12, 0x0

    invoke-interface {v10, v11, v12}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v9

    .line 136
    .local v9, "turkishKeyboardType":I
    if-nez v9, :cond_1a

    .line 137
    const/16 v10, 0x131

    if-ne p1, v10, :cond_1c

    .line 138
    const/16 p1, 0x130

    .line 144
    .end local v9    # "turkishKeyboardType":I
    :cond_1a
    :goto_7
    iget-boolean v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-eqz v10, :cond_1b

    iget-boolean v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsTraceOn:Z

    if-eqz v10, :cond_1b

    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    if-eqz v10, :cond_1b

    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v10}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v10

    const/4 v11, 0x2

    if-le v10, v11, :cond_1b

    .line 145
    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Lcom/diotek/ime/framework/common/InputManager;->setXt9NextWordPrediction(Z)V

    .line 147
    :cond_1b
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/input/QwertyLatinInputModule;->processSingleTap(I[I)V

    goto :goto_6

    .line 139
    .restart local v9    # "turkishKeyboardType":I
    :cond_1c
    const/16 v10, 0x69

    if-ne p1, v10, :cond_1a

    .line 140
    const/16 p1, 0x49

    goto :goto_7

    .line 150
    .end local v9    # "turkishKeyboardType":I
    :cond_1d
    const/4 v10, 0x1

    if-ne v2, v10, :cond_1e

    .line 151
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/input/QwertyLatinInputModule;->processMultiTap(I[I)V

    goto/16 :goto_6

    .line 153
    :cond_1e
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/input/QwertyLatinInputModule;->processSingleTap(I[I)V

    goto/16 :goto_6

    .line 156
    :cond_1f
    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v10, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->isNumericCharacter(I)Z

    move-result v10

    if-eqz v10, :cond_21

    .line 157
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_20

    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v10}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAtNumeric()Z

    move-result v10

    if-eqz v10, :cond_20

    .line 159
    const/16 v10, 0x20

    invoke-static {v10}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(C)V

    .line 160
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/diotek/ime/framework/input/AbstractInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 162
    :cond_20
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/input/QwertyLatinInputModule;->processSingleTap(I[I)V

    .line 169
    :goto_8
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->autoPeriod(I)V

    goto/16 :goto_6

    .line 164
    :cond_21
    invoke-virtual {p0, p1, p2}, Lcom/diotek/ime/framework/input/QwertyLatinInputModule;->processSymbolicKey(I[I)V

    goto :goto_8
.end method

.method public onHwrPanelLongPressed(ILjava/lang/String;)V
    .locals 0
    .param p1, "selectedArrayIndex"    # I
    .param p2, "resultString"    # Ljava/lang/String;

    .prologue
    .line 1155
    return-void
.end method

.method protected processSymbolicKey(I[I)V
    .locals 8
    .param p1, "keyCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    const/16 v7, 0x20

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 533
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    .line 534
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v3, v4}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    .line 535
    new-array v0, v6, [I

    .line 536
    .local v0, "activeIndex":[I
    const/4 v1, 0x0

    .line 538
    .local v1, "isActiveIndex":Z
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getCandidateviewStatus()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 539
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v4, 0x2

    invoke-interface {v3, v4}, Lcom/diotek/ime/framework/common/InputManager;->setCandidateviewStatus(I)V

    .line 540
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3, v5}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    .line 543
    :cond_0
    const-string v3, " .,;:!?\n()[]*&@{}/<>_-+=|\'\u061b\u060c\u061f\""

    invoke-virtual {v3, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 544
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/input/QwertyLatinInputModule;->processWordSeparator(I[I)V

    .line 588
    :goto_0
    return-void

    .line 546
    :cond_1
    const/16 v3, 0xa

    if-eq p1, v3, :cond_2

    if-ne p1, v7, :cond_3

    .line 548
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/input/QwertyLatinInputModule;->processWordSeparator(I[I)V

    goto :goto_0

    .line 550
    :cond_3
    const/4 v3, -0x5

    if-ne p1, v3, :cond_4

    .line 551
    invoke-direct {p0}, Lcom/diotek/ime/framework/input/QwertyLatinInputModule;->processBackSpaceKey()V

    goto :goto_0

    .line 553
    :cond_4
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_5

    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 555
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 556
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v3, v4}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    .line 557
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v3, v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getActiveIndex([I)I

    .line 558
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v3, v4}, Lcom/diotek/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    .line 560
    aget v3, v0, v5

    if-lez v3, :cond_5

    .line 561
    const/4 v1, 0x1

    .line 569
    :cond_5
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->isInMultiTapInput()Z

    move-result v2

    .line 570
    .local v2, "isInMultiTap":Z
    if-eqz v2, :cond_6

    invoke-static {p1}, Lcom/diotek/ime/framework/util/Utils;->isKhmerChar(I)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-static {p1}, Lcom/diotek/ime/framework/util/Utils;->isZawgyiChar(I)Z

    move-result v3

    if-nez v3, :cond_6

    .line 571
    invoke-virtual {p0, p1, p2}, Lcom/diotek/ime/framework/input/AbstractInputModule;->processMultiTapSymbolicKey(I[I)V

    goto :goto_0

    .line 575
    :cond_6
    if-eqz v1, :cond_8

    .line 576
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    aget v4, v0, v5

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(Ljava/lang/CharSequence;)V

    .line 583
    :goto_1
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v3, p1}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAtSymbol(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 584
    invoke-static {v7}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    .line 586
    :cond_7
    int-to-char v3, p1

    invoke-static {v3}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    .line 587
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/diotek/ime/framework/input/AbstractInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 578
    :cond_8
    invoke-virtual {p0, v6}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 579
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initComposingBuffer()V

    .line 580
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    goto :goto_1
.end method

.method public release()V
    .locals 0

    .prologue
    .line 45
    return-void
.end method

.method public setAddStrokeCallBackOnHWREngine()V
    .locals 0

    .prologue
    .line 1160
    return-void
.end method

.method public updateVOHWRSuggestion()V
    .locals 0

    .prologue
    .line 1164
    return-void
.end method
