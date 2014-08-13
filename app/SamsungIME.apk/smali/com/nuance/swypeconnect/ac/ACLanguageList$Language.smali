.class public Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;
.super Ljava/lang/Object;
.source "ACLanguageList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swypeconnect/ac/ACLanguageList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Language"
.end annotation


# instance fields
.field private final core:I

.field private final displayName:Ljava/lang/String;

.field private final englishName:Ljava/lang/String;

.field private final isoCodeFull:Ljava/lang/String;

.field private final isoCodeShort:Ljava/lang/String;

.field private locale:Ljava/util/Locale;

.field private final xt9LangId:[I


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "englishName"    # Ljava/lang/String;
    .param p2, "displayName"    # Ljava/lang/String;
    .param p3, "xt9LangId"    # [I
    .param p4, "isoCodeShort"    # Ljava/lang/String;
    .param p5, "isoCodeFull"    # Ljava/lang/String;
    .param p6, "core"    # I

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;->englishName:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;->displayName:Ljava/lang/String;

    .line 40
    iput-object p3, p0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;->xt9LangId:[I

    .line 41
    iput-object p4, p0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;->isoCodeShort:Ljava/lang/String;

    .line 42
    iput-object p5, p0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;->isoCodeFull:Ljava/lang/String;

    .line 43
    iput p6, p0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;->core:I

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;->isoCodeFull:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;->englishName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;)[I
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;->xt9LangId:[I

    return-object v0
.end method

.method static synthetic access$300(Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;)I
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    .prologue
    .line 27
    iget v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;->core:I

    return v0
.end method


# virtual methods
.method public getCore()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;->core:I

    return v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getEnglishName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;->englishName:Ljava/lang/String;

    return-object v0
.end method

.method public getISOCodeFull()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;->isoCodeFull:Ljava/lang/String;

    return-object v0
.end method

.method public getISOCodeShort()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;->isoCodeShort:Ljava/lang/String;

    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 74
    iget-object v4, p0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;->locale:Ljava/util/Locale;

    if-nez v4, :cond_0

    .line 75
    iget-object v4, p0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;->isoCodeFull:Ljava/lang/String;

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, "elements":[Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 77
    array-length v4, v1

    if-lt v4, v6, :cond_1

    const/4 v4, 0x0

    aget-object v4, v1, v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 78
    .local v2, "language":Ljava/lang/String;
    :goto_0
    array-length v4, v1

    if-lt v4, v7, :cond_2

    aget-object v4, v1, v6

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "country":Ljava/lang/String;
    :goto_1
    array-length v4, v1

    const/4 v5, 0x3

    if-lt v4, v5, :cond_3

    aget-object v3, v1, v7

    .line 80
    .local v3, "variant":Ljava/lang/String;
    :goto_2
    new-instance v4, Ljava/util/Locale;

    invoke-direct {v4, v2, v0, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;->locale:Ljava/util/Locale;

    .line 83
    .end local v0    # "country":Ljava/lang/String;
    .end local v1    # "elements":[Ljava/lang/String;
    .end local v2    # "language":Ljava/lang/String;
    .end local v3    # "variant":Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;->locale:Ljava/util/Locale;

    return-object v4

    .line 77
    .restart local v1    # "elements":[Ljava/lang/String;
    :cond_1
    const-string v2, ""

    goto :goto_0

    .line 78
    .restart local v2    # "language":Ljava/lang/String;
    :cond_2
    const-string v0, ""

    goto :goto_1

    .line 79
    .restart local v0    # "country":Ljava/lang/String;
    :cond_3
    const-string v3, ""

    goto :goto_2
.end method

.method public getXT9Id()I
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;->xt9LangId:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public usesXT9Id(I)Z
    .locals 5
    .param p1, "xt9Id"    # I

    .prologue
    .line 56
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;->xt9LangId:[I

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget v1, v0, v2

    .line 57
    .local v1, "i":I
    if-ne p1, v1, :cond_0

    .line 58
    const/4 v4, 0x1

    .line 61
    .end local v1    # "i":I
    :goto_1
    return v4

    .line 56
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 61
    .end local v1    # "i":I
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method
