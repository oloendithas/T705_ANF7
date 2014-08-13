.class public Lcom/diotek/ime/framework/input/hw/HwKeyMapFactory;
.super Ljava/lang/Object;
.source "HwKeyMapFactory.java"


# instance fields
.field private mKeyMapSet:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/diotek/ime/framework/input/hw/HwKeyInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPhonepadKeyMapSet:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0xa

    const/high16 v1, 0x40a00000

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v2, v1}, Ljava/util/HashMap;-><init>(IF)V

    iput-object v0, p0, Lcom/diotek/ime/framework/input/hw/HwKeyMapFactory;->mKeyMapSet:Ljava/util/HashMap;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v2, v1}, Ljava/util/HashMap;-><init>(IF)V

    iput-object v0, p0, Lcom/diotek/ime/framework/input/hw/HwKeyMapFactory;->mPhonepadKeyMapSet:Ljava/util/HashMap;

    return-void
.end method

.method private getHwKeyMap(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/diotek/ime/framework/input/hw/HwKeyInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    iget-object v1, p0, Lcom/diotek/ime/framework/input/hw/HwKeyMapFactory;->mKeyMapSet:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 35
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/diotek/ime/framework/input/hw/HwKeyInfo;>;"
    if-eqz v0, :cond_0

    .line 36
    iget-object v1, p0, Lcom/diotek/ime/framework/input/hw/HwKeyMapFactory;->mKeyMapSet:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    :goto_0
    return-object v0

    .line 38
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/diotek/ime/framework/input/hw/HwKeyInfo;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .restart local v0    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/diotek/ime/framework/input/hw/HwKeyInfo;>;"
    goto :goto_0
.end method

.method private getHwPhonepadKeyMap(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    iget-object v1, p0, Lcom/diotek/ime/framework/input/hw/HwKeyMapFactory;->mPhonepadKeyMapSet:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 72
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;>;"
    if-eqz v0, :cond_0

    .line 73
    iget-object v1, p0, Lcom/diotek/ime/framework/input/hw/HwKeyMapFactory;->mPhonepadKeyMapSet:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    :goto_0
    return-object v0

    .line 75
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .restart local v0    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;>;"
    goto :goto_0
.end method


# virtual methods
.method public getHwKeyMapSet()Ljava/util/HashMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/diotek/ime/framework/input/hw/HwKeyInfo;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 11
    const/4 v4, 0x0

    .line 12
    .local v4, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/diotek/ime/framework/input/hw/HwKeyInfo;>;"
    invoke-static {}, Lcom/diotek/ime/framework/input/hw/HwKeyMap;->getHwKeyCodeMap()[I

    move-result-object v0

    .line 13
    .local v0, "hwKeyCodeMap":[I
    invoke-static {}, Lcom/diotek/ime/framework/input/hw/HwKeyMap;->getHwKeyMap()[Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    move-result-object v1

    .line 14
    .local v1, "hwKeyMap":[Lcom/diotek/ime/framework/input/hw/HwKeyInfo;
    const-string v5, ""

    .line 15
    .local v5, "tempLangId":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v6, v1

    if-ge v2, v6, :cond_3

    .line 16
    const-string v6, ""

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 17
    new-instance v4, Ljava/util/HashMap;

    .end local v4    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/diotek/ime/framework/input/hw/HwKeyInfo;>;"
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 18
    .restart local v4    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/diotek/ime/framework/input/hw/HwKeyInfo;>;"
    aget-object v6, v1, v2

    invoke-virtual {v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;->getLanguageID()Ljava/lang/String;

    move-result-object v5

    .line 24
    :cond_0
    :goto_1
    aget-object v6, v1, v2

    invoke-virtual {v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;->getKeyIndex()I

    move-result v3

    .line 25
    .local v3, "keyIndex":I
    if-eqz v4, :cond_1

    if-ltz v3, :cond_1

    array-length v6, v0

    if-ge v3, v6, :cond_1

    .line 26
    aget v6, v0, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aget-object v7, v1, v2

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 19
    .end local v3    # "keyIndex":I
    :cond_2
    aget-object v6, v1, v2

    invoke-virtual {v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;->getLanguageID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 20
    iget-object v6, p0, Lcom/diotek/ime/framework/input/hw/HwKeyMapFactory;->mKeyMapSet:Ljava/util/HashMap;

    invoke-virtual {v6, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    aget-object v6, v1, v2

    invoke-virtual {v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;->getLanguageID()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/diotek/ime/framework/input/hw/HwKeyMapFactory;->getHwKeyMap(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v4

    .line 22
    aget-object v6, v1, v2

    invoke-virtual {v6}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;->getLanguageID()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 29
    :cond_3
    iget-object v6, p0, Lcom/diotek/ime/framework/input/hw/HwKeyMapFactory;->mKeyMapSet:Ljava/util/HashMap;

    invoke-virtual {v6, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    iget-object v6, p0, Lcom/diotek/ime/framework/input/hw/HwKeyMapFactory;->mKeyMapSet:Ljava/util/HashMap;

    return-object v6
.end method

.method public getHwPhonepadKeyMapSet()Ljava/util/HashMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 48
    const/4 v4, 0x0

    .line 49
    .local v4, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;>;"
    invoke-static {}, Lcom/diotek/ime/framework/input/hw/HwKeyMap;->getHwKeyCodeMap()[I

    move-result-object v0

    .line 50
    .local v0, "hwKeyCodeMap":[I
    invoke-static {}, Lcom/diotek/ime/framework/input/hw/HwKeyMap;->getHwPhonepadKeyMap()[Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;

    move-result-object v1

    .line 51
    .local v1, "hwKeyMap":[Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;
    const-string v5, ""

    .line 52
    .local v5, "tempLangId":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v6, v1

    if-ge v2, v6, :cond_3

    .line 53
    const-string v6, ""

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 54
    new-instance v4, Ljava/util/HashMap;

    .end local v4    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;>;"
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 55
    .restart local v4    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;>;"
    aget-object v6, v1, v2

    invoke-virtual {v6}, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;->getLanguageID()Ljava/lang/String;

    move-result-object v5

    .line 61
    :cond_0
    :goto_1
    aget-object v6, v1, v2

    invoke-virtual {v6}, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;->getKeyIndex()I

    move-result v3

    .line 62
    .local v3, "keyIndex":I
    if-eqz v4, :cond_1

    if-ltz v3, :cond_1

    array-length v6, v0

    if-ge v3, v6, :cond_1

    .line 63
    aget v6, v0, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aget-object v7, v1, v2

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 56
    .end local v3    # "keyIndex":I
    :cond_2
    aget-object v6, v1, v2

    invoke-virtual {v6}, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;->getLanguageID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 57
    iget-object v6, p0, Lcom/diotek/ime/framework/input/hw/HwKeyMapFactory;->mPhonepadKeyMapSet:Ljava/util/HashMap;

    invoke-virtual {v6, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    aget-object v6, v1, v2

    invoke-virtual {v6}, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;->getLanguageID()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/diotek/ime/framework/input/hw/HwKeyMapFactory;->getHwPhonepadKeyMap(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v4

    .line 59
    aget-object v6, v1, v2

    invoke-virtual {v6}, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;->getLanguageID()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 66
    :cond_3
    iget-object v6, p0, Lcom/diotek/ime/framework/input/hw/HwKeyMapFactory;->mPhonepadKeyMapSet:Ljava/util/HashMap;

    invoke-virtual {v6, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v6, p0, Lcom/diotek/ime/framework/input/hw/HwKeyMapFactory;->mPhonepadKeyMapSet:Ljava/util/HashMap;

    return-object v6
.end method
