.class public Lcom/diotek/ime/framework/engine/dwp/DWPWrapper;
.super Lcom/diotek/ime/framework/engine/AbstractInputEngine;
.source "DWPWrapper.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x800

.field private static final CANDIDATE_DIVISION_CHARACTER:I = 0x0

.field private static final HANGUL_RESULT_SIZE:I = 0x3

.field private static final HW_FUZZY_ALL:I = 0xfff

.field private static final KOR_CHAR:[C

.field private static final MAX_COMPOSING_LENGTH:I = 0x19

.field private static final cangjieKeyMap:[I


# instance fields
.field private final mCHPredictIndex:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mCncoreUseUserdict:Z

.field private mCurrentLanguage:I

.field private mCurrentResult:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/16 v0, 0x19

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/diotek/ime/framework/engine/dwp/DWPWrapper;->cangjieKeyMap:[I

    .line 64
    const/16 v0, 0x20

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/diotek/ime/framework/engine/dwp/DWPWrapper;->KOR_CHAR:[C

    return-void

    .line 36
    nop

    :array_0
    .array-data 4
        0x65e5
        0x6708
        0x91d1
        0x6728
        0x6c34
        0x706b
        0x571f
        0x7af9
        0x6208
        0x5341
        0x5927
        0x4e2d
        0x4e00
        0x5f13
        0x4eba
        0x5fc3
        0x624b
        0x53e3
        0x5c38
        0x5eff
        0x5c71
        0x5973
        0x7530
        0x96e3
        0x535c
    .end array-data

    .line 64
    :array_1
    .array-data 2
        0x3131s
        0x3134s
        0x3137s
        0x3139s
        0x3141s
        0x3142s
        0x3145s
        0x3147s
        0x3148s
        0x314as
        0x314bs
        0x314cs
        0x314ds
        0x314es
        0x3132s
        0x3138s
        0x3143s
        0x3149s
        0x314fs
        0x3151s
        0x3153s
        0x3155s
        0x3157s
        0x315bs
        0x315cs
        0x3160s
        0x3161s
        0x3163s
        0x3150s
        0x3154s
        0x3152s
        0x3156s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/AbstractInputEngine;-><init>()V

    .line 33
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/diotek/ime/framework/engine/dwp/DWPWrapper;->mCHPredictIndex:Ljava/util/ArrayList;

    .line 72
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/diotek/ime/framework/engine/dwp/DWPWrapper;->mCurrentResult:Ljava/lang/StringBuilder;

    .line 74
    const/high16 v4, 0x6b6f0000

    iput v4, p0, Lcom/diotek/ime/framework/engine/dwp/DWPWrapper;->mCurrentLanguage:I

    .line 75
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/diotek/ime/framework/engine/dwp/DWPWrapper;->mCncoreUseUserdict:Z

    .line 78
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v0

    .line 79
    .local v0, "inputManager":Lcom/diotek/ime/framework/common/InputManager;
    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getRepository()Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v2

    .line 80
    .local v2, "repo":Lcom/diotek/ime/framework/repository/Repository;
    const-string v4, "DWP_LICENSE"

    const-string v5, ""

    invoke-interface {v2, v4, v5}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    invoke-static {v4}, Lcom/diotek/dwp/DWP;->Create([C)I

    move-result v3

    .line 82
    .local v3, "ret":I
    if-eqz v3, :cond_0

    .line 84
    invoke-static {}, Lcom/diotek/dwp/DWP;->Destroy()I

    .line 87
    :cond_0
    return-void
.end method

.method private getCandidateWord([CLjava/util/ArrayList;I)V
    .locals 8
    .param p1, "pwCandWordBuf"    # [C
    .param p3, "nGetWordNum"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([C",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 882
    .local p2, "candList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, p1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 883
    .local v4, "strResult":Ljava/lang/String;
    const/4 v5, 0x0

    .line 884
    .local v5, "word":Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/diotek/ime/framework/engine/dwp/DWPWrapper;->mCHPredictIndex:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 885
    const/4 v3, 0x0

    .line 886
    .local v3, "nStartPos":I
    const/4 v2, 0x0

    .line 887
    .local v2, "nPos":I
    const/4 v1, -0x1

    .line 888
    .local v1, "nIndex":I
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    .line 890
    .local v0, "length":I
    :goto_0
    if-gt v2, v0, :cond_1

    .line 891
    if-eqz p2, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/16 v7, 0x96

    if-ge v6, v7, :cond_1

    :cond_0
    add-int/lit8 v6, p3, -0x1

    if-lt v1, v6, :cond_2

    .line 913
    :cond_1
    const/4 v4, 0x0

    .line 914
    return-void

    .line 897
    :cond_2
    aget-char v6, p1, v2

    if-nez v6, :cond_3

    .line 898
    add-int/lit8 v1, v1, 0x1

    .line 899
    invoke-virtual {v4, v3, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    .line 901
    invoke-direct {p0, v5}, Lcom/diotek/ime/framework/engine/dwp/DWPWrapper;->isNomallyChineseWord(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 902
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 903
    iget-object v6, p0, Lcom/diotek/ime/framework/engine/dwp/DWPWrapper;->mCHPredictIndex:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 904
    add-int/lit8 v2, v2, 0x1

    .line 905
    move v3, v2

    .line 911
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 907
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 908
    move v3, v2

    goto :goto_1
.end method

.method private getKeyboardInputType()I
    .locals 8

    .prologue
    const v7, 0x7a685457

    const v6, 0x7a68484b

    const v5, 0x7a68434e

    .line 539
    iget-object v4, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    .line 540
    .local v0, "nInputMethod":I
    const/16 v1, 0x11

    .line 541
    .local v1, "nKeyboardInputType":I
    iget-object v4, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isQuickCangieMode()Z

    move-result v2

    .line 542
    .local v2, "quickModeOn":Z
    iget-object v4, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isChineseStrokeModeOn()Z

    move-result v3

    .line 544
    .local v3, "strokeModeOn":Z
    if-nez v0, :cond_4

    .line 545
    iget v4, p0, Lcom/diotek/ime/framework/engine/dwp/DWPWrapper;->mCurrentLanguage:I

    if-ne v4, v5, :cond_1

    .line 546
    const/16 v1, 0x11

    .line 570
    :cond_0
    :goto_0
    return v1

    .line 547
    :cond_1
    iget v4, p0, Lcom/diotek/ime/framework/engine/dwp/DWPWrapper;->mCurrentLanguage:I

    if-ne v4, v7, :cond_2

    .line 548
    const/16 v1, 0x14

    goto :goto_0

    .line 549
    :cond_2
    iget v4, p0, Lcom/diotek/ime/framework/engine/dwp/DWPWrapper;->mCurrentLanguage:I

    if-ne v4, v6, :cond_0

    .line 550
    if-eqz v2, :cond_3

    .line 551
    const/16 v1, 0x13

    goto :goto_0

    .line 553
    :cond_3
    const/16 v1, 0x12

    goto :goto_0

    .line 556
    :cond_4
    const/4 v4, 0x1

    if-ne v0, v4, :cond_0

    .line 557
    if-eqz v3, :cond_5

    .line 558
    const/16 v1, 0x17

    goto :goto_0

    .line 560
    :cond_5
    iget v4, p0, Lcom/diotek/ime/framework/engine/dwp/DWPWrapper;->mCurrentLanguage:I

    if-ne v4, v5, :cond_6

    .line 561
    const/16 v1, 0x15

    goto :goto_0

    .line 562
    :cond_6
    iget v4, p0, Lcom/diotek/ime/framework/engine/dwp/DWPWrapper;->mCurrentLanguage:I

    if-ne v4, v7, :cond_7

    .line 563
    const/16 v1, 0x16

    goto :goto_0

    .line 564
    :cond_7
    iget v4, p0, Lcom/diotek/ime/framework/engine/dwp/DWPWrapper;->mCurrentLanguage:I

    if-ne v4, v6, :cond_0

    .line 565
    const/16 v1, 0x12

    goto :goto_0
.end method

.method private getLanguage()I
    .locals 3

    .prologue
    .line 528
    const/4 v0, 0x6

    .line 530
    .local v0, "nLang":I
    iget v1, p0, Lcom/diotek/ime/framework/engine/dwp/DWPWrapper;->mCurrentLanguage:I

    const v2, 0x7a68434e

    if-ne v1, v2, :cond_0

    .line 531
    const/4 v0, 0x5

    .line 534
    :cond_0
    return v0
.end method

.method private getSuggestionChinese(Ljava/util/ArrayList;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p1, "outCharSequences":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 305
    new-array v5, v6, [I

    .line 306
    .local v5, "wordCount":[I
    new-array v0, v6, [I

    .line 307
    .local v0, "bestWordIndex":[I
    invoke-static {v5, v0}, Lcom/diotek/dwp/DWP;->DoSearchingWord([I[I)I

    .line 308
    aget v6, v5, v8

    iput v6, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mSuggestionCount:I

    .line 309
    aget v6, v0, v8

    iput v6, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mActiveIndex:I

    .line 311
    aget v6, v5, v8

    const/16 v7, 0x1e

    filled-new-array {v6, v7}, [I

    move-result-object v6

    sget-object v7, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[C

    .line 312
    .local v4, "strResult":[[C
    aget v6, v5, v8

    invoke-static {v6, v4}, Lcom/diotek/dwp/DWP;->GetResultList(I[[C)I

    .line 314
    aget v6, v5, v8

    if-ltz v6, :cond_2

    .line 315
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 316
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 317
    .local v1, "builder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    aget v6, v5, v8

    if-ge v2, v6, :cond_2

    .line 318
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 319
    const/4 v3, 0x0

    .line 321
    .local v3, "index":I
    :goto_1
    aget-object v6, v4, v2

    array-length v6, v6

    if-ge v3, v6, :cond_0

    aget-object v6, v4, v2

    aget-char v6, v6, v3

    if-eqz v6, :cond_0

    .line 322
    aget-object v6, v4, v2

    aget-char v6, v6, v3

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 323
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 325
    :cond_0
    invoke-direct {p0, v1}, Lcom/diotek/ime/framework/engine/dwp/DWPWrapper;->isNomallyChineseWord(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 326
    iget-object v6, p0, Lcom/diotek/ime/framework/engine/dwp/DWPWrapper;->mCHPredictIndex:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 332
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    .end local v2    # "i":I
    .end local v3    # "index":I
    :cond_2
    aget v6, v5, v8

    return v6
.end method

.method private getSuggestionKorean(Ljava/util/ArrayList;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p1, "outCharSequences":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 279
    new-array v6, v7, [I

    .line 280
    .local v6, "wordCount":[I
    new-array v0, v7, [I

    .line 281
    .local v0, "bestWordIndex":[I
    invoke-static {v6, v0}, Lcom/diotek/dwp/DWP;->DoSearchingWord([I[I)I

    .line 282
    aget v7, v6, v9

    iput v7, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mSuggestionCount:I

    .line 283
    aget v7, v0, v9

    iput v7, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mActiveIndex:I

    .line 285
    aget v4, v6, v9

    .line 286
    .local v4, "nResultCount":I
    const/16 v7, 0x1e

    filled-new-array {v4, v7}, [I

    move-result-object v7

    sget-object v8, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[C

    .line 288
    .local v5, "strResult":[[C
    invoke-static {v4, v5}, Lcom/diotek/dwp/DWP;->GetResultList(I[[C)I

    .line 289
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 290
    .local v1, "builder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_1

    .line 291
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 292
    const/4 v3, 0x0

    .line 294
    .local v3, "index":I
    :goto_1
    aget-object v7, v5, v2

    array-length v7, v7

    if-le v7, v3, :cond_0

    aget-object v7, v5, v2

    aget-char v7, v7, v3

    if-eqz v7, :cond_0

    .line 295
    aget-object v7, v5, v2

    aget-char v7, v7, v3

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 296
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 298
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 301
    .end local v3    # "index":I
    :cond_1
    return v4
.end method

.method private initChinese()I
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 142
    const/4 v1, 0x1

    .line 144
    .local v1, "ret":I
    const/4 v2, 0x1

    new-array v0, v2, [B

    .line 145
    .local v0, "param":[B
    aput-byte v3, v0, v3

    .line 146
    invoke-static {v3, v0}, Lcom/diotek/dwp/DWP;->SetParam(I[B)I

    .line 147
    const/4 v2, 0x5

    const/16 v3, 0x11

    const/16 v4, 0xc

    const/16 v5, 0x96

    invoke-static {v2, v3, v4, v5}, Lcom/diotek/dwp/DWP;->SetAttribute(IIII)I

    move-result v1

    .line 153
    return v1
.end method

.method private initKorean()I
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 121
    const/4 v2, 0x1

    .line 123
    .local v2, "ret":I
    new-array v0, v5, [B

    .line 124
    .local v0, "param":[B
    aput-byte v4, v0, v4

    .line 125
    invoke-static {v4, v0}, Lcom/diotek/dwp/DWP;->SetParam(I[B)I

    .line 127
    new-array v1, v5, [B

    const/4 v3, 0x5

    aput-byte v3, v1, v4

    .line 128
    .local v1, "param_wordcache":[B
    invoke-static {v5, v1}, Lcom/diotek/dwp/DWP;->SetParam(I[B)I

    .line 130
    const/4 v3, 0x3

    const/4 v4, 0x2

    const/16 v5, 0x3c

    const/16 v6, 0x14

    invoke-static {v3, v4, v5, v6}, Lcom/diotek/dwp/DWP;->SetAttribute(IIII)I

    move-result v2

    .line 138
    return v2
.end method

.method private inputKeyChinese(I)I
    .locals 8
    .param p1, "keyCode"    # I

    .prologue
    const/4 v7, 0x1

    .line 209
    const/4 v5, 0x1

    .line 210
    .local v5, "ret":I
    const/16 v6, 0x54

    new-array v4, v6, [C

    .line 211
    .local v4, "pwCandBuf":[C
    new-array v2, v7, [I

    .line 212
    .local v2, "nLen":[I
    new-array v1, v7, [I

    .line 214
    .local v1, "nCompleteLen":[I
    const/4 v6, -0x5

    if-ne p1, v6, :cond_0

    .line 215
    const v6, 0xff01

    invoke-static {v6, v4, v2, v1}, Lcom/diotek/dwp/DWP;->InputKey(C[C[I[I)I

    move-result v5

    .line 222
    :goto_0
    new-array v3, v7, [I

    .line 223
    .local v3, "nWordCount":[I
    new-array v0, v7, [I

    .line 224
    .local v0, "bestWordIndex":[I
    if-nez v5, :cond_1

    .line 225
    invoke-static {v3, v0}, Lcom/diotek/dwp/DWP;->DoSearchingWord([I[I)I

    .line 231
    const/4 v6, 0x0

    aget v6, v3, v6

    :goto_1
    return v6

    .line 218
    .end local v0    # "bestWordIndex":[I
    .end local v3    # "nWordCount":[I
    :cond_0
    int-to-char v6, p1

    invoke-static {v6, v4, v2, v1}, Lcom/diotek/dwp/DWP;->InputKey(C[C[I[I)I

    move-result v5

    goto :goto_0

    .line 228
    .restart local v0    # "bestWordIndex":[I
    .restart local v3    # "nWordCount":[I
    :cond_1
    const/4 v6, -0x1

    goto :goto_1
.end method

.method private inputKeyKorean(I)I
    .locals 8
    .param p1, "keyCode"    # I

    .prologue
    const/4 v6, 0x1

    .line 184
    const/4 v2, 0x1

    .line 185
    .local v2, "ret":I
    const/16 v5, 0x7e

    new-array v4, v5, [C

    .line 186
    .local v4, "strResult":[C
    new-array v3, v6, [I

    .line 187
    .local v3, "rv":[I
    new-array v0, v6, [B

    .line 189
    .local v0, "delLen":[B
    const/4 v5, -0x5

    if-ne p1, v5, :cond_0

    .line 190
    const v5, 0xff01

    invoke-static {v5, v4, v3, v0}, Lcom/diotek/dwp/DWP;->InputKeyToHangulAutomata(C[C[I[B)I

    move-result v2

    .line 196
    :goto_0
    iget-object v5, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v6, "HANGUL_DELETE_LENGTH"

    const/4 v7, 0x0

    aget-byte v7, v0, v7

    invoke-interface {v5, v6, v7}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;I)V

    .line 199
    const/4 v1, 0x0

    .line 200
    .local v1, "index":I
    :goto_1
    const/4 v5, 0x3

    if-ge v1, v5, :cond_1

    aget-char v5, v4, v1

    if-eqz v5, :cond_1

    .line 201
    iget-object v5, p0, Lcom/diotek/ime/framework/engine/dwp/DWPWrapper;->mCurrentResult:Ljava/lang/StringBuilder;

    aget-char v6, v4, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 202
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 193
    .end local v1    # "index":I
    :cond_0
    int-to-char v5, p1

    invoke-static {v5, v4, v3, v0}, Lcom/diotek/dwp/DWP;->InputKeyToHangulAutomata(C[C[I[B)I

    move-result v2

    goto :goto_0

    .line 205
    .restart local v1    # "index":I
    :cond_1
    return v2
.end method

.method private isNomallyChineseWord(Ljava/lang/CharSequence;)Z
    .locals 5
    .param p1, "word"    # Ljava/lang/CharSequence;

    .prologue
    .line 917
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 919
    .local v0, "paint":Landroid/graphics/Paint;
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    .line 920
    .local v2, "textWidth":F
    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v1

    .line 922
    .local v1, "textSize":F
    rem-float v3, v2, v1

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    if-nez v3, :cond_1

    .line 923
    :cond_0
    const/4 v3, 0x0

    .line 925
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private isTextCharacterChinese(I)Z
    .locals 9
    .param p1, "keyCode"    # I

    .prologue
    const/16 v8, 0x61

    const/16 v7, 0x39

    const/4 v3, 0x0

    const v6, 0xff30

    const/4 v2, 0x1

    .line 635
    iget-object v4, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    .line 636
    .local v0, "nInputMethod":I
    iget-object v4, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isChineseStrokeModeOn()Z

    move-result v1

    .line 637
    .local v1, "strokeModeOn":Z
    if-eqz v1, :cond_3

    .line 638
    const/16 v4, 0x31

    if-lt p1, v4, :cond_0

    const/16 v4, 0x35

    if-le p1, v4, :cond_1

    :cond_0
    const/16 v4, 0x2a

    if-eq p1, v4, :cond_1

    if-ne p1, v6, :cond_2

    .line 678
    :cond_1
    :goto_0
    return v2

    :cond_2
    move v2, v3

    .line 643
    goto :goto_0

    .line 646
    :cond_3
    if-ne v0, v2, :cond_5

    .line 647
    iget v4, p0, Lcom/diotek/ime/framework/engine/dwp/DWPWrapper;->mCurrentLanguage:I

    const v5, 0x7a68434e

    if-ne v4, v5, :cond_8

    .line 648
    const/16 v4, 0x32

    if-lt p1, v4, :cond_4

    if-le p1, v7, :cond_1

    :cond_4
    if-eq p1, v6, :cond_1

    .line 659
    :cond_5
    iget v4, p0, Lcom/diotek/ime/framework/engine/dwp/DWPWrapper;->mCurrentLanguage:I

    const v5, 0x7a68434e

    if-ne v4, v5, :cond_a

    .line 660
    if-lt p1, v8, :cond_6

    const/16 v4, 0x7a

    if-le p1, v4, :cond_1

    :cond_6
    if-eq p1, v6, :cond_1

    :cond_7
    move v2, v3

    .line 678
    goto :goto_0

    .line 651
    :cond_8
    iget v4, p0, Lcom/diotek/ime/framework/engine/dwp/DWPWrapper;->mCurrentLanguage:I

    const v5, 0x7a685457

    if-ne v4, v5, :cond_5

    .line 652
    const/16 v4, 0x30

    if-lt p1, v4, :cond_9

    if-le p1, v7, :cond_1

    :cond_9
    if-ne p1, v6, :cond_5

    goto :goto_0

    .line 663
    :cond_a
    iget v4, p0, Lcom/diotek/ime/framework/engine/dwp/DWPWrapper;->mCurrentLanguage:I

    const v5, 0x7a68484b

    if-ne v4, v5, :cond_b

    .line 664
    if-lt p1, v8, :cond_7

    const/16 v4, 0x79

    if-gt p1, v4, :cond_7

    goto :goto_0

    .line 667
    :cond_b
    iget v4, p0, Lcom/diotek/ime/framework/engine/dwp/DWPWrapper;->mCurrentLanguage:I

    const v5, 0x7a685457

    if-ne v4, v5, :cond_7

    .line 668
    const/16 v4, 0x3105

    if-lt p1, v4, :cond_c

    const/16 v4, 0x312d

    if-le p1, v4, :cond_1

    :cond_c
    const/16 v4, 0x2d9

    if-eq p1, v4, :cond_1

    const/16 v4, 0x2ca

    if-eq p1, v4, :cond_1

    const/16 v4, 0x2c7

    if-eq p1, v4, :cond_1

    const/16 v4, 0x2cb

    if-eq p1, v4, :cond_1

    if-ne p1, v6, :cond_7

    goto :goto_0
.end method

.method private isTextCharacterKorean(I)Z
    .locals 5
    .param p1, "keyCode"    # I

    .prologue
    const/4 v4, 0x1

    .line 607
    const/4 v2, 0x0

    .line 608
    .local v2, "isText":Z
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v1

    .line 610
    .local v1, "inputMethod":I
    if-nez v1, :cond_2

    .line 611
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v3, Lcom/diotek/ime/framework/engine/dwp/DWPWrapper;->KOR_CHAR:[C

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 612
    sget-object v3, Lcom/diotek/ime/framework/engine/dwp/DWPWrapper;->KOR_CHAR:[C

    aget-char v3, v3, v0

    if-ne p1, v3, :cond_1

    .line 613
    const/4 v2, 0x1

    .line 630
    .end local v0    # "i":I
    :cond_0
    :goto_1
    return v2

    .line 611
    .restart local v0    # "i":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 617
    .end local v0    # "i":I
    :cond_2
    if-eq v1, v4, :cond_3

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getCurrentPreferenceInputMethod()I

    move-result v3

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isKorTabletCji()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isKorNote3x4Keypad()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isKorPhoneFloting()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 622
    :cond_3
    const/16 v3, 0x31

    if-lt p1, v3, :cond_0

    const/16 v3, 0x43

    if-gt p1, v3, :cond_0

    .line 624
    const/4 v2, 0x1

    goto :goto_1

    .line 627
    :cond_4
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private updateEngineChinese()I
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 499
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dwp/DWPWrapper;->getLanguage()I

    move-result v1

    .line 500
    .local v1, "nChineseLang":I
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dwp/DWPWrapper;->getKeyboardInputType()I

    move-result v2

    .line 502
    .local v2, "nInputType":I
    const/16 v5, 0xc

    const/16 v6, 0x96

    invoke-static {v1, v2, v5, v6}, Lcom/diotek/dwp/DWP;->SetAttribute(IIII)I

    move-result v3

    .line 510
    .local v3, "ret":I
    const/16 v5, 0x17

    if-ne v2, v5, :cond_0

    .line 511
    new-array v4, v8, [C

    .line 512
    .local v4, "srcCode":[C
    new-array v0, v8, [C

    .line 513
    .local v0, "changeCode":[C
    const/16 v5, 0x3c

    aput-char v5, v4, v7

    .line 514
    const/16 v5, 0x4e5b

    aput-char v5, v0, v7

    .line 516
    invoke-static {v4, v0}, Lcom/diotek/dwp/DWP;->CNChangeDispCode([C[C)I

    move-result v3

    .line 523
    .end local v0    # "changeCode":[C
    .end local v4    # "srcCode":[C
    :cond_0
    return v3
.end method

.method private updateEngineKorean()I
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 445
    iget-object v8, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v8}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputMethodOnKor()I

    move-result v0

    .line 446
    .local v0, "hangulModule":I
    iget-object v8, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v8}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v1

    .line 447
    .local v1, "inputMethod":I
    iget-object v8, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->isKorMode()Z

    move-result v3

    .line 448
    .local v3, "isKorMode":Z
    iget-object v8, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v9, "SETTINGS_DEFAULT_USE_INPUT_METHOD_TYPE_ON_KOR"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v5

    .line 450
    .local v5, "isSeperatlyKor":Z
    const/4 v2, 0x2

    .line 452
    .local v2, "inputType":I
    if-eq v1, v11, :cond_0

    iget-object v8, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v8}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getCurrentPreferenceInputMethod()I

    move-result v8

    if-eq v8, v11, :cond_0

    iget-object v8, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v8}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isKorTabletCji()Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v8}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isKorNote3x4Keypad()Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v8}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isKorPhoneFloting()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 456
    :cond_0
    if-eqz v3, :cond_2

    if-eqz v5, :cond_2

    .line 457
    packed-switch v0, :pswitch_data_0

    .line 471
    const/4 v2, 0x3

    .line 481
    :goto_0
    iget-object v8, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v4

    .line 483
    .local v4, "isPrediction":Z
    const/4 v6, 0x1

    .line 484
    .local v6, "predictionFlag":I
    if-eqz v4, :cond_1

    .line 485
    const/16 v6, 0x3e

    .line 493
    :cond_1
    const/4 v8, 0x3

    const/16 v9, 0x14

    invoke-static {v8, v2, v6, v9}, Lcom/diotek/dwp/DWP;->SetAttribute(IIII)I

    move-result v7

    .line 495
    .local v7, "ret":I
    return v7

    .line 459
    .end local v4    # "isPrediction":Z
    .end local v6    # "predictionFlag":I
    .end local v7    # "ret":I
    :pswitch_0
    const/4 v2, 0x3

    .line 460
    goto :goto_0

    .line 462
    :pswitch_1
    const/4 v2, 0x4

    .line 463
    goto :goto_0

    .line 465
    :pswitch_2
    const/4 v2, 0x7

    .line 466
    goto :goto_0

    .line 468
    :pswitch_3
    const/16 v2, 0x8

    .line 469
    goto :goto_0

    .line 475
    :cond_2
    const/4 v2, 0x3

    goto :goto_0

    .line 478
    :cond_3
    const/4 v2, 0x2

    goto :goto_0

    .line 457
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public clearContext()I
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 401
    const/16 v4, 0x100

    new-array v2, v4, [C

    .line 402
    .local v2, "output":[C
    new-array v1, v6, [I

    .line 403
    .local v1, "length":[I
    new-array v0, v6, [I

    .line 405
    .local v0, "complete_size":[I
    const v4, 0xff02

    invoke-static {v4, v2, v1, v0}, Lcom/diotek/dwp/DWP;->InputKey(C[C[I[I)I

    move-result v3

    .line 409
    .local v3, "ret":I
    iget-object v4, p0, Lcom/diotek/ime/framework/engine/dwp/DWPWrapper;->mCurrentResult:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 410
    iput v5, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mActiveIndex:I

    .line 411
    iput v5, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mSuggestionCount:I

    .line 413
    return v3
.end method

.method public convetCangjieSpell()Ljava/lang/CharSequence;
    .locals 7

    .prologue
    .line 794
    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/dwp/DWPWrapper;->getInputTransResult()Ljava/lang/CharSequence;

    move-result-object v2

    .line 796
    .local v2, "spell":Ljava/lang/CharSequence;
    if-nez v2, :cond_0

    .line 797
    const/4 v5, 0x0

    .line 812
    :goto_0
    return-object v5

    .line 800
    :cond_0
    const/16 v5, 0x19

    new-array v0, v5, [C

    .line 801
    .local v0, "convertData":[C
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 802
    .local v4, "spellLength":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v4, :cond_2

    .line 803
    invoke-interface {v2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 805
    .local v3, "spellCode":I
    const/16 v5, 0x61

    if-lt v3, v5, :cond_1

    const/16 v5, 0x79

    if-gt v3, v5, :cond_1

    .line 806
    sget-object v5, Lcom/diotek/ime/framework/engine/dwp/DWPWrapper;->cangjieKeyMap:[I

    add-int/lit8 v6, v3, -0x61

    aget v5, v5, v6

    int-to-char v5, v5

    aput-char v5, v0, v1

    .line 802
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 808
    :cond_1
    int-to-char v5, v3

    aput-char v5, v0, v1

    goto :goto_2

    .line 812
    .end local v3    # "spellCode":I
    :cond_2
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public doResetMultitap()I
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 932
    const/4 v1, 0x1

    .line 933
    .local v1, "ret":I
    const/16 v4, 0x7e

    new-array v3, v4, [C

    .line 934
    .local v3, "strResult":[C
    new-array v2, v5, [I

    .line 935
    .local v2, "rv":[I
    new-array v0, v5, [B

    .line 936
    .local v0, "delLen":[B
    const v4, 0xff10

    invoke-static {v4, v3, v2, v0}, Lcom/diotek/dwp/DWP;->InputKeyToHangulAutomata(C[C[I[B)I

    move-result v1

    .line 939
    return v1
.end method

.method public freeResources()I
    .locals 1

    .prologue
    .line 418
    invoke-static {}, Lcom/diotek/dwp/DWP;->Destroy()I

    move-result v0

    .line 422
    .local v0, "ret":I
    return v0
.end method

.method public getActiveIndex([I)I
    .locals 2
    .param p1, "outIndex"    # [I

    .prologue
    const/4 v1, 0x0

    .line 337
    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->isLanguageForToUseBestWord()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    iget v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mActiveIndex:I

    aput v0, p1, v1

    .line 342
    :goto_0
    return v1

    .line 340
    :cond_0
    aput v1, p1, v1

    goto :goto_0
.end method

.method public getCharSequence(Ljava/lang/StringBuilder;)I
    .locals 2
    .param p1, "outCharSequence"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v1, 0x0

    .line 236
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 237
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/dwp/DWPWrapper;->mCurrentResult:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 238
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/dwp/DWPWrapper;->mCurrentResult:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 239
    return v1
.end method

.method public getCharSequence(Ljava/lang/StringBuilder;I)I
    .locals 2
    .param p1, "outCharSequence"    # Ljava/lang/StringBuilder;
    .param p2, "index"    # I

    .prologue
    const/4 v1, 0x0

    .line 244
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 245
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/dwp/DWPWrapper;->mCurrentResult:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 246
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/dwp/DWPWrapper;->mCurrentResult:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 247
    return v1
.end method

.method public getContextAwareUniqueID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 951
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInputTransResult()Ljava/lang/CharSequence;
    .locals 11

    .prologue
    .line 718
    const/4 v3, 0x0

    .line 721
    .local v3, "spell":Ljava/lang/CharSequence;
    const/16 v8, 0x54

    new-array v4, v8, [C

    .line 722
    .local v4, "stInputShowString":[C
    const/4 v8, 0x1

    new-array v5, v8, [I

    .line 724
    .local v5, "strLen":[I
    invoke-static {v4, v5}, Lcom/diotek/dwp/DWP;->CNGetInputTransResult([C[I)I

    move-result v2

    .line 726
    .local v2, "ret":I
    if-eqz v2, :cond_0

    .line 727
    const-string v8, "SamsungIME"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "DWP getInputTransResult : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    :cond_0
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v4}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 732
    .local v6, "strResult":Ljava/lang/String;
    iget v8, p0, Lcom/diotek/ime/framework/engine/dwp/DWPWrapper;->mCurrentLanguage:I

    const v9, 0x7a68484b

    if-ne v8, v9, :cond_3

    .line 733
    const/16 v8, 0x19

    new-array v0, v8, [C

    .line 734
    .local v0, "convertData":[C
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    .line 735
    .local v7, "strResultLength":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v7, :cond_2

    .line 736
    aget-char v8, v4, v1

    const/16 v9, 0x61

    if-lt v8, v9, :cond_1

    aget-char v8, v4, v1

    const/16 v9, 0x79

    if-gt v8, v9, :cond_1

    .line 737
    sget-object v8, Lcom/diotek/ime/framework/engine/dwp/DWPWrapper;->cangjieKeyMap:[I

    aget-char v9, v4, v1

    add-int/lit8 v9, v9, -0x61

    aget v8, v8, v9

    int-to-char v8, v8

    aput-char v8, v0, v1

    .line 735
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 739
    :cond_1
    aget-char v8, v4, v1

    aput-char v8, v0, v1

    goto :goto_1

    .line 743
    :cond_2
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 746
    .end local v0    # "convertData":[C
    .end local v1    # "i":I
    .end local v7    # "strResultLength":I
    :cond_3
    if-nez v2, :cond_4

    const/4 v8, 0x0

    aget v8, v5, v8

    if-lez v8, :cond_4

    .line 747
    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    .line 750
    :cond_4
    const/4 v6, 0x0

    .line 752
    return-object v3
.end method

.method public getPhoneticSpellGroup(Ljava/util/ArrayList;)I
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p1, "spellGroup":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v10, 0x0

    .line 757
    const/4 v5, 0x0

    .line 758
    .local v5, "ret":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 760
    const/16 v9, 0x8c

    new-array v4, v9, [C

    .line 761
    .local v4, "pwPhoneticGroup":[C
    const/4 v9, 0x1

    new-array v1, v9, [I

    .line 763
    .local v1, "nLen":[I
    invoke-static {v4, v1}, Lcom/diotek/dwp/DWP;->CNGetPhoneticGroup([C[I)I

    move-result v5

    .line 764
    if-eqz v5, :cond_0

    .line 765
    const-string v9, "SamsungIME"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "DWP DWPCNGetPhoneticGroup : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    const/4 v9, -0x1

    .line 789
    :goto_0
    return v9

    .line 769
    :cond_0
    aget v9, v1, v10

    if-lez v9, :cond_3

    .line 770
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v4}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 771
    .local v6, "strResult":Ljava/lang/String;
    const/4 v8, 0x0

    .line 772
    .local v8, "word":Ljava/lang/CharSequence;
    const/4 v3, 0x0

    .line 773
    .local v3, "nStartPos":I
    const/4 v2, 0x0

    .line 774
    .local v2, "nPos":I
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    .line 775
    .local v7, "strResultLength":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    aget v9, v1, v10

    if-ge v0, v9, :cond_3

    .line 776
    :goto_2
    if-gt v2, v7, :cond_1

    .line 777
    aget-char v9, v4, v2

    if-nez v9, :cond_2

    .line 778
    invoke-virtual {v6, v3, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    .line 779
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 780
    add-int/lit8 v2, v2, 0x1

    .line 781
    move v3, v2

    .line 775
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 784
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 789
    .end local v0    # "i":I
    .end local v2    # "nPos":I
    .end local v3    # "nStartPos":I
    .end local v6    # "strResult":Ljava/lang/String;
    .end local v7    # "strResultLength":I
    .end local v8    # "word":Ljava/lang/CharSequence;
    :cond_3
    aget v9, v1, v10

    goto :goto_0
.end method

.method public getPredictWord(Ljava/lang/CharSequence;Ljava/util/ArrayList;)I
    .locals 17
    .param p1, "suggestion"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 817
    .local p2, "predictList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    sget-boolean v13, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v13, :cond_0

    .line 818
    const-string v13, "SamsungIME"

    const-string v14, "getPredictWord()"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    :cond_0
    const/16 v13, 0x54

    new-array v4, v13, [C

    .line 822
    .local v4, "inputChar":[C
    const/4 v2, 0x0

    .line 823
    .local v2, "bSkipPredict":Z
    const/4 v13, 0x1

    new-array v10, v13, [I

    .line 824
    .local v10, "nSearchFlag":[I
    const/4 v13, 0x1

    new-array v8, v13, [I

    .line 825
    .local v8, "nPreChineseInputMode":[I
    const/4 v13, 0x1

    new-array v6, v13, [I

    .line 826
    .local v6, "nLanguageCode":[I
    const/4 v13, 0x1

    new-array v7, v13, [I

    .line 828
    .local v7, "nMaxCandidateNum":[I
    invoke-static {v6, v8, v10, v7}, Lcom/diotek/dwp/DWP;->GetAttribute([I[I[I[I)I

    .line 830
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 831
    .local v5, "inputString":Ljava/lang/String;
    const/4 v13, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v14

    const/4 v15, 0x0

    invoke-virtual {v5, v13, v14, v4, v15}, Ljava/lang/String;->getChars(II[CI)V

    .line 833
    const/4 v13, 0x0

    aget v13, v6, v13

    const/16 v14, 0x17

    const/4 v15, 0x0

    aget v15, v10, v15

    const/16 v16, 0x0

    aget v16, v7, v16

    invoke-static/range {v13 .. v16}, Lcom/diotek/dwp/DWP;->SetAttribute(IIII)I

    move-result v12

    .line 835
    .local v12, "ret":I
    sget-boolean v13, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    if-eqz v13, :cond_1

    .line 836
    const-string v13, "SamsungIME"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getPredictWord DWPSetAttribute : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    :cond_1
    const/4 v13, 0x1

    new-array v9, v13, [I

    .line 840
    .local v9, "nPredictCount":[I
    const/16 v13, 0x804

    new-array v11, v13, [C

    .line 842
    .local v11, "pwCandWordBuf":[C
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v13, v4

    if-ge v3, v13, :cond_3

    .line 843
    aget-char v13, v4, v3

    invoke-static {v13}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v13

    if-nez v13, :cond_2

    aget-char v13, v4, v3

    invoke-static {v13}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 844
    :cond_2
    const/4 v2, 0x1

    .line 849
    :cond_3
    if-nez v2, :cond_4

    .line 850
    const/4 v13, 0x0

    invoke-static {v4, v13, v11, v9}, Lcom/diotek/dwp/DWP;->CNGetPredictResult([C[C[C[I)I

    move-result v12

    .line 853
    :cond_4
    if-eqz v12, :cond_6

    .line 854
    const-string v13, "SamsungIME"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getPredictWord DKBDCNGetPredictResult : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    const/4 v13, -0x1

    .line 869
    :goto_1
    return v13

    .line 842
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 858
    :cond_6
    const/4 v13, 0x0

    aget v13, v9, v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mSuggestionCount:I

    .line 859
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->clear()V

    .line 861
    const/4 v13, 0x0

    aget v13, v9, v13

    if-lez v13, :cond_7

    .line 862
    const/4 v13, 0x0

    aget v13, v9, v13

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v11, v1, v13}, Lcom/diotek/ime/framework/engine/dwp/DWPWrapper;->getCandidateWord([CLjava/util/ArrayList;I)V

    .line 865
    :cond_7
    const/4 v13, 0x0

    aget v13, v6, v13

    const/4 v14, 0x0

    aget v14, v8, v14

    const/4 v15, 0x0

    aget v15, v10, v15

    const/16 v16, 0x0

    aget v16, v7, v16

    invoke-static/range {v13 .. v16}, Lcom/diotek/dwp/DWP;->SetAttribute(IIII)I

    .line 869
    const/4 v13, 0x0

    aget v13, v9, v13

    goto :goto_1
.end method

.method public getSuggestion(Ljava/util/ArrayList;Z)I
    .locals 3
    .param p2, "all"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;Z)I"
        }
    .end annotation

    .prologue
    .line 263
    .local p1, "outCharSequences":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v0, 0x0

    .line 265
    .local v0, "nResultCount":I
    if-nez p1, :cond_0

    .line 266
    new-instance p1, Ljava/util/ArrayList;

    .end local p1    # "outCharSequences":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 269
    .restart local p1    # "outCharSequences":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    :cond_0
    iget v1, p0, Lcom/diotek/ime/framework/engine/dwp/DWPWrapper;->mCurrentLanguage:I

    const/high16 v2, 0x6b6f0000

    if-ne v1, v2, :cond_1

    .line 270
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/dwp/DWPWrapper;->getSuggestionKorean(Ljava/util/ArrayList;)I

    move-result v0

    .line 275
    :goto_0
    return v0

    .line 272
    :cond_1
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/dwp/DWPWrapper;->getSuggestionChinese(Ljava/util/ArrayList;)I

    move-result v0

    goto :goto_0
.end method

.method public getXt9Version()I
    .locals 3

    .prologue
    .line 971
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "XT9_VERSION"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public init()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 91
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    if-nez v2, :cond_0

    .line 92
    invoke-static {}, Lcom/diotek/ime/framework/repository/RepositoryImpl;->getInstance()Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v2

    iput-object v2, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    .line 95
    :cond_0
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v3, "CNCORE_USE_USERDICT"

    invoke-interface {v2, v3, v5}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/diotek/ime/framework/engine/dwp/DWPWrapper;->mCncoreUseUserdict:Z

    .line 97
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v3, "INPUT_LANGUAGE"

    const v4, 0x656e5553

    invoke-interface {v2, v3, v4}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/diotek/ime/framework/engine/dwp/DWPWrapper;->mCurrentLanguage:I

    .line 99
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v2, p0, Lcom/diotek/ime/framework/engine/dwp/DWPWrapper;->mCurrentResult:Ljava/lang/StringBuilder;

    .line 100
    const/4 v1, 0x1

    .line 102
    .local v1, "ret":I
    const/16 v2, 0x8

    new-array v0, v2, [B

    .line 103
    .local v0, "debugLebel":[B
    aput-byte v5, v0, v5

    .line 104
    const/4 v2, 0x4

    invoke-static {v2, v0}, Lcom/diotek/dwp/DWP;->SetParam(I[B)I

    move-result v1

    .line 105
    if-eqz v1, :cond_1

    .line 106
    sget-boolean v2, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    if-eqz v2, :cond_1

    .line 107
    const-string v2, "SamsungIME"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DWPWrapper SetParam LOG_LEVEL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_1
    iget v2, p0, Lcom/diotek/ime/framework/engine/dwp/DWPWrapper;->mCurrentLanguage:I

    const/high16 v3, 0x6b6f0000

    if-ne v2, v3, :cond_2

    .line 112
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dwp/DWPWrapper;->initKorean()I

    move-result v1

    .line 117
    :goto_0
    return v1

    .line 114
    :cond_2
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dwp/DWPWrapper;->initChinese()I

    move-result v1

    goto :goto_0
.end method

.method public inputCharSequence(Ljava/lang/CharSequence;)I
    .locals 3
    .param p1, "inCharSequence"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x0

    .line 252
    new-array v0, v2, [C

    .line 253
    .local v0, "inputString":[C
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 254
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 256
    :cond_0
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/diotek/dwp/DWP;->DoInputString([CZ)I

    .line 257
    return v2
.end method

.method public inputKey(I)I
    .locals 3
    .param p1, "keyCode"    # I

    .prologue
    .line 171
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/dwp/DWPWrapper;->mCurrentResult:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 172
    const/4 v0, 0x1

    .line 174
    .local v0, "ret":I
    iget v1, p0, Lcom/diotek/ime/framework/engine/dwp/DWPWrapper;->mCurrentLanguage:I

    const/high16 v2, 0x6b6f0000

    if-ne v1, v2, :cond_0

    .line 175
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/dwp/DWPWrapper;->inputKeyKorean(I)I

    move-result v0

    .line 180
    :goto_0
    return v0

    .line 177
    :cond_0
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/dwp/DWPWrapper;->inputKeyChinese(I)I

    move-result v0

    goto :goto_0
.end method

.method public isContainInLanguageDB(Ljava/lang/String;)Z
    .locals 1
    .param p1, "word"    # Ljava/lang/String;

    .prologue
    .line 956
    const/4 v0, 0x0

    return v0
.end method

.method public isNumericCharacter(I)Z
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 603
    const/4 v0, 0x0

    return v0
.end method

.method public isSentenceTermPunct(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 966
    const/4 v0, 0x0

    return v0
.end method

.method public isSentenceTermPunct(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p1, "buffer"    # Ljava/lang/CharSequence;

    .prologue
    .line 961
    const/4 v0, 0x0

    return v0
.end method

.method public isTextCharacter(I)Z
    .locals 5
    .param p1, "code"    # I

    .prologue
    const/4 v3, 0x0

    .line 576
    const/4 v2, 0x0

    .line 578
    .local v2, "ret":Z
    iget-object v4, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v1

    .line 579
    .local v1, "range":I
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputStatus;->isHwKeyInput()Z

    move-result v0

    .line 581
    .local v0, "isHwKeyInput":Z
    if-nez v0, :cond_1

    const/4 v4, 0x1

    if-eq v1, v4, :cond_0

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    :cond_0
    iget-object v4, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isKorTabletCji()Z

    move-result v4

    if-nez v4, :cond_1

    .line 598
    :goto_0
    return v3

    .line 588
    :cond_1
    if-eqz v0, :cond_2

    .line 589
    invoke-static {v3}, Lcom/diotek/ime/framework/repository/InputStatus;->setFlagHwKeyInput(Z)V

    .line 592
    :cond_2
    iget v3, p0, Lcom/diotek/ime/framework/engine/dwp/DWPWrapper;->mCurrentLanguage:I

    const/high16 v4, 0x6b6f0000

    if-ne v3, v4, :cond_3

    .line 593
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/dwp/DWPWrapper;->isTextCharacterKorean(I)Z

    move-result v2

    :goto_1
    move v3, v2

    .line 598
    goto :goto_0

    .line 595
    :cond_3
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/dwp/DWPWrapper;->isTextCharacterChinese(I)Z

    move-result v2

    goto :goto_1
.end method

.method public setChineseFuzzyPinyin()V
    .locals 9

    .prologue
    .line 683
    const/4 v4, 0x0

    .line 694
    .local v4, "nFuzzycode":I
    const/4 v5, 0x0

    .line 696
    .local v5, "nIndex":I
    sget-object v0, Lcom/diotek/ime/framework/common/Constant;->FUZZY_STRING:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    move v6, v5

    .end local v5    # "nIndex":I
    .local v6, "nIndex":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 697
    .local v1, "i":Ljava/lang/String;
    iget-object v7, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const/4 v8, 0x0

    invoke-interface {v7, v1, v8}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 698
    sget-object v7, Lcom/diotek/ime/framework/common/Constant;->FUZZY_CODE:[I

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "nIndex":I
    .restart local v5    # "nIndex":I
    aget v7, v7, v6

    or-int/2addr v4, v7

    .line 696
    :goto_1
    add-int/lit8 v2, v2, 0x1

    move v6, v5

    .end local v5    # "nIndex":I
    .restart local v6    # "nIndex":I
    goto :goto_0

    .line 700
    :cond_0
    sget-object v7, Lcom/diotek/ime/framework/common/Constant;->FUZZY_CODE:[I

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "nIndex":I
    .restart local v5    # "nIndex":I
    aget v7, v7, v6

    xor-int/lit8 v7, v7, -0x1

    and-int/2addr v4, v7

    goto :goto_1

    .line 704
    .end local v1    # "i":Ljava/lang/String;
    .end local v5    # "nIndex":I
    .restart local v6    # "nIndex":I
    :cond_1
    invoke-static {v4}, Lcom/diotek/dwp/DWP;->CNSetChineseFuzzy(I)I

    .line 705
    return-void
.end method

.method public setChinesePhoneticIndex(I)V
    .locals 5
    .param p1, "nPhoneticIndex"    # I

    .prologue
    .line 709
    invoke-static {p1}, Lcom/diotek/dwp/DWP;->CNSetPhoneticIndex(I)I

    move-result v0

    .line 710
    .local v0, "ret":I
    if-eqz v0, :cond_0

    .line 711
    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DWP setChinesePhoneticIndex : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    :cond_0
    return-void
.end method

.method public setContextAwareUniqueID(Ljava/lang/String;)V
    .locals 0
    .param p1, "contextAwareUniqueID"    # Ljava/lang/String;

    .prologue
    .line 946
    return-void
.end method

.method public setOptionsByState()I
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x0

    return v0
.end method

.method public setUsingLanguage(I)I
    .locals 1
    .param p1, "languageCode"    # I

    .prologue
    .line 158
    const/4 v0, 0x0

    return v0
.end method

.method public updateEngine()I
    .locals 4

    .prologue
    .line 427
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v2, "INPUT_LANGUAGE"

    const v3, 0x656e5553

    invoke-interface {v1, v2, v3}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/diotek/ime/framework/engine/dwp/DWPWrapper;->mCurrentLanguage:I

    .line 428
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/diotek/ime/framework/engine/dwp/DWPWrapper;->mCurrentResult:Ljava/lang/StringBuilder;

    .line 429
    const/4 v0, 0x1

    .line 431
    .local v0, "ret":I
    iget v1, p0, Lcom/diotek/ime/framework/engine/dwp/DWPWrapper;->mCurrentLanguage:I

    const/high16 v2, 0x6b6f0000

    if-ne v1, v2, :cond_0

    .line 432
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dwp/DWPWrapper;->updateEngineKorean()I

    move-result v0

    .line 441
    :goto_0
    return v0

    .line 434
    :cond_0
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dwp/DWPWrapper;->updateEngineChinese()I

    move-result v0

    goto :goto_0
.end method

.method public wordSelected(ILjava/lang/CharSequence;)I
    .locals 11
    .param p1, "index"    # I
    .param p2, "candidate"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v2, -0x1

    .line 347
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 351
    .local v3, "outCharSequences":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    if-gez p1, :cond_1

    .line 396
    :cond_0
    :goto_0
    return v2

    .line 354
    :cond_1
    invoke-static {p1}, Lcom/diotek/dwp/DWP;->SelectResultList(I)I

    move-result v5

    .line 356
    .local v5, "ret":I
    if-eqz v5, :cond_2

    .line 358
    iput v9, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mSuggestionCount:I

    goto :goto_0

    .line 362
    :cond_2
    new-array v0, v10, [Z

    .line 363
    .local v0, "isFinish":[Z
    invoke-static {v0}, Lcom/diotek/dwp/DWP;->CNIsFinish([Z)I

    move-result v5

    .line 365
    if-eqz v5, :cond_3

    .line 369
    :cond_3
    aget-boolean v8, v0, v9

    if-nez v8, :cond_5

    .line 370
    invoke-direct {p0, v3}, Lcom/diotek/ime/framework/engine/dwp/DWPWrapper;->getSuggestionChinese(Ljava/util/ArrayList;)I

    move-result v2

    .line 371
    .local v2, "nWordCount":I
    if-gez v2, :cond_4

    .line 372
    iput v9, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mSuggestionCount:I

    goto :goto_0

    .line 376
    :cond_4
    iput v2, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mSuggestionCount:I

    goto :goto_0

    .line 379
    .end local v2    # "nWordCount":I
    :cond_5
    iget-boolean v8, p0, Lcom/diotek/ime/framework/engine/dwp/DWPWrapper;->mCncoreUseUserdict:Z

    if-eqz v8, :cond_6

    .line 380
    const/16 v8, 0x8c

    new-array v4, v8, [C

    .line 381
    .local v4, "pwFullPhonetic":[C
    const/16 v8, 0x54

    new-array v6, v8, [C

    .line 382
    .local v6, "stInputShowString":[C
    new-array v7, v10, [I

    .line 383
    .local v7, "stringLen":[I
    invoke-static {v4, v7}, Lcom/diotek/dwp/DWP;->CNGetFullPhonetic([C[I)I

    move-result v1

    .line 385
    .local v1, "nFullStringLen":I
    if-lez v1, :cond_6

    .line 386
    invoke-static {v4, v6}, Lcom/diotek/dwp/DWP;->AddItemToUserDic([C[C)I

    move-result v5

    .line 387
    if-nez v5, :cond_0

    .end local v1    # "nFullStringLen":I
    .end local v4    # "pwFullPhonetic":[C
    .end local v6    # "stInputShowString":[C
    .end local v7    # "stringLen":[I
    :cond_6
    move v2, v5

    .line 396
    goto :goto_0
.end method
