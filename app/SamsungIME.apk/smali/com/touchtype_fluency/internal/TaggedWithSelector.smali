.class public Lcom/touchtype_fluency/internal/TaggedWithSelector;
.super Ljava/lang/Object;
.source "TaggedWithSelector.java"

# interfaces
.implements Lcom/touchtype_fluency/TagSelector;


# instance fields
.field private withTags:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/touchtype_fluency/internal/TaggedWithSelector;->withTags:Ljava/util/Collection;

    .line 15
    return-void
.end method


# virtual methods
.method public apply(Ljava/util/Set;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 18
    iget-object v0, p0, Lcom/touchtype_fluency/internal/TaggedWithSelector;->withTags:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 19
    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    const/4 v0, 0x1

    .line 23
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 27
    instance-of v0, p1, Lcom/touchtype_fluency/internal/TaggedWithSelector;

    if-eqz v0, :cond_1

    .line 28
    check-cast p1, Lcom/touchtype_fluency/internal/TaggedWithSelector;

    .line 30
    const/4 v0, 0x1

    .line 31
    iget-object v1, p0, Lcom/touchtype_fluency/internal/TaggedWithSelector;->withTags:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 32
    iget-object v3, p1, Lcom/touchtype_fluency/internal/TaggedWithSelector;->withTags:Ljava/util/Collection;

    invoke-interface {v3, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    and-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    .line 34
    :cond_0
    iget-object v0, p1, Lcom/touchtype_fluency/internal/TaggedWithSelector;->withTags:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 35
    iget-object v3, p0, Lcom/touchtype_fluency/internal/TaggedWithSelector;->withTags:Ljava/util/Collection;

    invoke-interface {v3, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    and-int/2addr v1, v0

    goto :goto_1

    .line 39
    :cond_1
    const/4 v1, 0x0

    :cond_2
    return v1
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 43
    const/4 v0, 0x0

    .line 44
    iget-object v1, p0, Lcom/touchtype_fluency/internal/TaggedWithSelector;->withTags:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 45
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    xor-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    .line 47
    :cond_0
    return v1
.end method
