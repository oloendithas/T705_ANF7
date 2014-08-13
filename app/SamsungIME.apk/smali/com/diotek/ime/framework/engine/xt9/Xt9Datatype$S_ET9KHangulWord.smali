.class public Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;
.super Ljava/lang/Object;
.source "Xt9Datatype.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "S_ET9KHangulWord"
.end annotation


# instance fields
.field public pSymbCounts:[S

.field public sString:[S

.field public wComplete:S

.field public wLen:S


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x40

    .line 1738
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1735
    new-array v0, v1, [S

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->sString:[S

    .line 1736
    new-array v0, v1, [S

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->pSymbCounts:[S

    .line 1739
    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->init()V

    .line 1740
    return-void
.end method


# virtual methods
.method public init()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1743
    iput-short v2, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->wLen:S

    .line 1744
    iput-short v2, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->wComplete:S

    .line 1745
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x40

    if-ge v0, v1, :cond_0

    .line 1746
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->sString:[S

    aput-short v2, v1, v0

    .line 1747
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9KHangulWord;->pSymbCounts:[S

    aput-short v2, v1, v0

    .line 1745
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1749
    :cond_0
    return-void
.end method
