.class public Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9ASPCCompareData;
.super Ljava/lang/Object;
.source "Xt9Datatype.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "S_ET9ASPCCompareData"
.end annotation


# instance fields
.field public ppbCmpResultRowStore:[[B

.field public ppbFreqRowStore:[[B


# direct methods
.method constructor <init>()V
    .locals 5

    .prologue
    const/16 v4, 0x43

    const/16 v3, 0x9

    .line 1220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1217
    filled-new-array {v3, v4}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[B

    iput-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9ASPCCompareData;->ppbFreqRowStore:[[B

    .line 1218
    filled-new-array {v3, v4}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[B

    iput-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9ASPCCompareData;->ppbCmpResultRowStore:[[B

    .line 1221
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 1222
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9ASPCCompareData;->ppbFreqRowStore:[[B

    new-array v2, v4, [B

    aput-object v2, v1, v0

    .line 1221
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1225
    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_1

    .line 1226
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9ASPCCompareData;->ppbCmpResultRowStore:[[B

    new-array v2, v4, [B

    aput-object v2, v1, v0

    .line 1225
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1228
    :cond_1
    return-void
.end method
