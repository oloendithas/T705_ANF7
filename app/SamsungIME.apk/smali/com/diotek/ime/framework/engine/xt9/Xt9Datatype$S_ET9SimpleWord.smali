.class public Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9SimpleWord;
.super Ljava/lang/Object;
.source "Xt9Datatype.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "S_ET9SimpleWord"
.end annotation


# instance fields
.field public sString:[C

.field public wCompLen:S

.field public wLen:S


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 562
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 560
    const/16 v0, 0x40

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9SimpleWord;->sString:[C

    .line 563
    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9SimpleWord;->init()V

    .line 564
    return-void
.end method


# virtual methods
.method public init()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 567
    iput-short v2, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9SimpleWord;->wLen:S

    .line 568
    iput-short v2, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9SimpleWord;->wCompLen:S

    .line 569
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x40

    if-ge v0, v1, :cond_0

    .line 570
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9SimpleWord;->sString:[C

    aput-char v2, v1, v0

    .line 569
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 572
    :cond_0
    return-void
.end method
