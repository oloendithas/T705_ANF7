.class public Lcom/diotek/ime/framework/input/umlaut/UmlautMapFactory;
.super Ljava/lang/Object;
.source "UmlautMapFactory.java"


# instance fields
.field private mIsSwiftKeyMode:Z

.field private mUmlautMapSet:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/diotek/ime/framework/input/umlaut/UmlautInfo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Z)V
    .locals 3
    .param p1, "isSwiftKeyMode"    # Z

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xa

    const/high16 v2, 0x40a00000

    invoke-direct {v0, v1, v2}, Ljava/util/HashMap;-><init>(IF)V

    iput-object v0, p0, Lcom/diotek/ime/framework/input/umlaut/UmlautMapFactory;->mUmlautMapSet:Ljava/util/HashMap;

    .line 12
    iput-boolean p1, p0, Lcom/diotek/ime/framework/input/umlaut/UmlautMapFactory;->mIsSwiftKeyMode:Z

    .line 13
    return-void
.end method

.method private getUmlautMap(Ljava/lang/String;)Ljava/util/HashMap;
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
            "Lcom/diotek/ime/framework/input/umlaut/UmlautInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    iget-object v1, p0, Lcom/diotek/ime/framework/input/umlaut/UmlautMapFactory;->mUmlautMapSet:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 43
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/diotek/ime/framework/input/umlaut/UmlautInfo;>;"
    if-eqz v0, :cond_0

    .line 44
    iget-object v1, p0, Lcom/diotek/ime/framework/input/umlaut/UmlautMapFactory;->mUmlautMapSet:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    :goto_0
    return-object v0

    .line 46
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/diotek/ime/framework/input/umlaut/UmlautInfo;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .restart local v0    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/diotek/ime/framework/input/umlaut/UmlautInfo;>;"
    goto :goto_0
.end method


# virtual methods
.method public getUmlautMapSet()Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/diotek/ime/framework/input/umlaut/UmlautInfo;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 16
    const/4 v1, 0x0

    .line 17
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/diotek/ime/framework/input/umlaut/UmlautInfo;>;"
    const/4 v3, 0x0

    .line 18
    .local v3, "umlautMap":[Lcom/diotek/ime/framework/input/umlaut/UmlautInfo;
    iget-boolean v4, p0, Lcom/diotek/ime/framework/input/umlaut/UmlautMapFactory;->mIsSwiftKeyMode:Z

    if-eqz v4, :cond_2

    .line 19
    invoke-static {}, Lcom/diotek/ime/framework/input/umlaut/UmlautMapForSwiftKey;->getUmlautMap()[Lcom/diotek/ime/framework/input/umlaut/UmlautInfo;

    move-result-object v3

    .line 23
    :goto_0
    const-string v2, ""

    .line 24
    .local v2, "tempLangId":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_4

    .line 25
    const-string v4, ""

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 26
    new-instance v1, Ljava/util/HashMap;

    .end local v1    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/diotek/ime/framework/input/umlaut/UmlautInfo;>;"
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 27
    .restart local v1    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/diotek/ime/framework/input/umlaut/UmlautInfo;>;"
    aget-object v4, v3, v0

    invoke-virtual {v4}, Lcom/diotek/ime/framework/input/umlaut/UmlautInfo;->getLanguageID()Ljava/lang/String;

    move-result-object v2

    .line 33
    :cond_0
    :goto_2
    if-eqz v1, :cond_1

    .line 34
    aget-object v4, v3, v0

    invoke-virtual {v4}, Lcom/diotek/ime/framework/input/umlaut/UmlautInfo;->getKeyCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aget-object v5, v3, v0

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 21
    .end local v0    # "i":I
    .end local v2    # "tempLangId":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/diotek/ime/framework/input/umlaut/UmlautMap;->getUmlautMap()[Lcom/diotek/ime/framework/input/umlaut/UmlautInfo;

    move-result-object v3

    goto :goto_0

    .line 28
    .restart local v0    # "i":I
    .restart local v2    # "tempLangId":Ljava/lang/String;
    :cond_3
    aget-object v4, v3, v0

    invoke-virtual {v4}, Lcom/diotek/ime/framework/input/umlaut/UmlautInfo;->getLanguageID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 29
    iget-object v4, p0, Lcom/diotek/ime/framework/input/umlaut/UmlautMapFactory;->mUmlautMapSet:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    aget-object v4, v3, v0

    invoke-virtual {v4}, Lcom/diotek/ime/framework/input/umlaut/UmlautInfo;->getLanguageID()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/diotek/ime/framework/input/umlaut/UmlautMapFactory;->getUmlautMap(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 31
    aget-object v4, v3, v0

    invoke-virtual {v4}, Lcom/diotek/ime/framework/input/umlaut/UmlautInfo;->getLanguageID()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 37
    :cond_4
    iget-object v4, p0, Lcom/diotek/ime/framework/input/umlaut/UmlautMapFactory;->mUmlautMapSet:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    iget-object v4, p0, Lcom/diotek/ime/framework/input/umlaut/UmlautMapFactory;->mUmlautMapSet:Ljava/util/HashMap;

    return-object v4
.end method
