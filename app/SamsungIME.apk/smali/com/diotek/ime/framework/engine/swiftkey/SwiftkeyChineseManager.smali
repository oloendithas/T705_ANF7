.class public Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;
.super Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;
.source "SwiftkeyChineseManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager$CHINESE_TYPE;
    }
.end annotation


# static fields
.field private static mInstance:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;


# instance fields
.field private final CANGJIE_SHAPES:[Ljava/lang/Character;

.field private isLoadKeypressModelError:Z

.field private mCPBackupSpell:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCPBackupTouchHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/touchtype_fluency/TouchHistory;",
            ">;"
        }
    .end annotation
.end field

.field private mCPPhrase:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCPSpell:Ljava/lang/StringBuilder;

.field private mChineseInputType:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager$CHINESE_TYPE;

.field private mChineseSearchType:Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;

.field private mSpellGroup:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput-object v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;->mInstance:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 25
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;-><init>()V

    .line 26
    iput-boolean v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;->isLoadKeypressModelError:Z

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;->mCPSpell:Ljava/lang/StringBuilder;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;->mCPPhrase:Ljava/util/ArrayList;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;->mCPBackupSpell:Ljava/util/ArrayList;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;->mCPBackupTouchHistory:Ljava/util/ArrayList;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;->mSpellGroup:Ljava/util/ArrayList;

    .line 34
    sget-object v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager$CHINESE_TYPE;->NONE:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager$CHINESE_TYPE;

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;->mChineseInputType:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager$CHINESE_TYPE;

    .line 35
    sget-object v0, Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;->NORMAL:Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;->mChineseSearchType:Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;

    .line 36
    const/16 v0, 0x19

    new-array v0, v0, [Ljava/lang/Character;

    const/16 v1, 0x65e5

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x6708

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const v2, 0x91d1

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x6728

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x6c34

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x706b

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x571f

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x7af9

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x6208

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x5341

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x5927

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x4e2d

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x4e00

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x5f13

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x4eba

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x5fc3

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0x624b

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0x53e3

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0x5c38

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0x5eff

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0x5c71

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, 0x5973

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0x7530

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const v2, 0x96e3

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const/16 v2, 0x535c

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;->CANGJIE_SHAPES:[Ljava/lang/Character;

    .line 42
    return-void
.end method

.method private clearChineseInfo()V
    .locals 2

    .prologue
    .line 542
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;->mCPSpell:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 543
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;->mCPPhrase:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 544
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;->mCPBackupSpell:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 545
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;->mCPBackupTouchHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 546
    return-void
.end method

.method private deleteLastCPSpell()V
    .locals 2

    .prologue
    .line 504
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;->mCPSpell:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 505
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;->mCPSpell:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;->mCPSpell:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 507
    :cond_0
    return-void
.end method

.method private getCangjieKey(CZ)C
    .locals 2
    .param p1, "keyLabelChar"    # C
    .param p2, "isQuickCanjie"    # Z

    .prologue
    .line 144
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;->CANGJIE_SHAPES:[Ljava/lang/Character;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 145
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;->CANGJIE_SHAPES:[Ljava/lang/Character;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    if-ne p1, v1, :cond_2

    .line 146
    if-eqz p2, :cond_1

    .line 147
    add-int/lit8 v1, v0, 0x61

    int-to-char p1, v1

    .line 153
    .end local p1    # "keyLabelChar":C
    :cond_0
    :goto_1
    return p1

    .line 149
    .restart local p1    # "keyLabelChar":C
    :cond_1
    add-int/lit8 v1, v0, 0x41

    int-to-char p1, v1

    goto :goto_1

    .line 144
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getChineseInputType(Lcom/touchtype_fluency/util/LanguagePack;Z)Ljava/lang/String;
    .locals 2
    .param p1, "languagePack"    # Lcom/touchtype_fluency/util/LanguagePack;
    .param p2, "isStroke"    # Z

    .prologue
    .line 589
    if-eqz p1, :cond_3

    .line 590
    sget-object v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager$CHINESE_TYPE;->NONE:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager$CHINESE_TYPE;

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;->mChineseInputType:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager$CHINESE_TYPE;

    .line 591
    if-eqz p2, :cond_0

    .line 592
    sget-object v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager$CHINESE_TYPE;->STROKE:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager$CHINESE_TYPE;

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;->mChineseInputType:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager$CHINESE_TYPE;

    .line 593
    const-string v0, "stroke"

    .line 605
    :goto_0
    return-object v0

    .line 594
    :cond_0
    const-string v0, "CN"

    invoke-interface {p1}, Lcom/touchtype_fluency/util/LanguagePack;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 595
    sget-object v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager$CHINESE_TYPE;->PINYIN:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager$CHINESE_TYPE;

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;->mChineseInputType:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager$CHINESE_TYPE;

    .line 596
    const-string v0, "pinyin"

    goto :goto_0

    .line 597
    :cond_1
    const-string v0, "HK"

    invoke-interface {p1}, Lcom/touchtype_fluency/util/LanguagePack;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 598
    sget-object v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager$CHINESE_TYPE;->CANGJIE:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager$CHINESE_TYPE;

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;->mChineseInputType:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager$CHINESE_TYPE;

    .line 599
    const-string v0, "cangjie"

    goto :goto_0

    .line 600
    :cond_2
    const-string v0, "TW"

    invoke-interface {p1}, Lcom/touchtype_fluency/util/LanguagePack;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 601
    sget-object v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager$CHINESE_TYPE;->ZHUYIN:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager$CHINESE_TYPE;

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;->mChineseInputType:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager$CHINESE_TYPE;

    .line 602
    const-string v0, "zhuyin"

    goto :goto_0

    .line 605
    :cond_3
    const-string v0, ""

    goto :goto_0
.end method

.method private getChineseSpellChar(C)C
    .locals 3
    .param p1, "keyCode"    # C

    .prologue
    .line 272
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;->mChineseInputType:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager$CHINESE_TYPE;

    sget-object v2, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager$CHINESE_TYPE;->STROKE:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager$CHINESE_TYPE;

    if-ne v1, v2, :cond_0

    .line 273
    sparse-switch p1, :sswitch_data_0

    move v1, p1

    .line 304
    :goto_0
    return v1

    .line 276
    :sswitch_0
    const/16 v1, 0x4e00

    goto :goto_0

    .line 279
    :sswitch_1
    const/16 v1, 0x4e28

    goto :goto_0

    .line 282
    :sswitch_2
    const/16 v1, 0x4e3f

    goto :goto_0

    .line 285
    :sswitch_3
    const/16 v1, 0x4e36

    goto :goto_0

    .line 288
    :sswitch_4
    const/16 v1, 0x4e5b

    goto :goto_0

    .line 290
    :sswitch_5
    const/16 v1, 0x3f

    goto :goto_0

    .line 295
    :cond_0
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;->mChineseInputType:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager$CHINESE_TYPE;

    sget-object v2, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager$CHINESE_TYPE;->CANGJIE:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager$CHINESE_TYPE;

    if-ne v1, v2, :cond_1

    .line 296
    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(I)I

    move-result v1

    add-int/lit8 v0, v1, -0x41

    .line 298
    .local v0, "indexOfCangjieShape":I
    :try_start_0
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;->CANGJIE_SHAPES:[Ljava/lang/Character;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    :goto_1
    move v1, p1

    .line 302
    goto :goto_0

    .end local v0    # "indexOfCangjieShape":I
    :cond_1
    move v1, p1

    .line 304
    goto :goto_0

    .line 299
    .restart local v0    # "indexOfCangjieShape":I
    :catch_0
    move-exception v1

    goto :goto_1

    .line 273
    nop

    :sswitch_data_0
    .sparse-switch
        0x2a -> :sswitch_5
        0x31 -> :sswitch_0
        0x32 -> :sswitch_1
        0x33 -> :sswitch_2
        0x34 -> :sswitch_3
        0x35 -> :sswitch_4
        0x31d0 -> :sswitch_0
        0x31d1 -> :sswitch_1
        0x31d3 -> :sswitch_2
        0x31d4 -> :sswitch_3
        0x31d6 -> :sswitch_4
    .end sparse-switch
.end method

.method public static getInstance()Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;->mInstance:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;

    invoke-direct {v0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;->mInstance:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;

    .line 54
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;->mInstance:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;

    return-object v0
.end method

.method private getTermBreaks(Lcom/touchtype_fluency/Prediction;)[Ljava/lang/Integer;
    .locals 16
    .param p1, "p"    # Lcom/touchtype_fluency/Prediction;

    .prologue
    .line 401
    if-nez p1, :cond_1

    .line 402
    const/4 v15, 0x0

    new-array v14, v15, [Ljava/lang/Integer;

    .line 466
    :cond_0
    :goto_0
    return-object v14

    .line 406
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/touchtype_fluency/Prediction;->getTags()Ljava/util/Set;

    move-result-object v11

    .line 407
    .local v11, "predictionTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 408
    .local v2, "encodingString":Ljava/lang/String;
    const/4 v8, 0x0

    .line 409
    .local v8, "inputString":Ljava/lang/String;
    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 410
    .local v12, "tag":Ljava/lang/String;
    const-string v15, "encoding:"

    invoke-virtual {v12, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 411
    const-string v15, ":"

    invoke-virtual {v12, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    add-int/lit8 v15, v15, 0x1

    invoke-virtual {v12, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 412
    :cond_3
    const-string v15, "input:"

    invoke-virtual {v12, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 413
    const-string v15, ":"

    invoke-virtual {v12, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    add-int/lit8 v15, v15, 0x1

    invoke-virtual {v12, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 416
    .end local v12    # "tag":Ljava/lang/String;
    :cond_4
    if-eqz v2, :cond_5

    if-nez v8, :cond_6

    .line 417
    :cond_5
    const/4 v15, 0x0

    new-array v14, v15, [Ljava/lang/Integer;

    goto :goto_0

    .line 421
    :cond_6
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 422
    .local v13, "termBreaks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .line 423
    .local v1, "encodingIndex":I
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    .line 424
    .local v9, "inputStringLen":I
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    .line 425
    .local v3, "encodingStringLen":I
    const/4 v4, 0x0

    .local v4, "i":I
    move v5, v4

    .end local v4    # "i":I
    .local v5, "i":I
    :goto_2
    if-ge v5, v9, :cond_a

    if-ge v1, v3, :cond_a

    .line 426
    invoke-virtual {v8, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 427
    .local v7, "inputChar":C
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 428
    .local v0, "encodingChar":C
    const/16 v15, 0x27

    if-ne v7, v15, :cond_7

    const/16 v15, 0x27

    if-ne v0, v15, :cond_7

    .line 431
    add-int/lit8 v15, v5, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v4, v5

    .line 425
    .end local v5    # "i":I
    .restart local v4    # "i":I
    :goto_3
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v1, v1, 0x1

    move v5, v4

    .end local v4    # "i":I
    .restart local v5    # "i":I
    goto :goto_2

    .line 432
    :cond_7
    const/16 v15, 0x27

    if-ne v0, v15, :cond_8

    .line 434
    add-int/lit8 v4, v5, -0x1

    .end local v5    # "i":I
    .restart local v4    # "i":I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 435
    .end local v4    # "i":I
    .restart local v5    # "i":I
    :cond_8
    if-eq v7, v0, :cond_c

    .line 438
    :cond_9
    const/16 v15, 0x27

    if-eq v0, v15, :cond_c

    add-int/lit8 v1, v1, 0x1

    if-ge v1, v3, :cond_c

    .line 440
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 442
    const/16 v15, 0x27

    if-ne v0, v15, :cond_9

    .line 443
    add-int/lit8 v4, v5, -0x1

    .line 444
    .end local v5    # "i":I
    .restart local v4    # "i":I
    add-int/lit8 v1, v1, -0x1

    .line 445
    goto :goto_3

    .line 455
    .end local v0    # "encodingChar":C
    .end local v4    # "i":I
    .end local v7    # "inputChar":C
    .restart local v5    # "i":I
    :cond_a
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_b

    .line 456
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 461
    :cond_b
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 462
    .local v10, "nBreaks":I
    new-array v14, v10, [Ljava/lang/Integer;

    .line 463
    .local v14, "termBreaksArray":[Ljava/lang/Integer;
    const/4 v4, 0x0

    .end local v5    # "i":I
    .restart local v4    # "i":I
    :goto_4
    if-ge v4, v10, :cond_0

    .line 464
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    aput-object v15, v14, v4

    .line 463
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .end local v4    # "i":I
    .end local v10    # "nBreaks":I
    .end local v14    # "termBreaksArray":[Ljava/lang/Integer;
    .restart local v0    # "encodingChar":C
    .restart local v5    # "i":I
    .restart local v7    # "inputChar":C
    :cond_c
    move v4, v5

    .end local v5    # "i":I
    .restart local v4    # "i":I
    goto :goto_3
.end method

.method private setChineseSearchType(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "langID"    # Ljava/lang/String;
    .param p2, "isStroke"    # Z

    .prologue
    .line 609
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictor:Lcom/touchtype_fluency/Predictor;

    if-eqz v0, :cond_0

    .line 610
    if-eqz p2, :cond_1

    .line 611
    sget-object v0, Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;->STROKE:Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;->mChineseSearchType:Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;

    .line 620
    :cond_0
    :goto_0
    return-void

    .line 612
    :cond_1
    const-string v0, "zh_CN"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 613
    sget-object v0, Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;->PINYIN:Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;->mChineseSearchType:Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;

    goto :goto_0

    .line 614
    :cond_2
    const-string v0, "zh_HK"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 615
    sget-object v0, Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;->CANGJIE:Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;->mChineseSearchType:Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;

    goto :goto_0

    .line 616
    :cond_3
    const-string v0, "zh_TW"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 617
    sget-object v0, Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;->ZHUYIN:Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;->mChineseSearchType:Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;

    goto :goto_0
.end method


# virtual methods
.method public addCPPhrase(ILjava/lang/String;)Z
    .locals 6
    .param p1, "index"    # I
    .param p2, "phrase"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 331
    iget-object v4, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictions:Lcom/touchtype_fluency/Predictions;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictions:Lcom/touchtype_fluency/Predictions;

    invoke-virtual {v4}, Lcom/touchtype_fluency/Predictions;->size()I

    move-result v4

    if-lez v4, :cond_1

    if-ltz p1, :cond_1

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictions:Lcom/touchtype_fluency/Predictions;

    invoke-virtual {v4}, Lcom/touchtype_fluency/Predictions;->size()I

    move-result v4

    if-ge p1, v4, :cond_1

    .line 333
    iget-object v4, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictions:Lcom/touchtype_fluency/Predictions;

    invoke-virtual {v4, p1}, Lcom/touchtype_fluency/Predictions;->get(I)Lcom/touchtype_fluency/Prediction;

    move-result-object v1

    .line 334
    .local v1, "prediction":Lcom/touchtype_fluency/Prediction;
    invoke-virtual {v1}, Lcom/touchtype_fluency/Prediction;->getTermBreaks()[Ljava/lang/Integer;

    move-result-object v2

    .line 335
    .local v2, "termBreak":[Ljava/lang/Integer;
    if-eqz v2, :cond_1

    array-length v4, v2

    if-lez v4, :cond_1

    array-length v4, v2

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;->mCPSpell:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-gt v4, v5, :cond_1

    .line 337
    iget-object v4, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;->mCPPhrase:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    aget-object v4, v2, v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;->mCPSpell:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 339
    .local v0, "length":I
    iget-object v4, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;->mCPSpell:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-le v4, v0, :cond_0

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;->mCPSpell:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    const/16 v5, 0x27

    if-ne v4, v5, :cond_0

    .line 341
    add-int/lit8 v0, v0, 0x1

    .line 343
    :cond_0
    iget-object v4, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;->mCPBackupSpell:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;->mCPSpell:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    iget-object v4, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;->mCPBackupTouchHistory:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    invoke-virtual {v5, v0}, Lcom/touchtype_fluency/TouchHistory;->takeFirst(I)Lcom/touchtype_fluency/TouchHistory;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    iget-object v4, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;->mCPSpell:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 346
    iget-object v4, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    invoke-virtual {v4, v0}, Lcom/touchtype_fluency/TouchHistory;->dropFirst(I)Lcom/touchtype_fluency/TouchHistory;

    move-result-object v4

    iput-object v4, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    .line 347
    iget-object v4, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    invoke-virtual {v4}, Lcom/touchtype_fluency/TouchHistory;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 352
    .end local v0    # "length":I
    .end local v1    # "prediction":Lcom/touchtype_fluency/Prediction;
    .end local v2    # "termBreak":[Ljava/lang/Integer;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public addCPSpell(I)V
    .locals 2
    .param p1, "keyCode"    # I

    .prologue
    .line 232
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;->mCPSpell:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;->mCPSpell:Ljava/lang/StringBuilder;

    int-to-char v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 234
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;->mCPSpell:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 235
    new-instance v0, Lcom/touchtype_fluency/TouchHistory;

    invoke-direct {v0}, Lcom/touchtype_fluency/TouchHistory;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    .line 236
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mInputBuffer:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 239
    :cond_0
    return-void
.end method

.method public addTouchHistory(Ljava/lang/Character;)V
    .locals 0
    .param p1, "character"    # Ljava/lang/Character;

    .prologue
    .line 754
    return-void
.end method

.method public addTouchPoint(ILandroid/graphics/PointF;)V
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "point"    # Landroid/graphics/PointF;

    .prologue
    const/high16 v4, 0x3f800000

    .line 471
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    invoke-virtual {v1}, Lcom/touchtype_fluency/TouchHistory;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;->mCPSpell:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 472
    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;->clearContext()V

    .line 478
    :cond_0
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;->mChineseInputType:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager$CHINESE_TYPE;

    sget-object v2, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager$CHINESE_TYPE;->STROKE:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager$CHINESE_TYPE;

    if-ne v1, v2, :cond_1

    const/16 v1, 0x2a

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;->mCPSpell:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 480
    const/4 v1, 0x5

    new-array v0, v1, [Lcom/touchtype_fluency/KeyPress;

    .line 481
    .local v0, "kpOptions":[Lcom/touchtype_fluency/KeyPress;
    const/4 v1, 0x0

    new-instance v2, Lcom/touchtype_fluency/KeyPress;

    const-string v3, "1"

    invoke-direct {v2, v3, v4}, Lcom/touchtype_fluency/KeyPress;-><init>(Ljava/lang/String;F)V

    aput-object v2, v0, v1

    .line 482
    const/4 v1, 0x1

    new-instance v2, Lcom/touchtype_fluency/KeyPress;

    const-string v3, "2"

    invoke-direct {v2, v3, v4}, Lcom/touchtype_fluency/KeyPress;-><init>(Ljava/lang/String;F)V

    aput-object v2, v0, v1

    .line 483
    const/4 v1, 0x2

    new-instance v2, Lcom/touchtype_fluency/KeyPress;

    const-string v3, "3"

    invoke-direct {v2, v3, v4}, Lcom/touchtype_fluency/KeyPress;-><init>(Ljava/lang/String;F)V

    aput-object v2, v0, v1

    .line 484
    const/4 v1, 0x3

    new-instance v2, Lcom/touchtype_fluency/KeyPress;

    const-string v3, "4"

    invoke-direct {v2, v3, v4}, Lcom/touchtype_fluency/KeyPress;-><init>(Ljava/lang/String;F)V

    aput-object v2, v0, v1

    .line 485
    const/4 v1, 0x4

    new-instance v2, Lcom/touchtype_fluency/KeyPress;

    const-string v3, "5"

    invoke-direct {v2, v3, v4}, Lcom/touchtype_fluency/KeyPress;-><init>(Ljava/lang/String;F)V

    aput-object v2, v0, v1

    .line 486
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    invoke-virtual {v1, v0}, Lcom/touchtype_fluency/TouchHistory;->addKeyPressOptions([Lcom/touchtype_fluency/KeyPress;)V

    .line 487
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mInputBuffer:Ljava/lang/StringBuilder;

    int-to-char v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 491
    .end local v0    # "kpOptions":[Lcom/touchtype_fluency/KeyPress;
    :goto_0
    return-void

    .line 489
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->addTouchPoint(ILandroid/graphics/PointF;)V

    goto :goto_0
.end method

.method public buildPredictionListener(Lcom/touchtype_fluency/Sequence;)V
    .locals 3
    .param p1, "sequence"    # Lcom/touchtype_fluency/Sequence;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeyUtilSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    iget v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCandidateWordNumber:I

    invoke-virtual {p0, v2}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;->getResultsFilter(I)Lcom/touchtype_fluency/ResultsFilter;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/touchtype_fluency/util/SwiftKeySession;->getPredictions(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;Lcom/touchtype_fluency/ResultsFilter;)Ljava/util/concurrent/Future;

    .line 185
    return-void
.end method

.method public buildPredictions(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/Sequence;I)Lcom/touchtype_fluency/Predictions;
    .locals 1
    .param p1, "preSequence"    # Lcom/touchtype_fluency/Sequence;
    .param p2, "postSequence"    # Lcom/touchtype_fluency/Sequence;
    .param p3, "count"    # I

    .prologue
    .line 189
    const/4 v0, 0x1

    if-ge p3, v0, :cond_0

    .line 190
    iget p3, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCandidateWordNumber:I

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    invoke-virtual {p0, p1, v0, p3}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->buildPredictionsInternal(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;I)Lcom/touchtype_fluency/Predictions;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictions:Lcom/touchtype_fluency/Predictions;

    .line 193
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictions:Lcom/touchtype_fluency/Predictions;

    return-object v0
.end method

.method protected buildPredictions(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;I)Lcom/touchtype_fluency/Predictions;
    .locals 1
    .param p1, "sequence"    # Lcom/touchtype_fluency/Sequence;
    .param p2, "touchHistory"    # Lcom/touchtype_fluency/TouchHistory;
    .param p3, "count"    # I

    .prologue
    .line 198
    iget v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCandidateWordNumber:I

    invoke-virtual {p0, p1, p2, v0}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->buildPredictionsInternal(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;I)Lcom/touchtype_fluency/Predictions;

    move-result-object v0

    return-object v0
.end method

.method public changeChineseInputType(Ljava/util/List;ZLjava/lang/String;Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/touchtype_fluency/util/CompletionListener;)Z
    .locals 10
    .param p2, "isStroke"    # Z
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

    .line 565
    const/4 v4, 0x0

    .line 566
    .local v4, "needToLoad":Z
    const/4 v2, 0x0

    .line 567
    .local v2, "languagePack":Lcom/touchtype_fluency/util/LanguagePack;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/touchtype_fluency/util/LanguagePack;

    .line 568
    .local v3, "lp":Lcom/touchtype_fluency/util/LanguagePack;
    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->getID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 569
    invoke-direct {p0, v3, p2}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;->getChineseInputType(Lcom/touchtype_fluency/util/LanguagePack;Z)Ljava/lang/String;

    move-result-object v0

    .line 570
    .local v0, "chineseInputType":Ljava/lang/String;
    if-nez p2, :cond_1

    const-string v8, "stroke"

    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->getCurrentInputType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    :cond_1
    if-eqz p2, :cond_2

    const-string v8, "stroke"

    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->getCurrentInputType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 572
    :cond_2
    invoke-virtual {p0, p4, v3, v0}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->setCurrentInputType(Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/touchtype_fluency/util/LanguagePack;Ljava/lang/String;)V

    .line 573
    move-object v2, v3

    .line 574
    const/4 v4, 0x1

    .line 579
    .end local v0    # "chineseInputType":Ljava/lang/String;
    .end local v3    # "lp":Lcom/touchtype_fluency/util/LanguagePack;
    :cond_3
    if-eqz v4, :cond_4

    .line 580
    new-array v8, v6, [Lcom/touchtype_fluency/util/LanguagePack;

    aput-object v2, v8, v7

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 581
    .local v5, "toReplace":Ljava/util/List;, "Ljava/util/List<Lcom/touchtype_fluency/util/LanguagePack;>;"
    invoke-virtual {p0, v5, v5, p4, p5}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->replaceLanguageModel(Ljava/util/List;Ljava/util/List;Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/touchtype_fluency/util/CompletionListener;)V

    .line 585
    .end local v5    # "toReplace":Ljava/util/List;, "Ljava/util/List<Lcom/touchtype_fluency/util/LanguagePack;>;"
    :goto_0
    return v6

    .line 584
    :cond_4
    invoke-direct {p0, p3, p2}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;->setChineseSearchType(Ljava/lang/String;Z)V

    move v6, v7

    .line 585
    goto :goto_0
.end method

.method public clearContext()V
    .locals 0

    .prologue
    .line 211
    invoke-super {p0}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->clearContext()V

    .line 212
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;->clearChineseInfo()V

    .line 213
    return-void
.end method

.method public clearContextExceptTouchHistory()V
    .locals 0

    .prologue
    .line 217
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;->clearChineseInfo()V

    .line 218
    invoke-super {p0}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->clearContextExceptTouchHistory()V

    .line 219
    return-void
.end method

.method public clearTouchHistoryRepository()V
    .locals 0

    .prologue
    .line 692
    return-void
.end method

.method public createSession()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/touchtype_fluency/LicenseException;
        }
    .end annotation

    .prologue
    .line 59
    const/16 v0, 0x5a

    iput v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCandidateWordNumber:I

    .line 60
    invoke-super {p0}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->createSession()Z

    move-result v0

    return v0
.end method

.method public deleteKey()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 511
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;->mCPPhrase:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 512
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;->mCPPhrase:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;->mCPPhrase:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 513
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;->mCPBackupSpell:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;->mCPBackupSpell:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 514
    .local v0, "backupSpell":Ljava/lang/String;
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;->mCPSpell:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;->mCPBackupSpell:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;->mCPBackupSpell:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 516
    new-instance v1, Lcom/touchtype_fluency/TouchHistory;

    invoke-direct {v1}, Lcom/touchtype_fluency/TouchHistory;-><init>()V

    .line 517
    .local v1, "tempTH":Lcom/touchtype_fluency/TouchHistory;
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;->mCPBackupTouchHistory:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;->mCPBackupTouchHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/touchtype_fluency/TouchHistory;

    invoke-virtual {v1, v2}, Lcom/touchtype_fluency/TouchHistory;->appendHistory(Lcom/touchtype_fluency/TouchHistory;)V

    .line 518
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    invoke-virtual {v1, v2}, Lcom/touchtype_fluency/TouchHistory;->appendHistory(Lcom/touchtype_fluency/TouchHistory;)V

    .line 519
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;->mCPBackupTouchHistory:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;->mCPBackupTouchHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 520
    iput-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    move v2, v3

    .line 530
    .end local v0    # "backupSpell":Ljava/lang/String;
    .end local v1    # "tempTH":Lcom/touchtype_fluency/TouchHistory;
    :goto_0
    return v2

    .line 523
    :cond_0
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    invoke-virtual {v2}, Lcom/touchtype_fluency/TouchHistory;->size()I

    move-result v2

    if-le v2, v3, :cond_1

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;->mCPSpell:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 524
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    invoke-virtual {v2, v3}, Lcom/touchtype_fluency/TouchHistory;->dropLast(I)Lcom/touchtype_fluency/TouchHistory;

    move-result-object v2

    iput-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    .line 525
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;->mCPSpell:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;->mCPSpell:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move v2, v3

    .line 526
    goto :goto_0

    .line 528
    :cond_1
    new-instance v2, Lcom/touchtype_fluency/TouchHistory;

    invoke-direct {v2}, Lcom/touchtype_fluency/TouchHistory;-><init>()V

    iput-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    .line 529
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;->clearChineseInfo()V

    move v2, v4

    .line 530
    goto :goto_0
.end method

.method public deleteLastInputKey()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 495
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    invoke-virtual {v1}, Lcom/touchtype_fluency/TouchHistory;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 496
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    invoke-virtual {v1, v0}, Lcom/touchtype_fluency/TouchHistory;->dropLast(I)Lcom/touchtype_fluency/TouchHistory;

    move-result-object v1

    iput-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    .line 497
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;->deleteLastCPSpell()V

    .line 500
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public disableContactSpecificContext()V
    .locals 0

    .prologue
    .line 739
    return-void
.end method

.method public enableAllModel()V
    .locals 0

    .prologue
    .line 658
    return-void
.end method

.method public enableContactSpecificContext()V
    .locals 0

    .prologue
    .line 734
    return-void
.end method

.method public enableLanguageModel(Ljava/lang/String;)Z
    .locals 4
    .param p1, "languageCode"    # Ljava/lang/String;

    .prologue
    .line 223
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 224
    .local v0, "currentLanguageID":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 225
    .local v1, "selectTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeySession:Lcom/touchtype_fluency/Session;

    invoke-static {v1}, Lcom/touchtype_fluency/TagSelectors;->taggedWith(Ljava/util/Collection;)Lcom/touchtype_fluency/TagSelector;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/touchtype_fluency/Session;->enableModels(Lcom/touchtype_fluency/TagSelector;)V

    .line 227
    const/4 v2, 0x1

    return v2
.end method

.method public getContactSpecificID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 728
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContextCorrentWord(Ljava/lang/String;I)Lcom/touchtype_fluency/ContextCurrentWord;
    .locals 1
    .param p1, "contextText"    # Ljava/lang/String;
    .param p2, "langID"    # I

    .prologue
    .line 179
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;->getContextCorrentWord(Ljava/lang/String;Ljava/lang/String;)Lcom/touchtype_fluency/ContextCurrentWord;

    move-result-object v0

    return-object v0
.end method

.method public getContextCorrentWord(Ljava/lang/String;Ljava/lang/String;)Lcom/touchtype_fluency/ContextCurrentWord;
    .locals 6
    .param p1, "contextText"    # Ljava/lang/String;
    .param p2, "currentText"    # Ljava/lang/String;

    .prologue
    .line 158
    iget-object v4, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTokenizer:Lcom/touchtype_fluency/Tokenizer;

    if-eqz v4, :cond_2

    .line 159
    new-instance v0, Lcom/touchtype_fluency/Sequence;

    invoke-direct {v0}, Lcom/touchtype_fluency/Sequence;-><init>()V

    .line 160
    .local v0, "Sequence":Lcom/touchtype_fluency/Sequence;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 161
    iget-object v4, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTokenizer:Lcom/touchtype_fluency/Tokenizer;

    invoke-interface {v4, p1}, Lcom/touchtype_fluency/Tokenizer;->split(Ljava/lang/String;)Lcom/touchtype_fluency/Sequence;

    move-result-object v3

    .line 162
    .local v3, "tempSequence":Lcom/touchtype_fluency/Sequence;
    const/4 v4, 0x0

    invoke-virtual {v3}, Lcom/touchtype_fluency/Sequence;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {v3}, Lcom/touchtype_fluency/Sequence;->size()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/util/AbstractList;->subList(II)Ljava/util/List;

    move-result-object v2

    .line 163
    .local v2, "subList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 167
    .end local v2    # "subList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "tempSequence":Lcom/touchtype_fluency/Sequence;
    :cond_0
    new-instance v1, Lcom/touchtype_fluency/ContextCurrentWord;

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;->mCPSpell:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v0, v4}, Lcom/touchtype_fluency/ContextCurrentWord;-><init>(Lcom/touchtype_fluency/Sequence;Ljava/lang/String;)V

    .line 169
    .local v1, "ccw":Lcom/touchtype_fluency/ContextCurrentWord;
    iget-object v4, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;->mCPSpell:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 170
    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;->clearContext()V

    .line 174
    .end local v0    # "Sequence":Lcom/touchtype_fluency/Sequence;
    .end local v1    # "ccw":Lcom/touchtype_fluency/ContextCurrentWord;
    :cond_1
    :goto_0
    return-object v1

    :cond_2
    new-instance v1, Lcom/touchtype_fluency/ContextCurrentWord;

    new-instance v4, Lcom/touchtype_fluency/Sequence;

    invoke-direct {v4}, Lcom/touchtype_fluency/Sequence;-><init>()V

    const-string v5, ""

    invoke-direct {v1, v4, v5}, Lcom/touchtype_fluency/ContextCurrentWord;-><init>(Lcom/touchtype_fluency/Sequence;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getFullCPSpell()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 310
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 311
    .local v5, "sb":Ljava/lang/StringBuilder;
    iget-object v7, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;->mCPPhrase:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 312
    .local v6, "str":Ljava/lang/String;
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 314
    .end local v6    # "str":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;->mCPSpell:Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 315
    .local v1, "cpSpell":Ljava/lang/StringBuilder;
    iget-object v7, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictions:Lcom/touchtype_fluency/Predictions;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictions:Lcom/touchtype_fluency/Predictions;

    invoke-virtual {v7}, Lcom/touchtype_fluency/Predictions;->size()I

    move-result v7

    if-lez v7, :cond_3

    .line 316
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_1

    .line 317
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v7

    invoke-virtual {v1, v8, v7}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 319
    :cond_1
    iget-object v7, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictions:Lcom/touchtype_fluency/Predictions;

    invoke-virtual {v7, v8}, Lcom/touchtype_fluency/Predictions;->get(I)Lcom/touchtype_fluency/Prediction;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;->getTermBreaks(Lcom/touchtype_fluency/Prediction;)[Ljava/lang/Integer;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/Integer;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v4, v0, v2

    .line 320
    .local v4, "n":Ljava/lang/Integer;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-ge v7, v8, :cond_2

    .line 321
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v8

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 319
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 325
    .end local v0    # "arr$":[Ljava/lang/Integer;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "n":Ljava/lang/Integer;
    :cond_3
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 326
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method public getMostLikelyCharacter(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;II)I
    .locals 1
    .param p1, "sequence"    # Lcom/touchtype_fluency/Sequence;
    .param p2, "history"    # Lcom/touchtype_fluency/TouchHistory;
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    .line 651
    const/4 v0, -0x1

    return v0
.end method

.method public getPhoneticSpellGroup(Ljava/util/ArrayList;I)V
    .locals 7
    .param p2, "langID"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, "outSpellGroup":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 357
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 358
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;->mSpellGroup:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 359
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;->mChineseInputType:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager$CHINESE_TYPE;

    sget-object v4, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager$CHINESE_TYPE;->STROKE:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager$CHINESE_TYPE;

    if-ne v3, v4, :cond_1

    .line 382
    :cond_0
    :goto_0
    return-void

    .line 362
    :cond_1
    const/4 v1, 0x0

    .line 363
    .local v1, "prefixList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;->mCPSpell:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 366
    const v3, 0x7a685457

    if-ne p2, v3, :cond_4

    .line 367
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeyUtilSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictions:Lcom/touchtype_fluency/Predictions;

    invoke-virtual {v3, v4, v5}, Lcom/touchtype_fluency/util/SwiftKeySession;->getFiltered12KeyZhuyinsPredictions(Lcom/touchtype_fluency/Predictions;I)Ljava/util/List;

    move-result-object v1

    .line 371
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 372
    .local v2, "str":Ljava/lang/String;
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    invoke-virtual {v3}, Lcom/touchtype_fluency/TouchHistory;->size()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v3, v4, :cond_2

    .line 373
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v6, :cond_5

    .line 374
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 378
    :cond_3
    :goto_3
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;->mSpellGroup:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 369
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "str":Ljava/lang/String;
    :cond_4
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeyUtilSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictions:Lcom/touchtype_fluency/Predictions;

    invoke-virtual {v3, v4, v5}, Lcom/touchtype_fluency/util/SwiftKeySession;->getFiltered12KeyPinyinPredictions(Lcom/touchtype_fluency/Predictions;I)Ljava/util/List;

    move-result-object v1

    goto :goto_1

    .line 375
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "str":Ljava/lang/String;
    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 376
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 381
    .end local v2    # "str":Ljava/lang/String;
    :cond_6
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;->mSpellGroup:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method protected getResultsFilter(I)Lcom/touchtype_fluency/ResultsFilter;
    .locals 5
    .param p1, "count"    # I

    .prologue
    .line 203
    new-instance v0, Lcom/touchtype_fluency/ResultsFilter;

    iget v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCandidateWordNumber:I

    sget-object v2, Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;->LOWER_CASE:Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;

    sget-object v3, Lcom/touchtype_fluency/ResultsFilter$VerbatimMode;->DISABLED:Lcom/touchtype_fluency/ResultsFilter$VerbatimMode;

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;->mChineseSearchType:Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/touchtype_fluency/ResultsFilter;-><init>(ILcom/touchtype_fluency/ResultsFilter$CapitalizationHint;Lcom/touchtype_fluency/ResultsFilter$VerbatimMode;Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;)V

    return-object v0
.end method

.method public isContactSpecificContext()Z
    .locals 1

    .prologue
    .line 743
    const/4 v0, 0x0

    return v0
.end method

.method public isValidWord(Ljava/lang/String;)Z
    .locals 3
    .param p1, "word"    # Ljava/lang/String;

    .prologue
    .line 556
    const/4 v0, 0x0

    .line 557
    .local v0, "valid":Z
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictor:Lcom/touchtype_fluency/Predictor;

    if-eqz v1, :cond_0

    .line 558
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictor:Lcom/touchtype_fluency/Predictor;

    invoke-static {}, Lcom/touchtype_fluency/TagSelectors;->staticModels()Lcom/touchtype_fluency/TagSelector;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/touchtype_fluency/Predictor;->queryTerm(Ljava/lang/String;Lcom/touchtype_fluency/TagSelector;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 560
    :cond_0
    return v0
.end method

.method public learnDynamicModel(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 718
    return-void
.end method

.method public learnKeyPressModel(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 703
    return-void
.end method

.method public learnTempDynamicModel(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 663
    return-void
.end method

.method public loadKeyPressModel(Ljava/io/File;Lcom/diotek/ime/framework/view/Keyboard;IIZZ)Z
    .locals 21
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "keyboard"    # Lcom/diotek/ime/framework/view/Keyboard;
    .param p3, "langID"    # I
    .param p4, "inputMode"    # I
    .param p5, "isPhonepadMode"    # Z
    .param p6, "isQuickCanjie"    # Z

    .prologue
    .line 78
    const-string v3, ""

    .line 79
    .local v3, "fileName":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 80
    const-string v2, "SamsungIME"

    const-string v6, "[loadKeyPressModel] keyboard is null!"

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const/4 v2, 0x0

    .line 140
    :goto_0
    return v2

    .line 84
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictor:Lcom/touchtype_fluency/Predictor;

    invoke-interface {v2}, Lcom/touchtype_fluency/Predictor;->getCharacterMap()Lcom/touchtype_fluency/CharacterMap;

    move-result-object v13

    .line 85
    .local v13, "cm":Lcom/touchtype_fluency/CharacterMap;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCharacterMapHelper:Lcom/diotek/ime/framework/engine/swiftkey/CharacterMapHelper;

    invoke-virtual {v2, v13}, Lcom/diotek/ime/framework/engine/swiftkey/CharacterMapHelper;->unLoadJpnMultiCharacterMap(Lcom/touchtype_fluency/CharacterMap;)V

    .line 87
    new-instance v4, Ljava/util/HashMap;

    const/16 v2, 0x28

    invoke-direct {v4, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 88
    .local v4, "coords":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/touchtype_fluency/KeyShape;[Ljava/lang/Character;>;"
    new-instance v5, Ljava/util/HashMap;

    const/16 v2, 0x10

    invoke-direct {v5, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 89
    .local v5, "layout":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Lcom/diotek/ime/framework/view/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/diotek/ime/framework/view/Keyboard$Key;

    .line 90
    .local v17, "key":Lcom/diotek/ime/framework/view/Keyboard$Key;
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    if-eqz v2, :cond_1

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_1

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    const/4 v6, 0x0

    invoke-interface {v2, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    if-eqz v2, :cond_1

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    array-length v2, v2

    if-lez v2, :cond_1

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v6, 0x0

    aget v2, v2, v6

    if-lez v2, :cond_1

    const-string v2, "StrEmpty"

    move-object/from16 v0, v17

    iget-object v6, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 95
    move-object/from16 v0, v17

    iget v2, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->x:I

    move-object/from16 v0, v17

    iget v6, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->width:I

    div-int/lit8 v6, v6, 0x2

    add-int v19, v2, v6

    .line 96
    .local v19, "x":I
    move-object/from16 v0, v17

    iget v2, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->y:I

    move-object/from16 v0, v17

    iget v6, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->height:I

    div-int/lit8 v6, v6, 0x2

    add-int v20, v2, v6

    .line 98
    .local v20, "y":I
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    new-array v12, v2, [Ljava/lang/Character;

    .line 99
    .local v12, "alternatives":[Ljava/lang/Character;
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_2
    array-length v2, v12

    if-ge v15, v2, :cond_2

    .line 100
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-interface {v2, v15}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    move-object/from16 v0, p0

    move/from16 v1, p6

    invoke-direct {v0, v2, v1}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;->getCangjieKey(CZ)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v12, v15

    .line 99
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 102
    :cond_2
    new-instance v2, Lcom/touchtype_fluency/Point;

    move/from16 v0, v19

    int-to-float v6, v0

    move/from16 v0, v20

    int-to-float v7, v0

    invoke-direct {v2, v6, v7}, Lcom/touchtype_fluency/Point;-><init>(FF)V

    invoke-static {v2}, Lcom/touchtype_fluency/KeyShape;->pointKey(Lcom/touchtype_fluency/Point;)Lcom/touchtype_fluency/KeyShape;

    move-result-object v2

    invoke-virtual {v4, v2, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    if-eqz p5, :cond_1

    .line 105
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v18, v0

    .line 106
    .local v18, "layoutAlternatives":[Ljava/lang/String;
    const/4 v15, 0x0

    :goto_3
    move-object/from16 v0, v18

    array-length v2, v0

    if-ge v15, v2, :cond_3

    .line 107
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-interface {v2, v15}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v18, v15

    .line 106
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 109
    :cond_3
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    invoke-static {v2}, Lcom/diotek/ime/framework/util/Utils;->isZhuyinToneKey([I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 110
    const/16 v2, 0x23

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v5, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 112
    :cond_4
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v6, 0x0

    aget v2, v2, v6

    int-to-char v2, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v5, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 117
    .end local v12    # "alternatives":[Ljava/lang/Character;
    .end local v15    # "i":I
    .end local v17    # "key":Lcom/diotek/ime/framework/view/Keyboard$Key;
    .end local v18    # "layoutAlternatives":[Ljava/lang/String;
    .end local v19    # "x":I
    .end local v20    # "y":I
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "/"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->getKeyModelHashCodeEx(Ljava/util/HashMap;)I

    move-result v6

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1, v6}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->loadCurrentKeyPressModelFileName(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 118
    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v2

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->shouldLoadKeyPressModel(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 119
    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 123
    :cond_7
    if-eqz p5, :cond_8

    .line 124
    const/4 v6, 0x0

    move-object/from16 v2, p0

    move/from16 v7, p3

    :try_start_0
    invoke-virtual/range {v2 .. v7}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->saveAndLoadKeyPressModel(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashSet;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :goto_4
    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->setCacheSequenceAndTouchHistory(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;)V

    .line 140
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 126
    :cond_8
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v6, p0

    move-object v7, v3

    move-object v8, v4

    move/from16 v11, p3

    :try_start_1
    invoke-virtual/range {v6 .. v11}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->saveAndLoadKeyPressModel(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashSet;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 128
    :catch_0
    move-exception v14

    .line 129
    .local v14, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 130
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;->isLoadKeypressModelError:Z

    if-eqz v2, :cond_9

    .line 132
    const-string v2, "SamsungIME"

    const-string v6, "Can\'t load KeyPressModel !!!"

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 135
    :cond_9
    invoke-virtual/range {p0 .. p6}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;->loadKeyPressModel(Ljava/io/File;Lcom/diotek/ime/framework/view/Keyboard;IIZZ)Z

    .line 136
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;->isLoadKeypressModelError:Z

    goto :goto_4
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
    .line 72
    .local p7, "packs":Ljava/util/List;, "Ljava/util/List<Lcom/touchtype_fluency/util/LanguagePack;>;"
    invoke-virtual/range {p0 .. p6}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;->loadKeyPressModel(Ljava/io/File;Lcom/diotek/ime/framework/view/Keyboard;IIZZ)Z

    move-result v0

    return v0
.end method

.method public loadKeyPressModelForHWR(I)Z
    .locals 1
    .param p1, "scriptType"    # I

    .prologue
    .line 750
    const/4 v0, 0x0

    return v0
.end method

.method public loadKorCharacterMap(I)V
    .locals 0
    .param p1, "langID"    # I

    .prologue
    .line 757
    return-void
.end method

.method public loadLanguageModel(Ljava/util/List;Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/touchtype_fluency/util/LoadProgressListener;)V
    .locals 1
    .param p2, "languagePackManager"    # Lcom/touchtype_fluency/util/LanguagePackManager;
    .param p3, "listener"    # Lcom/touchtype_fluency/util/LoadProgressListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/touchtype_fluency/util/LanguagePack;",
            ">;",
            "Lcom/touchtype_fluency/util/LanguagePackManager;",
            "Lcom/touchtype_fluency/util/LoadProgressListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 551
    .local p1, "languagePacks":Ljava/util/List;, "Ljava/util/List<Lcom/touchtype_fluency/util/LanguagePack;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->setDynamicModelsEnabled(Z)V

    .line 552
    invoke-super {p0, p1, p2, p3}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->loadLanguageModel(Ljava/util/List;Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/touchtype_fluency/util/LoadProgressListener;)V

    .line 553
    return-void
.end method

.method public processFlow([Landroid/graphics/PointF;I)V
    .locals 0
    .param p1, "touchPoints"    # [Landroid/graphics/PointF;
    .param p2, "pointCount"    # I

    .prologue
    .line 537
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;->clearChineseInfo()V

    .line 538
    invoke-super {p0, p1, p2}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->processFlow([Landroid/graphics/PointF;I)V

    .line 539
    return-void
.end method

.method public removeCurrentTermFromTemporaryModel()V
    .locals 0

    .prologue
    .line 713
    return-void
.end method

.method public resetTemporaryModel()V
    .locals 0

    .prologue
    .line 708
    return-void
.end method

.method public restoredTouchHistory(Ljava/lang/String;)Lcom/touchtype_fluency/TouchHistory;
    .locals 1
    .param p1, "currentWord"    # Ljava/lang/String;

    .prologue
    .line 687
    const/4 v0, 0x0

    return-object v0
.end method

.method public saveAndClear()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;->clearChineseInfo()V

    .line 66
    invoke-super {p0}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->saveAndClear()V

    .line 67
    return-void
.end method

.method public setChinesePhoneticIndex(Lcom/touchtype_fluency/Sequence;I)V
    .locals 4
    .param p1, "sequence"    # Lcom/touchtype_fluency/Sequence;
    .param p2, "index"    # I

    .prologue
    .line 386
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;->mSpellGroup:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, p2, :cond_0

    .line 387
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;->mSpellGroup:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 388
    .local v0, "phoneticLength":I
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    invoke-virtual {v3}, Lcom/touchtype_fluency/TouchHistory;->size()I

    move-result v3

    if-gt v0, v3, :cond_0

    .line 389
    new-instance v1, Lcom/touchtype_fluency/TouchHistory;

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;->mSpellGroup:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/touchtype_fluency/TouchHistory;-><init>(Ljava/lang/String;)V

    .line 390
    .local v1, "phoneticTouchHistory":Lcom/touchtype_fluency/TouchHistory;
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    invoke-virtual {v3, v0}, Lcom/touchtype_fluency/TouchHistory;->dropFirst(I)Lcom/touchtype_fluency/TouchHistory;

    move-result-object v2

    .line 391
    .local v2, "temp":Lcom/touchtype_fluency/TouchHistory;
    invoke-virtual {v1, v2}, Lcom/touchtype_fluency/TouchHistory;->appendHistory(Lcom/touchtype_fluency/TouchHistory;)V

    .line 392
    const/4 v3, -0x1

    invoke-virtual {p0, p1, v1, v3}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;->buildPredictions(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;I)Lcom/touchtype_fluency/Predictions;

    move-result-object v3

    iput-object v3, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictions:Lcom/touchtype_fluency/Predictions;

    .line 393
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictions:Lcom/touchtype_fluency/Predictions;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictions:Lcom/touchtype_fluency/Predictions;

    invoke-virtual {v3}, Lcom/touchtype_fluency/Predictions;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 394
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;->updateCPSpell(I)V

    .line 398
    .end local v0    # "phoneticLength":I
    .end local v1    # "phoneticTouchHistory":Lcom/touchtype_fluency/TouchHistory;
    .end local v2    # "temp":Lcom/touchtype_fluency/TouchHistory;
    :cond_0
    return-void
.end method

.method public setChineseSearchType(IZ)V
    .locals 1
    .param p1, "langID"    # I
    .param p2, "isStroke"    # Z

    .prologue
    .line 624
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictor:Lcom/touchtype_fluency/Predictor;

    if-eqz v0, :cond_0

    .line 625
    if-eqz p2, :cond_1

    .line 626
    sget-object v0, Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;->STROKE:Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;->mChineseSearchType:Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;

    .line 644
    :cond_0
    :goto_0
    return-void

    .line 628
    :cond_1
    sparse-switch p1, :sswitch_data_0

    .line 639
    sget-object v0, Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;->NORMAL:Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;->mChineseSearchType:Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;

    goto :goto_0

    .line 630
    :sswitch_0
    sget-object v0, Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;->PINYIN:Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;->mChineseSearchType:Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;

    goto :goto_0

    .line 633
    :sswitch_1
    sget-object v0, Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;->CANGJIE:Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;->mChineseSearchType:Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;

    goto :goto_0

    .line 636
    :sswitch_2
    sget-object v0, Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;->ZHUYIN:Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;->mChineseSearchType:Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;

    goto :goto_0

    .line 628
    :sswitch_data_0
    .sparse-switch
        0x7a68434e -> :sswitch_0
        0x7a68484b -> :sswitch_1
        0x7a685457 -> :sswitch_2
    .end sparse-switch
.end method

.method public setContactSpecificID(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 724
    return-void
.end method

.method public setExclusionPattern()V
    .locals 0

    .prologue
    .line 678
    return-void
.end method

.method public setReservePredictions(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 668
    .local p1, "predictions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public storeTouchHistory(Ljava/lang/String;I)V
    .locals 0
    .param p1, "verbatim"    # Ljava/lang/String;
    .param p2, "languageID"    # I

    .prologue
    .line 682
    return-void
.end method

.method public updateCPSpell(I)V
    .locals 10
    .param p1, "keyCode"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 243
    iget-object v6, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictions:Lcom/touchtype_fluency/Predictions;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictions:Lcom/touchtype_fluency/Predictions;

    invoke-virtual {v6}, Lcom/touchtype_fluency/Predictions;->size()I

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    invoke-virtual {v6}, Lcom/touchtype_fluency/TouchHistory;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 244
    :cond_0
    iget-object v6, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;->mCPSpell:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 245
    new-instance v6, Lcom/touchtype_fluency/TouchHistory;

    invoke-direct {v6}, Lcom/touchtype_fluency/TouchHistory;-><init>()V

    iput-object v6, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    .line 246
    iget-object v6, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mInputBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 269
    :cond_1
    :goto_0
    return-void

    .line 247
    :cond_2
    iget-object v6, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;->mChineseInputType:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager$CHINESE_TYPE;

    sget-object v7, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager$CHINESE_TYPE;->STROKE:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager$CHINESE_TYPE;

    if-ne v6, v7, :cond_3

    const/16 v6, 0x3f

    if-ne p1, v6, :cond_3

    iget-object v6, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;->mCPSpell:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-nez v6, :cond_3

    .line 249
    iget-object v6, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;->mCPSpell:Ljava/lang/StringBuilder;

    int-to-char v7, p1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 250
    :cond_3
    iget-object v6, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictions:Lcom/touchtype_fluency/Predictions;

    invoke-virtual {v6}, Lcom/touchtype_fluency/Predictions;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 251
    iget-object v6, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictions:Lcom/touchtype_fluency/Predictions;

    invoke-virtual {v6, v9}, Lcom/touchtype_fluency/Predictions;->get(I)Lcom/touchtype_fluency/Prediction;

    move-result-object v3

    .line 252
    .local v3, "prediction":Lcom/touchtype_fluency/Prediction;
    const/4 v5, 0x0

    .line 253
    .local v5, "tagList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v3}, Lcom/touchtype_fluency/Prediction;->getTags()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 254
    .local v4, "str":Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    .end local v5    # "tagList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v6, ":"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 255
    .restart local v5    # "tagList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v6, v8, :cond_4

    const-string v6, "input"

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 256
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, " "

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 257
    .local v2, "inputSpell":Ljava/lang/String;
    if-eqz p1, :cond_5

    iget-object v6, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    invoke-virtual {v6}, Lcom/touchtype_fluency/TouchHistory;->size()I

    move-result v6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-le v6, v7, :cond_5

    .line 258
    iget-object v6, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;->mCPSpell:Ljava/lang/StringBuilder;

    int-to-char v7, p1

    invoke-direct {p0, v7}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;->getChineseSpellChar(C)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 261
    :cond_5
    iget-object v6, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;->mCPSpell:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 262
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v6, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    invoke-virtual {v6}, Lcom/touchtype_fluency/TouchHistory;->size()I

    move-result v6

    if-ge v0, v6, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v0, v6, :cond_1

    .line 263
    iget-object v6, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;->mCPSpell:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-direct {p0, v7}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;->getChineseSpellChar(C)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 262
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public updateKeyPressModeling(Lcom/touchtype_fluency/TouchHistory;Ljava/lang/StringBuilder;)V
    .locals 0
    .param p1, "touchHistory"    # Lcom/touchtype_fluency/TouchHistory;
    .param p2, "text"    # Ljava/lang/StringBuilder;

    .prologue
    .line 698
    return-void
.end method

.method public updateShiftState(ZZ)V
    .locals 0
    .param p1, "shift"    # Z
    .param p2, "capslock"    # Z

    .prologue
    .line 673
    return-void
.end method
