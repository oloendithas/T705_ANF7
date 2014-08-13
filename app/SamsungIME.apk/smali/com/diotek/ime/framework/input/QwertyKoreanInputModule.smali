.class public Lcom/diotek/ime/framework/input/QwertyKoreanInputModule;
.super Lcom/diotek/ime/framework/input/AbstractInputModule;
.source "QwertyKoreanInputModule.java"


# instance fields
.field private deleteCountInRepeatKey:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;-><init>()V

    .line 365
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/input/QwertyKoreanInputModule;->deleteCountInRepeatKey:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 21
    return-void
.end method

.method private processBackSpaceKey()V
    .locals 23

    .prologue
    .line 368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v10

    .line 369
    .local v10, "ic":Landroid/view/inputmethod/InputConnection;
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-interface/range {v20 .. v21}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    .line 371
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 372
    .local v4, "builder":Ljava/lang/StringBuilder;
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v2, v0, [I

    .line 373
    .local v2, "activeIndex":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/diotek/ime/framework/common/InputManager;->isInRepeatKey()Z

    move-result v12

    .line 374
    .local v12, "isInRepeatKey":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->stopTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;)V

    .line 376
    const-string v14, ""

    .line 377
    .local v14, "lastChar":Ljava/lang/String;
    if-eqz v10, :cond_3

    .line 381
    const/16 v19, 0x0

    .line 382
    .local v19, "ss":Landroid/text/SpannableString;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    move/from16 v20, v0

    if-eqz v20, :cond_6

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v20

    if-eqz v20, :cond_6

    .line 384
    const v20, 0x7fffffff

    const/16 v21, 0x1

    :try_start_0
    move/from16 v0, v20

    move/from16 v1, v21

    invoke-interface {v10, v0, v1}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v20

    move-object/from16 v0, v20

    check-cast v0, Landroid/text/SpannableString;

    move-object/from16 v19, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 388
    :goto_0
    if-eqz v19, :cond_1

    .line 389
    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v19}, Landroid/text/SpannableString;->length()I

    move-result v21

    const-class v22, Ljava/lang/Object;

    invoke-virtual/range {v19 .. v22}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v17

    .line 390
    .local v17, "sp":[Ljava/lang/Object;
    move-object/from16 v3, v17

    .local v3, "arr$":[Ljava/lang/Object;
    array-length v15, v3

    .local v15, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_1
    if-ge v9, v15, :cond_1

    aget-object v18, v3, v9

    .line 391
    .local v18, "span":Ljava/lang/Object;
    move-object/from16 v0, v18

    instance-of v0, v0, Landroid/text/style/UnderlineSpan;

    move/from16 v20, v0

    if-eqz v20, :cond_0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v20

    invoke-virtual/range {v19 .. v19}, Landroid/text/SpannableString;->length()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_0

    .line 392
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/text/SpannableString;->getSpanStart(Ljava/lang/Object;)I

    move-result v20

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-interface {v10, v0, v1}, Landroid/view/inputmethod/InputConnection;->setComposingRegion(II)Z

    .line 390
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 385
    .end local v3    # "arr$":[Ljava/lang/Object;
    .end local v9    # "i$":I
    .end local v15    # "len$":I
    .end local v17    # "sp":[Ljava/lang/Object;
    .end local v18    # "span":Ljava/lang/Object;
    :catch_0
    move-exception v8

    .line 386
    .local v8, "e":Ljava/lang/ClassCastException;
    const/16 v20, 0x1

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-interface {v10, v0, v1}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v14

    .end local v14    # "lastChar":Ljava/lang/String;
    check-cast v14, Ljava/lang/String;

    .restart local v14    # "lastChar":Ljava/lang/String;
    goto :goto_0

    .line 396
    .end local v8    # "e":Ljava/lang/ClassCastException;
    :cond_1
    const-string v20, ""

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    if-eqz v19, :cond_2

    invoke-virtual/range {v19 .. v19}, Landroid/text/SpannableString;->length()I

    move-result v20

    if-lez v20, :cond_2

    .line 397
    invoke-virtual/range {v19 .. v19}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v19}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    add-int/lit8 v21, v21, -0x1

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 403
    :cond_2
    :goto_2
    if-nez v14, :cond_3

    .line 404
    const-string v14, ""

    .line 408
    .end local v19    # "ss":Landroid/text/SpannableString;
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setDeleteCount(Ljava/lang/String;)V

    .line 410
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->resetPredictionWord()V

    .line 411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/diotek/ime/framework/common/InputManager;->getSelectedNumOfText()I

    move-result v16

    .line 413
    .local v16, "selectedText":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    if-eqz v20, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-lez v20, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    if-eqz v20, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mStateCandidate:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_8

    .line 415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v20, v0

    const/16 v21, -0x5

    invoke-interface/range {v20 .. v21}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(I)I

    move-result v20

    if-eqz v20, :cond_4

    if-lez v16, :cond_7

    .line 417
    :cond_4
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 418
    const/16 v20, 0x43

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->onKeyDownUpHandle(I)V

    .line 503
    :cond_5
    :goto_3
    return-void

    .line 400
    .end local v16    # "selectedText":I
    .restart local v19    # "ss":Landroid/text/SpannableString;
    :cond_6
    const/16 v20, 0x1

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-interface {v10, v0, v1}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v14

    .end local v14    # "lastChar":Ljava/lang/String;
    check-cast v14, Ljava/lang/String;

    .restart local v14    # "lastChar":Ljava/lang/String;
    goto :goto_2

    .line 420
    .end local v19    # "ss":Landroid/text/SpannableString;
    .restart local v16    # "selectedText":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getCharSequence(Ljava/lang/StringBuilder;)I

    .line 422
    invoke-static {v4}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(Ljava/lang/StringBuilder;)V

    .line 424
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setComposingText()V

    .line 425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v20, v0

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputCharSequence(Ljava/lang/CharSequence;)I

    .line 426
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->clear()V

    .line 427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-interface/range {v20 .. v21}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    .line 428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getActiveIndex([I)I

    .line 429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-interface/range {v20 .. v21}, Lcom/diotek/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    goto :goto_3

    .line 432
    :cond_8
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v20

    if-eqz v20, :cond_b

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isLastActionIsTraceOrPick()Z

    move-result v20

    if-eqz v20, :cond_9

    .line 434
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 435
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initComposingBuffer()V

    .line 436
    const/16 v20, 0x43

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->onKeyDownUpHandle(I)V

    goto/16 :goto_3

    .line 438
    :cond_9
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 439
    .local v6, "composing":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v20, v0

    const/16 v21, -0x5

    invoke-interface/range {v20 .. v21}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(I)I

    move-result v20

    if-nez v20, :cond_a

    .line 440
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 441
    const/16 v20, 0x43

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->onKeyDownUpHandle(I)V

    goto/16 :goto_3

    .line 443
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getCharSequence(Ljava/lang/StringBuilder;)I

    .line 447
    invoke-static {v6}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(Ljava/lang/StringBuilder;)V

    .line 450
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setComposingText()V

    goto/16 :goto_3

    .line 454
    .end local v6    # "composing":Ljava/lang/StringBuilder;
    :cond_b
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isAutoCompletitionInput()Z

    move-result v11

    .line 455
    .local v11, "isCompletionOn":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v13

    .line 456
    .local v13, "isLandscape":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/diotek/ime/framework/common/InputManager;->getCompletions()[Landroid/view/inputmethod/CompletionInfo;

    move-result-object v5

    .line 458
    .local v5, "completions":[Landroid/view/inputmethod/CompletionInfo;
    if-eqz v11, :cond_e

    if-eqz v13, :cond_e

    if-eqz v5, :cond_e

    .line 459
    if-eqz v10, :cond_c

    .line 460
    invoke-interface {v10}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 462
    :cond_c
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 463
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getDeleteCount()I

    move-result v20

    const/16 v21, 0x14

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentPackageName()Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentPackageName()Ljava/lang/String;

    move-result-object v20

    const-string v21, "com.sec.chaton"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_d

    .line 466
    if-eqz v10, :cond_5

    .line 467
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getLastWordDividerIndex()I

    move-result v20

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-interface {v10, v0, v1}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto/16 :goto_3

    .line 470
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initWordDividerIndexList()V

    .line 471
    const/16 v20, 0x43

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->onKeyDownUpHandle(I)V

    goto/16 :goto_3

    .line 474
    :cond_e
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v20

    if-eqz v20, :cond_f

    .line 475
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 476
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initComposingBuffer()V

    .line 479
    :cond_f
    const/4 v7, 0x0

    .line 480
    .local v7, "deleteCount":I
    if-eqz v12, :cond_10

    .line 481
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/QwertyKoreanInputModule;->deleteCountInRepeatKey:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v7

    .line 485
    :goto_4
    const/16 v20, 0xa

    move/from16 v0, v20

    if-le v7, v0, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentPackageName()Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentPackageName()Ljava/lang/String;

    move-result-object v20

    const-string v21, "com.sec.chaton"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_11

    .line 488
    if-eqz v10, :cond_5

    .line 489
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getLastWordDividerIndex()I

    move-result v20

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-interface {v10, v0, v1}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto/16 :goto_3

    .line 483
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/QwertyKoreanInputModule;->deleteCountInRepeatKey:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_4

    .line 492
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initWordDividerIndexList()V

    .line 493
    const/16 v20, 0x43

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->onKeyDownUpHandle(I)V

    .line 494
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    move/from16 v20, v0

    if-eqz v20, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->isRecapture()Z

    move-result v20

    if-eqz v20, :cond_12

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_5

    .line 497
    :cond_12
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    goto/16 :goto_3
.end method

.method private processMultiTap(I[I)V
    .locals 7
    .param p1, "keyCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 105
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v5

    iput-boolean v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    .line 106
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    .line 108
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v5, v6}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    .line 109
    new-array v0, v3, [I

    .line 111
    .local v0, "activeIndex":[I
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v5}, Lcom/diotek/ime/framework/input/AbstractInputModule;->isTimerRunning(Lcom/diotek/ime/framework/input/InputModule$Timer;)Z

    move-result v2

    .line 112
    .local v2, "isTimerRunning":Z
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v5}, Lcom/diotek/ime/framework/input/AbstractInputModule;->stopTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;)V

    .line 113
    iget v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mLastKeyCode:I

    if-ne v5, p1, :cond_2

    move v1, v3

    .line 114
    .local v1, "isEqualKey":Z
    :goto_0
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    .line 115
    :cond_0
    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    .line 122
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v3, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(I)I

    .line 123
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getCharSequence(Ljava/lang/StringBuilder;)I

    .line 124
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setComposingText()V

    .line 126
    iget-boolean v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-eqz v3, :cond_4

    .line 127
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    .line 128
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v3, v4}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    .line 129
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v3, v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getActiveIndex([I)I

    .line 134
    :goto_2
    return-void

    .end local v1    # "isEqualKey":Z
    :cond_2
    move v1, v4

    .line 113
    goto :goto_0

    .line 118
    .restart local v1    # "isEqualKey":Z
    :cond_3
    invoke-virtual {p0, v3}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 119
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initComposingBuffer()V

    goto :goto_1

    .line 131
    :cond_4
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    const/16 v4, 0x5dc

    invoke-virtual {p0, v3, v4}, Lcom/diotek/ime/framework/input/AbstractInputModule;->startTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;I)V

    goto :goto_2
.end method

.method private processSingleTap(I[I)V
    .locals 13
    .param p1, "keyCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    .line 137
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v9

    iput-boolean v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    .line 138
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v9, :cond_0

    .line 139
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 141
    :cond_0
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v9, v10}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    .line 142
    const/4 v9, 0x1

    new-array v0, v9, [I

    .line 143
    .local v0, "activeIndex":[I
    const/4 v8, 0x0

    .line 144
    .local v8, "isTraceInput":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    .local v4, "builder":Ljava/lang/StringBuilder;
    iget-boolean v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-nez v9, :cond_1

    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->isEnableTraceInPassword()Z

    move-result v9

    if-eqz v9, :cond_6

    :cond_1
    const/4 v7, 0x1

    .line 146
    .local v7, "isEnableTraceInput":Z
    :goto_0
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v3

    .line 147
    .local v3, "beforeComposingLength":I
    move v1, v3

    .line 149
    .local v1, "afterComposingLength":I
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v9}, Lcom/diotek/ime/framework/input/AbstractInputModule;->stopTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;)V

    .line 150
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v9}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v6

    .line 151
    .local v6, "inputRange":I
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v9

    if-eqz v9, :cond_2

    if-nez v6, :cond_2

    .line 153
    invoke-static {p1}, Lcom/diotek/ime/framework/util/Utils;->getHangleShiftedChar(I)I

    move-result p1

    .line 156
    :cond_2
    iget-boolean v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getInputSequenceCount()I

    move-result v9

    const/16 v10, 0x40

    if-lt v9, v10, :cond_3

    .line 158
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/engine/InputEngineManager;->breakContext()V

    .line 159
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 160
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initComposingBuffer()V

    .line 161
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    .line 164
    :cond_3
    if-eqz v7, :cond_c

    iget-boolean v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsTraceOn:Z

    if-eqz v9, :cond_c

    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    if-eqz v9, :cond_c

    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v9}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v9

    const/4 v10, 0x2

    if-le v9, v10, :cond_c

    .line 165
    const/4 v9, 0x1

    new-array v2, v9, [Z

    .line 166
    .local v2, "bAddSpace":[Z
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v10}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTracePoint()[Landroid/graphics/PointF;

    move-result-object v10

    iget-object v11, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v11}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v11

    invoke-interface {v9, v10, v11, v2}, Lcom/diotek/ime/framework/engine/InputEngineManager;->isAutoAcceptBeforeTrace([Landroid/graphics/PointF;I[Z)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 167
    const/4 v9, 0x0

    aget-boolean v9, v2, v9

    if-eqz v9, :cond_7

    .line 168
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 169
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initComposingBuffer()V

    .line 170
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v9}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isAutoSpaceOn()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 171
    const/16 v9, 0x20

    invoke-static {v9}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(C)V

    .line 172
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/diotek/ime/framework/input/AbstractInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 181
    :cond_4
    :goto_1
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v10}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTracePoint()[Landroid/graphics/PointF;

    move-result-object v10

    iget-object v11, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v11}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v11

    const/4 v12, -0x1

    invoke-interface {v9, v10, v11, v12}, Lcom/diotek/ime/framework/engine/InputEngineManager;->processTrace([Landroid/graphics/PointF;IB)S

    move-result v9

    if-eqz v9, :cond_9

    .line 182
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v9}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->clearTraceInfo()V

    .line 183
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->resetPredictionWord()V

    .line 258
    .end local v2    # "bAddSpace":[Z
    :cond_5
    :goto_2
    return-void

    .line 145
    .end local v1    # "afterComposingLength":I
    .end local v3    # "beforeComposingLength":I
    .end local v6    # "inputRange":I
    .end local v7    # "isEnableTraceInput":Z
    :cond_6
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 175
    .restart local v1    # "afterComposingLength":I
    .restart local v2    # "bAddSpace":[Z
    .restart local v3    # "beforeComposingLength":I
    .restart local v6    # "inputRange":I
    .restart local v7    # "isEnableTraceInput":Z
    :cond_7
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    goto :goto_1

    .line 177
    :cond_8
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->isEnableTraceInPassword()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 178
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 179
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initComposingBuffer()V

    goto :goto_1

    .line 186
    :cond_9
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v9}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->clearTraceInfo()V

    .line 187
    const/4 v8, 0x1

    .line 202
    .end local v2    # "bAddSpace":[Z
    :cond_a
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v9, v4}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getCharSequence(Ljava/lang/StringBuilder;)I

    .line 203
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-nez v9, :cond_b

    if-eqz v8, :cond_b

    .line 204
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v9}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->disableSetUpAutoSpace()V

    .line 205
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->resetPredictionWord()V

    .line 208
    :cond_b
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v1

    .line 209
    iget-boolean v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-nez v9, :cond_11

    if-nez v7, :cond_11

    .line 210
    invoke-static {v4}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(Ljava/lang/StringBuilder;)V

    .line 212
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_10

    .line 213
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->getLastChar()C

    move-result v5

    .line 214
    .local v5, "composing":C
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-static {v9}, Lcom/diotek/ime/framework/input/ComposingTextManager;->setLength(I)V

    .line 215
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/diotek/ime/framework/input/QwertyKoreanInputModule;->commitText(Ljava/lang/CharSequence;)V

    .line 216
    invoke-static {v5}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(C)V

    .line 217
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setComposingText()V

    .line 255
    .end local v5    # "composing":C
    :goto_3
    if-eq v1, v3, :cond_5

    .line 256
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v10, "SENT_TEXT_BY_INPUTCONNECTION"

    const/4 v11, 0x1

    invoke-interface {v9, v10, v11}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    goto :goto_2

    .line 189
    :cond_c
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v9

    if-eqz v9, :cond_e

    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v9}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAtText()Z

    move-result v9

    if-eqz v9, :cond_e

    .line 190
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 191
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initComposingBuffer()V

    .line 197
    :cond_d
    :goto_4
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v9, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(I)I

    move-result v9

    if-nez v9, :cond_a

    .line 198
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->resetPredictionWord()V

    goto/16 :goto_2

    .line 192
    :cond_e
    iget-boolean v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-eqz v9, :cond_d

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->isRecapture()Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_d

    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v9, :cond_f

    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_f

    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_d

    :cond_f
    iget v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mStateCandidate:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_d

    .line 195
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->processReCaptureForXT9(I)V

    goto :goto_4

    .line 224
    :cond_10
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setComposingText()V

    goto :goto_3

    .line 240
    :cond_11
    invoke-static {v4}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(Ljava/lang/StringBuilder;)V

    .line 246
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setComposingText()V

    .line 247
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v9, v10}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputCharSequence(Ljava/lang/CharSequence;)I

    .line 248
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v9, :cond_12

    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 249
    :cond_12
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v9, v10}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    .line 250
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v9, v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getActiveIndex([I)I

    .line 252
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v9, v10}, Lcom/diotek/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    goto/16 :goto_3
.end method

