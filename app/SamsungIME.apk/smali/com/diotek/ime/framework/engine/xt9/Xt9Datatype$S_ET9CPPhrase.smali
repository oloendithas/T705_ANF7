.class public Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;
.super Ljava/lang/Object;
.source "Xt9Datatype.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "S_ET9CPPhrase"
.end annotation


# instance fields
.field public bLen:B

.field public pSymbs:[C


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1784
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1785
    const/16 v0, 0x20

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;->pSymbs:[C

    return-void
.end method


# virtual methods
.method public init()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1789
    iput-byte v2, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;->bLen:B

    .line 1790
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    .line 1791
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPPhrase;->pSymbs:[C

    aput-char v2, v1, v0

    .line 1790
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1793
    :cond_0
    return-void
.end method
