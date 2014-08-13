.class public Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager;
.super Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;
.source "SwiftkeyJapaneseManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager$JapaneseInputType;
    }
.end annotation


# static fields
.field private static mInstance:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager;

.field private static mJapaneseInputType:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager$JapaneseInputType;


# instance fields
.field private final JAPANESE_POSTPOSITION:[Ljava/lang/String;

.field private isLoadKeypressModelError:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    sput-object v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager;->mInstance:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager;

    .line 58
    sget-object v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager$JapaneseInputType;->NONE:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager$JapaneseInputType;

    sput-object v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager;->mJapaneseInputType:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager$JapaneseInputType;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 35
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;-><init>()V

    .line 36
    iput-boolean v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager;->isLoadKeypressModelError:Z

    .line 39
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u306f"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "\u304c"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\u3092"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\u306e"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "\u3082"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u306b"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u304b\u3089"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u307e\u3067"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u3067"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\u3068"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\u3088\u308a"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\u3078"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager;->JAPANESE_POSTPOSITION:[Ljava/lang/String;

    .line 53
    return-void
.end method

.method private addLayoutKey(Ljava/util/HashSet;C)V
    .locals 9
    .param p2, "c"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;C)V"
        }
    .end annotation

    .prologue
    .line 375
    .local p1, "layoutKeys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    .line 376
    .local v6, "lowercase":Ljava/lang/String;
    invoke-static {p2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    .line 377
    .local v7, "uppercase":Ljava/lang/String;
    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 378
    iget-object v8, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictor:Lcom/touchtype_fluency/Predictor;

    if-eqz v8, :cond_1

    .line 379
    iget-object v8, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictor:Lcom/touchtype_fluency/Predictor;

    invoke-interface {v8}, Lcom/touchtype_fluency/Predictor;->getCharacterMap()Lcom/touchtype_fluency/CharacterMap;

    move-result-object v3

    .line 380
    .local v3, "cMap":Lcom/touchtype_fluency/CharacterMap;
    invoke-interface {v3, v6}, Lcom/touchtype_fluency/CharacterMap;->getAccentedVariantsList(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 381
    .local v1, "accents":[Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 382
    move-object v2, v1

    .local v2, "arr$":[Ljava/lang/String;
    array-length v5, v2

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v0, v2, v4

    .line 383
    .local v0, "accent":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 382
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 386
    .end local v0    # "accent":Ljava/lang/String;
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :cond_0
    invoke-interface {v3, v7}, Lcom/touchtype_fluency/CharacterMap;->getAccentedVariantsList(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 387
    if-eqz v1, :cond_1

    .line 388
    move-object v2, v1

    .restart local v2    # "arr$":[Ljava/lang/String;
    array-length v5, v2

    .restart local v5    # "len$":I
    const/4 v4, 0x0

    .restart local v4    # "i$":I
    :goto_1
    if-ge v4, v5, :cond_1

    aget-object v0, v2, v4

    .line 389
    .restart local v0    # "accent":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 388
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 393
    .end local v0    # "accent":Ljava/lang/String;
    .end local v1    # "accents":[Ljava/lang/String;
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v3    # "cMap":Lcom/touchtype_fluency/CharacterMap;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :cond_1
    return-void
.end method

.method private addLayoutKey(Ljava/util/HashSet;[Ljava/lang/Character;)V
    .locals 2
    .param p2, "arrCh"    # [Ljava/lang/Character;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/Character;",
            ")V"
        }
    .end annotation

    .prologue
    .line 369
    .local p1, "layoutKeys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 370
    aget-object v1, p2, v0

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager;->addLayoutKey(Ljava/util/HashSet;C)V

    .line 369
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 372
    :cond_0
    return-void
.end method

.method private getContextLength(Ljava/lang/String;)I
    .locals 2
    .param p1, "contextText"    # Ljava/lang/String;

    .prologue
    .line 361
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_1

    .line 362
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager;->isValidCharacter(C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 365
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 361
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 365
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getInstance()Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager;->mInstance:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager;

    invoke-direct {v0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager;->mInstance:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager;

    .line 64
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager;->mInstance:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager;

    return-object v0
.end method

.method private getJapaneseInputType(Z)Ljava/lang/String;
    .locals 1
    .param p1, "isPhonePadMode"    # Z

    .prologue
    .line 273
    if-eqz p1, :cond_0

    .line 274
    const-string v0, "hiragana"

    .line 276
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "romaji"

    goto :goto_0
.end method

.method private japaneseJoin(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "curruntWord"    # Ljava/lang/String;

    .prologue
    .line 408
    invoke-static {p1}, Lcom/touchtype_fluency/Japanese;->romajiToHiragana(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addTouchHistory(Ljava/lang/Character;)V
    .locals 0
    .param p1, "character"    # Ljava/lang/Character;

    .prologue
    .line 458
    invoke-super {p0, p1}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->addTouchHistory(Ljava/lang/Character;)V

    .line 459
    return-void
.end method

.method public addTouchPoint(ILandroid/graphics/PointF;)V
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "point"    # Landroid/graphics/PointF;

    .prologue
    .line 238
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    int-to-char v1, p1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/touchtype_fluency/TouchHistory;->addCharacter(Ljava/lang/Character;)V

    .line 239
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mInputBuffer:Ljava/lang/StringBuilder;

    int-to-char v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 240
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mIsAlreadyAddTouchHistory:Z

    .line 241
    return-void
.end method

.method public buildPredictionListener(Lcom/touchtype_fluency/Sequence;)V
    .locals 4
    .param p1, "sequence"    # Lcom/touchtype_fluency/Sequence;

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->clearReservePredictions()V

    .line 184
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mInputBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 185
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mInputBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, "curruntWord":Ljava/lang/String;
    new-instance v1, Lcom/touchtype_fluency/TouchHistory;

    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager;->japaneseJoin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/touchtype_fluency/TouchHistory;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    .line 190
    .end local v0    # "curruntWord":Ljava/lang/String;
    :goto_0
    sget-boolean v1, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 191
    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<buildPredictionListener>  before getPredictions - Utils.getUsedTime() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/diotek/ime/framework/util/Utils;->getUsedTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_0
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeyUtilSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    iget v3, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCandidateWordNumber:I

    invoke-virtual {p0, v3}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager;->getResultsFilter(I)Lcom/touchtype_fluency/ResultsFilter;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Lcom/touchtype_fluency/util/SwiftKeySession;->getPredictions(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;Lcom/touchtype_fluency/ResultsFilter;)Ljava/util/concurrent/Future;

    .line 194
    sget-boolean v1, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 195
    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<###buildPredictionListener>  after getPredictions - Utils.getUsedTime() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/diotek/ime/framework/util/Utils;->getUsedTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_1
    return-void

    .line 188
    :cond_2
    new-instance v1, Lcom/touchtype_fluency/TouchHistory;

    const-string v2, ""

    invoke-direct {v1, v2}, Lcom/touchtype_fluency/TouchHistory;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    goto :goto_0
.end method

.method public buildPredictions(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/Sequence;I)Lcom/touchtype_fluency/Predictions;
    .locals 3
    .param p1, "preSequence"    # Lcom/touchtype_fluency/Sequence;
    .param p2, "postSequence"    # Lcom/touchtype_fluency/Sequence;
    .param p3, "count"    # I

    .prologue
    .line 201
    const/4 v1, 0x1

    if-ge p3, v1, :cond_0

    .line 202
    iget p3, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCandidateWordNumber:I

    .line 205
    :cond_0
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mInputBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 206
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mInputBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, "curruntWord":Ljava/lang/String;
    new-instance v1, Lcom/touchtype_fluency/TouchHistory;

    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager;->japaneseJoin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/touchtype_fluency/TouchHistory;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    .line 212
    .end local v0    # "curruntWord":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    invoke-virtual {p0, p1, v1, p3}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->buildPredictionsInternal(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;I)Lcom/touchtype_fluency/Predictions;

    move-result-object v1

    iput-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictions:Lcom/touchtype_fluency/Predictions;

    .line 213
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictions:Lcom/touchtype_fluency/Predictions;

    return-object v1

    .line 209
    :cond_1
    new-instance v1, Lcom/touchtype_fluency/TouchHistory;

    const-string v2, ""

    invoke-direct {v1, v2}, Lcom/touchtype_fluency/TouchHistory;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    goto :goto_0
.end method

.method protected buildPredictions(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;I)Lcom/touchtype_fluency/Predictions;
    .locals 3
    .param p1, "sequence"    # Lcom/touchtype_fluency/Sequence;
    .param p2, "touchHistory"    # Lcom/touchtype_fluency/TouchHistory;
    .param p3, "count"    # I

    .prologue
    .line 218
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mInputBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 219
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mInputBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, "curruntWord":Ljava/lang/String;
    new-instance v1, Lcom/touchtype_fluency/TouchHistory;

    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager;->japaneseJoin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/touchtype_fluency/TouchHistory;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    .line 225
    .end local v0    # "curruntWord":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    iget v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCandidateWordNumber:I

    invoke-virtual {p0, p1, v1, v2}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->buildPredictionsInternal(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;I)Lcom/touchtype_fluency/Predictions;

    move-result-object v1

    return-object v1

    .line 222
    :cond_0
    new-instance v1, Lcom/touchtype_fluency/TouchHistory;

    const-string v2, ""

    invoke-direct {v1, v2}, Lcom/touchtype_fluency/TouchHistory;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    goto :goto_0
.end method

.method public changeJapaneseInputType(Ljava/util/List;ZLjava/lang/String;Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/touchtype_fluency/util/CompletionListener;)Z
    .locals 10
    .param p2, "isPhonePadMode"    # Z
    .param p3, "langCode"    # Ljava/lang/String;
    .param p4, "languagePackManager"    # Lcom/touchtype_fluency/util/LanguagePackManager;
    .param p5, "listener"    # Lcom/touchtype_fluency/util/CompletionListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/touchtype_fluency/util/LanguagePack;",
            ">;Z",
            "Ljava/lang/String;",
            "Lcom/touchtype_fluency/util/LanguagePackManager;",
            "Lcom/touchtype_fluency/util/CompletionListener;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "languagePacks":Ljava/util/List;, "Ljava/util/List<Lcom/touchtype_fluency/util/LanguagePack;>;"
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 245
    const/4 v4, 0x0

    .line 246
    .local v4, "needToLoad":Z
    const/4 v2, 0x0

    .line 247
    .local v2, "languagePack":Lcom/touchtype_fluency/util/LanguagePack;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/touchtype_fluency/util/LanguagePack;

    .line 248
    .local v3, "lp":Lcom/touchtype_fluency/util/LanguagePack;
    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 249
    .local v1, "id":Ljava/lang/String;
    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 250
    if-nez p2, :cond_1

    const-string v8, "hiragana"

    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->getCurrentInputType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    :cond_1
    if-eqz p2, :cond_2

    const-string v8, "hiragana"

    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->getCurrentInputType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 252
    :cond_2
    invoke-direct {p0, p2}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager;->getJapaneseInputType(Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, p4, v3, v8}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->setCurrentInputType(Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/touchtype_fluency/util/LanguagePack;Ljava/lang/String;)V

    .line 253
    move-object v2, v3

    .line 254
    const/4 v4, 0x1

    .line 259
    .end local v1    # "id":Ljava/lang/String;
    .end local v3    # "lp":Lcom/touchtype_fluency/util/LanguagePack;
    :cond_3
    if-eqz v4, :cond_5

    .line 260
    new-array v8, v6, [Lcom/touchtype_fluency/util/LanguagePack;

    aput-object v2, v8, v7

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 261
    .local v5, "toReplace":Ljava/util/List;, "Ljava/util/List<Lcom/touchtype_fluency/util/LanguagePack;>;"
    invoke-virtual {p0, v5, v5, p4, p5}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->replaceLanguageModel(Ljava/util/List;Ljava/util/List;Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/touchtype_fluency/util/CompletionListener;)V

    .line 262
    if-eqz p2, :cond_4

    .line 263
    sget-object v7, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager$JapaneseInputType;->HIRAGANA:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager$JapaneseInputType;

    sput-object v7, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager;->mJapaneseInputType:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager$JapaneseInputType;

    .line 269
    .end local v5    # "toReplace":Ljava/util/List;, "Ljava/util/List<Lcom/touchtype_fluency/util/LanguagePack;>;"
    :goto_0
    return v6

    .line 265
    .restart local v5    # "toReplace":Ljava/util/List;, "Ljava/util/List<Lcom/touchtype_fluency/util/LanguagePack;>;"
    :cond_4
    sget-object v7, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager$JapaneseInputType;->ROMAJI:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager$JapaneseInputType;

    sput-object v7, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager;->mJapaneseInputType:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager$JapaneseInputType;

    goto :goto_0

    .end local v5    # "toReplace":Ljava/util/List;, "Ljava/util/List<Lcom/touchtype_fluency/util/LanguagePack;>;"
    :cond_5
    move v6, v7

    .line 269
    goto :goto_0
.end method

.method public checkPostPosition(Ljava/lang/String;)Z
    .locals 3
    .param p1, "src"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 396
    if-nez p1, :cond_1

    .line 404
    :cond_0
    :goto_0
    return v1

    .line 399
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager;->JAPANESE_POSTPOSITION:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 400
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager;->JAPANESE_POSTPOSITION:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 401
    const/4 v1, 0x1

    goto :goto_0

    .line 399
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public createSession()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/touchtype_fluency/LicenseException;
        }
    .end annotation

    .prologue
    .line 69
    const/16 v0, 0x5a

    iput v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCandidateWordNumber:I

    .line 70
    invoke-super {p0}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->createSession()Z

    move-result v0

    return v0
.end method

.method public deleteKey()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 282
    iget-object v4, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    invoke-virtual {v4}, Lcom/touchtype_fluency/TouchHistory;->size()I

    move-result v4

    if-le v4, v2, :cond_3

    .line 283
    invoke-static {v2}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->getCursor(I)I

    move-result v0

    .line 284
    .local v0, "displayCursor":I
    if-eqz v0, :cond_2

    .line 285
    add-int/lit8 v3, v0, -0x1

    add-int/lit8 v4, v0, -0x1

    invoke-static {v3, v4}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->getVerbatim(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .line 286
    .local v1, "verbatimLength":I
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    invoke-virtual {v3, v1}, Lcom/touchtype_fluency/TouchHistory;->dropLast(I)Lcom/touchtype_fluency/TouchHistory;

    move-result-object v3

    iput-object v3, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    .line 287
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mInputBuffer:Ljava/lang/StringBuilder;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mInputBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 289
    :cond_0
    if-lez v1, :cond_1

    .line 290
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mInputBuffer:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mInputBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 291
    add-int/lit8 v1, v1, -0x1

    .line 292
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mInputBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 306
    .end local v0    # "displayCursor":I
    .end local v1    # "verbatimLength":I
    :cond_1
    :goto_0
    return v2

    .restart local v0    # "displayCursor":I
    :cond_2
    move v2, v3

    .line 299
    goto :goto_0

    .line 302
    .end local v0    # "displayCursor":I
    :cond_3
    new-instance v2, Lcom/touchtype_fluency/TouchHistory;

    invoke-direct {v2}, Lcom/touchtype_fluency/TouchHistory;-><init>()V

    iput-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    .line 303
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mInputBuffer:Ljava/lang/StringBuilder;

    if-eqz v2, :cond_4

    .line 304
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mInputBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_4
    move v2, v3

    .line 306
    goto :goto_0
.end method

.method public fullToHalfWidth(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "inStr"    # Ljava/lang/String;

    .prologue
    .line 454
    invoke-static {p1}, Lcom/touchtype_fluency/CharacterWidth;->fullToHalfWidth(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContextCorrentWord(Ljava/lang/String;I)Lcom/touchtype_fluency/ContextCurrentWord;
    .locals 7
    .param p1, "contextText"    # Ljava/lang/String;
    .param p2, "langID"    # I

    .prologue
    .line 325
    iget-object v4, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTokenizer:Lcom/touchtype_fluency/Tokenizer;

    if-eqz v4, :cond_2

    .line 326
    const/high16 v4, 0x6a610000

    if-ne p2, v4, :cond_1

    .line 327
    iget-object v4, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTokenizer:Lcom/touchtype_fluency/Tokenizer;

    invoke-interface {v4, p1}, Lcom/touchtype_fluency/Tokenizer;->split(Ljava/lang/String;)Lcom/touchtype_fluency/Sequence;

    move-result-object v3

    .line 328
    .local v3, "sequence":Lcom/touchtype_fluency/Sequence;
    const-string v1, ""

    .line 329
    .local v1, "currentWord":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 330
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_0

    .line 331
    invoke-virtual {v3}, Lcom/touchtype_fluency/Sequence;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 332
    invoke-virtual {v3}, Lcom/touchtype_fluency/Sequence;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v3, v4}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->SafeSequenceRemove(Lcom/touchtype_fluency/Sequence;I)Ljava/lang/String;

    move-result-object v1

    .line 333
    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager;->checkPostPosition(Ljava/lang/String;)Z

    move-result v0

    .line 334
    .local v0, "bePostPosition":Z
    if-eqz v0, :cond_0

    invoke-virtual {v3}, Lcom/touchtype_fluency/Sequence;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 335
    invoke-virtual {v3}, Lcom/touchtype_fluency/Sequence;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v3, v4}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->SafeSequenceRemove(Lcom/touchtype_fluency/Sequence;I)Ljava/lang/String;

    move-result-object v2

    .line 336
    .local v2, "prevWord":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 341
    .end local v0    # "bePostPosition":Z
    .end local v2    # "prevWord":Ljava/lang/String;
    :cond_0
    new-instance v4, Lcom/touchtype_fluency/ContextCurrentWord;

    invoke-direct {v4, v3, v1}, Lcom/touchtype_fluency/ContextCurrentWord;-><init>(Lcom/touchtype_fluency/Sequence;Ljava/lang/String;)V

    .line 346
    .end local v1    # "currentWord":Ljava/lang/String;
    .end local v3    # "sequence":Lcom/touchtype_fluency/Sequence;
    :goto_0
    return-object v4

    .line 343
    :cond_1
    iget-object v4, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTokenizer:Lcom/touchtype_fluency/Tokenizer;

    const/4 v5, 0x6

    invoke-interface {v4, p1, v5}, Lcom/touchtype_fluency/Tokenizer;->splitContextCurrentWord(Ljava/lang/String;I)Lcom/touchtype_fluency/ContextCurrentWord;

    move-result-object v4

    goto :goto_0

    .line 346
    :cond_2
    new-instance v4, Lcom/touchtype_fluency/ContextCurrentWord;

    new-instance v5, Lcom/touchtype_fluency/Sequence;

    invoke-direct {v5}, Lcom/touchtype_fluency/Sequence;-><init>()V

    const-string v6, ""

    invoke-direct {v4, v5, v6}, Lcom/touchtype_fluency/ContextCurrentWord;-><init>(Lcom/touchtype_fluency/Sequence;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getContextCorrentWord(Ljava/lang/String;Ljava/lang/String;)Lcom/touchtype_fluency/ContextCurrentWord;
    .locals 4
    .param p1, "contextText"    # Ljava/lang/String;
    .param p2, "currentText"    # Ljava/lang/String;

    .prologue
    .line 312
    if-nez p2, :cond_0

    .line 313
    const-string p2, ""

    .line 316
    :cond_0
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTokenizer:Lcom/touchtype_fluency/Tokenizer;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 317
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->tokenizerSplit(Ljava/lang/String;)Lcom/touchtype_fluency/Sequence;

    move-result-object v0

    .line 318
    .local v0, "sequence":Lcom/touchtype_fluency/Sequence;
    new-instance v1, Lcom/touchtype_fluency/ContextCurrentWord;

    invoke-direct {v1, v0, p2}, Lcom/touchtype_fluency/ContextCurrentWord;-><init>(Lcom/touchtype_fluency/Sequence;Ljava/lang/String;)V

    .line 320
    .end local v0    # "sequence":Lcom/touchtype_fluency/Sequence;
    :goto_0
    return-object v1

    :cond_1
    new-instance v1, Lcom/touchtype_fluency/ContextCurrentWord;

    new-instance v2, Lcom/touchtype_fluency/Sequence;

    invoke-direct {v2}, Lcom/touchtype_fluency/Sequence;-><init>()V

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lcom/touchtype_fluency/ContextCurrentWord;-><init>(Lcom/touchtype_fluency/Sequence;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getMostLikelyCharacter(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;II)I
    .locals 1
    .param p1, "sequence"    # Lcom/touchtype_fluency/Sequence;
    .param p2, "history"    # Lcom/touchtype_fluency/TouchHistory;
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    .line 465
    const/4 v0, -0x1

    return v0
.end method

.method protected getResultsFilter(I)Lcom/touchtype_fluency/ResultsFilter;
    .locals 4
    .param p1, "count"    # I

    .prologue
    .line 75
    new-instance v0, Lcom/touchtype_fluency/ResultsFilter;

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCapitalization:Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;

    sget-object v2, Lcom/touchtype_fluency/ResultsFilter$VerbatimMode;->DISABLED:Lcom/touchtype_fluency/ResultsFilter$VerbatimMode;

    sget-object v3, Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;->JAPANESE:Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/touchtype_fluency/ResultsFilter;-><init>(ILcom/touchtype_fluency/ResultsFilter$CapitalizationHint;Lcom/touchtype_fluency/ResultsFilter$VerbatimMode;Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;)V

    return-object v0
.end method

.method public halfToFullWidth(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "inStr"    # Ljava/lang/String;

    .prologue
    .line 449
    invoke-static {p1}, Lcom/touchtype_fluency/CharacterWidth;->halfToFullWidth(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hiraganaToKatakana(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "inStr"    # Ljava/lang/String;

    .prologue
    .line 439
    invoke-static {p1}, Lcom/touchtype_fluency/Japanese;->hiraganaToKatakana(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isValidCharacter(C)Z
    .locals 1
    .param p1, "keyCode"    # C

    .prologue
    .line 354
    invoke-static {p1}, Lcom/diotek/ime/framework/util/Utils;->isHiraganaKey(C)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/diotek/ime/framework/util/Utils;->isRomajiKey(C)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public katakanaToHiragana(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "inStr"    # Ljava/lang/String;

    .prologue
    .line 444
    invoke-static {p1}, Lcom/touchtype_fluency/Japanese;->katakanaToHiragana(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public loadKeyPressModel(Ljava/io/File;Lcom/diotek/ime/framework/view/Keyboard;IIZZ)Z
    .locals 17
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "keyboard"    # Lcom/diotek/ime/framework/view/Keyboard;
    .param p3, "langID"    # I
    .param p4, "inputMode"    # I
    .param p5, "isPhonepadMode"    # Z
    .param p6, "isSecondaryPage"    # Z

    .prologue
    .line 102
    const-string v5, ""

    .line 103
    .local v5, "fileName":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 104
    const-string v14, "SamsungIME"

    const-string v15, "[loadKeyPressModel] keyboard is null!"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const/4 v14, 0x0

    .line 177
    :goto_0
    return v14

    .line 108
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictor:Lcom/touchtype_fluency/Predictor;

    invoke-interface {v14}, Lcom/touchtype_fluency/Predictor;->getCharacterMap()Lcom/touchtype_fluency/CharacterMap;

    move-result-object v3

    .line 109
    .local v3, "cm":Lcom/touchtype_fluency/CharacterMap;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCharacterMapHelper:Lcom/diotek/ime/framework/engine/swiftkey/CharacterMapHelper;

    invoke-virtual {v14, v3}, Lcom/diotek/ime/framework/engine/swiftkey/CharacterMapHelper;->loadJpnMultiCharacterMap(Lcom/touchtype_fluency/CharacterMap;)V

    .line 111
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 112
    .local v10, "layoutKeys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/HashMap;

    const/16 v14, 0x28

    invoke-direct {v4, v14}, Ljava/util/HashMap;-><init>(I)V

    .line 113
    .local v4, "coords":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/touchtype_fluency/KeyShape;[Ljava/lang/Character;>;"
    new-instance v9, Ljava/util/HashMap;

    const/16 v14, 0x10

    invoke-direct {v9, v14}, Ljava/util/HashMap;-><init>(I)V

    .line 114
    .local v9, "layout":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Lcom/diotek/ime/framework/view/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/diotek/ime/framework/view/Keyboard$Key;

    .line 117
    .local v8, "key":Lcom/diotek/ime/framework/view/Keyboard$Key;
    if-eqz p5, :cond_5

    .line 118
    iget-object v14, v8, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    if-eqz v14, :cond_3

    iget-object v14, v8, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    array-length v14, v14

    if-lez v14, :cond_3

    iget-object v14, v8, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v15, 0x0

    aget v14, v14, v15

    invoke-static {v14}, Ljava/lang/Character;->isLetter(I)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 120
    iget v14, v8, Lcom/diotek/ime/framework/view/Keyboard$Key;->x:I

    iget v15, v8, Lcom/diotek/ime/framework/view/Keyboard$Key;->width:I

    div-int/lit8 v15, v15, 0x2

    add-int v12, v14, v15

    .line 121
    .local v12, "x":I
    iget v14, v8, Lcom/diotek/ime/framework/view/Keyboard$Key;->y:I

    iget v15, v8, Lcom/diotek/ime/framework/view/Keyboard$Key;->height:I

    div-int/lit8 v15, v15, 0x2

    add-int v13, v14, v15

    .line 122
    .local v13, "y":I
    const/4 v2, 0x0

    .line 123
    .local v2, "alternatives":[Ljava/lang/Character;
    iget-object v14, v8, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    array-length v14, v14

    new-array v2, v14, [Ljava/lang/Character;

    .line 124
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    array-length v14, v2

    if-ge v6, v14, :cond_2

    .line 125
    iget-object v14, v8, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    aget v14, v14, v6

    int-to-char v14, v14

    invoke-static {v14}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v14

    aput-object v14, v2, v6

    .line 124
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 127
    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v2}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager;->addLayoutKey(Ljava/util/HashSet;[Ljava/lang/Character;)V

    .line 128
    new-instance v14, Lcom/touchtype_fluency/Point;

    int-to-float v15, v12

    int-to-float v0, v13

    move/from16 v16, v0

    invoke-direct/range {v14 .. v16}, Lcom/touchtype_fluency/Point;-><init>(FF)V

    invoke-static {v14}, Lcom/touchtype_fluency/KeyShape;->pointKey(Lcom/touchtype_fluency/Point;)Lcom/touchtype_fluency/KeyShape;

    move-result-object v14

    invoke-virtual {v4, v14, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .end local v2    # "alternatives":[Ljava/lang/Character;
    .end local v6    # "i":I
    .end local v12    # "x":I
    .end local v13    # "y":I
    :cond_3
    iget-object v14, v8, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    if-eqz v14, :cond_1

    iget-object v14, v8, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    array-length v14, v14

    const/4 v15, 0x1

    if-le v14, v15, :cond_1

    iget-object v14, v8, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v15, 0x0

    aget v14, v14, v15

    invoke-static {v14}, Ljava/lang/Character;->isLetter(I)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 132
    const/4 v2, 0x0

    .line 133
    .local v2, "alternatives":[Ljava/lang/String;
    iget-object v14, v8, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    array-length v14, v14

    add-int/lit8 v14, v14, -0x1

    new-array v11, v14, [Ljava/lang/String;

    .line 134
    .local v11, "upperalternatives":[Ljava/lang/String;
    iget-object v14, v8, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    array-length v14, v14

    add-int/lit8 v14, v14, -0x1

    new-array v2, v14, [Ljava/lang/String;

    .line 135
    const/4 v6, 0x1

    .restart local v6    # "i":I
    :goto_3
    iget-object v14, v8, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    array-length v14, v14

    if-ge v6, v14, :cond_4

    .line 136
    add-int/lit8 v14, v6, -0x1

    iget-object v15, v8, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    aget v15, v15, v6

    int-to-char v15, v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v2, v14

    .line 137
    add-int/lit8 v14, v6, -0x1

    iget-object v15, v8, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    aget v15, v15, v6

    int-to-char v15, v15

    invoke-static {v15}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v11, v14

    .line 135
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 140
    :cond_4
    iget-object v14, v8, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v15, 0x0

    aget v14, v14, v15

    int-to-char v14, v14

    invoke-static {v14}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    iget-object v14, v8, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v15, 0x0

    aget v14, v14, v15

    int-to-char v14, v14

    invoke-static {v14}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v14

    invoke-static {v14}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 145
    .end local v2    # "alternatives":[Ljava/lang/String;
    .end local v6    # "i":I
    .end local v11    # "upperalternatives":[Ljava/lang/String;
    :cond_5
    iget-object v14, v8, Lcom/diotek/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    if-eqz v14, :cond_1

    iget-object v14, v8, Lcom/diotek/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-interface {v14}, Ljava/lang/CharSequence;->length()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_1

    iget-object v14, v8, Lcom/diotek/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v14

    invoke-static {v14}, Ljava/lang/Character;->isLetter(C)Z

    move-result v14

    if-eqz v14, :cond_1

    const-string v14, "StrEmpty"

    iget-object v15, v8, Lcom/diotek/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 149
    iget v14, v8, Lcom/diotek/ime/framework/view/Keyboard$Key;->x:I

    iget v15, v8, Lcom/diotek/ime/framework/view/Keyboard$Key;->width:I

    div-int/lit8 v15, v15, 0x2

    add-int v12, v14, v15

    .line 150
    .restart local v12    # "x":I
    iget v14, v8, Lcom/diotek/ime/framework/view/Keyboard$Key;->y:I

    iget v15, v8, Lcom/diotek/ime/framework/view/Keyboard$Key;->height:I

    div-int/lit8 v15, v15, 0x2

    add-int v13, v14, v15

    .line 152
    .restart local v13    # "y":I
    const/4 v2, 0x0

    .line 153
    .local v2, "alternatives":[Ljava/lang/Character;
    const/4 v14, 0x1

    new-array v2, v14, [Ljava/lang/Character;

    .line 154
    const/4 v14, 0x0

    iget-object v15, v8, Lcom/diotek/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    const/16 v16, 0x0

    invoke-interface/range {v15 .. v16}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v15

    invoke-static {v15}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v15

    aput-object v15, v2, v14

    .line 155
    const/4 v14, 0x0

    aget-object v14, v2, v14

    invoke-virtual {v14}, Ljava/lang/Character;->charValue()C

    move-result v14

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v14}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager;->addLayoutKey(Ljava/util/HashSet;C)V

    .line 156
    new-instance v14, Lcom/touchtype_fluency/Point;

    int-to-float v15, v12

    int-to-float v0, v13

    move/from16 v16, v0

    invoke-direct/range {v14 .. v16}, Lcom/touchtype_fluency/Point;-><init>(FF)V

    invoke-static {v14}, Lcom/touchtype_fluency/KeyShape;->pointKey(Lcom/touchtype_fluency/Point;)Lcom/touchtype_fluency/KeyShape;

    move-result-object v14

    invoke-virtual {v4, v14, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 160
    .end local v2    # "alternatives":[Ljava/lang/Character;
    .end local v8    # "key":Lcom/diotek/ime/framework/view/Keyboard$Key;
    .end local v12    # "x":I
    .end local v13    # "y":I
    :cond_6
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->getKeyModelHashCodeEx(Ljava/util/HashMap;)I

    move-result v15

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1, v15}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->loadCurrentKeyPressModelFileName(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 162
    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v14

    if-eqz v14, :cond_7

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->shouldLoadKeyPressModel(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_8

    .line 163
    :cond_7
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 174
    :cond_8
    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->setCacheSequenceAndTouchHistory(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;)V

    .line 175
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->clearTouchHistoryRepository()V

    .line 176
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->cancelPreviewFlow()Z

    .line 177
    const/4 v14, 0x1

    goto/16 :goto_0
.end method

.method public loadKeyPressModel(Ljava/io/File;Lcom/diotek/ime/framework/view/Keyboard;IIZZLjava/util/List;)Z
    .locals 1
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "keyboard"    # Lcom/diotek/ime/framework/view/Keyboard;
    .param p3, "langID"    # I
    .param p4, "inputMode"    # I
    .param p5, "isPhonepadMode"    # Z
    .param p6, "isSecondaryPage"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lcom/diotek/ime/framework/view/Keyboard;",
            "IIZZ",
            "Ljava/util/List",
            "<",
            "Lcom/touchtype_fluency/util/LanguagePack;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 96
    .local p7, "packs":Ljava/util/List;, "Ljava/util/List<Lcom/touchtype_fluency/util/LanguagePack;>;"
    invoke-virtual/range {p0 .. p6}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager;->loadKeyPressModel(Ljava/io/File;Lcom/diotek/ime/framework/view/Keyboard;IIZZ)Z

    move-result v0

    return v0
.end method

.method public loadKeyPressModelForHWR(I)Z
    .locals 1
    .param p1, "scriptType"    # I

    .prologue
    .line 428
    const/4 v0, 0x0

    return v0
.end method

.method public loadKorCharacterMap(I)V
    .locals 0
    .param p1, "langID"    # I

    .prologue
    .line 469
    return-void
.end method

.method public loadLanguageModel(Ljava/util/List;Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/touchtype_fluency/util/LoadProgressListener;Z)V
    .locals 1
    .param p2, "languagePackManager"    # Lcom/touchtype_fluency/util/LanguagePackManager;
    .param p3, "listener"    # Lcom/touchtype_fluency/util/LoadProgressListener;
    .param p4, "isPhonePadMode"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/touchtype_fluency/util/LanguagePack;",
            ">;",
            "Lcom/touchtype_fluency/util/LanguagePackManager;",
            "Lcom/touchtype_fluency/util/LoadProgressListener;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p1, "languagePacks":Ljava/util/List;, "Ljava/util/List<Lcom/touchtype_fluency/util/LanguagePack;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->setDynamicModelsEnabled(Z)V

    .line 85
    invoke-super {p0, p1, p2, p3}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->loadLanguageModel(Ljava/util/List;Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/touchtype_fluency/util/LoadProgressListener;)V

    .line 86
    if-eqz p4, :cond_0

    .line 87
    sget-object v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager$JapaneseInputType;->HIRAGANA:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager$JapaneseInputType;

    sput-object v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager;->mJapaneseInputType:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager$JapaneseInputType;

    .line 91
    :goto_0
    return-void

    .line 89
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager$JapaneseInputType;->ROMAJI:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager$JapaneseInputType;

    sput-object v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager;->mJapaneseInputType:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager$JapaneseInputType;

    goto :goto_0
.end method

.method public romajiToHiragana(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "inStr"    # Ljava/lang/String;

    .prologue
    .line 433
    invoke-static {p1}, Lcom/touchtype_fluency/Japanese;->romajiToHiragana(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 434
    .local v0, "convert":Ljava/lang/String;
    return-object v0
.end method

.method public setTouchHistory(Lcom/touchtype_fluency/TouchHistory;Ljava/lang/String;)V
    .locals 0
    .param p1, "touchHistory"    # Lcom/touchtype_fluency/TouchHistory;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 234
    invoke-virtual {p0, p2}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->setTouchHistory(Ljava/lang/String;)V

    .line 235
    return-void
.end method
