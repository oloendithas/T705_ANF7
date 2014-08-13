.class public Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9WordSymbInfo;
.super Ljava/lang/Object;
.source "Xt9Datatype.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "S_ET9WordSymbInfo"
.end annotation


# instance fields
.field public Private:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9WordSymbInfoPrivate;

.field public SymbsInfo:[Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9SymbInfo;

.field public bNumSymbs:B

.field public dwStateBits:I

.field public wInitOK:S


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0x40

    .line 705
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 699
    new-array v1, v3, [Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9SymbInfo;

    iput-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9WordSymbInfo;->SymbsInfo:[Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9SymbInfo;

    .line 702
    new-instance v1, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9WordSymbInfoPrivate;

    invoke-direct {v1}, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9WordSymbInfoPrivate;-><init>()V

    iput-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9WordSymbInfo;->Private:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9WordSymbInfoPrivate;

    .line 706
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 707
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9WordSymbInfo;->SymbsInfo:[Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9SymbInfo;

    new-instance v2, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9SymbInfo;

    invoke-direct {v2}, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9SymbInfo;-><init>()V

    aput-object v2, v1, v0

    .line 706
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 709
    :cond_0
    return-void
.end method
