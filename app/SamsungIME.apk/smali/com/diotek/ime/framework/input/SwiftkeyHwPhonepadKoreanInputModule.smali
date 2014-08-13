.class public Lcom/diotek/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;
.super Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;
.source "SwiftkeyHwPhonepadKoreanInputModule.java"


# instance fields
.field private final mBackupHangul:Ljava/lang/StringBuilder;

.field private mComposeableAddStroke:[C

.field private mComposeableDoubleUp:[C

.field private mComposeableVowel:[C

.field private mComposedisableAddStroke:[[C

.field private mIndexOfKey:I

.field private mIsTappingMultiTapKey:Z

.field private mReplaceVowel:[C


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 24
    invoke-direct {p0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;-><init>()V

    .line 25
    iput v2, p0, Lcom/diotek/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mIndexOfKey:I

    .line 26
    iput-boolean v2, p0, Lcom/diotek/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mIsTappingMultiTapKey:Z

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mBackupHangul:Ljava/lang/StringBuilder;

    .line 29
    const/4 v0, 0x3

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/diotek/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mReplaceVowel:[C

    .line 34
    const/16 v0, 0x12

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/diotek/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mComposeableVowel:[C

    .line 46
    const/16 v0, 0x15

    new-array v0, v0, [C

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/diotek/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mComposeableAddStroke:[C

    .line 54
    new-array v0, v3, [[C

    new-array v1, v3, [C

    fill-array-data v1, :array_3

    aput-object v1, v0, v2

    const/4 v1, 0x1

    new-array v2, v3, [C

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/diotek/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mComposedisableAddStroke:[[C

    .line 63
    const/16 v0, 0xa

    new-array v0, v0, [C

    fill-array-data v0, :array_5

    iput-object v0, p0, Lcom/diotek/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mComposeableDoubleUp:[C

    return-void

    .line 29
    nop

    :array_0
    .array-data 2
        0x315cs
        0x314fs
        0x3153s
    .end array-data

    .line 34
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

    .line 46
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

    .line 54
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

    .line 63
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
    .locals 20
    .param p1, "ic"    # Landroid/view/inputmethod/InputConnection;
    .param p2, "keyCode"    # I
    .param p3, "keyCodes"    # [I
    .param p4, "isPrediction"    # Z
    .param p5, "isTimerRunning"    # Z
    .param p6, "hangulModule"    # I

    .prologue
    .line 214
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 216
    .local v5, "builder":Ljava/lang/StringBuilder;
    const/16 v16, 0x0

    .line 217
    .local v16, "splitedHangul":Ljava/lang/String;
    const/4 v11, 0x0

    .line 219
    .local v11, "isMakeComposingText":Z
    const/4 v10, 0x0

    .line 220
    .local v10, "isCallingUpdateSelection":Z
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v4

    .line 221
    .local v4, "beforeComposingLength":I
    move v3, v4

    .line 309
    .local v3, "afterComposingLength":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 310
    .local v9, "currentWord":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/diotek/ime/framework/common/InputManager;->getSelectedNumOfText()I

    move-result v15

    .line 312
    .local v15, "selectText":I
    if-eqz p4, :cond_1

    .line 313
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v17

    const/16 v18, 0x40

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_0

    .line 314
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 315
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->initComposingBuffer()V

    .line 316
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    .line 319
    :cond_0
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v9}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getCharSequence(Ljava/lang/StringBuilder;)I

    .line 325
    :cond_1
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_7

    if-lez v15, :cond_7

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/diotek/ime/framework/engine/InputEngineManager;->breakContext()V

    .line 328
    move/from16 v0, p2

    int-to-char v0, v0

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    .line 423
    :cond_2
    :goto_0
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_3

    const/16 v17, 0x119e

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->getLastChar()C

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_3

    const/16 v17, 0x11a2

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->getLastChar()C

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_3

    .line 426
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->getLastChar()C

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    .line 427
    .local v6, "composingWord":Ljava/lang/Character;
    if-eqz p4, :cond_10

    .line 431
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 432
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v17, v0

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Lcom/diotek/ime/framework/engine/InputEngineManager;->splitHangul(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->setVerbatimToEngine()V

    .line 434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v5}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputString(Ljava/lang/StringBuilder;)I

    .line 450
    .end local v6    # "composingWord":Ljava/lang/Character;
    :cond_3
    :goto_1
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v3

    .line 451
    if-eqz p1, :cond_12

    if-nez p5, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getTimeoutComposingLength()I

    move-result v17

    if-lez v17, :cond_12

    .line 452
    invoke-virtual/range {p0 .. p1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setComposingTextWithoutBatch(Landroid/view/inputmethod/InputConnection;)V

    .line 457
    :goto_2
    if-nez v10, :cond_4

    if-eq v3, v4, :cond_5

    .line 458
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v17, v0

    const-string v18, "SENT_TEXT_BY_INPUTCONNECTION"

    const/16 v19, 0x1

    invoke-interface/range {v17 .. v19}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    .line 461
    :cond_5
    if-eqz p4, :cond_6

    .line 462
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSuggestionDelay()V

    .line 465
    :cond_6
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setTimeoutComposingLength(I)V

    .line 468
    return-void

    .line 329
    :cond_7
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_8

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v17

    if-lez v17, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosNextText:I

    move/from16 v17, v0

    if-nez v17, :cond_8

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v17, v0

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Lcom/diotek/ime/framework/engine/InputEngineManager;->splitHangul(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    move/from16 v0, p2

    int-to-char v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v17, v0

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Lcom/diotek/ime/framework/engine/InputEngineManager;->joinChunjiin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(Ljava/lang/String;)V

    .line 333
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 334
    :cond_8
    if-eqz p5, :cond_e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mIsTappingMultiTapKey:Z

    move/from16 v17, v0

    if-eqz v17, :cond_e

    invoke-static/range {p2 .. p2}, Ljava/lang/Character;->isLetter(I)Z

    move-result v17

    if-eqz v17, :cond_e

    .line 335
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v8

    .line 337
    .local v8, "currentComposingLenth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v17, v0

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Lcom/diotek/ime/framework/engine/InputEngineManager;->splitHangul(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 338
    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    const/4 v12, 0x0

    .line 351
    .local v12, "isMultitapStop":Z
    const/16 v17, 0x119e

    move/from16 v0, p2

    move/from16 v1, v17

    if-eq v0, v1, :cond_a

    .line 352
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    .line 354
    .local v13, "length":I
    if-eqz v12, :cond_c

    .line 355
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/diotek/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mIndexOfKey:I

    .line 364
    :cond_9
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mIndexOfKey:I

    move/from16 v17, v0

    aget p2, p3, v17

    .line 367
    .end local v13    # "length":I
    :cond_a
    move/from16 v0, p2

    int-to-char v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v17, v0

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Lcom/diotek/ime/framework/engine/InputEngineManager;->joinChunjiin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(Ljava/lang/String;)V

    .line 387
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mIsTappingMultiTapKey:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2

    if-nez p4, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mBackupHangul:Ljava/lang/StringBuilder;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->length()I

    move-result v17

    if-lez v17, :cond_2

    move/from16 v0, p2

    int-to-char v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/diotek/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->isMedialVowel(C)Z

    move-result v17

    if-nez v17, :cond_2

    .line 391
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mBackupHangul:Ljava/lang/StringBuilder;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Lcom/diotek/ime/framework/engine/InputEngineManager;->splitHangul(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    move/from16 v0, p2

    int-to-char v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v17, v0

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Lcom/diotek/ime/framework/engine/InputEngineManager;->joinChunjiin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 396
    .local v14, "newBlock":Ljava/lang/String;
    if-eqz v14, :cond_d

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_d

    .line 397
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposingWithoutInit()V

    .line 398
    if-eqz p1, :cond_b

    .line 399
    const/16 v17, 0x2

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 401
    :cond_b
    const/4 v10, 0x1

    .line 402
    invoke-static {v14}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(Ljava/lang/String;)V

    .line 403
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mBackupHangul:Ljava/lang/StringBuilder;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->setLength(I)V

    goto/16 :goto_0

    .line 360
    .end local v14    # "newBlock":Ljava/lang/String;
    .restart local v13    # "length":I
    :cond_c
    if-lez v13, :cond_9

    .line 361
    add-int/lit8 v17, v13, -0x1

    move/from16 v0, v17

    invoke-virtual {v5, v0, v13}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 405
    .end local v13    # "length":I
    .restart local v14    # "newBlock":Ljava/lang/String;
    :cond_d
    move/from16 v0, p2

    int-to-char v0, v0

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(C)V

    goto/16 :goto_0

    .line 409
    .end local v8    # "currentComposingLenth":I
    .end local v12    # "isMultitapStop":Z
    .end local v14    # "newBlock":Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v17, v0

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Lcom/diotek/ime/framework/engine/InputEngineManager;->splitHangul(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    move/from16 v0, p2

    int-to-char v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v17, v0

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Lcom/diotek/ime/framework/engine/InputEngineManager;->joinChunjiin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(Ljava/lang/String;)V

    .line 412
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v7

    .line 414
    .local v7, "composinglength":I
    if-eqz p1, :cond_f

    if-nez p5, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getTimeoutComposingLength()I

    move-result v17

    if-lez v17, :cond_f

    .line 415
    if-lez v7, :cond_f

    .line 416
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getTimeoutComposingLength()I

    move-result v17

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 417
    const/4 v10, 0x1

    .line 420
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mBackupHangul:Ljava/lang/StringBuilder;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->setLength(I)V

    goto/16 :goto_0

    .line 436
    .end local v7    # "composinglength":I
    .restart local v6    # "composingWord":Ljava/lang/Character;
    :cond_10
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v13

    .line 438
    .restart local v13    # "length":I
    if-lez v13, :cond_11

    .line 439
    add-int/lit8 v17, v13, -0x1

    move/from16 v0, v17

    invoke-static {v0, v13}, Lcom/diotek/ime/framework/input/ComposingTextManager;->delete(II)V

    .line 440
    const/4 v10, 0x1

    .line 443
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mBackupHangul:Ljava/lang/StringBuilder;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mBackupHangul:Ljava/lang/StringBuilder;

    move-object/from16 v17, v0

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 445
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->commitText(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)V

    .line 446
    invoke-virtual {v6}, Ljava/lang/Character;->charValue()C

    move-result v17

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(C)V

    goto/16 :goto_1

    .line 454
    .end local v6    # "composingWord":Ljava/lang/Character;
    .end local v13    # "length":I
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->setComposingText()V

    goto/16 :goto_2
.end method

.method private commitText(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "ic"    # Landroid/view/inputmethod/InputConnection;
    .param p2, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 751
    if-eqz p1, :cond_1

    .line 752
    sget-boolean v0, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 753
    const-string v0, "SamsungIME"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<SwiftkeyHwPhonepadKoreanInputModule> commitText-(1) - Utils.getUsedTime() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/diotek/ime/framework/util/Utils;->getUsedTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    :cond_0
    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 756
    sget-boolean v0, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 757
    const-string v0, "SamsungIME"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<SwiftkeyHwPhonepadKoreanInputModule> commitText-(1) - Utils.getUsedTime() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/diotek/ime/framework/util/Utils;->getUsedTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    :cond_1
    return-void
.end method

.method public static isConsonant(I)Z
    .locals 1
    .param p0, "code"    # I

    .prologue
    .line 865
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
    .line 471
    const/4 v0, 0x0

    .line 473
    .local v0, "bRetVal":Z
    const/16 v1, 0x314f

    if-lt p1, v1, :cond_0

    const/16 v1, 0x3163

    if-gt p1, v1, :cond_0

    .line 474
    const/4 v0, 0x1

    .line 477
    :cond_0
    return v0
.end method

.method private processBackSpaceKey()V
    .locals 13

    .prologue
    const/16 v12, 0x43

    const/16 v11, 0x2b

    const/4 v10, 0x1

    const/4 v9, -0x5

    const/4 v8, 0x0

    .line 654
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 656
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v1, :cond_1

    .line 748
    :cond_0
    :goto_0
    return-void

    .line 660
    :cond_1
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    .line 661
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v6, v7, v8}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;Z)I

    .line 662
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 663
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v6}, Lcom/diotek/ime/framework/input/AbstractInputModule;->stopTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;)V

    .line 665
    const-string v3, ""

    .line 666
    .local v3, "lastChar":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 667
    invoke-interface {v1, v10, v8}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v3

    .end local v3    # "lastChar":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 668
    .restart local v3    # "lastChar":Ljava/lang/String;
    if-nez v3, :cond_2

    .line 669
    const-string v3, ""

    .line 672
    :cond_2
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->getSelectedNumOfText()I

    move-result v5

    .line 673
    .local v5, "selectedText":I
    invoke-virtual {p0, v3}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setDeleteCount(Ljava/lang/String;)V

    .line 674
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->resetPredictionWord()V

    .line 675
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_8

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 676
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/diotek/ime/framework/engine/InputEngineManager;->splitHangul(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 677
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-le v6, v10, :cond_3

    .line 678
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v6, v9}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(I)I

    .line 679
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->deleteLastJamoInComposing()V

    .line 680
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->setComposingText()V

    .line 709
    :goto_1
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSuggestionDelay()V

    .line 711
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 712
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    const/16 v7, 0x5dc

    invoke-virtual {p0, v6, v7}, Lcom/diotek/ime/framework/input/AbstractInputModule;->startTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;I)V

    goto :goto_0

    .line 681
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_4

    .line 682
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v6, v9}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(I)I

    .line 683
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 684
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 685
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSequence(Ljava/lang/StringBuilder;)V

    goto :goto_1

    .line 687
    :cond_4
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 688
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getDeleteCount()I

    move-result v6

    const/16 v7, 0xa

    if-le v6, v7, :cond_5

    invoke-static {}, Lcom/diotek/ime/framework/repository/PackageStatus;->getPackageName()Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    move-result-object v6

    sget-object v7, Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;->CHATON_PACKAGE_NAME:Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    if-eq v6, v7, :cond_5

    .line 690
    if-eqz v1, :cond_6

    .line 691
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getLastWordDividerIndex()I

    move-result v6

    invoke-interface {v1, v6, v8}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 692
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 693
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v7, 0x12c

    invoke-virtual {v6, v11, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 697
    :cond_5
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initWordDividerIndexList()V

    .line 698
    invoke-virtual {p0, v12}, Lcom/diotek/ime/framework/input/AbstractInputModule;->onKeyDownUpHandle(I)V

    .line 699
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposingWithoutInit()V

    .line 701
    :cond_6
    if-lez v5, :cond_7

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->getIsPendingUpdateCandidateView()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 703
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6, v8}, Lcom/diotek/ime/framework/common/InputManager;->setIsPendingUpdateCandidateView(Z)V

    .line 705
    :cond_7
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSequence(Ljava/lang/StringBuilder;)V

    .line 706
    invoke-virtual {p0, v8}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setPredictionWord(Z)V

    goto :goto_1

    .line 715
    :cond_8
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 716
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v6, v9}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(I)I

    .line 717
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/diotek/ime/framework/engine/InputEngineManager;->splitHangul(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 718
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    .line 719
    .local v4, "length":I
    if-lez v4, :cond_9

    .line 720
    add-int/lit8 v6, v4, -0x1

    invoke-virtual {v0, v6, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 723
    :cond_9
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 724
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/diotek/ime/framework/engine/InputEngineManager;->joinChunjiin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 725
    .local v2, "joinedHangul":Ljava/lang/String;
    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_a

    .line 726
    invoke-static {v2}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    .line 729
    :cond_a
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->setComposingText()V

    .line 730
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setTimeoutComposingLength(I)V

    .line 731
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    const/16 v7, 0x5dc

    invoke-virtual {p0, v6, v7}, Lcom/diotek/ime/framework/input/AbstractInputModule;->startTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;I)V

    goto/16 :goto_0

    .line 733
    .end local v2    # "joinedHangul":Ljava/lang/String;
    .end local v4    # "length":I
    :cond_b
    invoke-virtual {p0, v10}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 734
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    .line 735
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getDeleteCount()I

    move-result v6

    const/16 v7, 0x14

    if-le v6, v7, :cond_c

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentPackageName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_c

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentPackageName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.sec.chaton"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_c

    .line 739
    if-eqz v1, :cond_0

    .line 740
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getLastWordDividerIndex()I

    move-result v6

    invoke-interface {v1, v6, v8}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto/16 :goto_0

    .line 743
    :cond_c
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initWordDividerIndexList()V

    .line 744
    invoke-virtual {p0, v12}, Lcom/diotek/ime/framework/input/AbstractInputModule;->onKeyDownUpHandle(I)V

    goto/16 :goto_0
.end method

.method private processMultiTap(I[I)V
    .locals 7
    .param p1, "keyCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    .line 128
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 129
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v1, :cond_0

    .line 152
    :goto_0
    return-void

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->isTimerRunning(Lcom/diotek/ime/framework/input/InputModule$Timer;)Z

    move-result v5

    .line 137
    .local v5, "isTimerRunning":Z
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->stopTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;)V

    .line 139
    iget-boolean v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/diotek/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->setIsTappingMultiTapKey(Landroid/view/inputmethod/InputConnection;I[IZZ)I

    move-result p1

    .line 141
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 143
    iget-boolean v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    const/4 v6, 0x1

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/diotek/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->chunjyinMultitap(Landroid/view/inputmethod/InputConnection;I[IZZI)V

    .line 145
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 150
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    const/16 v2, 0x5dc

    invoke-virtual {p0, v0, v2}, Lcom/diotek/ime/framework/input/AbstractInputModule;->startTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;I)V

    goto :goto_0
.end method

.method private processSingleTap(I[I)V
    .locals 7
    .param p1, "keyCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    const/4 v6, 0x0

    .line 489
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v3

    .line 490
    .local v3, "ic":Landroid/view/inputmethod/InputConnection;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 491
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v4}, Lcom/diotek/ime/framework/input/AbstractInputModule;->stopTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;)V

    .line 492
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v4, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(I)I

    .line 493
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v4, v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getCharSequence(Ljava/lang/StringBuilder;)I

    .line 495
    iget-boolean v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-nez v4, :cond_2

    .line 496
    invoke-static {v0}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(Ljava/lang/StringBuilder;)V

    .line 497
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v5, "HANGUL_DELETE_LENGTH"

    invoke-interface {v4, v5, v6}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v2

    .line 499
    .local v2, "deleteLength":I
    if-eqz v3, :cond_0

    .line 500
    invoke-interface {v3, v2, v6}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 503
    :cond_0
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_1

    .line 504
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->getLastChar()C

    move-result v1

    .line 505
    .local v1, "composing":C
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v4}, Lcom/diotek/ime/framework/input/ComposingTextManager;->setLength(I)V

    .line 506
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 507
    invoke-static {v1}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    .line 508
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->setComposingText()V

    .line 526
    .end local v1    # "composing":C
    :goto_0
    return-void

    .line 510
    :cond_1
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->setComposingText()V

    goto :goto_0

    .line 513
    .end local v2    # "deleteLength":I
    :cond_2
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v5, "HANGUL_DELETE_LENGTH"

    invoke-interface {v4, v5, v6}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v2

    .line 515
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

    .line 517
    :cond_3
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 522
    :goto_1
    invoke-static {v0}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    .line 523
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->setComposingText()V

    .line 524
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSuggestionDelay()V

    goto :goto_0

    .line 519
    :cond_4
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-static {v4}, Lcom/diotek/ime/framework/input/ComposingTextManager;->setLength(I)V

    goto :goto_1
.end method

.method private processWordSeparator(I[I)V
    .locals 10
    .param p1, "keyCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    .line 570
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    .line 571
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;Z)I

    .line 572
    const/4 v7, 0x1

    new-array v0, v7, [I

    .line 573
    .local v0, "activeIndex":[I
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v7, v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getActiveIndex([I)I

    .line 574
    const/4 v3, 0x0

    .line 575
    .local v3, "isComposing":Z
    const/4 v5, -0x1

    .line 577
    .local v5, "lastCharCode":I
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 578
    const/4 v3, 0x1

    .line 579
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-static {v7}, Lcom/diotek/ime/framework/input/ComposingTextManager;->codePointAt(I)I

    move-result v5

    .line 582
    :cond_0
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

    .line 583
    if-nez v3, :cond_4

    int-to-char v7, p1

    invoke-virtual {p0, v7}, Lcom/diotek/ime/framework/input/AbstractInputModule;->isEnableAutoCorrection(C)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 584
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    .line 585
    .local v2, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v2, :cond_2

    .line 651
    .end local v2    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_1
    :goto_0
    return-void

    .line 588
    .restart local v2    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_2
    invoke-virtual {p0, v2, v0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->doAutoCorrection(Landroid/view/inputmethod/InputConnection;[I)V

    .line 597
    .end local v2    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_3
    :goto_1
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    .line 599
    const/16 v7, 0xa

    if-ne p1, v7, :cond_6

    .line 600
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 601
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->sendEnterKeyHandle()V

    .line 602
    iget-boolean v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-eqz v7, :cond_1

    .line 603
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSequence(Ljava/lang/StringBuilder;)V

    .line 604
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->updateSuggestion()V

    goto :goto_0

    .line 590
    :cond_4
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->isInMultiTapInput()Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->getIsPendingUpdateCandidateView()Z

    move-result v7

    if-nez v7, :cond_3

    .line 591
    :cond_5
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    const/4 v8, 0x0

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Lcom/diotek/ime/framework/engine/InputEngineManager;->wordSelected(ILjava/lang/CharSequence;)I

    .line 592
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 593
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->initComposingBuffer()V

    goto :goto_1

    .line 608
    :cond_6
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->isInMultiTapInput()Z

    move-result v4

    .line 609
    .local v4, "isInMultiTap":Z
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getPreferenceInputMethodOnKor()I

    move-result v1

    .line 610
    .local v1, "hangulModule":I
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getNumberAndSymbolsKeypadType()I

    move-result v6

    .line 612
    .local v6, "symbolsModule":I
    if-eqz v4, :cond_7

    .line 613
    invoke-virtual {p0, p1, p2}, Lcom/diotek/ime/framework/input/AbstractInputModule;->processMultiTapSymbolicKey(I[I)V

    goto :goto_0

    .line 617
    :cond_7
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposingWithoutInit()V

    .line 618
    const/4 v7, 0x1

    if-eq v1, v7, :cond_8

    const/4 v7, 0x2

    if-eq v1, v7, :cond_8

    const/4 v7, 0x3

    if-eq v1, v7, :cond_8

    const/4 v7, 0x4

    if-eq v1, v7, :cond_8

    const/4 v7, 0x2

    if-ne v6, v7, :cond_b

    :cond_8
    if-eqz v3, :cond_b

    .line 624
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v7}, Lcom/diotek/ime/framework/input/AbstractInputModule;->isTimerRunning(Lcom/diotek/ime/framework/input/InputModule$Timer;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 625
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v7}, Lcom/diotek/ime/framework/input/AbstractInputModule;->stopTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;)V

    .line 628
    :cond_9
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->resetTimeoutComposingLength()V

    .line 629
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->initComposingBuffer()V

    .line 631
    const/16 v7, 0x20

    if-ne p1, v7, :cond_b

    const/4 v7, 0x2

    if-ne v1, v7, :cond_a

    invoke-static {v5}, Lcom/diotek/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->isConsonant(I)Z

    move-result v7

    if-nez v7, :cond_a

    invoke-static {v5}, Ljava/lang/Character;->isLetter(I)Z

    move-result v7

    if-nez v7, :cond_b

    const/16 v7, 0x20

    if-ne p1, v7, :cond_b

    .line 634
    :cond_a
    iget-boolean v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-eqz v7, :cond_1

    .line 635
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSequence(Ljava/lang/StringBuilder;)V

    .line 636
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->updateSuggestion()V

    goto/16 :goto_0

    .line 643
    :cond_b
    int-to-char v7, p1

    invoke-static {v7}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(C)V

    .line 644
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 646
    iget-boolean v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-eqz v7, :cond_1

    .line 647
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSequence(Ljava/lang/StringBuilder;)V

    .line 648
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->updateSuggestion()V

    goto/16 :goto_0
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

    .line 156
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputStatus;->isCjiTurboKeyLongpress()Z

    move-result v0

    .line 158
    .local v0, "isCjiTurboLongPress":Z
    if-eqz v0, :cond_2

    .line 159
    if-eqz p3, :cond_0

    array-length v2, p3

    if-le v2, v5, :cond_0

    .line 160
    aget p2, p3, v5

    .line 163
    :cond_0
    invoke-static {v4}, Lcom/diotek/ime/framework/repository/InputStatus;->setFlagCjiTurboKeyLongpress(Z)V

    .line 164
    iput-boolean v4, p0, Lcom/diotek/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mIsTappingMultiTapKey:Z

    .line 165
    iput v4, p0, Lcom/diotek/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mIndexOfKey:I

    .line 209
    :cond_1
    :goto_0
    return p2

    .line 184
    :cond_2
    if-eqz p3, :cond_4

    array-length v2, p3

    if-le v2, v5, :cond_4

    iget v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mLastKeyCode:I

    aget v3, p3, v4

    if-ne v2, v3, :cond_4

    .line 185
    iput-boolean v5, p0, Lcom/diotek/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mIsTappingMultiTapKey:Z

    .line 186
    iget v2, p0, Lcom/diotek/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mIndexOfKey:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/diotek/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mIndexOfKey:I

    array-length v3, p3

    rem-int/2addr v2, v3

    iput v2, p0, Lcom/diotek/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mIndexOfKey:I

    .line 192
    :goto_1
    if-nez p5, :cond_5

    .line 193
    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getTimeoutComposingLength()I

    move-result v2

    if-gtz v2, :cond_1

    .line 196
    :cond_3
    invoke-virtual {p0, v5}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    goto :goto_0

    .line 188
    :cond_4
    iput-boolean v4, p0, Lcom/diotek/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mIsTappingMultiTapKey:Z

    .line 189
    iput v4, p0, Lcom/diotek/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mIndexOfKey:I

    goto :goto_1

    .line 198
    :cond_5
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->getLastChar()C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-nez v2, :cond_1

    .line 200
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->getLastChar()C

    move-result v1

    .line 201
    .local v1, "tmpChar":C
    const/16 v2, 0x119e

    if-eq v2, v1, :cond_1

    const/16 v2, 0x11a2

    if-eq v2, v1, :cond_1

    .line 203
    invoke-virtual {p0, v5}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    goto :goto_0
.end method


# virtual methods
.method public initComposingBuffer()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 764
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    .line 766
    .local v0, "inputMethod":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 768
    :cond_0
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->doResetMultitap()I

    .line 771
    :cond_1
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getTimeoutComposingLength()I

    move-result v1

    if-nez v1, :cond_2

    .line 772
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    .line 773
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 776
    :cond_2
    iput v2, p0, Lcom/diotek/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mIndexOfKey:I

    .line 777
    iput-boolean v2, p0, Lcom/diotek/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mIsTappingMultiTapKey:Z

    .line 778
    iget-object v1, p0, Lcom/diotek/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mBackupHangul:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 779
    return-void
.end method

.method public initInputEngineAndComposing(IIII)V
    .locals 1
    .param p1, "oldSelStart"    # I
    .param p2, "oldSelEnd"    # I
    .param p3, "newSelStart"    # I
    .param p4, "newSelEnd"    # I

    .prologue
    .line 796
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getTimeoutComposingLength()I

    move-result v0

    if-lez v0, :cond_0

    .line 797
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setTimeoutComposingLength(I)V

    .line 798
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->initComposingBuffer()V

    .line 800
    :cond_0
    return-void
.end method

.method public isSwiftPhonepadInput()Z
    .locals 1

    .prologue
    .line 904
    const/4 v0, 0x1

    return v0
.end method

.method public onCharacterKey(I[I)V
    .locals 9
    .param p1, "keyCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 75
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    .line 76
    .local v0, "inputMethod":I
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v1

    .line 78
    .local v1, "inputRange":I
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isKorTabletCji()Z

    move-result v2

    .line 80
    .local v2, "isTabletCji":Z
    move v4, p1

    .line 81
    .local v4, "tempKeyCode":I
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputMethodOnKor()I

    move-result v3

    .line 83
    .local v3, "keypadType":I
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v5, v4}, Lcom/diotek/ime/framework/engine/InputEngineManager;->isTextCharacter(I)Z

    move-result v5

    if-eqz v5, :cond_7

    if-eqz v1, :cond_0

    if-eqz v2, :cond_7

    .line 85
    :cond_0
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->isShownSoftFuncKbd()Z

    move-result v5

    if-nez v5, :cond_1

    if-eq v0, v7, :cond_1

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getCurrentPreferenceInputMethod()I

    move-result v5

    if-eq v5, v7, :cond_1

    if-eqz v2, :cond_3

    .line 89
    :cond_1
    invoke-direct {p0, v4, p2}, Lcom/diotek/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->processMultiTap(I[I)V

    .line 91
    if-eqz p2, :cond_2

    array-length v5, p2

    if-lez v5, :cond_2

    .line 92
    aget p1, p2, v6

    .line 123
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->setVerbatimToEngine()V

    .line 124
    iput p1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mLastKeyCode:I

    .line 125
    return-void

    .line 94
    :cond_3
    if-ne v0, v8, :cond_5

    if-eq v3, v7, :cond_4

    const/4 v5, 0x2

    if-eq v3, v5, :cond_4

    const/4 v5, 0x3

    if-eq v3, v5, :cond_4

    const/4 v5, 0x4

    if-ne v3, v5, :cond_5

    .line 99
    :cond_4
    invoke-direct {p0, v4, p2}, Lcom/diotek/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->processMultiTap(I[I)V

    .line 101
    if-eqz p2, :cond_2

    array-length v5, p2

    if-lez v5, :cond_2

    .line 102
    aget p1, p2, v6

    goto :goto_0

    .line 104
    :cond_5
    if-ne v0, v8, :cond_6

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 105
    invoke-direct {p0, v4, p2}, Lcom/diotek/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->processMultiTap(I[I)V

    .line 107
    if-eqz p2, :cond_2

    array-length v5, p2

    if-lez v5, :cond_2

    .line 108
    aget p1, p2, v6

    goto :goto_0

    .line 111
    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->processSingleTap(I[I)V

    goto :goto_0

    .line 114
    :cond_7
    invoke-virtual {p0, p1, p2}, Lcom/diotek/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->processSymbolicKey(I[I)V

    .line 115
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->autoPeriod(I)V

    goto :goto_0
.end method

.method public onHwrPanelLongPressed(ILjava/lang/String;)V
    .locals 0
    .param p1, "selectedArrayIndex"    # I
    .param p2, "resultString"    # Ljava/lang/String;

    .prologue
    .line 871
    return-void
.end method

.method public pickSuggestionManually(ILjava/lang/CharSequence;)V
    .locals 11
    .param p1, "index"    # I
    .param p2, "suggestion"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 804
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v4

    .line 805
    .local v4, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v4, :cond_0

    .line 806
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isAutoCompletitionInput()Z

    move-result v5

    .line 807
    .local v5, "isCompletionOn":Z
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v6

    .line 808
    .local v6, "isLandscape":Z
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->getCompletions()[Landroid/view/inputmethod/CompletionInfo;

    move-result-object v2

    .line 809
    .local v2, "completions":[Landroid/view/inputmethod/CompletionInfo;
    if-eqz v5, :cond_1

    if-eqz v6, :cond_1

    if-eqz v2, :cond_1

    .line 810
    if-ltz p1, :cond_0

    array-length v7, v2

    if-ge p1, v7, :cond_0

    .line 811
    aget-object v1, v2, p1

    .line 812
    .local v1, "completion":Landroid/view/inputmethod/CompletionInfo;
    invoke-interface {v4, v1}, Landroid/view/inputmethod/InputConnection;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z

    .line 862
    .end local v1    # "completion":Landroid/view/inputmethod/CompletionInfo;
    .end local v2    # "completions":[Landroid/view/inputmethod/CompletionInfo;
    .end local v5    # "isCompletionOn":Z
    .end local v6    # "isLandscape":Z
    :cond_0
    :goto_0
    return-void

    .line 816
    .restart local v2    # "completions":[Landroid/view/inputmethod/CompletionInfo;
    .restart local v5    # "isCompletionOn":Z
    .restart local v6    # "isLandscape":Z
    :cond_1
    invoke-interface {v4}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 817
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->getCandidateviewStatus()I

    move-result v0

    .line 818
    .local v0, "candidateStatus":I
    const/4 v3, 0x0

    .line 819
    .local v3, "enableAutoSpaceForNextWordPrediction":Z
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v7}, Lcom/diotek/ime/framework/input/AbstractInputModule;->isTimerRunning(Lcom/diotek/ime/framework/input/InputModule$Timer;)Z

    move-result v7

    if-nez v7, :cond_6

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v7

    if-lez v7, :cond_6

    :cond_2
    iget v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mStateCandidate:I

    if-ne v7, v10, :cond_6

    if-nez v0, :cond_6

    .line 822
    iget v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosPrevText:I

    iget v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosNextText:I

    invoke-interface {v4, v7, v8}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 831
    :cond_3
    :goto_1
    if-eqz p2, :cond_4

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v7

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-eq v7, v8, :cond_4

    .line 832
    invoke-virtual {p0, v10}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setPredictionWord(Z)V

    .line 834
    :cond_4
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 835
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->resetTimeoutComposingLength()V

    .line 836
    if-eqz v3, :cond_5

    .line 837
    const/16 v7, 0x20

    invoke-static {v7}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    .line 840
    :cond_5
    invoke-static {p2}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    .line 842
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->replaceSpaceToSymbol(Ljava/lang/StringBuilder;)V

    .line 844
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->setComposingText()V

    .line 845
    iput p1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPickSuggestionIndex:I

    .line 846
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->selectWordInList(I)V

    .line 847
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    .line 849
    if-eqz p2, :cond_7

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-lez v7, :cond_7

    const-string v7, ".,;!?\u061b\u060c\u061f"

    invoke-interface {p2, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_7

    .line 851
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->reset()V

    .line 855
    :goto_2
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 856
    invoke-virtual {p0, v9}, Lcom/diotek/ime/framework/input/AbstractInputModule;->doNextWordPrediction(Z)V

    .line 857
    invoke-interface {v4}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 858
    iput v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosPrevText:I

    .line 859
    iput v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosNextText:I

    goto/16 :goto_0

    .line 823
    :cond_6
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    iget v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mStateCandidate:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_3

    if-nez v0, :cond_3

    .line 826
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAtNextWordPrediction()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 827
    const/4 v3, 0x1

    goto :goto_1

    .line 853
    :cond_7
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->setUpByPickSuggestion()V

    goto :goto_2
.end method

.method protected processSymbolicKey(I[I)V
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 529
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/engine/InputEngineManager;->cancelTrace()Z

    .line 530
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    .line 531
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v2, v3, v4}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;Z)I

    .line 533
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v2}, Lcom/diotek/ime/framework/input/AbstractInputModule;->isTimerRunning(Lcom/diotek/ime/framework/input/InputModule$Timer;)Z

    move-result v1

    .line 534
    .local v1, "isTimerRunning":Z
    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getTimeoutComposingLength()I

    move-result v2

    if-lez v2, :cond_0

    .line 535
    invoke-virtual {p0, v5}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 538
    :cond_0
    const-string v2, " .,;:!?\n()[]*&@{}/<>_-+=|\'\u061b\u060c\u061f\""

    invoke-virtual {v2, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 539
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->processWordSeparator(I[I)V

    .line 567
    :cond_1
    :goto_0
    return-void

    .line 541
    :cond_2
    const/16 v2, 0xa

    if-eq p1, v2, :cond_3

    const/16 v2, 0x20

    if-ne p1, v2, :cond_4

    .line 543
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->processWordSeparator(I[I)V

    goto :goto_0

    .line 545
    :cond_4
    const/4 v2, -0x5

    if-ne p1, v2, :cond_5

    .line 546
    invoke-direct {p0}, Lcom/diotek/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->processBackSpaceKey()V

    goto :goto_0

    .line 548
    :cond_5
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_6

    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 549
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSuggestionDelay()V

    .line 552
    :cond_6
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isInMultiTapInput()Z

    move-result v0

    .line 553
    .local v0, "isInMultiTap":Z
    if-eqz v0, :cond_7

    .line 554
    invoke-virtual {p0, p1, p2}, Lcom/diotek/ime/framework/input/AbstractInputModule;->processMultiTapSymbolicKey(I[I)V

    goto :goto_0

    .line 558
    :cond_7
    invoke-virtual {p0, v5}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 559
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    .line 560
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->initComposingBuffer()V

    .line 561
    int-to-char v2, p1

    invoke-static {v2}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(C)V

    .line 562
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 563
    iget-boolean v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-eqz v2, :cond_1

    .line 564
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSequence(Ljava/lang/StringBuilder;)V

    .line 565
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSuggestionDelay()V

    goto :goto_0
.end method

.method public release()V
    .locals 0

    .prologue
    .line 71
    return-void
.end method

.method public setComposingText()V
    .locals 2

    .prologue
    .line 482
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 483
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 484
    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setComposingTextWithoutBatch(Landroid/view/inputmethod/InputConnection;)V

    .line 486
    :cond_0
    return-void
.end method

.method public updateSuggestion()V
    .locals 5

    .prologue
    .line 880
    iget-boolean v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    .line 900
    :cond_0
    :goto_0
    return-void

    .line 883
    :cond_1
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 884
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v3, v4}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    .line 885
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->isEnableAutoCorrection()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 886
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 889
    .local v0, "currentText":Ljava/lang/StringBuilder;
    :try_start_0
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v3, v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getCurrentInputBuffer(Ljava/lang/StringBuilder;)V

    .line 890
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/diotek/ime/framework/engine/InputEngineManager;->joinHangul(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "currentText":Ljava/lang/StringBuilder;
    .local v1, "currentText":Ljava/lang/StringBuilder;
    move-object v0, v1

    .line 895
    .end local v1    # "currentText":Ljava/lang/StringBuilder;
    .restart local v0    # "currentText":Ljava/lang/StringBuilder;
    :goto_1
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {p0, v3, v0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->addCurrentTextToCandidate(Ljava/util/ArrayList;Ljava/lang/StringBuilder;)V

    .line 898
    .end local v0    # "currentText":Ljava/lang/StringBuilder;
    :cond_2
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/diotek/ime/framework/engine/InputEngineManager;->setSuggestionActiveIndex(I)V

    .line 899
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v3, v4}, Lcom/diotek/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 891
    .restart local v0    # "currentText":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v2

    .line 892
    .local v2, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public updateVOHWRSuggestion()V
    .locals 0

    .prologue
    .line 875
    return-void
.end method