.method private processWordSeparator(I[I)V
    .locals 11
    .param p1, "keyCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    const/4 v8, -0x1

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 298
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 299
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v1, :cond_1

    .line 363
    :cond_0
    :goto_0
    return-void

    .line 302
    :cond_1
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v7, "SETTINGS_DEFAULT_NEXTWORDPREDICTION"

    invoke-interface {v6, v7, v9}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v4

    .line 304
    .local v4, "isNextWordPredictionOn":Z
    const/4 v2, 0x0

    .line 305
    .local v2, "isComposingCurrent":Z
    const/16 v6, 0x20

    if-ne p1, v6, :cond_2

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 306
    const/4 v2, 0x1

    .line 309
    :cond_2
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    .line 310
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v6, v7}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    .line 311
    new-array v0, v10, [I

    .line 312
    .local v0, "activeIndex":[I
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v6, v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getActiveIndex([I)I

    .line 314
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_5

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 315
    iget v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPickSuggestionIndex:I

    .line 316
    .local v5, "pickeSuggestionIndex":I
    iget v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mStateCandidate:I

    if-nez v6, :cond_3

    .line 317
    if-eq v5, v8, :cond_7

    .line 318
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v6, v5}, Lcom/diotek/ime/framework/engine/InputEngineManager;->doNoteWordDoneForXt9(I)I

    .line 324
    :cond_3
    :goto_1
    aget v6, v0, v9

    if-eq v6, v8, :cond_4

    aget v6, v0, v9

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_4

    .line 325
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    aget v8, v0, v9

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    aget v9, v0, v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-interface {v7, v8, v6}, Lcom/diotek/ime/framework/engine/InputEngineManager;->wordSelected(ILjava/lang/CharSequence;)I

    .line 328
    :cond_4
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    .line 329
    invoke-virtual {p0, v10}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 330
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initComposingBuffer()V

    .line 333
    .end local v5    # "pickeSuggestionIndex":I
    :cond_5
    const/16 v6, 0xa

    if-ne p1, v6, :cond_8

    .line 334
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 335
    invoke-virtual {p0, v10}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 337
    :cond_6
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->sendEnterKeyHandle()V

    goto/16 :goto_0

    .line 320
    .restart local v5    # "pickeSuggestionIndex":I
    :cond_7
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    aget v7, v0, v9

    invoke-interface {v6, v7}, Lcom/diotek/ime/framework/engine/InputEngineManager;->doNoteWordDoneForXt9(I)I

    goto :goto_1

    .line 340
    .end local v5    # "pickeSuggestionIndex":I
    :cond_8
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->isInMultiTapInput()Z

    move-result v3

    .line 341
    .local v3, "isInMultiTap":Z
    if-eqz v3, :cond_9

    .line 342
    invoke-virtual {p0, p1, p2}, Lcom/diotek/ime/framework/input/AbstractInputModule;->processMultiTapSymbolicKey(I[I)V

    goto/16 :goto_0

    .line 345
    :cond_9
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposingWithoutInit()V

    .line 346
    int-to-char v6, p1

    invoke-static {v6}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(C)V

    .line 347
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/diotek/ime/framework/input/AbstractInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 350
    iget-boolean v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-eqz v6, :cond_0

    if-eqz v4, :cond_0

    iget v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mStateCandidate:I

    if-eq v6, v10, :cond_0

    .line 352
    if-eqz v2, :cond_a

    .line 353
    invoke-virtual {p0, v10}, Lcom/diotek/ime/framework/input/AbstractInputModule;->doNextWordPrediction(Z)V

    goto/16 :goto_0

    .line 354
    :cond_a
    if-nez v2, :cond_0

    iget v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mStateCandidate:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 355
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/engine/InputEngineManager;->reflashSelectList()I

    .line 356
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 357
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v6, v7}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    .line 358
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v6, v7}, Lcom/diotek/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    .line 359
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6, v10}, Lcom/diotek/ime/framework/common/InputManager;->setXt9NextWordPrediction(Z)V

    goto/16 :goto_0
