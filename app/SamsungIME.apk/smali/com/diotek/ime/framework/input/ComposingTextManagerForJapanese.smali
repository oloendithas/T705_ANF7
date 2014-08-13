.class public Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;
.super Ljava/lang/Object;
.source "ComposingTextManagerForJapanese.java"


# static fields
.field public static final LAYER0:I = 0x0

.field public static final LAYER1:I = 0x1

.field public static final LAYER2:I = 0x2

.field public static final MAX_LAYER:I = 0x3

.field private static final OFFSET_FULL_WIDTH:I = 0xfee0

.field protected static mCursor:[I

.field protected static mDisplayCursorState:Z

.field protected static mHasPrediction:Z

.field protected static mPredictionString:Ljava/lang/String;

.field protected static mStringLayer:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/diotek/ime/framework/input/StrSegment;",
            ">;"
        }
    .end annotation
.end field

.field protected static mVerbatimList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 56
    sput-object v0, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mStringLayer:[Ljava/util/ArrayList;

    .line 57
    sput-object v0, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mVerbatimList:Ljava/util/ArrayList;

    .line 60
    sput-object v0, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mCursor:[I

    .line 62
    sput-boolean v1, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mHasPrediction:Z

    .line 63
    sput-boolean v1, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mDisplayCursorState:Z

    .line 64
    sput-object v0, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mPredictionString:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    return-void
.end method

.method public static OnBlockPrediction()Z
    .locals 1

    .prologue
    .line 649
    sget-boolean v0, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mHasPrediction:Z

    return v0
.end method

.method public static append(I)Z
    .locals 5
    .param p0, "Keycode"    # I

    .prologue
    const/4 v4, 0x1

    .line 628
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isFullWidthMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 629
    int-to-char v0, p0

    invoke-static {v0}, Lcom/diotek/ime/framework/util/Utils;->convertHalftoFull(C)C

    move-result p0

    .line 631
    :cond_0
    const/4 v0, 0x0

    new-instance v1, Lcom/diotek/ime/framework/input/StrSegment;

    new-instance v2, Ljava/lang/Character;

    int-to-char v3, p0

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v2}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/diotek/ime/framework/input/StrSegment;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v4, v1}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->insertStrSegment(IILcom/diotek/ime/framework/input/StrSegment;)V

    .line 632
    invoke-static {v4}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(Ljava/lang/String;)V

    .line 633
    return v4
.end method

.method public static append(Lcom/diotek/ime/framework/input/StrSegment;)Z
    .locals 2
    .param p0, "str"    # Lcom/diotek/ime/framework/input/StrSegment;

    .prologue
    const/4 v1, 0x1

    .line 622
    const/4 v0, 0x0

    invoke-static {v0, v1, p0}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->insertStrSegment(IILcom/diotek/ime/framework/input/StrSegment;)V

    .line 623
    return v1
.end method

.method public static clear()V
    .locals 3

    .prologue
    .line 614
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 615
    sget-object v1, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 616
    sget-object v1, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mCursor:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    .line 614
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 618
    :cond_0
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 619
    return-void
.end method

