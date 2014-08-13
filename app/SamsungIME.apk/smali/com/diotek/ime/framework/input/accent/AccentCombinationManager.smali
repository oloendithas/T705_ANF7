.class public Lcom/diotek/ime/framework/input/accent/AccentCombinationManager;
.super Ljava/lang/Object;
.source "AccentCombinationManager.java"


# static fields
.field private static sInstance:Lcom/diotek/ime/framework/input/accent/AccentCombinationManager;


# instance fields
.field private mAccentCharList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCombinedKeyMapSet:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/diotek/ime/framework/input/accent/AccentCombinationInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCurrentCombinedtMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/diotek/ime/framework/input/accent/AccentCombinationInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    sput-object v0, Lcom/diotek/ime/framework/input/accent/AccentCombinationManager;->sInstance:Lcom/diotek/ime/framework/input/accent/AccentCombinationManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object v0, p0, Lcom/diotek/ime/framework/input/accent/AccentCombinationManager;->mCombinedKeyMapSet:Ljava/util/HashMap;

    .line 16
    iput-object v0, p0, Lcom/diotek/ime/framework/input/accent/AccentCombinationManager;->mCurrentCombinedtMap:Ljava/util/HashMap;

    .line 17
    iput-object v0, p0, Lcom/diotek/ime/framework/input/accent/AccentCombinationManager;->mAccentCharList:Ljava/util/HashSet;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/diotek/ime/framework/input/accent/AccentCombinationManager;
    .locals 2

    .prologue
    .line 20
    const-class v1, Lcom/diotek/ime/framework/input/accent/AccentCombinationManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/diotek/ime/framework/input/accent/AccentCombinationManager;->sInstance:Lcom/diotek/ime/framework/input/accent/AccentCombinationManager;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/diotek/ime/framework/input/accent/AccentCombinationManager;

    invoke-direct {v0}, Lcom/diotek/ime/framework/input/accent/AccentCombinationManager;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/input/accent/AccentCombinationManager;->sInstance:Lcom/diotek/ime/framework/input/accent/AccentCombinationManager;

    .line 22
    sget-object v0, Lcom/diotek/ime/framework/input/accent/AccentCombinationManager;->sInstance:Lcom/diotek/ime/framework/input/accent/AccentCombinationManager;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/input/accent/AccentCombinationManager;->initialize()V

    .line 24
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/input/accent/AccentCombinationManager;->sInstance:Lcom/diotek/ime/framework/input/accent/AccentCombinationManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 20
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getCombinedCharacter(II)I
    .locals 6
    .param p1, "accentChar"    # I
    .param p2, "normalChar"    # I

    .prologue
    .line 66
    const/4 v0, 0x0

    .line 68
    .local v0, "info":Lcom/diotek/ime/framework/input/accent/AccentCombinationInfo;
    iget-object v2, p0, Lcom/diotek/ime/framework/input/accent/AccentCombinationManager;->mCurrentCombinedtMap:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    .line 69
    const-string v2, "0x%04x0x%04x"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/diotek/ime/framework/input/accent/AccentCombinationManager;->mCurrentCombinedtMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "info":Lcom/diotek/ime/framework/input/accent/AccentCombinationInfo;
    check-cast v0, Lcom/diotek/ime/framework/input/accent/AccentCombinationInfo;

    .line 73
    .end local v1    # "key":Ljava/lang/String;
    .restart local v0    # "info":Lcom/diotek/ime/framework/input/accent/AccentCombinationInfo;
    :cond_0
    if-nez v0, :cond_1

    .line 74
    const/16 v2, -0xff

    .line 77
    :goto_0
    return v2

    :cond_1
    invoke-virtual {v0}, Lcom/diotek/ime/framework/input/accent/AccentCombinationInfo;->getCombinedChar()I

    move-result v2

    goto :goto_0
.end method

