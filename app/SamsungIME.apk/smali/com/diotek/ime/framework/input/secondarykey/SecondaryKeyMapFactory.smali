.class public Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyMapFactory;
.super Ljava/lang/Object;
.source "SecondaryKeyMapFactory.java"


# instance fields
.field private mSecondaryKeyMapSet:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyInfo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyMapFactory;->mSecondaryKeyMapSet:Landroid/util/SparseArray;

    return-void
.end method

.method private getSecondaryKeyMap(I)Landroid/util/SparseArray;
    .locals 2
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    iget-object v1, p0, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyMapFactory;->mSecondaryKeyMapSet:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 72
    .local v0, "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyInfo;>;"
    if-eqz v0, :cond_0

    .line 73
    iget-object v1, p0, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyMapFactory;->mSecondaryKeyMapSet:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 77
    :goto_0
    return-object v0

    .line 75
    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    .end local v0    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyInfo;>;"
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .restart local v0    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyInfo;>;"
    goto :goto_0
.end method


# virtual methods
.method public getSecondaryKeyMapSet()Landroid/util/SparseArray;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyInfo;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v12, -0x1

    const/4 v2, 0x1

    const/4 v10, 0x0

    .line 13
    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->getWindowHeight()I

    move-result v5

    .line 14
    .local v5, "mWindowHeight":I
    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->getWindowWidth()I

    move-result v6

    .line 15
    .local v6, "mWindowWidth":I
    const/16 v11, 0x1e0

    if-ne v5, v11, :cond_1

    const/16 v11, 0x140

    if-ne v6, v11, :cond_1

    move v0, v2

    .line 16
    .local v0, "IS_HVGA":Z
    :goto_0
    const/16 v11, 0xa00

    if-ne v5, v11, :cond_2

    const/16 v11, 0x640

    if-ne v6, v11, :cond_2

    move v1, v2

    .line 17
    .local v1, "IS_WQXGA":Z
    :goto_1
    const/16 v11, 0x500

    if-ne v5, v11, :cond_3

    const/16 v11, 0x320

    if-ne v6, v11, :cond_3

    move v3, v2

    .line 18
    .local v3, "IS_WXGA":Z
    :goto_2
    const/16 v11, 0x400

    if-ne v5, v11, :cond_4

    const/16 v11, 0x258

    if-ne v6, v11, :cond_4

    .line 19
    .local v2, "IS_WSVGA":Z
    :goto_3
    const/4 v7, 0x0

    .line 20
    .local v7, "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyInfo;>;"
    invoke-static {}, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyMap;->getSecondaryKeyMap()[Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyInfo;

    move-result-object v8

    .line 22
    .local v8, "secondaryMap":[Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyInfo;
    const/4 v9, -0x1

    .line 23
    .local v9, "tempLangId":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_4
    array-length v10, v8

    if-ge v4, v10, :cond_6

    .line 24
    if-ne v9, v12, :cond_5

    .line 25
    new-instance v7, Landroid/util/SparseArray;

    .end local v7    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyInfo;>;"
    invoke-direct {v7}, Landroid/util/SparseArray;-><init>()V

    .line 26
    .restart local v7    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyInfo;>;"
    aget-object v10, v8, v4

    invoke-virtual {v10}, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyInfo;->getLanguageID()I

    move-result v9

    .line 32
    :cond_0
    :goto_5
    aget-object v10, v8, v4

    invoke-virtual {v10}, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyInfo;->getKeyCode()I

    move-result v10

    aget-object v11, v8, v4

    invoke-virtual {v7, v10, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 23
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .end local v0    # "IS_HVGA":Z
    .end local v1    # "IS_WQXGA":Z
    .end local v2    # "IS_WSVGA":Z
    .end local v3    # "IS_WXGA":Z
    .end local v4    # "i":I
    .end local v7    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyInfo;>;"
    .end local v8    # "secondaryMap":[Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyInfo;
    .end local v9    # "tempLangId":I
    :cond_1
    move v0, v10

    .line 15
    goto :goto_0

    .restart local v0    # "IS_HVGA":Z
    :cond_2
    move v1, v10

    .line 16
    goto :goto_1

    .restart local v1    # "IS_WQXGA":Z
    :cond_3
    move v3, v10

    .line 17
    goto :goto_2

    .restart local v3    # "IS_WXGA":Z
    :cond_4
    move v2, v10

    .line 18
    goto :goto_3

    .line 27
    .restart local v2    # "IS_WSVGA":Z
    .restart local v4    # "i":I
    .restart local v7    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyInfo;>;"
    .restart local v8    # "secondaryMap":[Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyInfo;
    .restart local v9    # "tempLangId":I
    :cond_5
    aget-object v10, v8, v4

    invoke-virtual {v10}, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyInfo;->getLanguageID()I

    move-result v10

    if-eq v9, v10, :cond_0

    .line 28
    iget-object v10, p0, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyMapFactory;->mSecondaryKeyMapSet:Landroid/util/SparseArray;

    invoke-virtual {v10, v9, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 29
    aget-object v10, v8, v4

    invoke-virtual {v10}, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyInfo;->getLanguageID()I

    move-result v10

    invoke-direct {p0, v10}, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyMapFactory;->getSecondaryKeyMap(I)Landroid/util/SparseArray;

    move-result-object v7

    .line 30
    aget-object v10, v8, v4

    invoke-virtual {v10}, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyInfo;->getLanguageID()I

    move-result v9

    goto :goto_5

    .line 34
    :cond_6
    if-eqz v0, :cond_9

    .line 35
    const/4 v9, -0x1

    .line 36
    invoke-static {}, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyMap;->getSecondaryKeyMapForSmallScreen()[Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyInfo;

    move-result-object v8

    .line 37
    const/4 v4, 0x0

    :goto_6
    array-length v10, v8

    if-ge v4, v10, :cond_f

    .line 38
    if-ne v9, v12, :cond_8

    .line 39
    new-instance v7, Landroid/util/SparseArray;

    .end local v7    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyInfo;>;"
    invoke-direct {v7}, Landroid/util/SparseArray;-><init>()V

    .line 40
    .restart local v7    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyInfo;>;"
    aget-object v10, v8, v4

    invoke-virtual {v10}, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyInfo;->getLanguageID()I

    move-result v9

    .line 46
    :cond_7
    :goto_7
    aget-object v10, v8, v4

    invoke-virtual {v10}, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyInfo;->getKeyCode()I

    move-result v10

    aget-object v11, v8, v4

    invoke-virtual {v7, v10, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 37
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 41
    :cond_8
    aget-object v10, v8, v4

    invoke-virtual {v10}, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyInfo;->getLanguageID()I

    move-result v10

    if-eq v9, v10, :cond_7

    .line 42
    iget-object v10, p0, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyMapFactory;->mSecondaryKeyMapSet:Landroid/util/SparseArray;

    invoke-virtual {v10, v9, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 43
    aget-object v10, v8, v4

    invoke-virtual {v10}, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyInfo;->getLanguageID()I

    move-result v10

    invoke-direct {p0, v10}, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyMapFactory;->getSecondaryKeyMap(I)Landroid/util/SparseArray;

    move-result-object v7

    .line 44
    aget-object v10, v8, v4

    invoke-virtual {v10}, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyInfo;->getLanguageID()I

    move-result v9

    goto :goto_7

    .line 48
    :cond_9
    if-nez v1, :cond_a

    if-nez v3, :cond_a

    if-eqz v2, :cond_f

    .line 49
    :cond_a
    const/4 v9, -0x1

    .line 50
    invoke-static {}, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyMap;->getSecondaryKeyMapForTablet()[Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyInfo;

    move-result-object v8

    .line 51
    const/4 v4, 0x0

    :goto_8
    array-length v10, v8

    if-ge v4, v10, :cond_f

    .line 52
    if-ne v9, v12, :cond_d

    .line 53
    new-instance v7, Landroid/util/SparseArray;

    .end local v7    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyInfo;>;"
    invoke-direct {v7}, Landroid/util/SparseArray;-><init>()V

    .line 54
    .restart local v7    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyInfo;>;"
    aget-object v10, v8, v4

    invoke-virtual {v10}, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyInfo;->getLanguageID()I

    move-result v9

    .line 60
    :cond_b
    :goto_9
    const/high16 v10, 0x61720000

    if-ne v9, v10, :cond_e

    if-nez v3, :cond_c

    if-eqz v1, :cond_e

    .line 51
    :cond_c
    :goto_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 55
    :cond_d
    aget-object v10, v8, v4

    invoke-virtual {v10}, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyInfo;->getLanguageID()I

    move-result v10

    if-eq v9, v10, :cond_b

    .line 56
    iget-object v10, p0, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyMapFactory;->mSecondaryKeyMapSet:Landroid/util/SparseArray;

    invoke-virtual {v10, v9, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 57
    aget-object v10, v8, v4

    invoke-virtual {v10}, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyInfo;->getLanguageID()I

    move-result v10

    invoke-direct {p0, v10}, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyMapFactory;->getSecondaryKeyMap(I)Landroid/util/SparseArray;

    move-result-object v7

    .line 58
    aget-object v10, v8, v4

    invoke-virtual {v10}, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyInfo;->getLanguageID()I

    move-result v9

    goto :goto_9

    .line 63
    :cond_e
    aget-object v10, v8, v4

    invoke-virtual {v10}, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyInfo;->getKeyCode()I

    move-result v10

    aget-object v11, v8, v4

    invoke-virtual {v7, v10, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_a

    .line 66
    :cond_f
    iget-object v10, p0, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyMapFactory;->mSecondaryKeyMapSet:Landroid/util/SparseArray;

    invoke-virtual {v10, v9, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 67
    iget-object v10, p0, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyMapFactory;->mSecondaryKeyMapSet:Landroid/util/SparseArray;

    return-object v10
.end method
