.class public Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9SavedInputWords;
.super Ljava/lang/Object;
.source "Xt9Datatype.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "S_ET9SavedInputWords"
.end annotation


# instance fields
.field public pSavedWords:[Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9SavedInputWord;

.field public sInputs:[Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9SavedInputSymb;

.field public sWords:[S

.field public wCurrInputSaveIndex:S


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/16 v4, 0x40

    const/16 v3, 0x200

    .line 652
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 648
    new-array v1, v4, [Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9SavedInputWord;

    iput-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9SavedInputWords;->pSavedWords:[Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9SavedInputWord;

    .line 649
    new-array v1, v3, [S

    iput-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9SavedInputWords;->sWords:[S

    .line 650
    new-array v1, v3, [Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9SavedInputSymb;

    iput-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9SavedInputWords;->sInputs:[Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9SavedInputSymb;

    .line 653
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 654
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9SavedInputWords;->pSavedWords:[Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9SavedInputWord;

    new-instance v2, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9SavedInputWord;

    invoke-direct {v2}, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9SavedInputWord;-><init>()V

    aput-object v2, v1, v0

    .line 653
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 657
    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_1

    .line 658
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9SavedInputWords;->sInputs:[Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9SavedInputSymb;

    new-instance v2, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9SavedInputSymb;

    invoke-direct {v2}, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9SavedInputSymb;-><init>()V

    aput-object v2, v1, v0

    .line 657
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 660
    :cond_1
    return-void
.end method
