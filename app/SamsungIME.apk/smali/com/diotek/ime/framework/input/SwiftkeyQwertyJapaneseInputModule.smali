.class public Lcom/diotek/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;
.super Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;
.source "SwiftkeyQwertyJapaneseInputModule.java"


# static fields
.field private static final CHAR_SMALL:Ljava/lang/String; = "\u3041\u3043\u3045\u3047\u3049\u3063\u3083\u3085\u3087\u308e\u3095\u3096"

.field private static final MAX_LENGTH:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
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
    .line 619
    .local p1, "candidate":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 620
    .local v0, "currentText":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v1, v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getCurrentInputBuffer(Ljava/lang/StringBuilder;)V

    .line 621
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 625
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, v0}, Lcom/diotek/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->addCurrentTextToCandidate(Ljava/util/ArrayList;Ljava/lang/StringBuilder;)V

    .line 627
    :cond_0
    return-void
.end method

.method private convertRomajiToHiragana()Z
    .locals 21

    .prologue
    .line 648
    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->getCursor(I)I

    move-result v6

    .line 650
    .local v6, "cursor":I
    if-gtz v6, :cond_0

    .line 652
    const/16 v16, 0x0

    .line 767
    :goto_0
    return v16

    .line 655
    :cond_0
    const/16 v16, 0x4

    move/from16 v0, v16

    new-array v13, v0, [Lcom/diotek/ime/framework/input/StrSegment;

    .line 656
    .local v13, "str":[Lcom/diotek/ime/framework/input/StrSegment;
    const/4 v12, 0x4

    .line 657
    .local v12, "start":I
    const/16 v16, 0x4

    move/from16 v0, v16

    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 658
    .local v3, "checkLength":I
    const/4 v8, 0x1

    .local v8, "i":I
    :goto_1
    if-gt v8, v3, :cond_1

    .line 659
    rsub-int/lit8 v16, v8, 0x4

    const/16 v17, 0x1

    sub-int v18, v6, v8

    invoke-static/range {v17 .. v18}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->getStrSegment(II)Lcom/diotek/ime/framework/input/StrSegment;

    move-result-object v17

    aput-object v17, v13, v16

    .line 660
    rsub-int/lit8 v16, v8, 0x4

    aget-object v16, v13, v16

    move-object/from16 v0, v16

    iget-object v14, v0, Lcom/diotek/ime/framework/input/StrSegment;->string:Ljava/lang/String;

    .line 665
    .local v14, "temp":Ljava/lang/String;
    add-int/lit8 v12, v12, -0x1

    .line 658
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 668
    .end local v14    # "temp":Ljava/lang/String;
    :cond_1
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 670
    .local v9, "key":Ljava/lang/StringBuffer;
    :goto_2
    const/16 v16, 0x4

    move/from16 v0, v16

    if-ge v12, v0, :cond_11

    .line 671
    const/4 v4, 0x0

    .line 672
    .local v4, "convertResult":Ljava/lang/String;
    move v8, v12

    :goto_3
    const/16 v16, 0x4

    move/from16 v0, v16

    if-ge v8, v0, :cond_2

    .line 673
    aget-object v16, v13, v8

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/diotek/ime/framework/input/StrSegment;->string:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 672
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 677
    :cond_2
    rsub-int/lit8 v16, v12, 0x4

    sub-int v16, v6, v16

    add-int/lit8 v17, v6, -0x1

    invoke-static/range {v16 .. v17}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->getVerbatim(II)Ljava/lang/String;

    move-result-object v15

    .line 678
    .local v15, "verbatim":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v15}, Lcom/diotek/ime/framework/engine/InputEngineManager;->romajiToHiragana(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 679
    const/4 v10, 0x0

    .line 680
    .local v10, "match":Ljava/lang/String;
    if-nez v4, :cond_3

    .line 681
    const/16 v16, 0x0

    goto :goto_0

    .line 684
    :cond_3
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    .line 685
    .restart local v14    # "temp":Ljava/lang/String;
    const/4 v5, 0x0

    .line 686
    .local v5, "convertedNum":I
    const-string v16, "\u3041\u3043\u3045\u3047\u3049\u3063\u3083\u3085\u3087\u308e\u3095\u3096"

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->charAt(I)C

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->indexOf(I)I

    move-result v16

    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_4

    .line 687
    add-int/lit8 v12, v12, 0x1

    .line 688
    const/16 v16, 0x0

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->length()I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 691
    :cond_4
    const/4 v8, 0x1

    :goto_4
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v16

    move/from16 v0, v16

    if-gt v8, v0, :cond_7

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v16

    move/from16 v0, v16

    if-gt v8, v0, :cond_7

    .line 692
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v4, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 693
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v16

    move/from16 v0, v16

    if-ne v0, v8, :cond_5

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v16

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_5

    .line 695
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v16

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v17

    sub-int v7, v16, v17

    .line 697
    .local v7, "gap":I
    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v11, v0, [Lcom/diotek/ime/framework/input/StrSegment;

    .line 698
    .local v11, "out":[Lcom/diotek/ime/framework/input/StrSegment;
    const/16 v16, 0x0

    new-instance v17, Lcom/diotek/ime/framework/input/StrSegment;

    add-int v18, v12, v5

    aget-object v18, v13, v18

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/diotek/ime/framework/input/StrSegment;->string:Ljava/lang/String;

    move-object/from16 v18, v0

    add-int v19, v12, v5

    aget-object v19, v13, v19

    move-object/from16 v0, v19

    iget v0, v0, Lcom/diotek/ime/framework/input/StrSegment;->from:I

    move/from16 v19, v0

    add-int v20, v12, v5

    add-int/lit8 v20, v20, 0x1

    aget-object v20, v13, v20

    move-object/from16 v0, v20

    iget v0, v0, Lcom/diotek/ime/framework/input/StrSegment;->to:I

    move/from16 v20, v0

    invoke-direct/range {v17 .. v20}, Lcom/diotek/ime/framework/input/StrSegment;-><init>(Ljava/lang/String;II)V

    aput-object v17, v11, v16

    .line 699
    const/16 v16, 0x1

    add-int/lit8 v17, v7, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v0, v11, v1}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->replaceStrSegment(I[Lcom/diotek/ime/framework/input/StrSegment;I)V

    .line 701
    add-int/2addr v5, v7

    .line 703
    .end local v7    # "gap":I
    .end local v11    # "out":[Lcom/diotek/ime/framework/input/StrSegment;
    :cond_5
    add-int/lit8 v5, v5, 0x1

    .line 691
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_4

    .line 707
    :cond_7
    if-lez v5, :cond_9

    .line 719
    :goto_5
    if-eqz v10, :cond_10

    .line 725
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_c

    .line 726
    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v11, v0, [Lcom/diotek/ime/framework/input/StrSegment;

    .line 727
    .restart local v11    # "out":[Lcom/diotek/ime/framework/input/StrSegment;
    const/16 v16, 0x0

    new-instance v17, Lcom/diotek/ime/framework/input/StrSegment;

    aget-object v18, v13, v12

    move-object/from16 v0, v18

    iget v0, v0, Lcom/diotek/ime/framework/input/StrSegment;->from:I

    move/from16 v18, v0

    const/16 v19, 0x3

    aget-object v19, v13, v19

    move-object/from16 v0, v19

    iget v0, v0, Lcom/diotek/ime/framework/input/StrSegment;->to:I

    move/from16 v19, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v10, v1, v2}, Lcom/diotek/ime/framework/input/StrSegment;-><init>(Ljava/lang/String;II)V

    aput-object v17, v11, v16

    .line 728
    const/16 v16, 0x1

    rsub-int/lit8 v17, v12, 0x4

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v0, v11, v1}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->replaceStrSegment(I[Lcom/diotek/ime/framework/input/StrSegment;I)V

    .line 762
    .end local v11    # "out":[Lcom/diotek/ime/framework/input/StrSegment;
    :cond_8
    :goto_6
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 709
    :cond_9
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v16

    invoke-static/range {v16 .. v16}, Lcom/diotek/ime/framework/util/Utils;->isHiraganaKey(C)Z

    move-result v16

    if-eqz v16, :cond_a

    .line 710
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_5

    .line 711
    :cond_a
    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_b

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v16

    if-lez v16, :cond_b

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v16

    if-lez v16, :cond_b

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/String;->charAt(I)C

    move-result v16

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_b

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/String;->charAt(I)C

    move-result v16

    invoke-static/range {v16 .. v16}, Lcom/diotek/ime/framework/util/Utils;->isHiraganaKey(C)Z

    move-result v16

    if-eqz v16, :cond_b

    .line 714
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_5

    .line 716
    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_5

    .line 730
    :cond_c
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v16

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_e

    .line 731
    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v11, v0, [Lcom/diotek/ime/framework/input/StrSegment;

    .line 732
    .restart local v11    # "out":[Lcom/diotek/ime/framework/input/StrSegment;
    const-string v16, "\u3041\u3043\u3045\u3047\u3049\u3063\u3083\u3085\u3087\u308e\u3095\u3096"

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->charAt(I)C

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->indexOf(I)I

    move-result v16

    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_d

    .line 733
    const/16 v16, 0x0

    new-instance v17, Lcom/diotek/ime/framework/input/StrSegment;

    const/16 v18, 0x0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    aget-object v19, v13, v12

    move-object/from16 v0, v19

    iget v0, v0, Lcom/diotek/ime/framework/input/StrSegment;->from:I

    move/from16 v19, v0

    aget-object v20, v13, v12

    move-object/from16 v0, v20

    iget v0, v0, Lcom/diotek/ime/framework/input/StrSegment;->from:I

    move/from16 v20, v0

    invoke-direct/range {v17 .. v20}, Lcom/diotek/ime/framework/input/StrSegment;-><init>(Ljava/lang/String;II)V

    aput-object v17, v11, v16

    .line 735
    const/16 v16, 0x1

    new-instance v17, Lcom/diotek/ime/framework/input/StrSegment;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    aget-object v19, v13, v12

    move-object/from16 v0, v19

    iget v0, v0, Lcom/diotek/ime/framework/input/StrSegment;->from:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    const/16 v20, 0x3

    aget-object v20, v13, v20

    move-object/from16 v0, v20

    iget v0, v0, Lcom/diotek/ime/framework/input/StrSegment;->to:I

    move/from16 v20, v0

    invoke-direct/range {v17 .. v20}, Lcom/diotek/ime/framework/input/StrSegment;-><init>(Ljava/lang/String;II)V

    aput-object v17, v11, v16

    .line 743
    :goto_7
    const/16 v16, 0x1

    rsub-int/lit8 v17, v12, 0x4

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v0, v11, v1}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->replaceStrSegment(I[Lcom/diotek/ime/framework/input/StrSegment;I)V

    goto/16 :goto_6

    .line 738
    :cond_d
    const/16 v16, 0x0

    new-instance v17, Lcom/diotek/ime/framework/input/StrSegment;

    const/16 v18, 0x0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    aget-object v19, v13, v12

    move-object/from16 v0, v19

    iget v0, v0, Lcom/diotek/ime/framework/input/StrSegment;->from:I

    move/from16 v19, v0

    const/16 v20, 0x3

    aget-object v20, v13, v20

    move-object/from16 v0, v20

    iget v0, v0, Lcom/diotek/ime/framework/input/StrSegment;->to:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    invoke-direct/range {v17 .. v20}, Lcom/diotek/ime/framework/input/StrSegment;-><init>(Ljava/lang/String;II)V

    aput-object v17, v11, v16

    .line 740
    const/16 v16, 0x1

    new-instance v17, Lcom/diotek/ime/framework/input/StrSegment;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x3

    aget-object v19, v13, v19

    move-object/from16 v0, v19

    iget v0, v0, Lcom/diotek/ime/framework/input/StrSegment;->to:I

    move/from16 v19, v0

    const/16 v20, 0x3

    aget-object v20, v13, v20

    move-object/from16 v0, v20

    iget v0, v0, Lcom/diotek/ime/framework/input/StrSegment;->to:I

    move/from16 v20, v0

    invoke-direct/range {v17 .. v20}, Lcom/diotek/ime/framework/input/StrSegment;-><init>(Ljava/lang/String;II)V

    aput-object v17, v11, v16

    goto :goto_7

    .line 744
    .end local v11    # "out":[Lcom/diotek/ime/framework/input/StrSegment;
    :cond_e
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v16

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_8

    .line 745
    const-string v16, "\u3041\u3043\u3045\u3047\u3049\u3063\u3083\u3085\u3087\u308e\u3095\u3096"

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->charAt(I)C

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->indexOf(I)I

    move-result v16

    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_f

    .line 746
    const/16 v16, 0x3

    move/from16 v0, v16

    new-array v11, v0, [Lcom/diotek/ime/framework/input/StrSegment;

    .line 747
    .restart local v11    # "out":[Lcom/diotek/ime/framework/input/StrSegment;
    const/16 v16, 0x0

    new-instance v17, Lcom/diotek/ime/framework/input/StrSegment;

    const/16 v18, 0x0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    aget-object v19, v13, v12

    move-object/from16 v0, v19

    iget v0, v0, Lcom/diotek/ime/framework/input/StrSegment;->from:I

    move/from16 v19, v0

    aget-object v20, v13, v12

    move-object/from16 v0, v20

    iget v0, v0, Lcom/diotek/ime/framework/input/StrSegment;->from:I

    move/from16 v20, v0

    invoke-direct/range {v17 .. v20}, Lcom/diotek/ime/framework/input/StrSegment;-><init>(Ljava/lang/String;II)V

    aput-object v17, v11, v16

    .line 749
    const/16 v16, 0x1

    new-instance v17, Lcom/diotek/ime/framework/input/StrSegment;

    const/16 v18, 0x1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    aget-object v19, v13, v12

    move-object/from16 v0, v19

    iget v0, v0, Lcom/diotek/ime/framework/input/StrSegment;->from:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    const/16 v20, 0x3

    aget-object v20, v13, v20

    move-object/from16 v0, v20

    iget v0, v0, Lcom/diotek/ime/framework/input/StrSegment;->to:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    invoke-direct/range {v17 .. v20}, Lcom/diotek/ime/framework/input/StrSegment;-><init>(Ljava/lang/String;II)V

    aput-object v17, v11, v16

    .line 751
    const/16 v16, 0x2

    new-instance v17, Lcom/diotek/ime/framework/input/StrSegment;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x3

    aget-object v19, v13, v19

    move-object/from16 v0, v19

    iget v0, v0, Lcom/diotek/ime/framework/input/StrSegment;->to:I

    move/from16 v19, v0

    const/16 v20, 0x3

    aget-object v20, v13, v20

    move-object/from16 v0, v20

    iget v0, v0, Lcom/diotek/ime/framework/input/StrSegment;->to:I

    move/from16 v20, v0

    invoke-direct/range {v17 .. v20}, Lcom/diotek/ime/framework/input/StrSegment;-><init>(Ljava/lang/String;II)V

    aput-object v17, v11, v16

    .line 760
    :goto_8
    const/16 v16, 0x1

    rsub-int/lit8 v17, v12, 0x4

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v0, v11, v1}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->replaceStrSegment(I[Lcom/diotek/ime/framework/input/StrSegment;I)V

    goto/16 :goto_6

    .line 754
    .end local v11    # "out":[Lcom/diotek/ime/framework/input/StrSegment;
    :cond_f
    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v11, v0, [Lcom/diotek/ime/framework/input/StrSegment;

    .line 755
    .restart local v11    # "out":[Lcom/diotek/ime/framework/input/StrSegment;
    const/16 v16, 0x0

    new-instance v17, Lcom/diotek/ime/framework/input/StrSegment;

    const/16 v18, 0x0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    aget-object v19, v13, v12

    move-object/from16 v0, v19

    iget v0, v0, Lcom/diotek/ime/framework/input/StrSegment;->from:I

    move/from16 v19, v0

    const/16 v20, 0x3

    aget-object v20, v13, v20

    move-object/from16 v0, v20

    iget v0, v0, Lcom/diotek/ime/framework/input/StrSegment;->to:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    invoke-direct/range {v17 .. v20}, Lcom/diotek/ime/framework/input/StrSegment;-><init>(Ljava/lang/String;II)V

    aput-object v17, v11, v16

    .line 757
    const/16 v16, 0x1

    new-instance v17, Lcom/diotek/ime/framework/input/StrSegment;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x3

    aget-object v19, v13, v19

    move-object/from16 v0, v19

    iget v0, v0, Lcom/diotek/ime/framework/input/StrSegment;->to:I

    move/from16 v19, v0

    const/16 v20, 0x3

    aget-object v20, v13, v20

    move-object/from16 v0, v20

    iget v0, v0, Lcom/diotek/ime/framework/input/StrSegment;->to:I

    move/from16 v20, v0

    invoke-direct/range {v17 .. v20}, Lcom/diotek/ime/framework/input/StrSegment;-><init>(Ljava/lang/String;II)V

    aput-object v17, v11, v16

    goto :goto_8

    .line 764
    .end local v11    # "out":[Lcom/diotek/ime/framework/input/StrSegment;
    :cond_10
    add-int/2addr v12, v5

    .line 765
    const/16 v16, 0x0

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->length()I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 767
    .end local v4    # "convertResult":Ljava/lang/String;
    .end local v5    # "convertedNum":I
    .end local v10    # "match":Ljava/lang/String;
    .end local v14    # "temp":Ljava/lang/String;
    .end local v15    # "verbatim":Ljava/lang/String;
    :cond_11
    const/16 v16, 0x0

    goto/16 :goto_0
.end method

.method private processBackSpaceKey()V
    .locals 12

    .prologue
    const/16 v11, 0x14

    const/4 v10, -0x5

    const/16 v9, 0x43

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 331
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 332
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v1, :cond_1

    .line 423
    :cond_0
    :goto_0
    return-void

    .line 335
    :cond_1
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v6}, Lcom/diotek/ime/framework/input/AbstractInputModule;->stopTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;)V

    .line 337
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/engine/InputEngineManager;->removeCurrentTermFromTemporaryModel()V

    .line 338
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6, v8}, Lcom/diotek/ime/framework/common/InputManager;->setFocusOnCandidateView(Z)V

    .line 340
    const-string v4, ""

    .line 341
    .local v4, "lastChar":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 342
    invoke-interface {v1, v7, v8}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v4

    .end local v4    # "lastChar":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 343
    .restart local v4    # "lastChar":Ljava/lang/String;
    if-nez v4, :cond_2

    const-string v4, ""

    .line 345
    :cond_2
    invoke-virtual {p0, v4}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setDeleteCount(Ljava/lang/String;)V

    .line 346
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->resetPredictionWord()V

    .line 347
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->getSelectedNumOfText()I

    move-result v5

    .line 348
    .local v5, "selectedText":I
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_a

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_a

    .line 349
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v6

    if-le v6, v7, :cond_4

    .line 350
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v6, v10}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(I)I

    move-result v6

    if-nez v6, :cond_3

    .line 351
    invoke-static {v7, v8}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->delete(IZ)I

    .line 352
    invoke-static {v7}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(Ljava/lang/String;)V

    .line 353
    invoke-virtual {p0, v9}, Lcom/diotek/ime/framework/input/AbstractInputModule;->onKeyDownUpHandle(I)V

    .line 354
    invoke-virtual {p0, v8}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->postUpdateSequenceAndSuggestionDelay(I)V

    goto :goto_0

    .line 357
    :cond_3
    invoke-static {v7, v8}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->delete(IZ)I

    .line 358
    invoke-static {v7}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(Ljava/lang/String;)V

    .line 359
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setComposingText()V

    .line 360
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->updateSuggestionDelay()V

    goto :goto_0

    .line 363
    :cond_4
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 364
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v6, v10}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(I)I

    .line 365
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->clear()V

    .line 366
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 367
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6, v8}, Lcom/diotek/ime/framework/common/InputManager;->setIsPendingUpdateCandidateView(Z)V

    .line 368
    invoke-virtual {p0, v8}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->postUpdateSequenceAndSuggestionDelay(I)V

    goto/16 :goto_0

    .line 371
    :cond_5
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 372
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-gtz v6, :cond_6

    if-lez v5, :cond_7

    .line 373
    :cond_6
    invoke-virtual {p0, v7}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setPredictionWord(Z)V

    .line 375
    :cond_7
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getDeleteCount()I

    move-result v6

    const/16 v7, 0xa

    if-le v6, v7, :cond_8

    invoke-static {}, Lcom/diotek/ime/framework/repository/PackageStatus;->getPackageName()Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    move-result-object v6

    sget-object v7, Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;->CHATON_PACKAGE_NAME:Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    if-eq v6, v7, :cond_8

    .line 377
    if-eqz v1, :cond_9

    .line 378
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getLastWordDividerIndex()I

    move-result v6

    invoke-interface {v1, v6, v8}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 379
    const/16 v6, 0x96

    invoke-virtual {p0, v6}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->postUpdateSequenceAndSuggestionDelay(I)V

    goto/16 :goto_0

    .line 383
    :cond_8
    invoke-virtual {p0, v9}, Lcom/diotek/ime/framework/input/AbstractInputModule;->onKeyDownUpHandle(I)V

    .line 384
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposingWithoutInit()V

    .line 386
    :cond_9
    invoke-virtual {p0, v8}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->postUpdateSequence(I)V

    .line 387
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->updateSuggestionDelay()V

    goto/16 :goto_0

    .line 392
    :cond_a
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isAutoCompletitionInput()Z

    move-result v2

    .line 393
    .local v2, "isCompletionOn":Z
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v3

    .line 394
    .local v3, "isLandscape":Z
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->getCompletions()[Landroid/view/inputmethod/CompletionInfo;

    move-result-object v0

    .line 396
    .local v0, "completions":[Landroid/view/inputmethod/CompletionInfo;
    if-eqz v2, :cond_d

    if-eqz v3, :cond_d

    if-eqz v0, :cond_d

    .line 397
    if-eqz v1, :cond_b

    .line 398
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 400
    :cond_b
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 401
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getDeleteCount()I

    move-result v6

    if-le v6, v11, :cond_c

    invoke-static {}, Lcom/diotek/ime/framework/repository/PackageStatus;->getPackageName()Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    move-result-object v6

    sget-object v7, Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;->CHATON_PACKAGE_NAME:Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    if-eq v6, v7, :cond_c

    .line 403
    if-eqz v1, :cond_0

    .line 404
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getLastWordDividerIndex()I

    move-result v6

    invoke-interface {v1, v6, v8}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto/16 :goto_0

    .line 407
    :cond_c
    invoke-virtual {p0, v9}, Lcom/diotek/ime/framework/input/AbstractInputModule;->onKeyDownUpHandle(I)V

    goto/16 :goto_0

    .line 410
    :cond_d
    invoke-virtual {p0, v7}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 411
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initComposingBuffer()V

    .line 413
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getDeleteCount()I

    move-result v6

    if-le v6, v11, :cond_e

    invoke-static {}, Lcom/diotek/ime/framework/repository/PackageStatus;->getPackageName()Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    move-result-object v6

    sget-object v7, Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;->CHATON_PACKAGE_NAME:Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    if-eq v6, v7, :cond_e

    .line 415
    if-eqz v1, :cond_0

    .line 416
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getLastWordDividerIndex()I

    move-result v6

    invoke-interface {v1, v6, v8}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto/16 :goto_0

    .line 419
    :cond_e
    invoke-virtual {p0, v9}, Lcom/diotek/ime/framework/input/AbstractInputModule;->onKeyDownUpHandle(I)V

    goto/16 :goto_0
.end method

.method private processForwardDelete()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 426
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 427
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v1, :cond_1

    .line 454
    :cond_0
    :goto_0
    return-void

    .line 431
    :cond_1
    const-string v0, ""

    .line 432
    .local v0, "beforeChar":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 433
    const/4 v2, 0x1

    invoke-interface {v1, v2, v4}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .end local v0    # "beforeChar":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 434
    .restart local v0    # "beforeChar":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 435
    const-string v0, ""

    .line 438
    :cond_2
    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setDeleteCount(Ljava/lang/String;)V

    .line 439
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->resetPredictionWord()V

    .line 441
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getDeleteCount()I

    move-result v2

    const/16 v3, 0xa

    if-le v2, v3, :cond_4

    invoke-static {}, Lcom/diotek/ime/framework/repository/PackageStatus;->getPackageName()Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    move-result-object v2

    sget-object v3, Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;->CHATON_PACKAGE_NAME:Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    if-eq v2, v3, :cond_4

    .line 443
    if-eqz v1, :cond_3

    .line 444
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getFirstWordDividerIndex()I

    move-result v2

    invoke-interface {v1, v4, v2}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 451
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

    .line 452
    const/16 v2, 0x96

    invoke-virtual {p0, v2}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->postUpdateSequenceAndSuggestionDelay(I)V

    goto :goto_0

    .line 447
    :cond_4
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initWordDividerIndexList()V

    .line 448
    const/16 v2, 0x70

    invoke-virtual {p0, v2}, Lcom/diotek/ime/framework/input/AbstractInputModule;->onKeyDownUpHandle(I)V

    goto :goto_1
.end method

.method private processSingleTap(I[I)V
    .locals 28
    .param p1, "keyCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    .line 73
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v22

    .line 74
    .local v22, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v22, :cond_1

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Lcom/diotek/ime/framework/common/InputManager;->setCandidateviewStatus(I)V

    .line 78
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .local v21, "currentWord":Ljava/lang/StringBuilder;
    const/16 v26, 0x0

    .line 80
    .local v26, "isMakeComposingText":Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isEnableTraceInPassword()Z

    move-result v24

    .line 81
    .local v24, "isEnableTraceInput":Z
    const/16 v27, 0x0

    .line 135
    .local v27, "isTrace":Z
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->cancelPreviewTrace()V

    .line 137
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 138
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->breakContext()V

    .line 141
    :cond_2
    move/from16 v0, p1

    int-to-char v1, v0

    invoke-static {v1}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->append(I)Z

    .line 142
    invoke-direct/range {p0 .. p0}, Lcom/diotek/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->convertRomajiToHiragana()Z

    .line 145
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    const/4 v4, 0x0

    move/from16 v0, p1

    invoke-interface {v1, v0, v4}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(ILandroid/graphics/PointF;)I

    .line 146
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearAction()V

    .line 151
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v1, :cond_6

    .line 152
    const/16 v1, 0x30

    move/from16 v0, p1

    if-lt v0, v1, :cond_4

    const/16 v1, 0x39

    move/from16 v0, p1

    if-gt v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v1

    const/4 v4, 0x1

    if-eq v1, v4, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingNumberInputKeyboardForMultiWindow()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 155
    :cond_3
    add-int/lit8 v1, p1, -0x30

    add-int/lit8 v7, v1, 0x7

    .line 156
    .local v7, "code":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 157
    .local v2, "eventTime":J
    if-eqz v22, :cond_0

    .line 158
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x6

    move-wide v4, v2

    invoke-direct/range {v1 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    move-object/from16 v0, v22

    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 161
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

    move-object/from16 v0, v22

    invoke-interface {v0, v8}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    goto/16 :goto_0

    .line 167
    .end local v2    # "eventTime":J
    .end local v7    # "code":I
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setComposingText()V

    .line 169
    if-eqz v27, :cond_5

    .line 170
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->updateSuggestion()V

    goto/16 :goto_0

    .line 172
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->updateSuggestionDelay()V

    goto/16 :goto_0

    .line 176
    :cond_6
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isAutoCompletitionInput()Z

    move-result v23

    .line 177
    .local v23, "isCompletionOn":Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v25

    .line 178
    .local v25, "isLandscape":Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getCompletions()[Landroid/view/inputmethod/CompletionInfo;

    move-result-object v20

    .line 179
    .local v20, "completions":[Landroid/view/inputmethod/CompletionInfo;
    if-eqz v23, :cond_8

    if-eqz v25, :cond_8

    if-eqz v20, :cond_8

    .line 180
    if-eqz v22, :cond_7

    .line 181
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v4, 0x1

    move-object/from16 v0, v22

    invoke-interface {v0, v1, v4}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 183
    :cond_7
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    goto/16 :goto_0

    .line 185
    :cond_8
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 186
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    goto/16 :goto_0
.end method

.method private processWordSeparator(I[I)V
    .locals 12
    .param p1, "keyCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    .line 229
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v3

    .line 230
    .local v3, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v3, :cond_1

    .line 327
    :cond_0
    :goto_0
    return-void

    .line 233
    :cond_1
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    .line 235
    const/16 v7, 0xa

    if-eq p1, v7, :cond_2

    const/16 v7, 0x20

    if-ne p1, v7, :cond_3

    .line 237
    :cond_2
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Lcom/diotek/ime/framework/common/InputManager;->doRecaptureWord(Z)V

    .line 240
    :cond_3
    const/4 v1, 0x1

    .line 242
    .local v1, "bDoSendEnterKey":Z
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->isFocusOnCandidateView()Z

    move-result v7

    if-nez v7, :cond_4

    const/16 v7, 0x20

    if-ne p1, v7, :cond_6

    .line 243
    :cond_4
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    const/4 v9, 0x1

    invoke-interface {v7, v8, v9}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;Z)I

    .line 248
    :goto_1
    const/4 v7, 0x1

    new-array v0, v7, [I

    .line 249
    .local v0, "activeIndex":[I
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v7, v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getActiveIndex([I)I

    .line 251
    const/16 v7, 0xa

    if-ne p1, v7, :cond_7

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 253
    const/4 v1, 0x0

    .line 276
    :cond_5
    :goto_2
    const/16 v7, 0xa

    if-ne p1, v7, :cond_11

    .line 277
    if-eqz v1, :cond_a

    .line 278
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->sendEnterKeyHandle()V

    .line 279
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->postUpdateSequenceAndSuggestionDelay(I)V

    goto :goto_0

    .line 245
    .end local v0    # "activeIndex":[I
    :cond_6
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;Z)I

    goto :goto_1

    .line 254
    .restart local v0    # "activeIndex":[I
    :cond_7
    const/16 v7, 0x20

    if-ne p1, v7, :cond_9

    .line 255
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->isFocusOnCandidateView()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 256
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->getInputController()Lcom/diotek/ime/framework/input/InputController;

    move-result-object v7

    const/16 v8, -0x3ea

    const/4 v9, 0x1

    new-array v9, v9, [I

    const/4 v10, 0x0

    const/16 v11, -0x3ea

    aput v11, v9, v10

    invoke-interface {v7, v8, v9}, Lcom/diotek/ime/framework/input/InputController;->onKey(I[I)V

    goto :goto_0

    .line 258
    :cond_8
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->OnBlockPrediction()Z

    move-result v7

    if-nez v7, :cond_5

    .line 260
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->getCandidates()Ljava/util/ArrayList;

    move-result-object v2

    .line 261
    .local v2, "candidates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    if-eqz v2, :cond_0

    .line 262
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Lcom/diotek/ime/framework/common/InputManager;->setFocusOnCandidateView(Z)V

    .line 263
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Lcom/diotek/ime/framework/engine/InputEngineManager;->setSuggestionActiveIndex(I)V

    .line 264
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7, v2}, Lcom/diotek/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 268
    .end local v2    # "candidates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    :cond_9
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_5

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 271
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    const/4 v8, -0x1

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Lcom/diotek/ime/framework/engine/InputEngineManager;->wordSelected(ILjava/lang/CharSequence;)I

    .line 272
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 273
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initComposingBuffer()V

    goto/16 :goto_2

    .line 281
    :cond_a
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->OnBlockPrediction()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 282
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->getBlockText()Ljava/lang/String;

    move-result-object v6

    .line 283
    .local v6, "strBlock":Ljava/lang/String;
    if-eqz v6, :cond_b

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-gez v7, :cond_c

    .line 284
    :cond_b
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 285
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initComposingBuffer()V

    .line 291
    :goto_3
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSequence(Ljava/lang/StringBuilder;)V

    .line 292
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->updateSuggestionDelay()V

    goto/16 :goto_0

    .line 287
    :cond_c
    invoke-virtual {p0, v6}, Lcom/diotek/ime/framework/input/AbstractInputModule;->commitText(Ljava/lang/CharSequence;)V

    .line 288
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->deleteBlockText()V

    .line 289
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setComposingText()V

    goto :goto_3

    .line 294
    .end local v6    # "strBlock":Ljava/lang/String;
    :cond_d
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v7

    if-eqz v7, :cond_f

    .line 295
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->isFocusOnCandidateView()Z

    move-result v7

    if-eqz v7, :cond_10

    .line 296
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->getCandidates()Ljava/util/ArrayList;

    move-result-object v2

    .line 297
    .restart local v2    # "candidates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    if-eqz v2, :cond_f

    .line 298
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestionActiveIndex()I

    move-result v4

    .line 299
    .local v4, "idx":I
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v4, v7, :cond_e

    .line 300
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    const/4 v8, 0x1

    invoke-interface {v3, v7, v8}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 302
    :cond_e
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Lcom/diotek/ime/framework/common/InputManager;->setFocusOnCandidateView(Z)V

    .line 308
    .end local v2    # "candidates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v4    # "idx":I
    :cond_f
    :goto_4
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 309
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initComposingBuffer()V

    .line 310
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->postUpdateSequenceAndSuggestionDelay(I)V

    goto/16 :goto_0

    .line 305
    :cond_10
    const/4 v7, 0x1

    invoke-static {v7}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->toString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v3, v7, v8}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    goto :goto_4

    .line 315
    :cond_11
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->isInMultiTapInput()Z

    move-result v5

    .line 316
    .local v5, "isInMultiTap":Z
    if-eqz v5, :cond_12

    .line 317
    invoke-virtual {p0, p1, p2}, Lcom/diotek/ime/framework/input/AbstractInputModule;->processMultiTapSymbolicKey(I[I)V

    goto/16 :goto_0

    .line 320
    :cond_12
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 321
    int-to-char v7, p1

    invoke-static {v7}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(C)V

    .line 322
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 324
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->postUpdateSequenceAndSuggestionDelay(I)V

    .line 326
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Lcom/diotek/ime/framework/common/InputManager;->setFocusOnCandidateView(Z)V

    goto/16 :goto_0
.end method

.method private setVerbatirmsInPrediction()V
    .locals 6

    .prologue
    .line 771
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 772
    .local v3, "verbatims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->getVerbatimForBlock()Ljava/lang/String;

    move-result-object v2

    .line 774
    .local v2, "verbatim":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 775
    :cond_0
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcom/diotek/ime/framework/engine/InputEngineManager;->setVerbatirmsInPrediction(Ljava/util/ArrayList;)V

    .line 803
    :goto_0
    return-void

    .line 777
    :cond_1
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->getBlockText()Ljava/lang/String;

    move-result-object v0

    .line 778
    .local v0, "hiragana":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 783
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 785
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v4, v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->hiraganaToKatakana(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 786
    .local v1, "katakana":Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 790
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 792
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v4, v1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->fullToHalfWidth(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 797
    .end local v1    # "katakana":Ljava/lang/String;
    :cond_2
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 799
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v4, v2}, Lcom/diotek/ime/framework/engine/InputEngineManager;->halfToFullWidth(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 801
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v4, v3}, Lcom/diotek/ime/framework/engine/InputEngineManager;->setVerbatirmsInPrediction(Ljava/util/ArrayList;)V

    goto :goto_0
.end method


# virtual methods
.method protected addCurrentTextToCandidate(Ljava/util/ArrayList;Ljava/lang/StringBuilder;)V
    .locals 2
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
    .line 630
    .local p1, "candidate":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 631
    .local v0, "index":I
    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setIndexOfInputBuffer(I)V

    .line 633
    if-nez v0, :cond_1

    .line 646
    :cond_0
    :goto_0
    return-void

    .line 636
    :cond_1
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 637
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 638
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 639
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 640
    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 641
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 643
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {p1, v1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public closing()V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->stopTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;)V

    .line 40
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    .line 41
    invoke-super {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->closing()V

    .line 42
    return-void
.end method

.method public endMultitapTimer()V
    .locals 2

    .prologue
    .line 600
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/input/InputModule$Timer;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 615
    :goto_0
    return-void

    .line 603
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/InputModule$Timer;->setRunning(Z)V

    .line 604
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTimmerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 605
    const/4 v0, -0x1

    iput v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mLastKeyCode:I

    goto :goto_0
.end method

.method public onCharacterKey(I[I)V
    .locals 7
    .param p1, "keyCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    const/4 v6, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 47
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v0

    .line 49
    .local v0, "inputRange":I
    invoke-virtual {p0, v3}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setPredictionWord(Z)V

    .line 50
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v5

    if-nez v5, :cond_0

    .line 51
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->getSecondaryChar(I)I

    move-result p1

    .line 54
    :cond_0
    iget-boolean v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsTraceOn:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v5

    if-le v5, v6, :cond_3

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->isSymbolAndSpace()Z

    move-result v5

    if-nez v5, :cond_3

    move v1, v3

    .line 55
    .local v1, "isTraceInput":Z
    :goto_0
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->isEnableTraceInPassword()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-boolean v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsTraceOn:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v5

    if-le v5, v6, :cond_4

    move v2, v3

    .line 56
    .local v2, "isTraceON":Z
    :goto_1
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v3, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->isTextCharacter(I)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    if-eqz v2, :cond_5

    .line 57
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->processSingleTap(I[I)V

    .line 67
    :goto_2
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->setVerbatimToEngine()V

    .line 68
    iput p1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mLastKeyCode:I

    .line 69
    return-void

    .end local v1    # "isTraceInput":Z
    .end local v2    # "isTraceON":Z
    :cond_3
    move v1, v4

    .line 54
    goto :goto_0

    .restart local v1    # "isTraceInput":Z
    :cond_4
    move v2, v4

    .line 55
    goto :goto_1

    .line 59
    .restart local v2    # "isTraceON":Z
    :cond_5
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v3, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->isNumericCharacter(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->processSingleTap(I[I)V

    .line 65
    :goto_3
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->autoPeriod(I)V

    goto :goto_2

    .line 62
    :cond_6
    invoke-virtual {p0, p1, p2}, Lcom/diotek/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->processSymbolicKey(I[I)V

    goto :goto_3
.end method

.method public onHwrPanelLongPressed(ILjava/lang/String;)V
    .locals 0
    .param p1, "selectedArrayIndex"    # I
    .param p2, "resultString"    # Ljava/lang/String;

    .prologue
    .line 543
    return-void
.end method

.method public pickSuggestionManually(ILjava/lang/CharSequence;)V
    .locals 12
    .param p1, "index"    # I
    .param p2, "suggestion"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 457
    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v4

    .line 458
    .local v4, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v4, :cond_0

    .line 459
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isAutoCompletitionInput()Z

    move-result v5

    .line 460
    .local v5, "isCompletionOn":Z
    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v6

    .line 461
    .local v6, "isLandscape":Z
    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->getCompletions()[Landroid/view/inputmethod/CompletionInfo;

    move-result-object v2

    .line 463
    .local v2, "completions":[Landroid/view/inputmethod/CompletionInfo;
    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8, v11}, Lcom/diotek/ime/framework/common/InputManager;->setFocusOnCandidateView(Z)V

    .line 465
    if-eqz v5, :cond_1

    if-eqz v6, :cond_1

    if-eqz v2, :cond_1

    .line 466
    if-ltz p1, :cond_0

    array-length v8, v2

    if-ge p1, v8, :cond_0

    .line 467
    aget-object v1, v2, p1

    .line 468
    .local v1, "completion":Landroid/view/inputmethod/CompletionInfo;
    invoke-interface {v4, v1}, Landroid/view/inputmethod/InputConnection;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z

    .line 538
    .end local v1    # "completion":Landroid/view/inputmethod/CompletionInfo;
    .end local v2    # "completions":[Landroid/view/inputmethod/CompletionInfo;
    .end local v5    # "isCompletionOn":Z
    .end local v6    # "isLandscape":Z
    :cond_0
    :goto_0
    return-void

    .line 471
    .restart local v2    # "completions":[Landroid/view/inputmethod/CompletionInfo;
    .restart local v5    # "isCompletionOn":Z
    .restart local v6    # "isLandscape":Z
    :cond_1
    invoke-interface {v4}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 472
    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->getCandidateviewStatus()I

    move-result v0

    .line 473
    .local v0, "candidateStatus":I
    const/4 v7, 0x0

    .line 474
    .local v7, "isPickNextWordPrediction":Z
    const/4 v3, 0x0

    .line 475
    .local v3, "deletedTextLeft":I
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_4

    iget v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mStateCandidate:I

    if-ne v8, v10, :cond_4

    if-nez v0, :cond_4

    .line 478
    iget v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosPrevText:I

    iget v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosNextText:I

    invoke-interface {v4, v8, v9}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 479
    iget v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosPrevText:I

    .line 486
    :cond_2
    :goto_1
    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-eq v3, v8, :cond_3

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v8

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-eq v8, v9, :cond_3

    .line 489
    invoke-virtual {p0, v10}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setPredictionWord(Z)V

    .line 492
    :cond_3
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 493
    invoke-static {p2}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    .line 495
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->replaceSpaceToSymbol(Ljava/lang/StringBuilder;)V

    .line 496
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setComposingText()V

    .line 499
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->OnBlockPrediction()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 500
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v4, v8, v10}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 501
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->deleteBlockText()V

    .line 502
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSequence(Ljava/lang/StringBuilder;)V

    .line 503
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->updateSuggestionDelay()V

    .line 533
    :goto_2
    invoke-interface {v4}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 534
    iput v11, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosPrevText:I

    .line 535
    iput v11, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosNextText:I

    goto :goto_0

    .line 480
    :cond_4
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    iget v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mStateCandidate:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_2

    if-nez v0, :cond_2

    .line 483
    const/4 v7, 0x1

    goto :goto_1

    .line 505
    :cond_5
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->isEnableAutoCorrection()Z

    move-result v8

    if-eqz v8, :cond_c

    if-nez v7, :cond_c

    .line 506
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getIndexOfInputBuffer()I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_8

    .line 507
    if-eq p1, v10, :cond_7

    .line 508
    if-le p1, v10, :cond_6

    add-int/lit8 p1, p1, -0x1

    .line 509
    :cond_6
    iput p1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPickSuggestionIndex:I

    .line 510
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->selectWordInList(I)V

    .line 528
    :cond_7
    :goto_3
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    .line 529
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 530
    invoke-direct {p0}, Lcom/diotek/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->setVerbatirmsInPrediction()V

    .line 531
    invoke-virtual {p0, v11}, Lcom/diotek/ime/framework/input/AbstractInputModule;->doNextWordPrediction(Z)V

    goto :goto_2

    .line 512
    :cond_8
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getIndexOfInputBuffer()I

    move-result v8

    if-lez v8, :cond_b

    .line 513
    if-ne p1, v10, :cond_a

    .line 514
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getIndexOfInputBuffer()I

    move-result p1

    .line 518
    :cond_9
    :goto_4
    iput p1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPickSuggestionIndex:I

    .line 519
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->selectWordInList(I)V

    goto :goto_3

    .line 515
    :cond_a
    if-le p1, v10, :cond_9

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getIndexOfInputBuffer()I

    move-result v8

    if-gt p1, v8, :cond_9

    .line 516
    add-int/lit8 p1, p1, -0x1

    goto :goto_4

    .line 521
    :cond_b
    iput p1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPickSuggestionIndex:I

    .line 522
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->selectWordInList(I)V

    goto :goto_3

    .line 525
    :cond_c
    iput p1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPickSuggestionIndex:I

    .line 526
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->selectWordInList(I)V

    goto :goto_3
.end method

.method protected processSymbolicKey(I[I)V
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    const/4 v3, 0x0

    .line 193
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->cancelTrace()Z

    .line 194
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    .line 195
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v1, v2, v3}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;Z)I

    .line 196
    const-string v1, " .,;:!?\n()[]*&@{}/<>_-+=|\'\u061b\u060c\u061f\""

    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 197
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->processWordSeparator(I[I)V

    .line 226
    :goto_0
    return-void

    .line 199
    :cond_0
    const/16 v1, 0xa

    if-eq p1, v1, :cond_1

    const/16 v1, 0x20

    if-ne p1, v1, :cond_2

    .line 201
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->processWordSeparator(I[I)V

    goto :goto_0

    .line 203
    :cond_2
    const/4 v1, -0x5

    if-ne p1, v1, :cond_3

    .line 204
    invoke-direct {p0}, Lcom/diotek/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->processBackSpaceKey()V

    goto :goto_0

    .line 206
    :cond_3
    const/16 v1, -0x3eb

    if-ne p1, v1, :cond_4

    .line 207
    invoke-direct {p0}, Lcom/diotek/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->processForwardDelete()V

    goto :goto_0

    .line 209
    :cond_4
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_5

    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 210
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->updateSuggestionDelay()V

    .line 213
    :cond_5
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isInMultiTapInput()Z

    move-result v0

    .line 214
    .local v0, "isInMultiTap":Z
    if-eqz v0, :cond_6

    invoke-static {p1}, Lcom/diotek/ime/framework/util/Utils;->isZawgyiChar(I)Z

    move-result v1

    if-nez v1, :cond_6

    .line 215
    invoke-virtual {p0, p1, p2}, Lcom/diotek/ime/framework/input/AbstractInputModule;->processMultiTapSymbolicKey(I[I)V

    goto :goto_0

    .line 219
    :cond_6
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 220
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initComposingBuffer()V

    .line 221
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 222
    int-to-char v1, p1

    invoke-static {v1}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    .line 223
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 224
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1, v3}, Lcom/diotek/ime/framework/common/InputManager;->setIsPendingUpdateCandidateView(Z)V

    .line 225
    invoke-virtual {p0, v3}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->postUpdateSequenceAndSuggestionDelay(I)V

    goto :goto_0
.end method

.method public release()V
    .locals 0

    .prologue
    .line 35
    return-void
.end method

.method public updateSuggestion()V
    .locals 2

    .prologue
    .line 573
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isDeviceHasHardwareKeypad()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isHWKeyboardOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 590
    :goto_0
    return-void

    .line 578
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->updateViewStatus()V

    .line 579
    invoke-direct {p0}, Lcom/diotek/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->setVerbatirmsInPrediction()V

    .line 581
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 582
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    .line 583
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->AddVerbatimForRecapture(Ljava/util/ArrayList;)V

    .line 584
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-eqz v0, :cond_1

    .line 585
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCurrentSequenceString:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 587
    :cond_1
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->setSuggestionActiveIndex(I)V

    .line 588
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public updateSuggestionDelay()V
    .locals 1

    .prologue
    .line 594
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->updateViewStatus()V

    .line 595
    invoke-super {p0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSuggestionDelay()V

    .line 596
    return-void
.end method

.method public updateVOHWRSuggestion()V
    .locals 0

    .prologue
    .line 547
    return-void
.end method