.method public final initialize()V
    .locals 5

    .prologue
    .line 28
    new-instance v2, Ljava/util/HashMap;

    const/16 v3, 0xa

    const/high16 v4, 0x40a00000

    invoke-direct {v2, v3, v4}, Ljava/util/HashMap;-><init>(IF)V

    iput-object v2, p0, Lcom/diotek/ime/framework/input/accent/AccentCombinationManager;->mCombinedKeyMapSet:Ljava/util/HashMap;

    .line 29
    new-instance v0, Lcom/diotek/ime/framework/input/accent/AccentCombinationMapFactory;

    invoke-direct {v0}, Lcom/diotek/ime/framework/input/accent/AccentCombinationMapFactory;-><init>()V

    .line 30
    .local v0, "combinationMapFactory":Lcom/diotek/ime/framework/input/accent/AccentCombinationMapFactory;
    invoke-virtual {v0}, Lcom/diotek/ime/framework/input/accent/AccentCombinationMapFactory;->getAccentCombinationMapSet()Ljava/util/HashMap;

    move-result-object v2

    iput-object v2, p0, Lcom/diotek/ime/framework/input/accent/AccentCombinationManager;->mCombinedKeyMapSet:Ljava/util/HashMap;

    .line 31
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/diotek/ime/framework/input/accent/AccentCombinationManager;->mAccentCharList:Ljava/util/HashSet;

    .line 32
    const/4 v1, 0x0

    .local v1, "idx":I
    :goto_0
    sget-object v2, Lcom/diotek/ime/framework/common/Constant;->ACCENT_CHAR_LIST:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 33
    iget-object v2, p0, Lcom/diotek/ime/framework/input/accent/AccentCombinationManager;->mAccentCharList:Ljava/util/HashSet;

    sget-object v3, Lcom/diotek/ime/framework/common/Constant;->ACCENT_CHAR_LIST:[I

    aget v3, v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 32
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 35
    :cond_0
    return-void
.end method

.method public isAccentCharacter(I)Z
    .locals 2
    .param p1, "keyCode"    # I

    .prologue
    .line 59
    const/16 v0, 0x61

    if-lt p1, v0, :cond_0

    const/16 v0, 0x7a

    if-gt p1, v0, :cond_0

    .line 60
    const/4 v0, 0x0

    .line 62
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/input/accent/AccentCombinationManager;->mAccentCharList:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public setInputLanguage(Lcom/diotek/ime/framework/common/Language;)V
    .locals 8
    .param p1, "lang"    # Lcom/diotek/ime/framework/common/Language;

    .prologue
    const/4 v6, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 38
    const/4 v2, 0x0

    .line 39
    .local v2, "key":Ljava/lang/String;
    invoke-static {p1}, Lcom/diotek/ime/framework/util/Utils;->getHWKeyboardCountryCode(Lcom/diotek/ime/framework/common/Language;)Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, "countryCode":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/diotek/ime/framework/common/Language;->getCountryCode()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v6, :cond_2

    :cond_0
    move v1, v3

    .line 43
    .local v1, "isLanguageWithCountryCode":Z
    :goto_0
    if-nez v1, :cond_3

    .line 44
    invoke-virtual {p1}, Lcom/diotek/ime/framework/common/Language;->getLanguageCode()Ljava/lang/String;

    move-result-object v3

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 49
    :goto_1
    iget-object v3, p0, Lcom/diotek/ime/framework/input/accent/AccentCombinationManager;->mCombinedKeyMapSet:Ljava/util/HashMap;

    if-eqz v3, :cond_1

    .line 50
    iget-object v3, p0, Lcom/diotek/ime/framework/input/accent/AccentCombinationManager;->mCombinedKeyMapSet:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    iput-object v3, p0, Lcom/diotek/ime/framework/input/accent/AccentCombinationManager;->mCurrentCombinedtMap:Ljava/util/HashMap;

    .line 51
    iget-object v3, p0, Lcom/diotek/ime/framework/input/accent/AccentCombinationManager;->mCurrentCombinedtMap:Ljava/util/HashMap;

    if-nez v3, :cond_1

    if-eqz v1, :cond_1

    .line 52
    invoke-virtual {p1}, Lcom/diotek/ime/framework/common/Language;->getLanguageCode()Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 53
    iget-object v3, p0, Lcom/diotek/ime/framework/input/accent/AccentCombinationManager;->mCombinedKeyMapSet:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    iput-object v3, p0, Lcom/diotek/ime/framework/input/accent/AccentCombinationManager;->mCurrentCombinedtMap:Ljava/util/HashMap;

    .line 56
    :cond_1
    return-void

    .end local v1    # "isLanguageWithCountryCode":Z
    :cond_2
    move v1, v4

    .line 41
    goto :goto_0

    .line 46
    .restart local v1    # "isLanguageWithCountryCode":Z
    :cond_3
    const-string v5, "%s_%s"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/diotek/ime/framework/common/Language;->getLanguageCode()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    aput-object v0, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method