.end method


# virtual methods
.method public closing()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->stopTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;)V

    .line 49
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    .line 50
    invoke-super {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->closing()V

    .line 51
    return-void
.end method

.method protected commitText(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 519
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 520
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 521
    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 523
    :cond_0
    return-void
.end method

.method public onCharacterKey(I[I)V
    .locals 9
    .param p1, "keyCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    const/16 v8, 0x20

    const/4 v7, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 55
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    .line 56
    .local v0, "inputMethod":I
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v1

    .line 57
    .local v1, "inputRange":I
    iget-boolean v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->isEnableTraceInPassword()Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_0
    move v2, v4

    .line 58
    .local v2, "isEnableTraceInput":Z
    :goto_0
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v5, :cond_1

    .line 59
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 61
    :cond_1
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v5, v6}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    .line 62
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    iget v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mStateCandidate:I

    if-ne v5, v4, :cond_2

    .line 63
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    .line 64
    iput v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mStateCandidate:I

    .line 66
    :cond_2
    invoke-virtual {p0, v4}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setPredictionWord(Z)V

    .line 67
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v5, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->isTextCharacter(I)Z

    move-result v5

    if-eqz v5, :cond_3

    if-eqz v1, :cond_4

    :cond_3
    if-eqz v2, :cond_a

    iget-boolean v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsTraceOn:Z

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v5

    if-le v5, v7, :cond_a

    .line 70
    :cond_4
    if-nez v0, :cond_8

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/input/QwertyKoreanInputModule;->processSingleTap(I[I)V

    .line 96
    :goto_1
    if-ne p1, v8, :cond_5

    iget v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mStateCandidate:I

    if-eq v4, v7, :cond_6

    .line 98
    :cond_5
    iput v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mStateCandidate:I

    .line 101
    :cond_6
    iput p1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mLastKeyCode:I

    .line 102
    return-void

    .end local v2    # "isEnableTraceInput":Z
    :cond_7
    move v2, v3

    .line 57
    goto :goto_0

    .line 72
    .restart local v2    # "isEnableTraceInput":Z
    :cond_8
    if-ne v0, v4, :cond_9

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/input/QwertyKoreanInputModule;->processMultiTap(I[I)V

    goto :goto_1

    .line 75
    :cond_9
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/input/QwertyKoreanInputModule;->processSingleTap(I[I)V

    goto :goto_1

    .line 78
    :cond_a
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v4, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->isNumericCharacter(I)Z

    move-result v4

    if-eqz v4, :cond_d

    iget-boolean v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsKorMode:Z

    if-eqz v4, :cond_b

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isDigitEditor()Z

    move-result v4

    if-nez v4, :cond_d

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isPhoneNumberInputClass()Z

    move-result v4

    if-nez v4, :cond_d

    :cond_b
    iget-boolean v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-eqz v4, :cond_d

    .line 81
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAtNumeric()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 83
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 84
    invoke-static {v8}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    .line 85
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/diotek/ime/framework/input/AbstractInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 87
    :cond_c
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/input/QwertyKoreanInputModule;->processSingleTap(I[I)V

    .line 94
    :goto_2
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->autoPeriod(I)V

    goto :goto_1

    .line 89
    :cond_d
    invoke-virtual {p0, p1, p2}, Lcom/diotek/ime/framework/input/QwertyKoreanInputModule;->processSymbolicKey(I[I)V

    goto :goto_2
.end method

.method public onHwrPanelLongPressed(ILjava/lang/String;)V
    .locals 0
    .param p1, "selectedArrayIndex"    # I
    .param p2, "resultString"    # Ljava/lang/String;

    .prologue
    .line 510
    return-void
.end method

.method public onHwrTouchDown(IIJ)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "eventTime"    # J

    .prologue
    .line 26
    const/4 v0, 0x0

    return v0
.end method

.method public onHwrTouchMove(IIJ)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "eventTime"    # J

    .prologue
    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public onHwrTouchUp(IIJ)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "eventTime"    # J

    .prologue
    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public pickSuggestionManually(ILjava/lang/CharSequence;)V
    .locals 14
    .param p1, "index"    # I
    .param p2, "suggestion"    # Ljava/lang/CharSequence;

    .prologue
    .line 527
    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v5

    .line 528
    .local v5, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v5, :cond_0

    .line 529
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isAutoCompletitionInput()Z

    move-result v6

    .line 530
    .local v6, "isCompletionOn":Z
    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v7

    .line 531
    .local v7, "isLandscape":Z
    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/InputManager;->getCompletions()[Landroid/view/inputmethod/CompletionInfo;

    move-result-object v3

    .line 532
    .local v3, "completions":[Landroid/view/inputmethod/CompletionInfo;
    if-eqz v6, :cond_1

    if-eqz v7, :cond_1

    if-eqz v3, :cond_1

    .line 533
    if-ltz p1, :cond_0

    array-length v10, v3

    if-ge p1, v10, :cond_0

    .line 534
    aget-object v2, v3, p1

    .line 535
    .local v2, "completion":Landroid/view/inputmethod/CompletionInfo;
    invoke-interface {v5, v2}, Landroid/view/inputmethod/InputConnection;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z

    .line 601
    .end local v2    # "completion":Landroid/view/inputmethod/CompletionInfo;
    .end local v3    # "completions":[Landroid/view/inputmethod/CompletionInfo;
    .end local v6    # "isCompletionOn":Z
    .end local v7    # "isLandscape":Z
    :cond_0
    :goto_0
    return-void

    .line 538
    .restart local v3    # "completions":[Landroid/view/inputmethod/CompletionInfo;
    .restart local v6    # "isCompletionOn":Z
    .restart local v7    # "isLandscape":Z
    :cond_1
    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/InputManager;->getCandidateviewStatus()I

    move-result v1

    .line 539
    .local v1, "candidateStatus":I
    const/4 v4, 0x0

    .line 540
    .local v4, "enableAutoSpaceForNextWordPrediction":Z
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_7

    iget v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mStateCandidate:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_7

    if-nez v1, :cond_7

    .line 542
    invoke-interface {v5}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 543
    iget v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosPrevText:I

    iget v11, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosNextText:I

    invoke-interface {v5, v10, v11}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 544
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setComposingText()V

    .line 545
    invoke-interface {v5}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 546
    const/4 v10, 0x0

    iput v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosPrevText:I

    .line 547
    const/4 v10, 0x0

    iput v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosNextText:I

    .line 548
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setPredictionWord(Z)V

    .line 557
    :cond_2
    :goto_1
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 558
    if-eqz v4, :cond_3

    .line 559
    const/16 v10, 0x20

    invoke-static {v10}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    .line 561
    :cond_3
    invoke-static/range {p2 .. p2}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    .line 562
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->isThaiAcceptable()Z

    move-result v10

    if-nez v10, :cond_4

    .line 563
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 565
    :cond_4
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setComposingText()V

    .line 566
    iput p1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPickSuggestionIndex:I

    .line 567
    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v10, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->processWhenPickSuggestionManually(I)I

    .line 568
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    .line 569
    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v11, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v10, v11}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    .line 570
    const/4 v10, 0x1

    new-array v0, v10, [I

    .line 571
    .local v0, "activeIndex":[I
    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v10, v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getActiveIndex([I)I

    .line 573
    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v10, :cond_6

    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_6

    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_6

    .line 574
    iget v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPickSuggestionIndex:I

    .line 575
    .local v9, "pickeSuggestionIndex":I
    iget v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mStateCandidate:I

    const/4 v11, 0x1

    if-eq v10, v11, :cond_5

    .line 576
    const/4 v10, -0x1

    if-eq v9, v10, :cond_9

    .line 577
    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v10, v9}, Lcom/diotek/ime/framework/engine/InputEngineManager;->doNoteWordDoneForXt9(I)I

    .line 582
    :cond_5
    :goto_2
    iget-object v11, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    const/4 v10, 0x0

    aget v12, v0, v10

    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    const/4 v13, 0x0

    aget v13, v0, v13

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/CharSequence;

    invoke-interface {v11, v12, v10}, Lcom/diotek/ime/framework/engine/InputEngineManager;->wordSelected(ILjava/lang/CharSequence;)I

    .line 583
    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v10}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    .line 586
    .end local v9    # "pickeSuggestionIndex":I
    :cond_6
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 587
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initComposingBuffer()V

    .line 589
    const/4 v10, -0x1

    iput v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPickSuggestionIndex:I

    .line 590
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 591
    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v11, "SETTINGS_DEFAULT_NEXTWORDPREDICTION"

    const/4 v12, 0x0

    invoke-interface {v10, v11, v12}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v8

    .line 593
    .local v8, "isNextWordPredictionOn":Z
    if-eqz v8, :cond_0

    iget v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mStateCandidate:I

    const/4 v11, 0x1

    if-eq v10, v11, :cond_0

    if-nez v1, :cond_0

    .line 596
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/diotek/ime/framework/input/AbstractInputModule;->doNextWordPrediction(Z)V

    goto/16 :goto_0

    .line 549
    .end local v0    # "activeIndex":[I
    .end local v8    # "isNextWordPredictionOn":Z
    :cond_7
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_8

    iget v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mStateCandidate:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_8

    if-nez v1, :cond_8

    .line 551
    const/4 v4, 0x1

    .line 552
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setPredictionWord(Z)V

    goto/16 :goto_1

    .line 553
    :cond_8
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 v10, 0x2

    if-ne v1, v10, :cond_2

    .line 554
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setPredictionWord(Z)V

    goto/16 :goto_1

    .line 579
    .restart local v0    # "activeIndex":[I
    .restart local v9    # "pickeSuggestionIndex":I
    :cond_9
    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    const/4 v11, 0x0

    aget v11, v0, v11

    invoke-interface {v10, v11}, Lcom/diotek/ime/framework/engine/InputEngineManager;->doNoteWordDoneForXt9(I)I

    goto :goto_2
.end method

.method protected processSymbolicKey(I[I)V
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    const/4 v4, 0x1

    .line 261
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    .line 262
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v2, v3}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    .line 263
    new-array v0, v4, [I

    .line 265
    .local v0, "activeIndex":[I
    const-string v2, " .,;:!?\n()[]*&@{}/<>_-+=|\'\u061b\u060c\u061f\""

    invoke-virtual {v2, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 266
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/input/QwertyKoreanInputModule;->processWordSeparator(I[I)V

    .line 295
    :goto_0
    return-void

    .line 268
    :cond_0
    const/16 v2, 0xa

    if-eq p1, v2, :cond_1

    const/16 v2, 0x20

    if-ne p1, v2, :cond_2

    .line 270
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/input/QwertyKoreanInputModule;->processWordSeparator(I[I)V

    goto :goto_0

    .line 272
    :cond_2
    const/4 v2, -0x5

    if-ne p1, v2, :cond_3

    .line 273
    invoke-direct {p0}, Lcom/diotek/ime/framework/input/QwertyKoreanInputModule;->processBackSpaceKey()V

    goto :goto_0

    .line 275
    :cond_3
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4

    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 276
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    int-to-char v3, p1

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputCharSequence(Ljava/lang/CharSequence;)I

    .line 277
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getCharSequence(Ljava/lang/StringBuilder;)I

    .line 278
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setComposingText()V

    .line 279
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 280
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v2, v3}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    .line 281
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v2, v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getActiveIndex([I)I

    .line 282
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v2, v3}, Lcom/diotek/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    .line 286
    :cond_4
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isInMultiTapInput()Z

    move-result v1

    .line 287
    .local v1, "isInMultiTap":Z
    if-eqz v1, :cond_5

    .line 288
    invoke-virtual {p0, p1, p2}, Lcom/diotek/ime/framework/input/AbstractInputModule;->processMultiTapSymbolicKey(I[I)V

    goto :goto_0

    .line 291
    :cond_5
    invoke-virtual {p0, v4}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 292
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initComposingBuffer()V

    .line 293
    int-to-char v2, p1

    invoke-static {v2}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(C)V

    .line 294
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/diotek/ime/framework/input/AbstractInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public release()V
    .locals 0

    .prologue
    .line 44
    return-void
.end method

.method public setAddStrokeCallBackOnHWREngine()V
    .locals 0

    .prologue
    .line 606
    return-void
.end method

.method public updateVOHWRSuggestion()V
    .locals 0

    .prologue
    .line 610
    return-void
.end method