.method public static composingText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 664
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static convertHalftoFull(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 744
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 745
    .local v0, "chars":[C
    array-length v2, v0

    .line 746
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 747
    aget-char v3, v0, v1

    const v4, 0xfee0

    add-int/2addr v3, v4

    int-to-char v3, v3

    aput-char v3, v0, v1

    .line 746
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 749
    :cond_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([C)V

    return-object v3
.end method

.method public static delete(IZ)I
    .locals 4
    .param p0, "layer"    # I
    .param p1, "rightside"    # Z

    .prologue
    .line 478
    sget-object v2, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mCursor:[I

    aget v0, v2, p0

    .line 479
    .local v0, "cursor":I
    sget-object v2, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v1, v2, p0

    .line 481
    .local v1, "strLayer":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/diotek/ime/framework/input/StrSegment;>;"
    if-nez p1, :cond_1

    if-lez v0, :cond_1

    .line 482
    add-int/lit8 v2, v0, -0x1

    add-int/lit8 v3, v0, -0x1

    invoke-static {p0, v2, v3}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->deleteStrSegment(III)V

    .line 483
    add-int/lit8 v2, v0, -0x1

    invoke-static {p0, v2}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->setCursor(II)I

    .line 484
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->deleteLastChar()V

    .line 489
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    return v2

    .line 485
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 486
    invoke-static {p0, v0, v0}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->deleteStrSegment(III)V

    .line 487
    invoke-static {p0, v0}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->setCursor(II)I

    goto :goto_0
.end method

.method public static deleteBlockText()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 640
    invoke-static {v2}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->getCursor(I)I

    move-result v0

    .line 641
    .local v0, "blockCursor":I
    add-int/lit8 v1, v0, -0x1

    invoke-static {v2, v3, v1}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->deleteStrSegment(III)V

    .line 642
    sget-object v1, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v2, v1}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->setCursor(II)I

    .line 644
    invoke-static {v3}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->setBlockPrediction(Z)V

    .line 645
    invoke-static {v2}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(Ljava/lang/String;)V

    .line 646
    return-void
.end method

.method public static deleteForward(I)I
    .locals 3
    .param p0, "layer"    # I

    .prologue
    .line 499
    sget-object v2, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mCursor:[I

    aget v0, v2, p0

    .line 500
    .local v0, "cursor":I
    sget-object v2, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v1, v2, p0

    .line 502
    .local v1, "strLayer":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/diotek/ime/framework/input/StrSegment;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v0, :cond_0

    .line 503
    invoke-static {p0, v0, v0}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->deleteStrSegment(III)V

    .line 504
    invoke-static {p0, v0}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->setCursor(II)I

    .line 506
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    return v2
.end method

.method public static deleteLastChar()V
    .locals 2

    .prologue
    .line 637
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->delete(IZ)I

    .line 638
    return-void
.end method

.method public static deleteStrSegment(III)V
    .locals 16
    .param p0, "layer"    # I
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 377
    const/4 v13, 0x3

    new-array v4, v13, [I

    fill-array-data v4, :array_0

    .line 378
    .local v4, "fromL":[I
    const/4 v13, 0x3

    new-array v12, v13, [I

    fill-array-data v12, :array_1

    .line 380
    .local v12, "toL":[I
    sget-object v13, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mStringLayer:[Ljava/util/ArrayList;

    const/4 v14, 0x2

    aget-object v10, v13, v14

    .line 381
    .local v10, "strLayer2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/diotek/ime/framework/input/StrSegment;>;"
    sget-object v13, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mStringLayer:[Ljava/util/ArrayList;

    const/4 v14, 0x1

    aget-object v9, v13, v14

    .line 384
    .local v9, "strLayer1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/diotek/ime/framework/input/StrSegment;>;"
    const/4 v13, 0x2

    move/from16 v0, p0

    if-ne v0, v13, :cond_0

    .line 385
    const/4 v13, 0x2

    aput p1, v4, v13

    .line 386
    const/4 v13, 0x2

    aput p2, v12, v13

    .line 387
    const/4 v14, 0x1

    move/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/diotek/ime/framework/input/StrSegment;

    iget v13, v13, Lcom/diotek/ime/framework/input/StrSegment;->from:I

    aput v13, v4, v14

    .line 388
    const/4 v14, 0x1

    move/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/diotek/ime/framework/input/StrSegment;

    iget v13, v13, Lcom/diotek/ime/framework/input/StrSegment;->to:I

    aput v13, v12, v14

    .line 389
    const/4 v14, 0x0

    const/4 v13, 0x1

    aget v13, v4, v13

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/diotek/ime/framework/input/StrSegment;

    iget v13, v13, Lcom/diotek/ime/framework/input/StrSegment;->from:I

    aput v13, v4, v14

    .line 390
    const/4 v14, 0x0

    const/4 v13, 0x1

    aget v13, v12, v13

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/diotek/ime/framework/input/StrSegment;

    iget v13, v13, Lcom/diotek/ime/framework/input/StrSegment;->to:I

    aput v13, v12, v14

    .line 401
    :goto_0
    sub-int v13, p2, p1

    add-int/lit8 v3, v13, 0x1

    .line 402
    .local v3, "diff":I
    const/4 v6, 0x0

    .local v6, "lv":I
    :goto_1
    const/4 v13, 0x3

    if-ge v6, v13, :cond_a

    .line 403
    aget v13, v4, v6

    if-ltz v13, :cond_2

    .line 404
    aget v13, v4, v6

    aget v14, v12, v6

    invoke-static {v6, v13, v14, v3}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->deleteStrSegment0(IIII)V

    .line 444
    :goto_2
    aget v13, v12, v6

    aget v14, v4, v6

    sub-int/2addr v13, v14

    add-int/lit8 v3, v13, 0x1

    .line 402
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 391
    .end local v3    # "diff":I
    .end local v6    # "lv":I
    :cond_0
    const/4 v13, 0x1

    move/from16 v0, p0

    if-ne v0, v13, :cond_1

    .line 392
    const/4 v13, 0x1

    aput p1, v4, v13

    .line 393
    const/4 v13, 0x1

    aput p2, v12, v13

    .line 394
    const/4 v14, 0x0

    move/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/diotek/ime/framework/input/StrSegment;

    iget v13, v13, Lcom/diotek/ime/framework/input/StrSegment;->from:I

    aput v13, v4, v14

    .line 395
    const/4 v14, 0x0

    move/from16 v0, p2

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/diotek/ime/framework/input/StrSegment;

    iget v13, v13, Lcom/diotek/ime/framework/input/StrSegment;->to:I

    aput v13, v12, v14

    goto :goto_0

    .line 397
    :cond_1
    const/4 v13, 0x0

    aput p1, v4, v13

    .line 398
    const/4 v13, 0x0

    aput p2, v12, v13

    goto :goto_0

    .line 406
    .restart local v3    # "diff":I
    .restart local v6    # "lv":I
    :cond_2
    const/4 v1, -0x1

    .line 407
    .local v1, "boundary_from":I
    const/4 v2, -0x1

    .line 408
    .local v2, "boundary_to":I
    sget-object v13, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v8, v13, v6

    .line 409
    .local v8, "strLayer":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/diotek/ime/framework/input/StrSegment;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v5, v13, :cond_8

    .line 410
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/diotek/ime/framework/input/StrSegment;

    .line 411
    .local v7, "ss":Lcom/diotek/ime/framework/input/StrSegment;
    iget v13, v7, Lcom/diotek/ime/framework/input/StrSegment;->from:I

    add-int/lit8 v14, v6, -0x1

    aget v14, v4, v14

    if-lt v13, v14, :cond_3

    iget v13, v7, Lcom/diotek/ime/framework/input/StrSegment;->from:I

    add-int/lit8 v14, v6, -0x1

    aget v14, v12, v14

    if-le v13, v14, :cond_4

    :cond_3
    iget v13, v7, Lcom/diotek/ime/framework/input/StrSegment;->to:I

    add-int/lit8 v14, v6, -0x1

    aget v14, v4, v14

    if-lt v13, v14, :cond_7

    iget v13, v7, Lcom/diotek/ime/framework/input/StrSegment;->to:I

    add-int/lit8 v14, v6, -0x1

    aget v14, v12, v14

    if-gt v13, v14, :cond_7

    .line 414
    :cond_4
    aget v13, v4, v6

    if-gez v13, :cond_5

    .line 415
    aput v5, v4, v6

    .line 416
    iget v1, v7, Lcom/diotek/ime/framework/input/StrSegment;->from:I

    .line 418
    :cond_5
    aput v5, v12, v6

    .line 419
    iget v2, v7, Lcom/diotek/ime/framework/input/StrSegment;->to:I

    .line 409
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 420
    :cond_7
    iget v13, v7, Lcom/diotek/ime/framework/input/StrSegment;->from:I

    add-int/lit8 v14, v6, -0x1

    aget v14, v4, v14

    if-gt v13, v14, :cond_b

    iget v13, v7, Lcom/diotek/ime/framework/input/StrSegment;->to:I

    add-int/lit8 v14, v6, -0x1

    aget v14, v12, v14

    if-lt v13, v14, :cond_b

    .line 422
    iget v1, v7, Lcom/diotek/ime/framework/input/StrSegment;->from:I

    .line 423
    iget v2, v7, Lcom/diotek/ime/framework/input/StrSegment;->to:I

    .line 424
    aput v5, v4, v6

    .line 425
    aput v5, v12, v6

    .line 431
    .end local v7    # "ss":Lcom/diotek/ime/framework/input/StrSegment;
    :cond_8
    :goto_4
    add-int/lit8 v13, v6, -0x1

    aget v13, v4, v13

    if-ne v1, v13, :cond_9

    add-int/lit8 v13, v6, -0x1

    aget v13, v12, v13

    if-eq v2, v13, :cond_c

    .line 433
    :cond_9
    aget v13, v4, v6

    add-int/lit8 v13, v13, 0x1

    aget v14, v12, v6

    invoke-static {v6, v13, v14, v3}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->deleteStrSegment0(IIII)V

    .line 434
    sub-int/2addr v2, v3

    .line 435
    const/4 v13, 0x1

    new-array v11, v13, [Lcom/diotek/ime/framework/input/StrSegment;

    const/4 v13, 0x0

    new-instance v14, Lcom/diotek/ime/framework/input/StrSegment;

    add-int/lit8 v15, v6, -0x1

    invoke-static {v15}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15, v1, v2}, Lcom/diotek/ime/framework/input/StrSegment;-><init>(Ljava/lang/String;II)V

    aput-object v14, v11, v13

    .line 438
    .local v11, "tmp":[Lcom/diotek/ime/framework/input/StrSegment;
    aget v13, v4, v6

    aget v14, v4, v6

    invoke-static {v6, v11, v13, v14}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->replaceStrSegment0(I[Lcom/diotek/ime/framework/input/StrSegment;II)V

    .line 446
    .end local v1    # "boundary_from":I
    .end local v2    # "boundary_to":I
    .end local v5    # "i":I
    .end local v8    # "strLayer":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/diotek/ime/framework/input/StrSegment;>;"
    .end local v11    # "tmp":[Lcom/diotek/ime/framework/input/StrSegment;
    :cond_a
    return-void

    .line 427
    .restart local v1    # "boundary_from":I
    .restart local v2    # "boundary_to":I
    .restart local v5    # "i":I
    .restart local v7    # "ss":Lcom/diotek/ime/framework/input/StrSegment;
    .restart local v8    # "strLayer":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/diotek/ime/framework/input/StrSegment;>;"
    :cond_b
    iget v13, v7, Lcom/diotek/ime/framework/input/StrSegment;->from:I

    add-int/lit8 v14, v6, -0x1

    aget v14, v12, v14

    if-le v13, v14, :cond_6

    goto :goto_4

    .line 441
    .end local v7    # "ss":Lcom/diotek/ime/framework/input/StrSegment;
    :cond_c
    aget v13, v4, v6

    aget v14, v12, v6

    invoke-static {v6, v13, v14, v3}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->deleteStrSegment0(IIII)V

    goto/16 :goto_2

    .line 377
    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
    .end array-data

    .line 378
    :array_1
    .array-data 4
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method private static deleteStrSegment0(IIII)V
    .locals 4
    .param p0, "layer"    # I
    .param p1, "from"    # I
    .param p2, "to"    # I
    .param p3, "diff"    # I

    .prologue
    .line 457
    sget-object v3, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v2, v3, p0

    .line 458
    .local v2, "strLayer":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/diotek/ime/framework/input/StrSegment;>;"
    if-eqz p3, :cond_0

    .line 459
    add-int/lit8 v0, p2, 0x1

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 460
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/diotek/ime/framework/input/StrSegment;

    .line 461
    .local v1, "ss":Lcom/diotek/ime/framework/input/StrSegment;
    iget v3, v1, Lcom/diotek/ime/framework/input/StrSegment;->from:I

    sub-int/2addr v3, p3

    iput v3, v1, Lcom/diotek/ime/framework/input/StrSegment;->from:I

    .line 462
    iget v3, v1, Lcom/diotek/ime/framework/input/StrSegment;->to:I

    sub-int/2addr v3, p3

    iput v3, v1, Lcom/diotek/ime/framework/input/StrSegment;->to:I

    .line 459
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 465
    .end local v0    # "i":I
    .end local v1    # "ss":Lcom/diotek/ime/framework/input/StrSegment;
    :cond_0
    move v0, p1

    .restart local v0    # "i":I
    :goto_1
    if-gt v0, p2, :cond_1

    .line 466
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 465
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 468
    :cond_1
    return-void
.end method

.method public static getBlockCursor()I
    .locals 2

    .prologue
    .line 661
    sget-object v0, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mCursor:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public static getBlockText()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 668
    const/4 v0, 0x0

    sget-object v1, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mCursor:[I

    aget v1, v1, v2

    add-int/lit8 v1, v1, -0x1

    invoke-static {v2, v0, v1}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->toString(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCursor(I)I
    .locals 1
    .param p0, "layer"    # I

    .prologue
    .line 597
    sget-object v0, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mCursor:[I

    aget v0, v0, p0

    return v0
.end method

.method public static getStrSegment(II)Lcom/diotek/ime/framework/input/StrSegment;
    .locals 4
    .param p0, "layer"    # I
    .param p1, "pos"    # I

    .prologue
    const/4 v3, 0x0

    .line 125
    :try_start_0
    sget-object v2, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v1, v2, p0

    .line 126
    .local v1, "strLayer":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/diotek/ime/framework/input/StrSegment;>;"
    if-gez p1, :cond_0

    .line 127
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 p1, v2, -0x1

    .line 129
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_1

    if-gez p1, :cond_2

    :cond_1
    move-object v2, v3

    .line 134
    .end local v1    # "strLayer":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/diotek/ime/framework/input/StrSegment;>;"
    :goto_0
    return-object v2

    .line 132
    .restart local v1    # "strLayer":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/diotek/ime/framework/input/StrSegment;>;"
    :cond_2
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/diotek/ime/framework/input/StrSegment;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 133
    .end local v1    # "strLayer":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/diotek/ime/framework/input/StrSegment;>;"
    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/Exception;
    move-object v2, v3

    .line 134
    goto :goto_0
.end method

.method public static getVerbatim(II)Ljava/lang/String;
    .locals 5
    .param p0, "startPos"    # I
    .param p1, "endPos"    # I

    .prologue
    .line 692
    if-ltz p0, :cond_0

    if-ltz p1, :cond_0

    if-ge p1, p0, :cond_1

    .line 693
    :cond_0
    const/4 v3, 0x0

    .line 699
    :goto_0
    return-object v3

    .line 695
    :cond_1
    sget-object v3, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mStringLayer:[Ljava/util/ArrayList;

    const/4 v4, 0x1

    aget-object v0, v3, v4

    .line 696
    .local v0, "strLayer1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/diotek/ime/framework/input/StrSegment;>;"
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/diotek/ime/framework/input/StrSegment;

    iget v1, v3, Lcom/diotek/ime/framework/input/StrSegment;->from:I

    .line 697
    .local v1, "verbatimFrom":I
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/diotek/ime/framework/input/StrSegment;

    iget v2, v3, Lcom/diotek/ime/framework/input/StrSegment;->to:I

    .line 699
    .local v2, "verbatimTo":I
    const/4 v3, 0x0

    invoke-static {v3, v1, v2}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->toString(III)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static getVerbatimForBlock()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 672
    sget-object v0, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 673
    const/4 v0, 0x0

    .line 674
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mCursor:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    add-int/lit8 v0, v0, -0x1

    invoke-static {v2, v0}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->getVerbatim(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getVerbatimForPrediction()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 678
    sget-object v1, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 679
    const/4 v1, 0x0

    .line 687
    .local v0, "endPos":I
    :goto_0
    return-object v1

    .line 681
    .end local v0    # "endPos":I
    :cond_0
    const/4 v0, 0x0

    .line 682
    .restart local v0    # "endPos":I
    sget-object v1, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mCursor:[I

    aget v1, v1, v2

    if-nez v1, :cond_1

    .line 683
    invoke-static {v2}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->size(I)I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 687
    :goto_1
    invoke-static {v3, v0}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->getVerbatim(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 685
    :cond_1
    sget-object v1, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mCursor:[I

    aget v1, v1, v2

    add-int/lit8 v0, v1, -0x1

    goto :goto_1
.end method

.method public static getVerbatimList()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 714
    sget-object v3, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mVerbatimList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 716
    sget-object v3, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mCursor:[I

    aget v3, v3, v5

    add-int/lit8 v3, v3, -0x1

    invoke-static {v4, v4, v3}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->toString(III)Ljava/lang/String;

    move-result-object v2

    .line 718
    .local v2, "verbatim":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 719
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 720
    .local v1, "upperCase":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 722
    .local v0, "firstLetterUpperCase":Ljava/lang/String;
    sget-object v3, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mVerbatimList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 723
    sget-object v3, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mVerbatimList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 724
    sget-object v3, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mVerbatimList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 726
    sget-object v3, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mVerbatimList:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->convertHalftoFull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 727
    sget-object v3, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mVerbatimList:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->convertHalftoFull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 728
    sget-object v3, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mVerbatimList:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->convertHalftoFull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 731
    .end local v0    # "firstLetterUpperCase":Ljava/lang/String;
    .end local v1    # "upperCase":Ljava/lang/String;
    :cond_0
    sget-object v3, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mVerbatimList:Ljava/util/ArrayList;

    return-object v3
.end method

.method private static included(II)I
    .locals 5
    .param p0, "layer"    # I
    .param p1, "pos"    # I

    .prologue
    .line 531
    if-nez p1, :cond_1

    .line 532
    const/4 v0, 0x0

    .line 543
    :cond_0
    return v0

    .line 534
    :cond_1
    add-int/lit8 v3, p0, 0x1

    .line 536
    .local v3, "uplayer":I
    sget-object v4, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v2, v4, v3

    .line 537
    .local v2, "strLayer":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/diotek/ime/framework/input/StrSegment;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 538
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/diotek/ime/framework/input/StrSegment;

    .line 539
    .local v1, "ss":Lcom/diotek/ime/framework/input/StrSegment;
    iget v4, v1, Lcom/diotek/ime/framework/input/StrSegment;->from:I

    if-gt v4, p1, :cond_2

    iget v4, v1, Lcom/diotek/ime/framework/input/StrSegment;->to:I

    if-le p1, v4, :cond_0

    .line 537
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static insertStrSegment(IILcom/diotek/ime/framework/input/StrSegment;)V
    .locals 10
    .param p0, "layer1"    # I
    .param p1, "layer2"    # I
    .param p2, "str"    # Lcom/diotek/ime/framework/input/StrSegment;

    .prologue
    .line 296
    sget-object v7, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v7, v7, p0

    sget-object v8, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mCursor:[I

    aget v8, v8, p0

    invoke-virtual {v7, v8, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 297
    sget-object v7, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mCursor:[I

    aget v8, v7, p0

    add-int/lit8 v8, v8, 0x1

    aput v8, v7, p0

    .line 299
    add-int/lit8 v1, p0, 0x1

    .local v1, "i":I
    :goto_0
    if-gt v1, p1, :cond_1

    .line 300
    sget-object v7, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mCursor:[I

    add-int/lit8 v8, v1, -0x1

    aget v7, v7, v8

    add-int/lit8 v3, v7, -0x1

    .line 301
    .local v3, "pos":I
    new-instance v6, Lcom/diotek/ime/framework/input/StrSegment;

    iget-object v7, p2, Lcom/diotek/ime/framework/input/StrSegment;->string:Ljava/lang/String;

    invoke-direct {v6, v7, v3, v3}, Lcom/diotek/ime/framework/input/StrSegment;-><init>(Ljava/lang/String;II)V

    .line 302
    .local v6, "tmp":Lcom/diotek/ime/framework/input/StrSegment;
    sget-object v7, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v5, v7, v1

    .line 303
    .local v5, "strLayer":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/diotek/ime/framework/input/StrSegment;>;"
    sget-object v7, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mCursor:[I

    aget v7, v7, v1

    invoke-virtual {v5, v7, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 304
    sget-object v7, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mCursor:[I

    aget v8, v7, v1

    add-int/lit8 v8, v8, 0x1

    aput v8, v7, v1

    .line 305
    sget-object v7, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mCursor:[I

    aget v2, v7, v1

    .local v2, "j":I
    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_0

    .line 306
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/diotek/ime/framework/input/StrSegment;

    .line 307
    .local v4, "ss":Lcom/diotek/ime/framework/input/StrSegment;
    iget v7, v4, Lcom/diotek/ime/framework/input/StrSegment;->from:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v4, Lcom/diotek/ime/framework/input/StrSegment;->from:I

    .line 308
    iget v7, v4, Lcom/diotek/ime/framework/input/StrSegment;->to:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v4, Lcom/diotek/ime/framework/input/StrSegment;->to:I

    .line 305
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 299
    .end local v4    # "ss":Lcom/diotek/ime/framework/input/StrSegment;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 311
    .end local v2    # "j":I
    .end local v3    # "pos":I
    .end local v5    # "strLayer":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/diotek/ime/framework/input/StrSegment;>;"
    .end local v6    # "tmp":Lcom/diotek/ime/framework/input/StrSegment;
    :cond_1
    sget-object v7, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mCursor:[I

    aget v0, v7, p1

    .line 312
    .local v0, "cursor":I
    add-int/lit8 v7, v0, -0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static {p1, v7, v8, v9}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->modifyUpper(IIII)V

    .line 313
    invoke-static {p1, v0}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->setCursor(II)I

    .line 314
    return-void
.end method

.method public static insertStrSegment(ILcom/diotek/ime/framework/input/StrSegment;)V
    .locals 3
    .param p0, "layer"    # I
    .param p1, "str"    # Lcom/diotek/ime/framework/input/StrSegment;

    .prologue
    .line 282
    sget-object v1, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mCursor:[I

    aget v0, v1, p0

    .line 283
    .local v0, "cursor":I
    sget-object v1, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v1, v1, p0

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 284
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->modifyUpper(IIII)V

    .line 285
    add-int/lit8 v1, v0, 0x1

    invoke-static {p0, v1}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->setCursor(II)I

    .line 286
    return-void
.end method

.method public static isCursorChangingOnComposing()Z
    .locals 1

    .prologue
    .line 703
    sget-boolean v0, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mDisplayCursorState:Z

    return v0
.end method

.method public static makeInstance()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 82
    new-array v1, v3, [Ljava/util/ArrayList;

    sput-object v1, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mStringLayer:[Ljava/util/ArrayList;

    .line 83
    new-array v1, v3, [I

    sput-object v1, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mCursor:[I

    .line 84
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 85
    sget-object v1, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mStringLayer:[Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    aput-object v2, v1, v0

    .line 86
    sget-object v1, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mCursor:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mVerbatimList:Ljava/util/ArrayList;

    .line 91
    return-void
.end method

.method private static modifyUpper(IIII)V
    .locals 17
    .param p0, "layer"    # I
    .param p1, "mod_from"    # I
    .param p2, "mod_len"    # I
    .param p3, "org_len"    # I

    .prologue
    .line 180
    const/4 v13, 0x2

    move/from16 v0, p0

    if-lt v0, v13, :cond_0

    .line 272
    :goto_0
    return-void

    .line 185
    :cond_0
    add-int/lit8 v10, p0, 0x1

    .line 186
    .local v10, "uplayer":I
    sget-object v13, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v9, v13, v10

    .line 187
    .local v9, "strUplayer":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/diotek/ime/framework/input/StrSegment;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-gtz v13, :cond_1

    .line 192
    new-instance v13, Lcom/diotek/ime/framework/input/StrSegment;

    invoke-static/range {p0 .. p0}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->toString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    sget-object v16, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v16, v16, p0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    invoke-direct/range {v13 .. v16}, Lcom/diotek/ime/framework/input/StrSegment;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-static {v10, v13, v14, v15}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->modifyUpper(IIII)V

    goto :goto_0

    .line 197
    :cond_1
    if-nez p2, :cond_2

    const/4 v13, 0x0

    :goto_1
    add-int v5, p1, v13

    .line 198
    .local v5, "mod_to":I
    if-nez p3, :cond_3

    const/4 v13, 0x0

    :goto_2
    add-int v7, p1, v13

    .line 199
    .local v7, "org_to":I
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/diotek/ime/framework/input/StrSegment;

    .line 200
    .local v3, "last":Lcom/diotek/ime/framework/input/StrSegment;
    iget v13, v3, Lcom/diotek/ime/framework/input/StrSegment;->to:I

    move/from16 v0, p1

    if-ge v13, v0, :cond_4

    .line 202
    iput v5, v3, Lcom/diotek/ime/framework/input/StrSegment;->to:I

    .line 203
    iget v13, v3, Lcom/diotek/ime/framework/input/StrSegment;->from:I

    iget v14, v3, Lcom/diotek/ime/framework/input/StrSegment;->to:I

    move/from16 v0, p0

    invoke-static {v0, v13, v14}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->toString(III)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v3, Lcom/diotek/ime/framework/input/StrSegment;->string:Ljava/lang/String;

    .line 204
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    const/4 v14, 0x1

    const/4 v15, 0x1

    invoke-static {v10, v13, v14, v15}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->modifyUpper(IIII)V

    goto :goto_0

    .line 197
    .end local v3    # "last":Lcom/diotek/ime/framework/input/StrSegment;
    .end local v5    # "mod_to":I
    .end local v7    # "org_to":I
    :cond_2
    add-int/lit8 v13, p2, -0x1

    goto :goto_1

    .line 198
    .restart local v5    # "mod_to":I
    :cond_3
    add-int/lit8 v13, p3, -0x1

    goto :goto_2

    .line 208
    .restart local v3    # "last":Lcom/diotek/ime/framework/input/StrSegment;
    .restart local v7    # "org_to":I
    :cond_4
    const/4 v11, -0x1

    .line 209
    .local v11, "uplayer_mod_from":I
    const/4 v12, -0x1

    .line 210
    .local v12, "uplayer_org_to":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v2, v13, :cond_8

    .line 211
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/diotek/ime/framework/input/StrSegment;

    .line 212
    .local v8, "ss":Lcom/diotek/ime/framework/input/StrSegment;
    iget v13, v8, Lcom/diotek/ime/framework/input/StrSegment;->from:I

    move/from16 v0, p1

    if-le v13, v0, :cond_b

    .line 213
    iget v13, v8, Lcom/diotek/ime/framework/input/StrSegment;->to:I

    if-gt v13, v7, :cond_7

    .line 215
    if-gez v11, :cond_5

    .line 216
    move v11, v2

    .line 218
    :cond_5
    move v12, v2

    .line 210
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 221
    :cond_7
    move v12, v2

    .line 242
    .end local v8    # "ss":Lcom/diotek/ime/framework/input/StrSegment;
    :cond_8
    :goto_4
    if-gez v11, :cond_9

    .line 244
    const/4 v11, 0x0

    .line 245
    const/4 v12, 0x0

    .line 248
    :cond_9
    sub-int v1, p2, p3

    .line 250
    .local v1, "diff":I
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/diotek/ime/framework/input/StrSegment;

    .line 251
    .restart local v8    # "ss":Lcom/diotek/ime/framework/input/StrSegment;
    iget v4, v8, Lcom/diotek/ime/framework/input/StrSegment;->to:I

    .line 252
    .local v4, "last_to":I
    add-int/lit8 v6, v11, 0x1

    .line 253
    .local v6, "next":I
    move v2, v6

    :goto_5
    if-gt v2, v12, :cond_d

    .line 254
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "ss":Lcom/diotek/ime/framework/input/StrSegment;
    check-cast v8, Lcom/diotek/ime/framework/input/StrSegment;

    .line 255
    .restart local v8    # "ss":Lcom/diotek/ime/framework/input/StrSegment;
    iget v13, v8, Lcom/diotek/ime/framework/input/StrSegment;->to:I

    if-le v4, v13, :cond_a

    .line 256
    iget v4, v8, Lcom/diotek/ime/framework/input/StrSegment;->to:I

    .line 258
    :cond_a
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 253
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 225
    .end local v1    # "diff":I
    .end local v4    # "last_to":I
    .end local v6    # "next":I
    :cond_b
    if-nez p3, :cond_c

    iget v13, v8, Lcom/diotek/ime/framework/input/StrSegment;->from:I

    move/from16 v0, p1

    if-ne v13, v0, :cond_c

    .line 227
    add-int/lit8 v11, v2, -0x1

    .line 228
    add-int/lit8 v12, v2, -0x1

    .line 229
    goto :goto_4

    .line 232
    :cond_c
    move v11, v2

    .line 233
    move v12, v2

    .line 234
    iget v13, v8, Lcom/diotek/ime/framework/input/StrSegment;->to:I

    if-lt v13, v7, :cond_6

    goto :goto_4

    .line 260
    .restart local v1    # "diff":I
    .restart local v4    # "last_to":I
    .restart local v6    # "next":I
    :cond_d
    if-ge v4, v5, :cond_e

    .end local v5    # "mod_to":I
    :goto_6
    iput v5, v8, Lcom/diotek/ime/framework/input/StrSegment;->to:I

    .line 262
    iget v13, v8, Lcom/diotek/ime/framework/input/StrSegment;->from:I

    iget v14, v8, Lcom/diotek/ime/framework/input/StrSegment;->to:I

    move/from16 v0, p0

    invoke-static {v0, v13, v14}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->toString(III)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v8, Lcom/diotek/ime/framework/input/StrSegment;->string:Ljava/lang/String;

    .line 264
    move v2, v6

    :goto_7
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v2, v13, :cond_f

    .line 265
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "ss":Lcom/diotek/ime/framework/input/StrSegment;
    check-cast v8, Lcom/diotek/ime/framework/input/StrSegment;

    .line 266
    .restart local v8    # "ss":Lcom/diotek/ime/framework/input/StrSegment;
    iget v13, v8, Lcom/diotek/ime/framework/input/StrSegment;->from:I

    add-int/2addr v13, v1

    iput v13, v8, Lcom/diotek/ime/framework/input/StrSegment;->from:I

    .line 267
    iget v13, v8, Lcom/diotek/ime/framework/input/StrSegment;->to:I

    add-int/2addr v13, v1

    iput v13, v8, Lcom/diotek/ime/framework/input/StrSegment;->to:I

    .line 264
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 260
    .restart local v5    # "mod_to":I
    :cond_e
    add-int v5, v4, v1

    goto :goto_6

    .line 270
    .end local v5    # "mod_to":I
    :cond_f
    const/4 v13, 0x1

    sub-int v14, v12, v11

    add-int/lit8 v14, v14, 0x1

    invoke-static {v10, v11, v13, v14}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->modifyUpper(IIII)V

    goto/16 :goto_0
.end method

.method public static moveCursor(II)I
    .locals 2
    .param p0, "layer"    # I
    .param p1, "diff"    # I

    .prologue
    .line 585
    sget-object v1, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mCursor:[I

    aget v1, v1, p0

    add-int v0, v1, p1

    .line 587
    .local v0, "c":I
    invoke-static {p0, v0}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->setCursor(II)I

    move-result v1

    return v1
.end method

.method public static replaceStrSegment(I[Lcom/diotek/ime/framework/input/StrSegment;)V
    .locals 3
    .param p0, "layer"    # I
    .param p1, "str"    # [Lcom/diotek/ime/framework/input/StrSegment;

    .prologue
    .line 364
    sget-object v1, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mCursor:[I

    aget v0, v1, p0

    .line 365
    .local v0, "cursor":I
    add-int/lit8 v1, v0, -0x1

    add-int/lit8 v2, v0, -0x1

    invoke-static {p0, p1, v1, v2}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->replaceStrSegment0(I[Lcom/diotek/ime/framework/input/StrSegment;II)V

    .line 366
    array-length v1, p1

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    invoke-static {p0, v1}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->setCursor(II)I

    .line 367
    return-void
.end method

.method public static replaceStrSegment(I[Lcom/diotek/ime/framework/input/StrSegment;I)V
    .locals 3
    .param p0, "layer"    # I
    .param p1, "str"    # [Lcom/diotek/ime/framework/input/StrSegment;
    .param p2, "num"    # I

    .prologue
    .line 352
    sget-object v1, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mCursor:[I

    aget v0, v1, p0

    .line 353
    .local v0, "cursor":I
    sub-int v1, v0, p2

    add-int/lit8 v2, v0, -0x1

    invoke-static {p0, p1, v1, v2}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->replaceStrSegment0(I[Lcom/diotek/ime/framework/input/StrSegment;II)V

    .line 354
    array-length v1, p1

    add-int/2addr v1, v0

    sub-int/2addr v1, p2

    invoke-static {p0, v1}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->setCursor(II)I

    .line 355
    return-void
.end method

.method protected static replaceStrSegment0(I[Lcom/diotek/ime/framework/input/StrSegment;II)V
    .locals 4
    .param p0, "layer"    # I
    .param p1, "str"    # [Lcom/diotek/ime/framework/input/StrSegment;
    .param p2, "from"    # I
    .param p3, "to"    # I

    .prologue
    .line 325
    sget-object v2, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v1, v2, p0

    .line 327
    .local v1, "strLayer":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/diotek/ime/framework/input/StrSegment;>;"
    if-ltz p2, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le p2, v2, :cond_1

    .line 328
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 330
    :cond_1
    if-ltz p3, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le p3, v2, :cond_3

    .line 331
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p3

    .line 334
    :cond_3
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-gt v0, p3, :cond_4

    .line 335
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 334
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 337
    :cond_4
    array-length v2, p1

    add-int/lit8 v0, v2, -0x1

    :goto_1
    if-ltz v0, :cond_5

    .line 338
    aget-object v2, p1, v0

    invoke-virtual {v1, p2, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 337
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 341
    :cond_5
    array-length v2, p1

    sub-int v3, p3, p2

    add-int/lit8 v3, v3, 0x1

    invoke-static {p0, p2, v2, v3}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->modifyUpper(IIII)V

    .line 342
    return-void
.end method

.method public static setBlockPrediction(Z)V
    .locals 0
    .param p0, "state"    # Z

    .prologue
    .line 653
    sput-boolean p0, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mHasPrediction:Z

    .line 659
    return-void
.end method

.method public static setCursor(II)I
    .locals 5
    .param p0, "layer"    # I
    .param p1, "pos"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 554
    sget-object v0, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v0, v0, p0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le p1, v0, :cond_0

    .line 555
    sget-object v0, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v0, v0, p0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 557
    :cond_0
    if-gez p1, :cond_1

    .line 558
    const/4 p1, 0x0

    .line 561
    :cond_1
    if-nez p0, :cond_2

    .line 562
    sget-object v0, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mCursor:[I

    aput p1, v0, v1

    .line 563
    sget-object v0, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mCursor:[I

    invoke-static {v1, p1}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->included(II)I

    move-result v1

    aput v1, v0, v4

    .line 564
    sget-object v0, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mCursor:[I

    sget-object v1, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mCursor:[I

    aget v1, v1, v4

    invoke-static {v4, v1}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->included(II)I

    move-result v1

    aput v1, v0, v3

    .line 574
    :goto_0
    return p1

    .line 565
    :cond_2
    if-ne p0, v4, :cond_4

    .line 566
    sget-object v0, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mCursor:[I

    invoke-static {v4, p1}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->included(II)I

    move-result v2

    aput v2, v0, v3

    .line 567
    sget-object v0, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mCursor:[I

    aput p1, v0, v4

    .line 568
    sget-object v2, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mCursor:[I

    if-lez p1, :cond_3

    sget-object v0, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v0, v0, v4

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/diotek/ime/framework/input/StrSegment;

    iget v0, v0, Lcom/diotek/ime/framework/input/StrSegment;->to:I

    add-int/lit8 v0, v0, 0x1

    :goto_1
    aput v0, v2, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    .line 570
    :cond_4
    sget-object v0, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mCursor:[I

    aput p1, v0, v3

    .line 571
    sget-object v2, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mCursor:[I

    if-lez p1, :cond_5

    sget-object v0, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v0, v0, v3

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/diotek/ime/framework/input/StrSegment;

    iget v0, v0, Lcom/diotek/ime/framework/input/StrSegment;->to:I

    add-int/lit8 v0, v0, 0x1

    :goto_2
    aput v0, v2, v4

    .line 572
    sget-object v2, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mCursor:[I

    sget-object v0, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mCursor:[I

    aget v0, v0, v4

    if-lez v0, :cond_6

    sget-object v0, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v0, v0, v4

    sget-object v3, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mCursor:[I

    aget v3, v3, v4

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/diotek/ime/framework/input/StrSegment;

    iget v0, v0, Lcom/diotek/ime/framework/input/StrSegment;->to:I

    add-int/lit8 v0, v0, 0x1

    :goto_3
    aput v0, v2, v1

    goto :goto_0

    :cond_5
    move v0, v1

    .line 571
    goto :goto_2

    :cond_6
    move v0, v1

    .line 572
    goto :goto_3
.end method

.method public static setCursorChangingOnComposing(I)V
    .locals 1
    .param p0, "start"    # I

    .prologue
    .line 707
    if-nez p0, :cond_0

    .line 708
    const/4 v0, 0x1

    sput-boolean v0, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mDisplayCursorState:Z

    .line 711
    :goto_0
    return-void

    .line 710
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mDisplayCursorState:Z

    goto :goto_0
.end method

.method public static size(I)I
    .locals 1
    .param p0, "layer"    # I

    .prologue
    .line 607
    sget-object v0, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v0, v0, p0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "layer"    # I

    .prologue
    .line 168
    const/4 v0, 0x0

    sget-object v1, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v1, v1, p0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p0, v0, v1}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->toString(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(III)Ljava/lang/String;
    .locals 6
    .param p0, "layer"    # I
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 148
    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 149
    .local v0, "buf":Ljava/lang/StringBuffer;
    sget-object v5, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v4, v5, p0

    .line 151
    .local v4, "strLayer":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/diotek/ime/framework/input/StrSegment;>;"
    move v2, p1

    .local v2, "i":I
    :goto_0
    if-gt v2, p2, :cond_0

    .line 152
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/diotek/ime/framework/input/StrSegment;

    .line 153
    .local v3, "ss":Lcom/diotek/ime/framework/input/StrSegment;
    iget-object v5, v3, Lcom/diotek/ime/framework/input/StrSegment;->string:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 151
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 155
    .end local v3    # "ss":Lcom/diotek/ime/framework/input/StrSegment;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 157
    .end local v0    # "buf":Ljava/lang/StringBuffer;
    .end local v2    # "i":I
    .end local v4    # "strLayer":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/diotek/ime/framework/input/StrSegment;>;"
    :goto_1
    return-object v5

    .line 156
    :catch_0
    move-exception v1

    .line 157
    .local v1, "ex":Ljava/lang/Exception;
    const/4 v5, 0x0

    goto :goto_1
.end method


# virtual methods
.method public debugout()V
    .locals 7

    .prologue
    .line 97
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v4, 0x3

    if-ge v0, v4, :cond_1

    .line 98
    const-string v4, "OpenWnn"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ComposingText["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const-string v4, "OpenWnn"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  cur = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mCursor:[I

    aget v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 101
    .local v3, "tmp":Ljava/lang/StringBuffer;
    sget-object v4, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/diotek/ime/framework/input/StrSegment;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 102
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/diotek/ime/framework/input/StrSegment;

    .line 103
    .local v2, "ss":Lcom/diotek/ime/framework/input/StrSegment;
    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 104
    iget-object v4, v2, Lcom/diotek/ime/framework/input/StrSegment;->string:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 105
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 106
    iget v4, v2, Lcom/diotek/ime/framework/input/StrSegment;->from:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 107
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 108
    iget v4, v2, Lcom/diotek/ime/framework/input/StrSegment;->to:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 109
    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 111
    .end local v2    # "ss":Lcom/diotek/ime/framework/input/StrSegment;
    :cond_0
    const-string v4, "OpenWnn"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  str = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 113
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/diotek/ime/framework/input/StrSegment;>;"
    .end local v3    # "tmp":Ljava/lang/StringBuffer;
    :cond_1
    return-void
.end method

.method public getStringLayer(I)Ljava/util/ArrayList;
    .locals 2
    .param p1, "layer"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/diotek/ime/framework/input/StrSegment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 517
    :try_start_0
    sget-object v1, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v1, v1, p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 519
    :goto_0
    return-object v1

    .line 518
    :catch_0
    move-exception v0

    .line 519
    .local v0, "ex":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method
