.class public Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;
.super Ljava/lang/Object;
.source "Xt9Datatype.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "S_ET9CPSpell"
.end annotation


# instance fields
.field public bLen:B

.field public pSymbs:[C


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1772
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1773
    const/16 v0, 0xe0

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->pSymbs:[C

    return-void
.end method


# virtual methods
.method public init()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1777
    iput-byte v2, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->bLen:B

    .line 1778
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xe0

    if-ge v0, v1, :cond_0

    .line 1779
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9CPSpell;->pSymbs:[C

    aput-char v2, v1, v0

    .line 1778
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1781
    :cond_0
    return-void
.end method
