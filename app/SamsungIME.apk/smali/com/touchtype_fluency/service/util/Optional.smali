.class Lcom/touchtype_fluency/service/util/Optional;
.super Ljava/lang/Object;
.source "Optional.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    .local p0, "this":Lcom/touchtype_fluency/service/util/Optional;, "Lcom/touchtype_fluency/service/util/Optional<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/touchtype_fluency/service/util/Optional;->value:Ljava/lang/Object;

    .line 10
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 12
    .local p0, "this":Lcom/touchtype_fluency/service/util/Optional;, "Lcom/touchtype_fluency/service/util/Optional<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/touchtype_fluency/service/util/Optional;->value:Ljava/lang/Object;

    .line 14
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 33
    .local p0, "this":Lcom/touchtype_fluency/service/util/Optional;, "Lcom/touchtype_fluency/service/util/Optional<TT;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/touchtype_fluency/service/util/Optional;->value:Ljava/lang/Object;

    .line 34
    return-void
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 21
    .local p0, "this":Lcom/touchtype_fluency/service/util/Optional;, "Lcom/touchtype_fluency/service/util/Optional<TT;>;"
    invoke-virtual {p0}, Lcom/touchtype_fluency/service/util/Optional;->isDefined()Z

    move-result v0

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/touchtype_fluency/service/util/Optional;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public isDefined()Z
    .locals 1

    .prologue
    .line 17
    .local p0, "this":Lcom/touchtype_fluency/service/util/Optional;, "Lcom/touchtype_fluency/service/util/Optional<TT;>;"
    iget-object v0, p0, Lcom/touchtype_fluency/service/util/Optional;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p0, "this":Lcom/touchtype_fluency/service/util/Optional;, "Lcom/touchtype_fluency/service/util/Optional<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lcom/touchtype_fluency/service/util/Optional;->value:Ljava/lang/Object;

    .line 30
    return-void
.end method
