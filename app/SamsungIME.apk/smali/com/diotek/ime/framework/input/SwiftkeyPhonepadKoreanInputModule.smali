.class public Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;
.super Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;
.source "SwiftkeyPhonepadKoreanInputModule.java"


# instance fields
.field private final mBackupHangul:Ljava/lang/StringBuilder;

.field private mComposeableAddStroke:[C

.field private mComposeableDoubleUp:[C

.field private mComposeableVowel:[C

.field private mComposedisableAddStroke:[[C

.field private mIndexOfKey:I

.field private mIsTappingMultiTapKey:Z

.field private mIsTraceInput:Z

.field protected mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

.field private mReplaceVowel:[C


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 32
    invoke-direct {p0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;-><init>()V

    .line 33
    iput v2, p0, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mIndexOfKey:I

    .line 34
    iput-boolean v2, p0, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mIsTappingMultiTapKey:Z

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mBackupHangul:Ljava/lang/StringBuilder;

    .line 37
    iput-boolean v2, p0, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mIsTraceInput:Z

    .line 39
    const/4 v0, 0x3

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mReplaceVowel:[C

    .line 44
    const/16 v0, 0x12

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mComposeableVowel:[C

    .line 56
    const/16 v0, 0x15

    new-array v0, v0, [C

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mComposeableAddStroke:[C

    .line 64
    new-array v0, v3, [[C

    new-array v1, v3, [C

    fill-array-data v1, :array_3

    aput-object v1, v0, v2

    const/4 v1, 0x1

    new-array v2, v3, [C

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mComposedisableAddStroke:[[C

    .line 73
    const/16 v0, 0xa

    new-array v0, v0, [C

    fill-array-data v0, :array_5

    iput-object v0, p0, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mComposeableDoubleUp:[C

    .line 164
    new-instance v0, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule$1;

    invoke-direct {v0, p0}, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule$1;-><init>(Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;)V

    iput-object v0, p0, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    return-void

    .line 39
    :array_0
    .array-data 2
        0x315cs
        0x314fs
        0x3153s
    .end array-data

    .line 44
    nop

    :array_1
    .array-data 2
        0x314fs
        0x3163s
        0x3151s
        0x3163s
        0x3153s
        0x3163s
        0x3155s
        0x3163s
        0x3157s
        0x3163s
        0x3157s
        0x314fs
        0x315cs
        0x3163s
        0x315cs
        0x3153s
        0x3161s
        0x3163s
    .end array-data

    .line 56
    :array_2
    .array-data 2
        0x3131s
        0x314bs
        0x3134s
        0x3137s
        0x314cs
        0x3141s
        0x3142s
        0x314ds
        0x3145s
        0x3148s
        0x314as
        0x3147s
        0x314es
        0x314fs
        0x3151s
        0x3153s
        0x3155s
        0x3157s
        0x315bs
        0x315cs
        0x3160s
    .end array-data

    .line 64
    nop

    :array_3
    .array-data 2
        0x3157s
        0x314fs
    .end array-data

    :array_4
    .array-data 2
        0x315cs
        0x3153s
    .end array-data

    .line 73
    :array_5
    .array-data 2
        0x3131s
        0x3132s
        0x3137s
        0x3138s
        0x3142s
        0x3143s
        0x3145s
        0x3146s
        0x3148s
        0x3149s
    .end array-data
.end method

.method private chunjyinMultitap(Landroid/view/inputmethod/InputConnection;I[IZZI)V
    .locals 21
    .param p1, "ic"    # Landroid/view/inputmethod/InputConnection;
    .param p2, "keyCode"    # I
    .param p3, "keyCodes"    # [I
    .param p4, "isPrediction"    # Z
    .param p5, "isTimerRunning"    # Z
    .param p6, "hangulModule"    # I

    .prologue
    .line 430
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 432
    .local v5, "builder":Ljava/lang/StringBuilder;
    const/16 v17, 0x0

    .line 433
    .local v17, "splitedHangul":Ljava/lang/String;
    const/4 v11, 0x0

    .line 435
    .local v11, "isMakeComposingText":Z
    const/4 v10, 0x0

    .line 436
    .local v10, "isCallingUpdateSelection":Z
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v4

    .line 437
    .local v4, "beforeComposingLength":I
    move v3, v4

    .line 525
    .local v3, "afterComposingLength":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 526
    .local v9, "currentWord":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/diotek/ime/framework/common/InputManager;->getSelectedNumOfText()I

    move-result v16

    .line 528
    .local v16, "selectText":I
    if-eqz p4, :cond_1

    .line 529
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v18

    const/16 v19, 0x40

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_0

    .line 530
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 531
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->initComposingBuffer()V

    .line 532
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    .line 535
    :cond_0
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v18

    if-eqz v18, :cond_1

    .line 536
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v9}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getCharSequence(Ljava/lang/StringBuilder;)I

    .line 541
    :cond_1
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_7

    if-lez v16, :cond_7

    .line 543
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/diotek/ime/framework/engine/InputEngineManager;->breakContext()V

    .line 544
    move/from16 v0, p2

    int-to-char v0, v0

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    .line 651
    :cond_2
    :goto_0
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_1a

    const/16 v18, 0x119e

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->getLastChar()C

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_1a

    const/16 v18, 0x11a2

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->getLastChar()C

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_1a

    .line 654
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->getLastChar()C

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    .line 655
    .local v6, "composingWord":Ljava/lang/Character;
    if-eqz p4, :cond_17

    .line 659
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 660
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v18, v0

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lcom/diotek/ime/framework/engine/InputEngineManager;->splitHangul(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 661
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->setVerbatimToEngine()V

    .line 662
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputString(Ljava/lang/StringBuilder;)I

    .line 689
    .end local v6    # "composingWord":Ljava/lang/Character;
    :cond_3
    :goto_1
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v3

    .line 690
    if-nez p5, :cond_1c

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getTimeoutComposingLength()I

    move-result v18

    if-lez v18, :cond_1c

    .line 691
    invoke-virtual/range {p0 .. p1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setComposingTextWithoutBatch(Landroid/view/inputmethod/InputConnection;)V

    .line 696
    :goto_2
    if-nez v10, :cond_4

    if-eq v3, v4, :cond_5

    .line 697
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v18, v0

    const-string v19, "SENT_TEXT_BY_INPUTCONNECTION"

    const/16 v20, 0x1

    invoke-interface/range {v18 .. v20}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    .line 700
    :cond_5
    if-eqz p4, :cond_6

    .line 701
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSuggestionDelay()V

    .line 704
    :cond_6
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setTimeoutComposingLength(I)V

    .line 707
    return-void

    .line 545
    :cond_7
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_8

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v18

    if-lez v18, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosNextText:I

    move/from16 v18, v0

    if-nez v18, :cond_8

    .line 546
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v18, v0

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lcom/diotek/ime/framework/engine/InputEngineManager;->splitHangul(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    move/from16 v0, p2

    int-to-char v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v18, v0

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lcom/diotek/ime/framework/engine/InputEngineManager;->joinChunjiin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(Ljava/lang/String;)V

    .line 549
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 550
    :cond_8
    if-eqz p5, :cond_14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mIsTappingMultiTapKey:Z

    move/from16 v18, v0

    if-eqz v18, :cond_14

    invoke-static/range {p2 .. p2}, Ljava/lang/Character;->isLetter(I)Z

    move-result v18

    if-eqz v18, :cond_14

    .line 551
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v8

    .line 553
    .local v8, "currentComposingLenth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v18, v0

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lcom/diotek/ime/framework/engine/InputEngineManager;->splitHangul(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 554
    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    const/4 v12, 0x0

    .line 557
    .local v12, "isMultitapStop":Z
    const/16 v13, -0xff

    .line 558
    .local v13, "lastCode":I
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_9

    .line 559
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->charAt(I)C

    move-result v13

    .line 561
    :cond_9
    const/16 v18, 0x3

    move/from16 v0, p6

    move/from16 v1, v18

    if-ne v0, v1, :cond_b

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_b

    const/16 v18, 0x3150

    move/from16 v0, v18

    if-eq v13, v0, :cond_a

    const/16 v18, 0x3152

    move/from16 v0, v18

    if-eq v13, v0, :cond_a

    const/16 v18, 0x3154

    move/from16 v0, v18

    if-eq v13, v0, :cond_a

    const/16 v18, 0x3156

    move/from16 v0, v18

    if-ne v13, v0, :cond_b

    .line 566
    :cond_a
    const/4 v12, 0x1

    .line 569
    :cond_b
    const/16 v18, 0x119e

    move/from16 v0, p2

    move/from16 v1, v18

    if-eq v0, v1, :cond_d

    .line 570
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v14

    .line 572
    .local v14, "length":I
    if-eqz v12, :cond_11

    .line 573
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mIndexOfKey:I

    .line 582
    :cond_c
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mIndexOfKey:I

    move/from16 v18, v0

    aget p2, p3, v18

    .line 585
    .end local v14    # "length":I
    :cond_d
    move/from16 v0, p2

    int-to-char v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v18, v0

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lcom/diotek/ime/framework/engine/InputEngineManager;->joinChunjiin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(Ljava/lang/String;)V

    .line 588
    const/16 v18, 0x3

    move/from16 v0, p6

    move/from16 v1, v18

    if-ne v0, v1, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mLastKeyCode:I

    move/from16 v18, v0

    const/16 v19, 0x314f

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mLastKeyCode:I

    move/from16 v18, v0

    const/16 v19, 0x3153

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mLastKeyCode:I

    move/from16 v18, v0

    const/16 v19, 0x3163

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mLastKeyCode:I

    move/from16 v18, v0

    const/16 v19, 0x3157

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mLastKeyCode:I

    move/from16 v18, v0

    const/16 v19, 0x315c

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_f

    .line 594
    :cond_e
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v18

    move/from16 v0, v18

    if-le v0, v8, :cond_f

    .line 595
    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mLastKeyCode:I

    move/from16 p2, v0

    .line 596
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 597
    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 598
    move/from16 v0, p2

    int-to-char v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 599
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v18, v0

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lcom/diotek/ime/framework/engine/InputEngineManager;->joinChunjiin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(Ljava/lang/String;)V

    .line 600
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mIndexOfKey:I

    .line 601
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/diotek/ime/framework/common/InputManager;->resetMultiTap()V

    .line 605
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mIsTappingMultiTapKey:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2

    if-nez p4, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mBackupHangul:Ljava/lang/StringBuilder;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->length()I

    move-result v18

    if-lez v18, :cond_2

    move/from16 v0, p2

    int-to-char v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->isMedialVowel(C)Z

    move-result v18

    if-nez v18, :cond_2

    .line 609
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 610
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mBackupHangul:Ljava/lang/StringBuilder;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lcom/diotek/ime/framework/engine/InputEngineManager;->splitHangul(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    move/from16 v0, p2

    int-to-char v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 612
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v18, v0

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lcom/diotek/ime/framework/engine/InputEngineManager;->joinChunjiin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 614
    .local v15, "newBlock":Ljava/lang/String;
    if-eqz v15, :cond_13

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_13

    .line 615
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposingWithoutInit()V

    .line 616
    if-eqz p1, :cond_10

    .line 617
    const/16 v18, 0x2

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 619
    :cond_10
    const/4 v10, 0x1

    .line 620
    invoke-static {v15}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(Ljava/lang/String;)V

    .line 621
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mBackupHangul:Ljava/lang/StringBuilder;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->setLength(I)V

    goto/16 :goto_0

    .line 575
    .end local v15    # "newBlock":Ljava/lang/String;
    .restart local v14    # "length":I
    :cond_11
    const/16 v18, 0x1

    move/from16 v0, v18

    if-le v14, v0, :cond_12

    const/16 v18, 0x3

    move/from16 v0, p6

    move/from16 v1, v18

    if-ne v0, v1, :cond_12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mIndexOfKey:I

    move/from16 v18, v0

    aget v18, p3, v18

    const/16 v19, 0x3163

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_12

    .line 577
    add-int/lit8 v18, v14, -0x2

    move/from16 v0, v18

    invoke-virtual {v5, v0, v14}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 578
    :cond_12
    if-lez v14, :cond_c

    .line 579
    add-int/lit8 v18, v14, -0x1

    move/from16 v0, v18

    invoke-virtual {v5, v0, v14}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 623
    .end local v14    # "length":I
    .restart local v15    # "newBlock":Ljava/lang/String;
    :cond_13
    move/from16 v0, p2

    int-to-char v0, v0

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(C)V

    goto/16 :goto_0

    .line 627
    .end local v8    # "currentComposingLenth":I
    .end local v12    # "isMultitapStop":Z
    .end local v13    # "lastCode":I
    .end local v15    # "newBlock":Ljava/lang/String;
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v18, v0

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lcom/diotek/ime/framework/engine/InputEngineManager;->splitHangul(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    move/from16 v0, p2

    int-to-char v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 629
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v18, v0

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lcom/diotek/ime/framework/engine/InputEngineManager;->joinChunjiin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(Ljava/lang/String;)V

    .line 630
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v7

    .line 632
    .local v7, "composinglength":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/diotek/ime/framework/common/InputManager;->isKorMode()Z

    move-result v18

    if-nez v18, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/diotek/ime/framework/common/InputManager;->getSwiftkeyVersion()I

    move-result v18

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_15

    .line 633
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    move-object/from16 v18, v0

    if-eqz v18, :cond_15

    .line 634
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->mSwiftKeyKeyLearningManager:Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTouchPoint(I)Landroid/graphics/PointF;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v5, v1}, Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;->addTouchPoint(Ljava/lang/StringBuilder;Landroid/graphics/PointF;)V

    .line 639
    :cond_15
    if-eqz p1, :cond_16

    if-nez p5, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getTimeoutComposingLength()I

    move-result v18

    if-lez v18, :cond_16

    .line 640
    if-lez v7, :cond_16

    .line 641
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputStatus;->getLastInputProcess()I

    move-result v18

    sget v19, Lcom/diotek/ime/framework/repository/InputStatus;->INPUT_PROCESS_TOUCH:I

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_16

    .line 642
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getTimeoutComposingLength()I

    move-result v18

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 643
    const/4 v10, 0x1

    .line 648
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mBackupHangul:Ljava/lang/StringBuilder;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->setLength(I)V

    goto/16 :goto_0

    .line 664
    .end local v7    # "composinglength":I
    .restart local v6    # "composingWord":Ljava/lang/Character;
    :cond_17
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v14

    .line 666
    .restart local v14    # "length":I
    if-lez v14, :cond_18

    .line 667
    add-int/lit8 v18, v14, -0x1

    move/from16 v0, v18

    invoke-static {v0, v14}, Lcom/diotek/ime/framework/input/ComposingTextManager;->delete(II)V

    .line 668
    const/4 v10, 0x1

    .line 671
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mBackupHangul:Ljava/lang/StringBuilder;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 672
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mBackupHangul:Ljava/lang/StringBuilder;

    move-object/from16 v18, v0

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 673
    if-eqz p1, :cond_19

    .line 674
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->commitText(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)V

    .line 676
    :cond_19
    invoke-virtual {v6}, Ljava/lang/Character;->charValue()C

    move-result v18

    invoke-static/range {v18 .. v18}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(C)V

    goto/16 :goto_1

    .line 678
    .end local v6    # "composingWord":Ljava/lang/Character;
    .end local v14    # "length":I
    :cond_1a
    if-eqz p4, :cond_3

    .line 679
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 680
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v18, v0

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lcom/diotek/ime/framework/engine/InputEngineManager;->splitHangul(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 681
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/diotek/ime/framework/common/InputManager;->isKorMode()Z

    move-result v18

    if-nez v18, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/diotek/ime/framework/common/InputManager;->getSwiftkeyVersion()I

    move-result v18

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1b

    .line 682
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->mSwiftKeyKeyLearningManager:Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;->deleteLastTouchPoint()V

    .line 683
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->mSwiftKeyKeyLearningManager:Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTouchPoint(I)Landroid/graphics/PointF;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v5, v1}, Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;->addTouchPoint(Ljava/lang/StringBuilder;Landroid/graphics/PointF;)V

    .line 685
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->setVerbatimToEngine()V

    .line 686
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputString(Ljava/lang/StringBuilder;)I

    goto/16 :goto_1

    .line 693
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->setComposingText()V

    goto/16 :goto_2
.end method

.method private chunjyinMultitapByTrace(Landroid/view/inputmethod/InputConnection;[II)V
    .locals 4
    .param p1, "ic"    # Landroid/view/inputmethod/InputConnection;
    .param p2, "keyCodes"    # [I
    .param p3, "hangulModule"    # I

    .prologue
    .line 385
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTracePoint()[Landroid/graphics/PointF;

    move-result-object v1

    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v2

    const/4 v3, -0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/diotek/ime/framework/engine/InputEngineManager;->processTrace([Landroid/graphics/PointF;IB)S

    move-result v0

    if-nez v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->clearTraceInfo()V

    .line 388
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->resetPredictionWord()V

    .line 389
    invoke-interface {p1}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 390
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSequence(Ljava/lang/StringBuilder;)V

    .line 391
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSuggestionDelay()V

    .line 392
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->cancelPreviewTrace()V

    .line 426
    :goto_0
    return-void

    .line 396
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->stopTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;)V

    .line 398
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->resetTimeoutComposingLength()V

    .line 399
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 400
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposingWithoutInit()V

    .line 402
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->clearTraceInfo()V

    .line 404
    invoke-direct {p0}, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->isNotSpaceFrontOfCursor()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 405
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isAutoSpaceOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 406
    const/16 v0, 0x20

    invoke-static {v0}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    .line 410
    :cond_1
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 411
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->commitText(Ljava/lang/CharSequence;)V

    .line 414
    :cond_2
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getCharSequence(Ljava/lang/StringBuilder;I)I

    .line 415
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 416
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    if-eqz v0, :cond_4

    .line 417
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->disableSetUpAutoSpace()V

    .line 421
    :goto_1
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->resetPredictionWord()V

    .line 424
    :cond_3
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->setComposingText()V

    .line 425
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mIsTraceInput:Z

    goto :goto_0

    .line 419
    :cond_4
    const-string v0, "SamsungIME"

    const-string v1, "mAutoSpaceController is null. Skip disableSetupAutoSpace."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private commitText(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "ic"    # Landroid/view/inputmethod/InputConnection;
    .param p2, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 1473
    if-eqz p1, :cond_1

    .line 1474
    sget-boolean v0, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1475
    const-string v0, "SamsungIME"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<SwiftkeyPhonepadKoreanInputModule> commitText-(1) - Utils.getUsedTime() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/diotek/ime/framework/util/Utils;->getUsedTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1477
    :cond_0
    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1478
    sget-boolean v0, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 1479
    const-string v0, "SamsungIME"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<SwiftkeyPhonepadKoreanInputModule> commitText-(1) - Utils.getUsedTime() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/diotek/ime/framework/util/Utils;->getUsedTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1482
    :cond_1
    return-void
.end method

.method private countStroke(C)I
    .locals 1
    .param p1, "delChar"    # C

    .prologue
    .line 1694
    const/4 v0, 0x1

    .line 1696
    .local v0, "countStroke":I
    packed-switch p1, :pswitch_data_0

    .line 1719
    :goto_0
    :pswitch_0
    return v0

    .line 1701
    :pswitch_1
    const/4 v0, 0x2

    .line 1702
    goto :goto_0

    .line 1709
    :pswitch_2
    const/4 v0, 0x3

    .line 1710
    goto :goto_0

    .line 1713
    :pswitch_3
    const/4 v0, 0x4

    .line 1714
    goto :goto_0

    .line 1696
    nop

    :pswitch_data_0
    .packed-switch 0x314f
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static isConsonant(I)Z
    .locals 1
    .param p0, "code"    # I

    .prologue
    .line 1633
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

.method private isMedialVowel(C)Z
    .locals 2
    .param p1, "ch"    # C

    .prologue
    .line 1054
    const/4 v0, 0x0

    .line 1056
    .local v0, "bRetVal":Z
    const/16 v1, 0x314f

    if-lt p1, v1, :cond_0

    const/16 v1, 0x3163

    if-gt p1, v1, :cond_0

    .line 1057
    const/4 v0, 0x1

    .line 1060
    :cond_0
    return v0
.end method

.method private isNaragulSpecialKey(I)Z
    .locals 2
    .param p1, "keyCode"    # I

    .prologue
    .line 1064
    const/4 v0, 0x0

    .line 1066
    .local v0, "retVal":Z
    const/16 v1, 0x3130

    if-eq p1, v1, :cond_0

    const/16 v1, 0x318f

    if-ne p1, v1, :cond_1

    .line 1068
    :cond_0
    const/4 v0, 0x1

    .line 1071
    :cond_1
    return v0
.end method

.method private isNotSpaceFrontOfCursor()Z
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1679
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    .line 1680
    .local v2, "ic":Landroid/view/inputmethod/InputConnection;
    const-string v0, ".,?!"

    .line 1681
    .local v0, "SYM_PUNCTUATION":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 1690
    :cond_0
    :goto_0
    return v3

    .line 1685
    :cond_1
    invoke-interface {v2, v4, v3}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1686
    .local v1, "frontString":Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isLetter(C)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, ".,?!"

    invoke-virtual {v5, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_2
    move v3, v4

    .line 1687
    goto :goto_0
.end method

.method private naragulMultitap(Landroid/view/inputmethod/InputConnection;I[IZZ)V
    .locals 17
    .param p1, "ic"    # Landroid/view/inputmethod/InputConnection;
    .param p2, "keyCode"    # I
    .param p3, "keyCodes"    # [I
    .param p4, "isPrediction"    # Z
    .param p5, "isTimerRunning"    # Z

    .prologue
    .line 711
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 712
    .local v4, "builder":Ljava/lang/StringBuilder;
    const/4 v13, 0x0

    .line 713
    .local v13, "splitedHangul":Ljava/lang/String;
    const/4 v8, 0x0

    .line 715
    .local v8, "isMakeComposingText":Z
    const/4 v7, 0x0

    .line 716
    .local v7, "isCallingUpdateSelection":Z
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v3

    .line 717
    .local v3, "beforeComposingLength":I
    move v2, v3

    .line 805
    .local v2, "afterComposingLength":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 806
    .local v6, "currentWord":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/InputManager;->getSelectedNumOfText()I

    move-result v12

    .line 808
    .local v12, "selectText":I
    if-eqz p4, :cond_1

    .line 809
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v14

    const/16 v15, 0x40

    if-lt v14, v15, :cond_0

    .line 810
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 811
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->initComposingBuffer()V

    .line 812
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    .line 815
    :cond_0
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 816
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v14, v6}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getCharSequence(Ljava/lang/StringBuilder;)I

    .line 820
    :cond_1
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_8

    if-lez v12, :cond_8

    .line 822
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/engine/InputEngineManager;->breakContext()V

    .line 823
    move/from16 v0, p2

    int-to-char v14, v0

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 824
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->replaceNaragul(Ljava/lang/StringBuilder;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 825
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mIsTappingMultiTapKey:Z

    .line 826
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mIndexOfKey:I

    .line 975
    :goto_0
    return-void

    .line 829
    :cond_2
    const/16 v14, 0x3130

    move/from16 v0, p2

    if-eq v0, v14, :cond_3

    const/16 v14, 0x318f

    move/from16 v0, p2

    if-eq v0, v14, :cond_3

    .line 830
    move/from16 v0, p2

    int-to-char v14, v0

    invoke-static {v14}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    .line 929
    :cond_3
    :goto_1
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v14

    const/4 v15, 0x1

    if-le v14, v15, :cond_4

    const/16 v14, 0x119e

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->getLastChar()C

    move-result v15

    if-eq v14, v15, :cond_4

    const/16 v14, 0x11a2

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->getLastChar()C

    move-result v15

    if-eq v14, v15, :cond_4

    .line 932
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->getLastChar()C

    move-result v14

    invoke-static {v14}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    .line 934
    .local v5, "composingWord":Ljava/lang/Character;
    if-eqz p4, :cond_13

    .line 938
    const/4 v14, 0x0

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 939
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lcom/diotek/ime/framework/engine/InputEngineManager;->splitHangul(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 940
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->setVerbatimToEngine()V

    .line 941
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v14, v4}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputString(Ljava/lang/StringBuilder;)I

    .line 956
    .end local v5    # "composingWord":Ljava/lang/Character;
    :cond_4
    :goto_2
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v2

    .line 958
    if-eqz p1, :cond_15

    if-nez p5, :cond_15

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getTimeoutComposingLength()I

    move-result v14

    if-lez v14, :cond_15

    .line 959
    invoke-virtual/range {p0 .. p1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setComposingTextWithoutBatch(Landroid/view/inputmethod/InputConnection;)V

    .line 964
    :goto_3
    if-nez v7, :cond_5

    if-eq v2, v3, :cond_6

    .line 965
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v15, "SENT_TEXT_BY_INPUTCONNECTION"

    const/16 v16, 0x1

    invoke-interface/range {v14 .. v16}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    .line 968
    :cond_6
    if-eqz p4, :cond_7

    .line 969
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSuggestionDelay()V

    .line 972
    :cond_7
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setTimeoutComposingLength(I)V

    goto/16 :goto_0

    .line 832
    :cond_8
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_a

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v14

    if-lez v14, :cond_a

    move-object/from16 v0, p0

    iget v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosNextText:I

    if-nez v14, :cond_a

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->isNaragulSpecialKey(I)Z

    move-result v14

    if-nez v14, :cond_a

    .line 834
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lcom/diotek/ime/framework/engine/InputEngineManager;->splitHangul(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 835
    move/from16 v0, p2

    int-to-char v14, v0

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 836
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->replaceNaragul(Ljava/lang/StringBuilder;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 837
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mIsTappingMultiTapKey:Z

    .line 838
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mIndexOfKey:I

    goto/16 :goto_0

    .line 842
    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lcom/diotek/ime/framework/engine/InputEngineManager;->joinNaragul(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(Ljava/lang/String;)V

    .line 843
    const/4 v8, 0x1

    goto/16 :goto_1

    .line 844
    :cond_a
    if-eqz p5, :cond_f

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mIsTappingMultiTapKey:Z

    if-eqz v14, :cond_f

    invoke-static/range {p2 .. p2}, Ljava/lang/Character;->isLetter(I)Z

    move-result v14

    if-eqz v14, :cond_f

    .line 845
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lcom/diotek/ime/framework/engine/InputEngineManager;->splitHangul(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 846
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 848
    const/16 v14, 0x119e

    move/from16 v0, p2

    if-eq v0, v14, :cond_c

    .line 849
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    .line 850
    .local v10, "length":I
    if-lez v10, :cond_b

    .line 851
    add-int/lit8 v14, v10, -0x1

    invoke-virtual {v4, v14, v10}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 854
    :cond_b
    move-object/from16 v0, p0

    iget v14, v0, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mIndexOfKey:I

    aget p2, p3, v14

    .line 857
    .end local v10    # "length":I
    :cond_c
    move/from16 v0, p2

    int-to-char v14, v0

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 859
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->replaceNaragul(Ljava/lang/StringBuilder;)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 860
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mIsTappingMultiTapKey:Z

    .line 861
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mIndexOfKey:I

    goto/16 :goto_0

    .line 865
    :cond_d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lcom/diotek/ime/framework/engine/InputEngineManager;->joinNaragul(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(Ljava/lang/String;)V

    .line 866
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mIsTappingMultiTapKey:Z

    if-eqz v14, :cond_3

    if-nez p4, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mBackupHangul:Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v14

    if-lez v14, :cond_3

    move/from16 v0, p2

    int-to-char v14, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->isMedialVowel(C)Z

    move-result v14

    if-nez v14, :cond_3

    .line 870
    const/4 v14, 0x0

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 871
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mBackupHangul:Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lcom/diotek/ime/framework/engine/InputEngineManager;->splitHangul(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 872
    move/from16 v0, p2

    int-to-char v14, v0

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 874
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lcom/diotek/ime/framework/engine/InputEngineManager;->joinNaragul(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 875
    .local v11, "newBlock":Ljava/lang/String;
    if-eqz p1, :cond_e

    if-eqz v11, :cond_e

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_e

    .line 876
    const-string v14, ""

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->commitText(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)V

    .line 877
    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v14, v15}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 878
    const/4 v7, 0x1

    .line 879
    invoke-static {v11}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(Ljava/lang/String;)V

    .line 880
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mBackupHangul:Ljava/lang/StringBuilder;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->setLength(I)V

    goto/16 :goto_1

    .line 882
    :cond_e
    move/from16 v0, p2

    int-to-char v14, v0

    invoke-static {v14}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(C)V

    goto/16 :goto_1

    .line 887
    .end local v11    # "newBlock":Ljava/lang/String;
    :cond_f
    const/4 v9, 0x0

    .line 889
    .local v9, "lastKeyCode":C
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lcom/diotek/ime/framework/engine/InputEngineManager;->splitHangul(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 890
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->isNaragulSpecialKey(I)Z

    move-result v14

    if-eqz v14, :cond_10

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v14

    if-lez v14, :cond_10

    .line 891
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v9

    .line 893
    :cond_10
    move/from16 v0, p2

    int-to-char v14, v0

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 894
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->replaceNaragul(Ljava/lang/StringBuilder;)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 895
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mIsTappingMultiTapKey:Z

    .line 896
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mIndexOfKey:I

    goto/16 :goto_0

    .line 900
    :cond_11
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lcom/diotek/ime/framework/engine/InputEngineManager;->joinNaragul(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(Ljava/lang/String;)V

    .line 901
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->isNaragulSpecialKey(I)Z

    move-result v14

    if-eqz v14, :cond_12

    if-nez p4, :cond_12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mBackupHangul:Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v14

    if-lez v14, :cond_12

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->isMedialVowel(C)Z

    move-result v14

    if-nez v14, :cond_12

    .line 905
    const/4 v14, 0x0

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 906
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mBackupHangul:Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lcom/diotek/ime/framework/engine/InputEngineManager;->splitHangul(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 907
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->getLastChar()C

    move-result v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 909
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lcom/diotek/ime/framework/engine/InputEngineManager;->joinNaragul(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 910
    .restart local v11    # "newBlock":Ljava/lang/String;
    if-eqz v11, :cond_12

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v14

    const/4 v15, 0x1

    if-lt v14, v15, :cond_12

    .line 911
    const-string v14, ""

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->commitText(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)V

    .line 912
    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v14, v15}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 914
    invoke-static {v11}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(Ljava/lang/String;)V

    .line 915
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mBackupHangul:Ljava/lang/StringBuilder;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 926
    .end local v11    # "newBlock":Ljava/lang/String;
    :cond_12
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mBackupHangul:Ljava/lang/StringBuilder;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->setLength(I)V

    goto/16 :goto_1

    .line 943
    .end local v9    # "lastKeyCode":C
    .restart local v5    # "composingWord":Ljava/lang/Character;
    :cond_13
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v10

    .line 944
    .restart local v10    # "length":I
    if-lez v10, :cond_14

    .line 945
    add-int/lit8 v14, v10, -0x1

    invoke-static {v14, v10}, Lcom/diotek/ime/framework/input/ComposingTextManager;->delete(II)V

    .line 949
    :cond_14
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mBackupHangul:Ljava/lang/StringBuilder;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 950
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mBackupHangul:Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 951
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->commitText(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)V

    .line 952
    invoke-virtual {v5}, Ljava/lang/Character;->charValue()C

    move-result v14

    invoke-static {v14}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(C)V

    goto/16 :goto_2

    .line 961
    .end local v5    # "composingWord":Ljava/lang/Character;
    .end local v10    # "length":I
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->setComposingText()V

    goto/16 :goto_3
.end method

.method private processBackSpaceKey()V
    .locals 23

    .prologue
    .line 1338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v9

    .line 1340
    .local v9, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v9, :cond_1

    .line 1470
    :cond_0
    :goto_0
    return-void

    .line 1344
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    .line 1345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-interface/range {v20 .. v22}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;Z)I

    .line 1346
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1347
    .local v4, "builder":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->stopTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;)V

    .line 1348
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getPreferenceInputMethodOnKor()I

    move-result v7

    .line 1355
    .local v7, "hangulModule":I
    const-string v12, ""

    .line 1359
    .local v12, "lastChar":Ljava/lang/String;
    const/16 v19, 0x0

    .line 1360
    .local v19, "ss":Landroid/text/SpannableString;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    move/from16 v20, v0

    if-eqz v20, :cond_7

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v20

    if-eqz v20, :cond_7

    .line 1362
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->isEnableAutoCorrection()Z

    move-result v20

    if-nez v20, :cond_3

    .line 1363
    const v20, 0x7fffffff

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-interface {v9, v0, v1}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v20

    move-object/from16 v0, v20

    check-cast v0, Landroid/text/SpannableString;

    move-object/from16 v19, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1369
    :goto_1
    if-eqz v19, :cond_4

    .line 1370
    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v19}, Landroid/text/SpannableString;->length()I

    move-result v21

    const-class v22, Ljava/lang/Object;

    invoke-virtual/range {v19 .. v22}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v16

    .line 1371
    .local v16, "sp":[Ljava/lang/Object;
    move-object/from16 v3, v16

    .local v3, "arr$":[Ljava/lang/Object;
    array-length v13, v3

    .local v13, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_2
    if-ge v8, v13, :cond_4

    aget-object v17, v3, v8

    .line 1372
    .local v17, "span":Ljava/lang/Object;
    move-object/from16 v0, v17

    instance-of v0, v0, Landroid/text/style/UnderlineSpan;

    move/from16 v20, v0

    if-eqz v20, :cond_2

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v20

    invoke-virtual/range {v19 .. v19}, Landroid/text/SpannableString;->length()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_2

    .line 1373
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/SpannableString;->getSpanStart(Ljava/lang/Object;)I

    move-result v20

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-interface {v9, v0, v1}, Landroid/view/inputmethod/InputConnection;->setComposingRegion(II)Z

    .line 1371
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 1365
    .end local v3    # "arr$":[Ljava/lang/Object;
    .end local v8    # "i$":I
    .end local v13    # "len$":I
    .end local v16    # "sp":[Ljava/lang/Object;
    .end local v17    # "span":Ljava/lang/Object;
    :cond_3
    const/16 v20, 0x1

    const/16 v21, 0x0

    :try_start_1
    move/from16 v0, v20

    move/from16 v1, v21

    invoke-interface {v9, v0, v1}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v12

    .end local v12    # "lastChar":Ljava/lang/String;
    check-cast v12, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v12    # "lastChar":Ljava/lang/String;
    goto :goto_1

    .line 1366
    .end local v12    # "lastChar":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 1367
    .local v6, "e":Ljava/lang/ClassCastException;
    const/16 v20, 0x1

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-interface {v9, v0, v1}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .restart local v12    # "lastChar":Ljava/lang/String;
    goto :goto_1

    .line 1377
    .end local v6    # "e":Ljava/lang/ClassCastException;
    :cond_4
    const-string v20, ""

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_5

    if-eqz v19, :cond_5

    invoke-virtual/range {v19 .. v19}, Landroid/text/SpannableString;->length()I

    move-result v20

    if-lez v20, :cond_5

    .line 1378
    invoke-virtual/range {v19 .. v19}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v19}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    add-int/lit8 v21, v21, -0x1

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 1384
    :cond_5
    :goto_3
    if-nez v12, :cond_6

    .line 1385
    const-string v12, ""

    .line 1387
    :cond_6
    const/16 v19, 0x0

    .line 1389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/diotek/ime/framework/common/InputManager;->getSelectedNumOfText()I

    move-result v15

    .line 1391
    .local v15, "selectedText":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setDeleteCount(Ljava/lang/String;)V

    .line 1392
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->resetPredictionWord()V

    .line 1393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    if-eqz v20, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-lez v20, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    if-eqz v20, :cond_10

    .line 1394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v20, v0

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Lcom/diotek/ime/framework/engine/InputEngineManager;->splitHangul(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1395
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_9

    .line 1396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v20, v0

    const/16 v21, -0x5

    invoke-interface/range {v20 .. v21}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(I)I

    .line 1397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/diotek/ime/framework/common/InputManager;->isKorMode()Z

    move-result v20

    if-nez v20, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/diotek/ime/framework/common/InputManager;->getSwiftkeyVersion()I

    move-result v20

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_8

    .line 1398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v20, v0

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Lcom/diotek/ime/framework/engine/InputEngineManager;->splitHangul(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1399
    .local v18, "splitHangul":Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->countStroke(C)I

    move-result v5

    .line 1400
    .local v5, "deleteCount":I
    if-ltz v5, :cond_8

    .line 1401
    const/4 v10, 0x0

    .local v10, "index":I
    :goto_4
    if-ge v10, v5, :cond_8

    .line 1402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->mSwiftKeyKeyLearningManager:Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;->deleteLastTouchPoint()V

    .line 1401
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 1381
    .end local v5    # "deleteCount":I
    .end local v10    # "index":I
    .end local v15    # "selectedText":I
    .end local v18    # "splitHangul":Ljava/lang/String;
    :cond_7
    const/16 v20, 0x1

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-interface {v9, v0, v1}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v12

    .end local v12    # "lastChar":Ljava/lang/String;
    check-cast v12, Ljava/lang/String;

    .restart local v12    # "lastChar":Ljava/lang/String;
    goto/16 :goto_3

    .line 1406
    .restart local v15    # "selectedText":I
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->deleteLastJamoInComposing()V

    .line 1407
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->setComposingText()V

    .line 1434
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSuggestionDelay()V

    .line 1435
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v20

    if-eqz v20, :cond_0

    .line 1436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    move-object/from16 v20, v0

    const/16 v21, 0x5dc

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputModule;->startTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;I)V

    goto/16 :goto_0

    .line 1408
    :cond_9
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v20

    if-lez v20, :cond_b

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_a

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/lang/String;->charAt(I)C

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Character;->isDigit(C)Z

    move-result v20

    if-nez v20, :cond_b

    .line 1409
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v20, v0

    const/16 v21, -0x5

    invoke-interface/range {v20 .. v21}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(I)I

    .line 1410
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 1411
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 1412
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSequence(Ljava/lang/StringBuilder;)V

    goto :goto_5

    .line 1414
    :cond_b
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v20

    if-gtz v20, :cond_c

    if-lez v15, :cond_d

    .line 1415
    :cond_c
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setPredictionWord(Z)V

    .line 1417
    :cond_d
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 1418
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getDeleteCount()I

    move-result v20

    const/16 v21, 0xa

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_e

    invoke-static {}, Lcom/diotek/ime/framework/repository/PackageStatus;->getPackageName()Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    move-result-object v20

    sget-object v21, Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;->CHATON_PACKAGE_NAME:Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_e

    .line 1420
    if-eqz v9, :cond_f

    .line 1421
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getLastWordDividerIndex()I

    move-result v20

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-interface {v9, v0, v1}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 1422
    const/16 v20, 0x12c

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->postUpdateSequenceAndSuggestionDelay(I)V

    goto/16 :goto_0

    .line 1426
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initWordDividerIndexList()V

    .line 1427
    const/16 v20, 0x43

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->onKeyDownUpHandle(I)V

    .line 1428
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposingWithoutInit()V

    .line 1430
    :cond_f
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->postUpdateSequence(I)V

    .line 1431
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSuggestionDelay()V

    goto/16 :goto_0

    .line 1439
    :cond_10
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v20

    if-eqz v20, :cond_14

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_11

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/lang/String;->charAt(I)C

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Character;->isDigit(C)Z

    move-result v20

    if-nez v20, :cond_14

    .line 1440
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v20, v0

    const/16 v21, -0x5

    invoke-interface/range {v20 .. v21}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(I)I

    .line 1441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v20, v0

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Lcom/diotek/ime/framework/engine/InputEngineManager;->splitHangul(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1442
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v14

    .line 1443
    .local v14, "length":I
    if-lez v14, :cond_12

    .line 1444
    add-int/lit8 v20, v14, -0x1

    move/from16 v0, v20

    invoke-virtual {v4, v0, v14}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1447
    :cond_12
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 1448
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v20, v0

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Lcom/diotek/ime/framework/engine/InputEngineManager;->joinChunjiin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1449
    .local v11, "joinedHangul":Ljava/lang/String;
    if-eqz v11, :cond_13

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v20

    if-lez v20, :cond_13

    .line 1450
    invoke-static {v11}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    .line 1453
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->setComposingText()V

    .line 1454
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setTimeoutComposingLength(I)V

    .line 1455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    move-object/from16 v20, v0

    const/16 v21, 0x5dc

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputModule;->startTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;I)V

    goto/16 :goto_0

    .line 1457
    .end local v11    # "joinedHangul":Ljava/lang/String;
    .end local v14    # "length":I
    :cond_14
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 1458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    .line 1459
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getDeleteCount()I

    move-result v20

    const/16 v21, 0x14

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_15

    invoke-static {}, Lcom/diotek/ime/framework/repository/PackageStatus;->getPackageName()Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    move-result-object v20

    sget-object v21, Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;->CHATON_PACKAGE_NAME:Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_15

    .line 1461
    if-eqz v9, :cond_0

    .line 1462
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getLastWordDividerIndex()I

    move-result v20

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-interface {v9, v0, v1}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto/16 :goto_0

    .line 1465
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initWordDividerIndexList()V

    .line 1466
    const/16 v20, 0x43

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->onKeyDownUpHandle(I)V

    goto/16 :goto_0
.end method

.method private processForwardDelete()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1307
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1308
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v0, :cond_1

    .line 1335
    :cond_0
    :goto_0
    return-void

    .line 1312
    :cond_1
    const-string v1, ""

    .line 1313
    .local v1, "lastChar":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 1314
    const/4 v2, 0x1

    invoke-interface {v0, v2, v4}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .end local v1    # "lastChar":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 1315
    .restart local v1    # "lastChar":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 1316
    const-string v1, ""

    .line 1319
    :cond_2
    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setDeleteCount(Ljava/lang/String;)V

    .line 1320
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->resetPredictionWord()V

    .line 1322
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getDeleteCount()I

    move-result v2

    const/16 v3, 0xa

    if-le v2, v3, :cond_4

    invoke-static {}, Lcom/diotek/ime/framework/repository/PackageStatus;->getPackageName()Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    move-result-object v2

    sget-object v3, Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;->CHATON_PACKAGE_NAME:Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    if-eq v2, v3, :cond_4

    .line 1324
    if-eqz v0, :cond_3

    .line 1325
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getFirstWordDividerIndex()I

    move-result v2

    invoke-interface {v0, v4, v2}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 1332
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

    .line 1333
    invoke-virtual {p0, v4}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->postUpdateSequenceAndSuggestionDelay(I)V

    goto :goto_0

    .line 1328
    :cond_4
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initWordDividerIndexList()V

    .line 1329
    const/16 v2, 0x70

    invoke-virtual {p0, v2}, Lcom/diotek/ime/framework/input/AbstractInputModule;->onKeyDownUpHandle(I)V

    goto :goto_1
.end method

.method private processMultiTap(I[I)V
    .locals 11
    .param p1, "keyCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    .line 258
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 259
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v1, :cond_1

    .line 323
    :cond_0
    :goto_0
    return-void

    .line 266
    :cond_1
    iget-boolean v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isEnableTraceInPassword()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_2
    const/4 v8, 0x1

    .line 267
    .local v8, "isEnableTraceInput":Z
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mIsTraceInput:Z

    .line 269
    iget-object v0, p0, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->isTimerRunning(Lcom/diotek/ime/framework/input/InputModule$Timer;)Z

    move-result v5

    .line 270
    .local v5, "isTimerRunning":Z
    iget-object v0, p0, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->stopTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;)V

    .line 272
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getPreferenceInputMethodOnKor()I

    move-result v6

    .line 274
    .local v6, "hangulModule":I
    iget-boolean v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->setIsTappingMultiTapKey(Landroid/view/inputmethod/InputConnection;I[IZZ)I

    move-result p1

    .line 276
    const/4 v0, 0x1

    if-ne v6, v0, :cond_6

    .line 277
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v7

    .line 278
    .local v7, "inputRange":I
    iget-boolean v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsTraceOn:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v0

    const/4 v2, 0x2

    if-le v0, v2, :cond_8

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->isSymbolAndSpace()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v9, 0x1

    .line 279
    .local v9, "isTraceInput":Z
    :goto_2
    iget-boolean v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isEnableTraceInPassword()Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_3
    iget-boolean v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsTraceOn:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v0

    const/4 v2, 0x2

    if-le v0, v2, :cond_9

    const/4 v10, 0x1

    .line 280
    .local v10, "isTraceON":Z
    :goto_3
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->isTextCharacter(I)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz v7, :cond_5

    :cond_4
    if-eqz v10, :cond_6

    .line 281
    :cond_5
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->isSymbolAndSpace()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v0, p1, v9}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpace(IZ)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 284
    const/16 v0, 0x20

    invoke-static {v0}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(C)V

    .line 285
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 290
    .end local v7    # "inputRange":I
    .end local v9    # "isTraceInput":Z
    .end local v10    # "isTraceON":Z
    :cond_6
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 292
    packed-switch v6, :pswitch_data_0

    .line 297
    if-eqz v8, :cond_a

    iget-boolean v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsTraceOn:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v0

    const/4 v2, 0x2

    if-le v0, v2, :cond_a

    .line 298
    invoke-direct {p0, v1, p2, v6}, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->chunjyinMultitapByTrace(Landroid/view/inputmethod/InputConnection;[II)V

    .line 305
    :goto_4
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 310
    iget-boolean v0, p0, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mIsTraceInput:Z

    if-nez v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isTalkbackEnabled()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 312
    iget-object v0, p0, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    const/16 v2, 0xbb8

    invoke-virtual {p0, v0, v2}, Lcom/diotek/ime/framework/input/AbstractInputModule;->startTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;I)V

    goto/16 :goto_0

    .line 266
    .end local v5    # "isTimerRunning":Z
    .end local v6    # "hangulModule":I
    .end local v8    # "isEnableTraceInput":Z
    :cond_7
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 278
    .restart local v5    # "isTimerRunning":Z
    .restart local v6    # "hangulModule":I
    .restart local v7    # "inputRange":I
    .restart local v8    # "isEnableTraceInput":Z
    :cond_8
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 279
    .restart local v9    # "isTraceInput":Z
    :cond_9
    const/4 v10, 0x0

    goto :goto_3

    .line 294
    .end local v7    # "inputRange":I
    .end local v9    # "isTraceInput":Z
    :pswitch_0
    iget-boolean v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->naragulMultitap(Landroid/view/inputmethod/InputConnection;I[IZZ)V

    goto :goto_4

    .line 301
    :cond_a
    iget-boolean v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->chunjyinMultitap(Landroid/view/inputmethod/InputConnection;I[IZZI)V

    goto :goto_4

    .line 314
    :cond_b
    iget-object v0, p0, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    const/16 v2, 0x5dc

    invoke-virtual {p0, v0, v2}, Lcom/diotek/ime/framework/input/AbstractInputModule;->startTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;I)V

    goto/16 :goto_0

    .line 292
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method private processSingleTap(I[I)V
    .locals 7
    .param p1, "keyCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    const/4 v6, 0x0

    .line 1083
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v3

    .line 1084
    .local v3, "ic":Landroid/view/inputmethod/InputConnection;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1085
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v4}, Lcom/diotek/ime/framework/input/AbstractInputModule;->stopTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;)V

    .line 1086
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v4, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(I)I

    .line 1087
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v4, v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getCharSequence(Ljava/lang/StringBuilder;)I

    .line 1089
    iget-boolean v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-nez v4, :cond_2

    .line 1090
    invoke-static {v0}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(Ljava/lang/StringBuilder;)V

    .line 1091
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v5, "HANGUL_DELETE_LENGTH"

    invoke-interface {v4, v5, v6}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v2

    .line 1093
    .local v2, "deleteLength":I
    if-eqz v3, :cond_0

    .line 1094
    invoke-interface {v3, v2, v6}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 1097
    :cond_0
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_1

    .line 1098
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->getLastChar()C

    move-result v1

    .line 1099
    .local v1, "composing":C
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v4}, Lcom/diotek/ime/framework/input/ComposingTextManager;->setLength(I)V

    .line 1100
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 1101
    invoke-static {v1}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    .line 1102
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->setComposingText()V

    .line 1120
    .end local v1    # "composing":C
    :goto_0
    return-void

    .line 1104
    :cond_1
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->setComposingText()V

    goto :goto_0

    .line 1107
    .end local v2    # "deleteLength":I
    :cond_2
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v5, "HANGUL_DELETE_LENGTH"

    invoke-interface {v4, v5, v6}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v2

    .line 1109
    .restart local v2    # "deleteLength":I
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v4

    sub-int/2addr v4, v2

    if-ltz v4, :cond_3

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v5

    if-le v4, v5, :cond_4

    .line 1111
    :cond_3
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 1116
    :goto_1
    invoke-static {v0}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    .line 1117
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->setComposingText()V

    .line 1118
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSuggestionDelay()V

    goto :goto_0

    .line 1113
    :cond_4
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-static {v4}, Lcom/diotek/ime/framework/input/ComposingTextManager;->setLength(I)V

    goto :goto_1
.end method

.method private processWordSeparator(I[I)V
    .locals 17
    .param p1, "keyCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    .line 1190
    const/4 v14, 0x1

    new-array v1, v14, [I

    .line 1191
    .local v1, "activeIndex":[I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v14, v1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getActiveIndex([I)I

    .line 1192
    const/4 v9, 0x0

    .line 1193
    .local v9, "isComposing":Z
    const/4 v11, -0x1

    .line 1194
    .local v11, "lastCharCode":I
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getPreferenceInputMethodOnKor()I

    move-result v5

    .line 1196
    .local v5, "hangulModule":I
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 1197
    const/4 v9, 0x1

    .line 1198
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-static {v14}, Lcom/diotek/ime/framework/input/ComposingTextManager;->codePointAt(I)I

    move-result v11

    .line 1201
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v14, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lez v14, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_4

    .line 1202
    move/from16 v0, p1

    int-to-char v14, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/diotek/ime/framework/input/AbstractInputModule;->isEnableAutoCorrection(C)Z

    move-result v14

    if-eqz v14, :cond_5

    if-eqz v9, :cond_1

    const/4 v14, 0x4

    if-eq v5, v14, :cond_1

    const/4 v14, 0x2

    if-eq v5, v14, :cond_1

    if-eqz v9, :cond_5

    const/16 v14, 0x20

    move/from16 v0, p1

    if-eq v0, v14, :cond_5

    .line 1207
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v6

    .line 1208
    .local v6, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v6, :cond_3

    .line 1304
    .end local v6    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_2
    :goto_0
    return-void

    .line 1211
    .restart local v6    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->doAutoCorrection(Landroid/view/inputmethod/InputConnection;[I)V

    .line 1248
    .end local v6    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    .line 1250
    const/16 v14, 0xa

    move/from16 v0, p1

    if-ne v0, v14, :cond_d

    .line 1251
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 1252
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->sendEnterKeyHandle()V

    .line 1253
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-eqz v14, :cond_2

    .line 1256
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->postUpdateSequenceAndSuggestionDelay(I)V

    goto :goto_0

    .line 1213
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/InputManager;->isInMultiTapInput()Z

    move-result v14

    if-eqz v14, :cond_6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/InputManager;->getIsPendingUpdateCandidateView()Z

    move-result v14

    if-nez v14, :cond_4

    .line 1214
    :cond_6
    const/16 v14, 0x20

    move/from16 v0, p1

    if-ne v0, v14, :cond_7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/diotek/ime/framework/input/AbstractInputModule;->isTimerRunning(Lcom/diotek/ime/framework/input/InputModule$Timer;)Z

    move-result v14

    if-nez v14, :cond_8

    .line 1215
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    const/4 v15, 0x0

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-interface/range {v14 .. v16}, Lcom/diotek/ime/framework/engine/InputEngineManager;->wordSelected(ILjava/lang/CharSequence;)I

    .line 1218
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/InputManager;->isKorMode()Z

    move-result v14

    if-nez v14, :cond_c

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/InputManager;->getSwiftkeyVersion()I

    move-result v14

    const/4 v15, 0x3

    if-ne v14, v15, :cond_c

    .line 1219
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1220
    .local v2, "builder":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    const/4 v15, 0x0

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-interface/range {v14 .. v16}, Lcom/diotek/ime/framework/engine/InputEngineManager;->wordSelected(ILjava/lang/CharSequence;)I

    .line 1223
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lcom/diotek/ime/framework/engine/InputEngineManager;->splitHangul(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1224
    .local v4, "currentComposingString":Ljava/lang/String;
    const/4 v7, 0x0

    .line 1226
    .local v7, "index":I
    if-eqz v4, :cond_a

    .line 1227
    const/4 v7, 0x0

    :goto_2
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v14

    if-ge v7, v14, :cond_a

    .line 1228
    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1229
    .local v3, "currentChar":C
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->countStroke(C)I

    move-result v12

    .line 1230
    .local v12, "strokeCount":I
    const/4 v14, 0x1

    if-ne v12, v14, :cond_9

    .line 1231
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1227
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1233
    :cond_9
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->splitStroke(C)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1238
    .end local v3    # "currentChar":C
    .end local v12    # "strokeCount":I
    :cond_a
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_b

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->mSwiftKeyKeyLearningManager:Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;

    invoke-virtual {v14, v2}, Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;->needToKeyLearningKorPhonpad(Ljava/lang/StringBuilder;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 1239
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->mSwiftKeyKeyLearningManager:Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;

    invoke-virtual {v15}, Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;->getOriginalTouchKeys()Ljava/util/LinkedList;

    move-result-object v15

    invoke-interface {v14, v15, v2}, Lcom/diotek/ime/framework/engine/InputEngineManager;->updateKeyPressModeling(Ljava/util/LinkedList;Ljava/lang/StringBuilder;)V

    .line 1241
    :cond_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->mSwiftKeyKeyLearningManager:Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;

    invoke-virtual {v14}, Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;->clearTouchPoints()V

    .line 1243
    .end local v2    # "builder":Ljava/lang/StringBuilder;
    .end local v4    # "currentComposingString":Ljava/lang/String;
    .end local v7    # "index":I
    :cond_c
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 1244
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->initComposingBuffer()V

    goto/16 :goto_1

    .line 1260
    :cond_d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/InputManager;->isInMultiTapInput()Z

    move-result v10

    .line 1261
    .local v10, "isInMultiTap":Z
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getNumberAndSymbolsKeypadType()I

    move-result v13

    .line 1262
    .local v13, "symbolsModule":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v14}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v8

    .line 1263
    .local v8, "inputRange":I
    if-eqz v10, :cond_e

    .line 1264
    invoke-virtual/range {p0 .. p2}, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->processMultiTapSymbolicKey(I[I)V

    goto/16 :goto_0

    .line 1268
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposingWithoutInit()V

    .line 1269
    const/4 v14, 0x1

    if-eq v5, v14, :cond_10

    const/4 v14, 0x2

    if-eq v5, v14, :cond_10

    const/4 v14, 0x3

    if-eq v5, v14, :cond_10

    const/4 v14, 0x4

    if-ne v5, v14, :cond_f

    if-nez v8, :cond_10

    :cond_f
    const/4 v14, 0x2

    if-ne v13, v14, :cond_14

    if-eqz v8, :cond_14

    :cond_10
    if-eqz v9, :cond_14

    .line 1275
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/diotek/ime/framework/input/AbstractInputModule;->isTimerRunning(Lcom/diotek/ime/framework/input/InputModule$Timer;)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 1276
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/diotek/ime/framework/input/AbstractInputModule;->stopTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;)V

    .line 1279
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->resetTimeoutComposingLength()V

    .line 1280
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->initComposingBuffer()V

    .line 1282
    const/16 v14, 0x20

    move/from16 v0, p1

    if-ne v0, v14, :cond_14

    const/4 v14, 0x2

    if-ne v5, v14, :cond_12

    invoke-static {v11}, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->isConsonant(I)Z

    move-result v14

    if-nez v14, :cond_12

    invoke-static {v11}, Ljava/lang/Character;->isLetter(I)Z

    move-result v14

    if-nez v14, :cond_14

    const/16 v14, 0x20

    move/from16 v0, p1

    if-ne v0, v14, :cond_14

    .line 1285
    :cond_12
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-eqz v14, :cond_13

    .line 1288
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->postUpdateSequenceAndSuggestionDelay(I)V

    .line 1290
    :cond_13
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/InputManager;->resetMultiTap()V

    goto/16 :goto_0

    .line 1295
    :cond_14
    move/from16 v0, p1

    int-to-char v14, v0

    invoke-static {v14}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(C)V

    .line 1296
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 1298
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-eqz v14, :cond_2

    .line 1301
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->postUpdateSequenceAndSuggestionDelay(I)V

    goto/16 :goto_0
.end method

.method private replaceNaragul(Ljava/lang/StringBuilder;)Z
    .locals 12
    .param p1, "builder"    # Ljava/lang/StringBuilder;

    .prologue
    const/16 v11, 0x318f

    const/16 v10, 0x3130

    const/4 v9, 0x1

    .line 978
    const/4 v0, 0x0

    .line 979
    .local v0, "bRetVal":Z
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    .line 981
    .local v5, "length":I
    if-le v5, v9, :cond_d

    .line 982
    const/4 v2, 0x0

    .line 983
    .local v2, "i":I
    add-int/lit8 v7, v5, -0x2

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    .line 984
    .local v6, "preCharacter":C
    add-int/lit8 v7, v5, -0x1

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    .line 986
    .local v4, "lastCharacter":C
    invoke-direct {p0, v6}, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->isMedialVowel(C)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-direct {p0, v4}, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->isMedialVowel(C)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 987
    const/4 v2, 0x0

    :goto_0
    iget-object v7, p0, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mComposeableVowel:[C

    array-length v7, v7

    if-ge v2, v7, :cond_0

    .line 988
    iget-object v7, p0, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mComposeableVowel:[C

    aget-char v7, v7, v2

    if-ne v6, v7, :cond_5

    iget-object v7, p0, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mComposeableVowel:[C

    add-int/lit8 v8, v2, 0x1

    aget-char v7, v7, v8

    if-ne v4, v7, :cond_5

    .line 994
    :cond_0
    iget-object v7, p0, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mComposeableVowel:[C

    array-length v7, v7

    if-lt v2, v7, :cond_1

    .line 995
    const/4 v0, 0x1

    .line 999
    :cond_1
    if-ne v4, v10, :cond_7

    .line 1000
    const/4 v2, 0x0

    :goto_1
    iget-object v7, p0, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mComposeableAddStroke:[C

    array-length v7, v7

    if-ge v2, v7, :cond_2

    .line 1001
    iget-object v7, p0, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mComposeableAddStroke:[C

    aget-char v7, v7, v2

    if-ne v6, v7, :cond_6

    .line 1006
    :cond_2
    iget-object v7, p0, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mComposeableAddStroke:[C

    array-length v7, v7

    if-lt v2, v7, :cond_3

    .line 1007
    const/4 v0, 0x1

    .line 1010
    :cond_3
    if-nez v0, :cond_7

    const/4 v7, 0x2

    if-le v5, v7, :cond_7

    .line 1011
    add-int/lit8 v7, v5, -0x3

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    .line 1013
    .local v1, "doublePreCharacter":C
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_2
    iget-object v7, p0, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mComposedisableAddStroke:[[C

    array-length v7, v7

    if-ge v3, v7, :cond_7

    .line 1014
    iget-object v7, p0, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mComposedisableAddStroke:[[C

    aget-object v7, v7, v3

    const/4 v8, 0x0

    aget-char v7, v7, v8

    if-ne v1, v7, :cond_4

    iget-object v7, p0, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mComposedisableAddStroke:[[C

    aget-object v7, v7, v3

    aget-char v7, v7, v9

    if-ne v6, v7, :cond_4

    .line 1016
    const/4 v0, 0x1

    .line 1013
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 987
    .end local v1    # "doublePreCharacter":C
    .end local v3    # "k":I
    :cond_5
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 1000
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1022
    :cond_7
    if-ne v4, v11, :cond_9

    .line 1023
    const/4 v2, 0x0

    :goto_3
    iget-object v7, p0, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mComposeableDoubleUp:[C

    array-length v7, v7

    if-ge v2, v7, :cond_8

    .line 1024
    iget-object v7, p0, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mComposeableDoubleUp:[C

    aget-char v7, v7, v2

    if-ne v6, v7, :cond_b

    .line 1029
    :cond_8
    iget-object v7, p0, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mComposeableDoubleUp:[C

    array-length v7, v7

    if-lt v2, v7, :cond_9

    .line 1030
    const/4 v0, 0x1

    .line 1034
    :cond_9
    const/4 v2, 0x0

    :goto_4
    iget-object v7, p0, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mReplaceVowel:[C

    array-length v7, v7

    if-ge v2, v7, :cond_a

    .line 1035
    iget-object v7, p0, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mReplaceVowel:[C

    aget-char v7, v7, v2

    if-ne v6, v7, :cond_c

    iget-object v7, p0, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mReplaceVowel:[C

    add-int/lit8 v8, v2, 0x1

    aget-char v7, v7, v8

    if-ne v4, v7, :cond_c

    .line 1036
    add-int/lit8 v7, v5, -0x1

    iget-object v8, p0, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mReplaceVowel:[C

    add-int/lit8 v9, v2, 0x2

    aget-char v8, v8, v9

    invoke-virtual {p1, v7, v8}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 1037
    const/4 v0, 0x0

    .line 1050
    .end local v2    # "i":I
    .end local v4    # "lastCharacter":C
    .end local v6    # "preCharacter":C
    :cond_a
    :goto_5
    return v0

    .line 1023
    .restart local v2    # "i":I
    .restart local v4    # "lastCharacter":C
    .restart local v6    # "preCharacter":C
    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1034
    :cond_c
    add-int/lit8 v2, v2, 0x3

    goto :goto_4

    .line 1041
    .end local v2    # "i":I
    .end local v4    # "lastCharacter":C
    .end local v6    # "preCharacter":C
    :cond_d
    if-ne v5, v9, :cond_a

    .line 1042
    add-int/lit8 v7, v5, -0x1

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    .line 1044
    .restart local v4    # "lastCharacter":C
    if-eq v4, v10, :cond_e

    if-ne v4, v11, :cond_a

    .line 1046
    :cond_e
    const/4 v0, 0x1

    goto :goto_5
.end method

.method private setIsTappingMultiTapKey(Landroid/view/inputmethod/InputConnection;I[IZZ)I
    .locals 6
    .param p1, "ic"    # Landroid/view/inputmethod/InputConnection;
    .param p2, "keyCode"    # I
    .param p3, "keyCodes"    # [I
    .param p4, "isPrediction"    # Z
    .param p5, "isTimerRunning"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 327
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputStatus;->isCjiTurboKeyLongpress()Z

    move-result v0

    .line 329
    .local v0, "isCjiTurboLongPress":Z
    if-eqz v0, :cond_2

    .line 330
    if-eqz p3, :cond_0

    array-length v2, p3

    if-le v2, v5, :cond_0

    .line 331
    aget p2, p3, v5

    .line 334
    :cond_0
    invoke-static {v4}, Lcom/diotek/ime/framework/repository/InputStatus;->setFlagCjiTurboKeyLongpress(Z)V

    .line 335
    iput-boolean v4, p0, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mIsTappingMultiTapKey:Z

    .line 336
    iput v4, p0, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mIndexOfKey:I

    .line 381
    :cond_1
    :goto_0
    return p2

    .line 355
    :cond_2
    if-eqz p3, :cond_3

    array-length v2, p3

    if-le v2, v5, :cond_3

    iget v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mLastKeyCode:I

    aget v3, p3, v4

    if-ne v2, v3, :cond_3

    .line 356
    iput-boolean v5, p0, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mIsTappingMultiTapKey:Z

    .line 357
    iget v2, p0, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mIndexOfKey:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mIndexOfKey:I

    array-length v3, p3

    rem-int/2addr v2, v3

    iput v2, p0, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mIndexOfKey:I

    .line 370
    :goto_1
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->getLastChar()C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-nez v2, :cond_1

    .line 372
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->getLastChar()C

    move-result v1

    .line 373
    .local v1, "tmpChar":C
    const/16 v2, 0x119e

    if-eq v2, v1, :cond_1

    const/16 v2, 0x11a2

    if-eq v2, v1, :cond_1

    .line 375
    invoke-virtual {p0, v5}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    goto :goto_0

    .line 359
    .end local v1    # "tmpChar":C
    :cond_3
    iput-boolean v4, p0, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mIsTappingMultiTapKey:Z

    .line 360
    iput v4, p0, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mIndexOfKey:I

    goto :goto_1
.end method

.method private splitStroke(C)Ljava/lang/String;
    .locals 4
    .param p1, "currentChar"    # C

    .prologue
    const/16 v3, 0x3161

    const/16 v2, 0x3163

    const/16 v1, 0x199e

    .line 1724
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1726
    .local v0, "builder":Ljava/lang/StringBuilder;
    packed-switch p1, :pswitch_data_0

    .line 1788
    :goto_0
    :pswitch_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1728
    :pswitch_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1729
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1732
    :pswitch_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1733
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1736
    :pswitch_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1737
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1740
    :pswitch_4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1741
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1744
    :pswitch_5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1745
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1746
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1749
    :pswitch_6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1750
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1751
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1754
    :pswitch_7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1755
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1756
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1759
    :pswitch_8
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1760
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1761
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1764
    :pswitch_9
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1765
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1766
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1769
    :pswitch_a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1770
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1771
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1774
    :pswitch_b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1775
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1776
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1777
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1780
    :pswitch_c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1781
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1782
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1783
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1726
    nop

    :pswitch_data_0
    .packed-switch 0x314f
        :pswitch_1
        :pswitch_9
        :pswitch_5
        :pswitch_b
        :pswitch_2
        :pswitch_a
        :pswitch_6
        :pswitch_c
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public endMultitapTimer()V
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/InputModule$Timer;->setRunning(Z)V

    .line 211
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTimmerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 212
    const/4 v0, -0x1

    iput v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mLastKeyCode:I

    .line 213
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 214
    return-void
.end method

.method public initComposingBuffer()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1486
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v1

    .line 1488
    .local v1, "inputMethod":I
    if-eq v1, v5, :cond_0

    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1490
    :cond_0
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/engine/InputEngineManager;->doResetMultitap()I

    .line 1495
    :cond_1
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getTimeoutComposingLength()I

    move-result v3

    if-le v3, v5, :cond_3

    .line 1496
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1498
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    .line 1499
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 1501
    const-string v2, ""

    .line 1502
    .local v2, "lastChar":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 1503
    invoke-interface {v0, v5, v4}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v2

    .end local v2    # "lastChar":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 1504
    .restart local v2    # "lastChar":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 1505
    const-string v2, ""

    .line 1509
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_5

    .line 1510
    invoke-static {v2}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    .line 1511
    invoke-virtual {p0, v5}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setTimeoutComposingLength(I)V

    .line 1518
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v2    # "lastChar":Ljava/lang/String;
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getTimeoutComposingLength()I

    move-result v3

    if-nez v3, :cond_4

    .line 1519
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    .line 1520
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 1524
    :cond_4
    iput v4, p0, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mIndexOfKey:I

    .line 1525
    iput-boolean v4, p0, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mIsTappingMultiTapKey:Z

    .line 1526
    iget-object v3, p0, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mBackupHangul:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1527
    return-void

    .line 1513
    .restart local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    .restart local v2    # "lastChar":Ljava/lang/String;
    :cond_5
    invoke-virtual {p0, v4}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setTimeoutComposingLength(I)V

    goto :goto_0
.end method

.method public initInputEngineAndComposing(IIII)V
    .locals 1
    .param p1, "oldSelStart"    # I
    .param p2, "oldSelEnd"    # I
    .param p3, "newSelStart"    # I
    .param p4, "newSelEnd"    # I

    .prologue
    .line 1544
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getTimeoutComposingLength()I

    move-result v0

    if-lez v0, :cond_0

    .line 1545
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setTimeoutComposingLength(I)V

    .line 1546
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->initComposingBuffer()V

    .line 1548
    :cond_0
    return-void
.end method

.method public isMultiTapRnunnig()Z
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/input/InputModule$Timer;->isRunning()Z

    move-result v0

    .line 205
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSwiftPhonepadInput()Z
    .locals 1

    .prologue
    .line 1675
    const/4 v0, 0x1

    return v0
.end method

.method public onCharacterKey(I[I)V
    .locals 12
    .param p1, "keyCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x2

    const/16 v9, 0x8

    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 85
    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v8}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v1

    .line 86
    .local v1, "inputMethod":I
    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v8}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v2

    .line 88
    .local v2, "inputRange":I
    invoke-virtual {p0, v4}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setPredictionWord(Z)V

    .line 90
    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v8}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isKorTabletCji()Z

    move-result v3

    .line 92
    .local v3, "isTabletCji":Z
    move v6, p1

    .line 93
    .local v6, "tempKeyCode":I
    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v8}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputMethodOnKor()I

    move-result v5

    .line 95
    .local v5, "keypadType":I
    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v8, v6}, Lcom/diotek/ime/framework/engine/InputEngineManager;->isTextCharacter(I)Z

    move-result v8

    if-eqz v8, :cond_a

    if-eqz v2, :cond_0

    if-eqz v3, :cond_a

    .line 97
    :cond_0
    if-nez v1, :cond_4

    .line 98
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->processSingleTap(I[I)V

    .line 149
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->setVerbatimToEngine()V

    .line 150
    iput p1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mLastKeyCode:I

    .line 152
    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->getHanjaStatus()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 153
    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8, v7}, Lcom/diotek/ime/framework/common/InputManager;->setHanjaStaus(Z)V

    .line 154
    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8, v7}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    .line 157
    :cond_2
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getPreferenceInputMethodOnKor()I

    move-result v0

    .line 158
    .local v0, "hangulModule":I
    if-ne v0, v4, :cond_3

    .line 159
    iget-boolean v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsTraceOn:Z

    if-eqz v8, :cond_d

    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    if-eqz v8, :cond_d

    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v8}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v8

    if-le v8, v10, :cond_d

    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v8}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->isSymbolAndSpace()Z

    move-result v8

    if-nez v8, :cond_d

    .line 160
    .local v4, "isTraceInput":Z
    :goto_1
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v7, p1, v4}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->setUpAutoSpace(IZ)V

    .line 162
    .end local v4    # "isTraceInput":Z
    :cond_3
    return-void

    .line 99
    .end local v0    # "hangulModule":I
    :cond_4
    if-eq v1, v4, :cond_5

    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v8}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getCurrentPreferenceInputMethod()I

    move-result v8

    if-eq v8, v4, :cond_5

    if-eqz v3, :cond_6

    .line 102
    :cond_5
    invoke-direct {p0, v6, p2}, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->processMultiTap(I[I)V

    .line 104
    if-eqz p2, :cond_1

    array-length v8, p2

    if-lez v8, :cond_1

    .line 105
    aget p1, p2, v7

    goto :goto_0

    .line 107
    :cond_6
    if-ne v1, v9, :cond_8

    if-eq v5, v4, :cond_7

    if-eq v5, v10, :cond_7

    const/4 v8, 0x3

    if-eq v5, v8, :cond_7

    if-ne v5, v11, :cond_8

    .line 112
    :cond_7
    invoke-direct {p0, v6, p2}, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->processMultiTap(I[I)V

    .line 114
    if-eqz p2, :cond_1

    array-length v8, p2

    if-lez v8, :cond_1

    .line 115
    aget p1, p2, v7

    goto :goto_0

    .line 117
    :cond_8
    if-ne v1, v9, :cond_9

    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v8}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 118
    invoke-direct {p0, v6, p2}, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->processMultiTap(I[I)V

    .line 120
    if-eqz p2, :cond_1

    array-length v8, p2

    if-lez v8, :cond_1

    .line 121
    aget p1, p2, v7

    goto :goto_0

    .line 124
    :cond_9
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->processSingleTap(I[I)V

    goto :goto_0

    .line 126
    :cond_a
    invoke-direct {p0, v6}, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->isNaragulSpecialKey(I)Z

    move-result v8

    if-eqz v8, :cond_c

    if-nez v2, :cond_c

    .line 127
    if-eq v1, v4, :cond_b

    if-ne v1, v9, :cond_1

    if-ne v5, v11, :cond_1

    .line 130
    :cond_b
    invoke-direct {p0, v6, p2}, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->processMultiTap(I[I)V

    .line 132
    if-eqz p2, :cond_1

    array-length v8, p2

    if-lez v8, :cond_1

    .line 133
    aget p1, p2, v7

    goto/16 :goto_0

    .line 137
    :cond_c
    invoke-virtual {p0, p1, p2}, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->processSymbolicKey(I[I)V

    .line 138
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->autoPeriod(I)V

    goto/16 :goto_0

    .restart local v0    # "hangulModule":I
    :cond_d
    move v4, v7

    .line 159
    goto :goto_1
.end method

.method public onHwrPanelLongPressed(ILjava/lang/String;)V
    .locals 0
    .param p1, "selectedArrayIndex"    # I
    .param p2, "resultString"    # Ljava/lang/String;

    .prologue
    .line 1639
    return-void
.end method

.method public pickSuggestionManually(ILjava/lang/CharSequence;)V
    .locals 12
    .param p1, "index"    # I
    .param p2, "suggestion"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v11, -0x1

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1552
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v4

    .line 1553
    .local v4, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v4, :cond_0

    .line 1554
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isAutoCompletitionInput()Z

    move-result v5

    .line 1555
    .local v5, "isCompletionOn":Z
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v6

    .line 1556
    .local v6, "isLandscape":Z
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->getCompletions()[Landroid/view/inputmethod/CompletionInfo;

    move-result-object v2

    .line 1557
    .local v2, "completions":[Landroid/view/inputmethod/CompletionInfo;
    if-eqz v5, :cond_1

    if-eqz v6, :cond_1

    if-eqz v2, :cond_1

    .line 1558
    if-ltz p1, :cond_0

    array-length v7, v2

    if-ge p1, v7, :cond_0

    .line 1559
    aget-object v1, v2, p1

    .line 1560
    .local v1, "completion":Landroid/view/inputmethod/CompletionInfo;
    invoke-interface {v4, v1}, Landroid/view/inputmethod/InputConnection;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z

    .line 1630
    .end local v1    # "completion":Landroid/view/inputmethod/CompletionInfo;
    .end local v2    # "completions":[Landroid/view/inputmethod/CompletionInfo;
    .end local v5    # "isCompletionOn":Z
    .end local v6    # "isLandscape":Z
    :cond_0
    :goto_0
    return-void

    .line 1564
    .restart local v2    # "completions":[Landroid/view/inputmethod/CompletionInfo;
    .restart local v5    # "isCompletionOn":Z
    .restart local v6    # "isLandscape":Z
    :cond_1
    invoke-interface {v4}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 1565
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->getCandidateviewStatus()I

    move-result v0

    .line 1566
    .local v0, "candidateStatus":I
    const/4 v3, 0x0

    .line 1568
    .local v3, "enableAutoSpaceForNextWordPrediction":Z
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->getHanjaStatus()Z

    move-result v7

    if-nez v7, :cond_2

    .line 1569
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->cancelPreviewTrace()V

    .line 1571
    :cond_2
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v7}, Lcom/diotek/ime/framework/input/AbstractInputModule;->isTimerRunning(Lcom/diotek/ime/framework/input/InputModule$Timer;)Z

    move-result v7

    if-nez v7, :cond_a

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v7

    if-lez v7, :cond_a

    :cond_3
    iget v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mStateCandidate:I

    if-ne v7, v10, :cond_a

    if-nez v0, :cond_a

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->getHanjaStatus()Z

    move-result v7

    if-nez v7, :cond_a

    .line 1575
    iget v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosPrevText:I

    iget v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosNextText:I

    invoke-interface {v4, v7, v8}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 1584
    :cond_4
    :goto_1
    if-eqz p2, :cond_5

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v7

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-eq v7, v8, :cond_5

    .line 1585
    invoke-virtual {p0, v10}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setPredictionWord(Z)V

    .line 1588
    :cond_5
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->getHanjaStatus()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1589
    invoke-interface {v4}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 1590
    invoke-interface {v4, v10, v9}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 1593
    :cond_6
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 1594
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->resetTimeoutComposingLength()V

    .line 1595
    if-eqz v3, :cond_7

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->getHanjaStatus()Z

    move-result v7

    if-nez v7, :cond_7

    .line 1596
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->isTalkbackEnabled()Z

    move-result v7

    if-eqz v7, :cond_b

    const-string v7, ".,;!?\u061b\u060c\u061f"

    invoke-interface {p2, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-ne v7, v11, :cond_b

    .line 1598
    const-string v7, " "

    invoke-interface {v4, v7, v10}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1604
    :cond_7
    :goto_2
    invoke-static {p2}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    .line 1606
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->replaceSpaceToSymbol(Ljava/lang/StringBuilder;)V

    .line 1608
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->setComposingText()V

    .line 1609
    iput p1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPickSuggestionIndex:I

    .line 1610
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->selectWordInList(I)V

    .line 1611
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    .line 1613
    if-eqz p2, :cond_c

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-lez v7, :cond_c

    const-string v7, ".,;!?\u061b\u060c\u061f"

    invoke-interface {p2, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-eq v7, v11, :cond_c

    .line 1615
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->reset()V

    .line 1620
    :cond_8
    :goto_3
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->getHanjaStatus()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1621
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7, v9}, Lcom/diotek/ime/framework/common/InputManager;->setHanjaStaus(Z)V

    .line 1623
    :cond_9
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 1624
    invoke-virtual {p0, v9}, Lcom/diotek/ime/framework/input/AbstractInputModule;->doNextWordPrediction(Z)V

    .line 1625
    invoke-interface {v4}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 1626
    iput v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosPrevText:I

    .line 1627
    iput v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosNextText:I

    goto/16 :goto_0

    .line 1576
    :cond_a
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    iget v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mStateCandidate:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_4

    if-nez v0, :cond_4

    .line 1579
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAtNextWordPrediction()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1580
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 1600
    :cond_b
    const/16 v7, 0x20

    invoke-static {v7}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    goto :goto_2

    .line 1616
    :cond_c
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->getHanjaStatus()Z

    move-result v7

    if-nez v7, :cond_8

    .line 1617
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->setUpByPickSuggestion()V

    goto :goto_3
.end method

.method protected processMultiTapSymbolicKey(I[I)V
    .locals 7
    .param p1, "keyCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    const/4 v4, 0x1

    .line 217
    const/4 v3, 0x0

    .line 218
    .local v3, "nIndex":I
    const/4 v2, 0x0

    .line 220
    .local v2, "nCodeLength":I
    if-nez p2, :cond_1

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v5, p2

    if-ge v0, v5, :cond_4

    .line 225
    aget v5, p2, v0

    if-ne p1, v5, :cond_3

    .line 226
    move v3, v0

    .line 231
    :cond_2
    add-int/lit8 v2, v0, 0x1

    .line 224
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 227
    :cond_3
    aget v5, p2, v0

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    .line 228
    move v2, v0

    .line 233
    :cond_4
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 234
    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(I)I

    move-result p1

    .line 237
    :cond_5
    if-le v2, v4, :cond_0

    .line 238
    invoke-static {p1}, Lcom/diotek/ime/framework/common/InputSequenceCheck;->isVietameseTone(I)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-boolean v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-eqz v5, :cond_8

    move v1, v4

    .line 239
    .local v1, "isVietToneNPredictionOn":Z
    :goto_2
    if-nez v3, :cond_6

    .line 240
    iget v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mLastKeyCode:I

    add-int/lit8 v6, v2, -0x1

    aget v6, p2, v6

    if-eq v5, v6, :cond_6

    add-int/lit8 v5, v2, -0x1

    aget v5, p2, v5

    invoke-virtual {p0, v5}, Lcom/diotek/ime/framework/input/AbstractInputModule;->isKeycodeNotAcceptedFilename(I)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 247
    :cond_6
    :goto_3
    int-to-char v4, p1

    invoke-static {v4}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(C)V

    .line 248
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->setComposingText()V

    .line 249
    iget-object v4, p0, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v4}, Lcom/diotek/ime/framework/input/AbstractInputModule;->stopTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;)V

    .line 250
    if-eqz v1, :cond_7

    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    if-nez v4, :cond_0

    .line 251
    :cond_7
    iget-object v4, p0, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    const/16 v5, 0x5dc

    invoke-virtual {p0, v4, v5}, Lcom/diotek/ime/framework/input/AbstractInputModule;->startTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;I)V

    goto :goto_0

    .line 238
    .end local v1    # "isVietToneNPredictionOn":Z
    :cond_8
    const/4 v1, 0x0

    goto :goto_2

    .line 244
    .restart local v1    # "isVietToneNPredictionOn":Z
    :cond_9
    invoke-virtual {p0, v4}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    goto :goto_3
.end method

.method protected processSymbolicKey(I[I)V
    .locals 23
    .param p1, "keyCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    .line 1123
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->cancelTrace()Z

    .line 1124
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    .line 1125
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-interface {v1, v4, v5}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;Z)I

    .line 1127
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->isTimerRunning(Lcom/diotek/ime/framework/input/InputModule$Timer;)Z

    move-result v22

    .line 1128
    .local v22, "isTimerRunning":Z
    if-nez v22, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getTimeoutComposingLength()I

    move-result v1

    if-lez v1, :cond_0

    .line 1129
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 1132
    :cond_0
    const-string v1, " .,;:!?\n()[]*&@{}/<>_-+=|\'\u061b\u060c\u061f\""

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_2

    .line 1133
    invoke-direct/range {p0 .. p2}, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->processWordSeparator(I[I)V

    .line 1185
    :cond_1
    :goto_0
    return-void

    .line 1135
    :cond_2
    const/16 v1, 0xa

    move/from16 v0, p1

    if-eq v0, v1, :cond_3

    const/16 v1, 0x20

    move/from16 v0, p1

    if-ne v0, v1, :cond_4

    .line 1137
    :cond_3
    invoke-direct/range {p0 .. p2}, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->processWordSeparator(I[I)V

    goto :goto_0

    .line 1139
    :cond_4
    const/4 v1, -0x5

    move/from16 v0, p1

    if-ne v0, v1, :cond_5

    .line 1140
    invoke-direct/range {p0 .. p0}, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->processBackSpaceKey()V

    goto :goto_0

    .line 1142
    :cond_5
    const/16 v1, -0x3eb

    move/from16 v0, p1

    if-ne v0, v1, :cond_6

    .line 1143
    invoke-direct/range {p0 .. p0}, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->processForwardDelete()V

    goto :goto_0

    .line 1145
    :cond_6
    const/16 v1, -0x6c

    move/from16 v0, p1

    if-eq v0, v1, :cond_1

    const/16 v1, -0x66

    move/from16 v0, p1

    if-eq v0, v1, :cond_1

    .line 1148
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

    .line 1149
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSuggestionDelay()V

    .line 1152
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isInMultiTapInput()Z

    move-result v21

    .line 1153
    .local v21, "isInMultiTap":Z
    if-eqz v21, :cond_8

    .line 1154
    invoke-virtual/range {p0 .. p2}, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->processMultiTapSymbolicKey(I[I)V

    goto :goto_0

    .line 1158
    :cond_8
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 1159
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    .line 1160
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->initComposingBuffer()V

    .line 1161
    move/from16 v0, p1

    int-to-char v1, v0

    invoke-static {v1}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(C)V

    .line 1162
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

    .line 1165
    :cond_9
    add-int/lit8 v1, p1, -0x30

    add-int/lit8 v7, v1, 0x7

    .line 1166
    .local v7, "code":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v20

    .line 1167
    .local v20, "ic":Landroid/view/inputmethod/InputConnection;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1168
    .local v2, "eventTime":J
    if-eqz v20, :cond_1

    .line 1169
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

    .line 1172
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

    .line 1178
    .end local v2    # "eventTime":J
    .end local v7    # "code":I
    .end local v20    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_a
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 1180
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-eqz v1, :cond_1

    .line 1183
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->postUpdateSequenceAndSuggestionDelay(I)V

    goto/16 :goto_0
.end method

.method public release()V
    .locals 0

    .prologue
    .line 81
    return-void
.end method

.method public setComposingText()V
    .locals 2

    .prologue
    .line 1076
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1077
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 1078
    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setComposingTextWithoutBatch(Landroid/view/inputmethod/InputConnection;)V

    .line 1080
    :cond_0
    return-void
.end method

.method public updateSuggestion()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1648
    iget-boolean v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-nez v2, :cond_1

    .line 1649
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getHanjaStatus()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1650
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2, v4}, Lcom/diotek/ime/framework/common/InputManager;->setHanjaStaus(Z)V

    .line 1651
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2, v4}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    .line 1671
    :cond_0
    :goto_0
    return-void

    .line 1655
    :cond_1
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1656
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v2, v3}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    .line 1657
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->isEnableAutoCorrection()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1658
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1659
    .local v0, "currentText":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v2, v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getCurrentInputBuffer(Ljava/lang/StringBuilder;)V

    .line 1660
    if-eqz v0, :cond_2

    .line 1661
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/diotek/ime/framework/engine/InputEngineManager;->joinHangul(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1662
    .local v1, "joinHangul":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 1663
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0    # "currentText":Ljava/lang/StringBuilder;
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1666
    .end local v1    # "joinHangul":Ljava/lang/String;
    .restart local v0    # "currentText":Ljava/lang/StringBuilder;
    :cond_2
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, v0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->addCurrentTextToCandidate(Ljava/util/ArrayList;Ljava/lang/StringBuilder;)V

    .line 1668
    .end local v0    # "currentText":Ljava/lang/StringBuilder;
    :cond_3
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2, v4}, Lcom/diotek/ime/framework/common/InputManager;->setHanjaStaus(Z)V

    .line 1669
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v2, v4}, Lcom/diotek/ime/framework/engine/InputEngineManager;->setSuggestionActiveIndex(I)V

    .line 1670
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v2, v3}, Lcom/diotek/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public updateVOHWRSuggestion()V
    .locals 0

    .prologue
    .line 1643
    return-void
.end method
