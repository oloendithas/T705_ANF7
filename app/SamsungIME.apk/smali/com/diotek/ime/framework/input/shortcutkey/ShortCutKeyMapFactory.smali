.class public Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyMapFactory;
.super Ljava/lang/Object;
.source "ShortCutKeyMapFactory.java"


# instance fields
.field private mAlternativeShortCutKeyMapSet:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mShortCutKeyMapSet:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyInfo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyMapFactory;->mShortCutKeyMapSet:Landroid/util/SparseArray;

    .line 11
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyMapFactory;->mAlternativeShortCutKeyMapSet:Landroid/util/SparseArray;

    return-void
.end method

.method private getAlternativeShortCutKeyMap(I)Landroid/util/SparseArray;
    .locals 2
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    iget-object v1, p0, Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyMapFactory;->mAlternativeShortCutKeyMapSet:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 69
    .local v0, "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyInfo;>;"
    if-eqz v0, :cond_0

    .line 70
    iget-object v1, p0, Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyMapFactory;->mAlternativeShortCutKeyMapSet:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 74
    :goto_0
    return-object v0

    .line 72
    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    .end local v0    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyInfo;>;"
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .restart local v0    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyInfo;>;"
    goto :goto_0
.end method

.method private getShortCutKeyMap(I)Landroid/util/SparseArray;
    .locals 2
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    iget-object v1, p0, Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyMapFactory;->mShortCutKeyMapSet:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 37
    .local v0, "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyInfo;>;"
    if-eqz v0, :cond_0

    .line 38
    iget-object v1, p0, Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyMapFactory;->mShortCutKeyMapSet:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 42
    :goto_0
    return-object v0

    .line 40
    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    .end local v0    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyInfo;>;"
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .restart local v0    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyInfo;>;"
    goto :goto_0
.end method


# virtual methods
.method public getAlternativeShortCutKeyMapSet()Landroid/util/SparseArray;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyInfo;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 46
    const/4 v1, 0x0

    .line 47
    .local v1, "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyInfo;>;"
    invoke-static {}, Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyMap;->getAlternativeShortCutKeyMap()[Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyInfo;

    move-result-object v2

    .line 49
    .local v2, "shortcutMap":[Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyInfo;
    const/4 v3, -0x1

    .line 50
    .local v3, "tempLangId":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_2

    .line 51
    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 52
    new-instance v1, Landroid/util/SparseArray;

    .end local v1    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyInfo;>;"
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 53
    .restart local v1    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyInfo;>;"
    aget-object v4, v2, v0

    invoke-virtual {v4}, Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyInfo;->getLanguageID()I

    move-result v3

    .line 59
    :cond_0
    :goto_1
    aget-object v4, v2, v0

    invoke-virtual {v4}, Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyInfo;->getKeyCode()I

    move-result v4

    aget-object v5, v2, v0

    invoke-virtual {v1, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 50
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 54
    :cond_1
    aget-object v4, v2, v0

    invoke-virtual {v4}, Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyInfo;->getLanguageID()I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 55
    iget-object v4, p0, Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyMapFactory;->mAlternativeShortCutKeyMapSet:Landroid/util/SparseArray;

    invoke-virtual {v4, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 56
    aget-object v4, v2, v0

    invoke-virtual {v4}, Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyInfo;->getLanguageID()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyMapFactory;->getShortCutKeyMap(I)Landroid/util/SparseArray;

    move-result-object v1

    .line 57
    aget-object v4, v2, v0

    invoke-virtual {v4}, Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyInfo;->getLanguageID()I

    move-result v3

    goto :goto_1

    .line 61
    :cond_2
    iget-object v4, p0, Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyMapFactory;->mAlternativeShortCutKeyMapSet:Landroid/util/SparseArray;

    invoke-virtual {v4, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 64
    iget-object v4, p0, Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyMapFactory;->mAlternativeShortCutKeyMapSet:Landroid/util/SparseArray;

    return-object v4
.end method

.method public getShortCutKeyMapSet()Landroid/util/SparseArray;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyInfo;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 14
    const/4 v1, 0x0

    .line 15
    .local v1, "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyInfo;>;"
    invoke-static {}, Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyMap;->getShortCutKeyMap()[Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyInfo;

    move-result-object v2

    .line 17
    .local v2, "shortcutMap":[Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyInfo;
    const/4 v3, -0x1

    .line 18
    .local v3, "tempLangId":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_2

    .line 19
    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 20
    new-instance v1, Landroid/util/SparseArray;

    .end local v1    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyInfo;>;"
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 21
    .restart local v1    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyInfo;>;"
    aget-object v4, v2, v0

    invoke-virtual {v4}, Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyInfo;->getLanguageID()I

    move-result v3

    .line 27
    :cond_0
    :goto_1
    aget-object v4, v2, v0

    invoke-virtual {v4}, Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyInfo;->getKeyCode()I

    move-result v4

    aget-object v5, v2, v0

    invoke-virtual {v1, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 18
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 22
    :cond_1
    aget-object v4, v2, v0

    invoke-virtual {v4}, Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyInfo;->getLanguageID()I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 23
    iget-object v4, p0, Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyMapFactory;->mShortCutKeyMapSet:Landroid/util/SparseArray;

    invoke-virtual {v4, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 24
    aget-object v4, v2, v0

    invoke-virtual {v4}, Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyInfo;->getLanguageID()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyMapFactory;->getShortCutKeyMap(I)Landroid/util/SparseArray;

    move-result-object v1

    .line 25
    aget-object v4, v2, v0

    invoke-virtual {v4}, Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyInfo;->getLanguageID()I

    move-result v3

    goto :goto_1

    .line 29
    :cond_2
    iget-object v4, p0, Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyMapFactory;->mShortCutKeyMapSet:Landroid/util/SparseArray;

    invoke-virtual {v4, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 32
    iget-object v4, p0, Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyMapFactory;->mShortCutKeyMapSet:Landroid/util/SparseArray;

    return-object v4
.end method
