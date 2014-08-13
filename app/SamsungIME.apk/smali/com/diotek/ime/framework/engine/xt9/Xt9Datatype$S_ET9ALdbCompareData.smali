.class public Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9ALdbCompareData;
.super Ljava/lang/Object;
.source "Xt9Datatype.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "S_ET9ALdbCompareData"
.end annotation


# instance fields
.field public bActiveCmpLength:B

.field public bFirstPosSetOpt:Z

.field public bPosHi:B

.field public bPosLo:B

.field public bSpcActive:Z

.field public bSpcExactCompare:Z

.field public bSpcExactFilter:Z

.field public bSpcFilteredCompare:Z

.field public bSpcLengthOffset:B

.field public bSpcMaxEdits:B

.field public pbLocked:[B

.field public ppbActive:[[B

.field public ppbExact:[[B

.field public ppbFreq:[[B

.field public pppbActiveSpc:[[[B

.field public wLength:S


# direct methods
.method public constructor <init>()V
    .locals 10

    .prologue
    const/16 v9, 0x88

    const/16 v8, 0xb

    const/4 v7, 0x7

    const/16 v6, 0x11

    const/16 v5, 0x20

    .line 1366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1353
    filled-new-array {v5, v6}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[B

    iput-object v2, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9ALdbCompareData;->ppbActive:[[B

    .line 1354
    filled-new-array {v5, v6}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[B

    iput-object v2, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9ALdbCompareData;->ppbExact:[[B

    .line 1355
    filled-new-array {v7, v5, v6}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[[B

    iput-object v2, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9ALdbCompareData;->pppbActiveSpc:[[[B

    .line 1362
    filled-new-array {v8, v9}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[B

    iput-object v2, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9ALdbCompareData;->ppbFreq:[[B

    .line 1364
    new-array v2, v5, [B

    iput-object v2, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9ALdbCompareData;->pbLocked:[B

    .line 1369
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_0

    .line 1370
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9ALdbCompareData;->ppbActive:[[B

    new-array v3, v6, [B

    aput-object v3, v2, v0

    .line 1369
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1373
    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v5, :cond_1

    .line 1374
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9ALdbCompareData;->ppbExact:[[B

    new-array v3, v6, [B

    aput-object v3, v2, v0

    .line 1373
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1377
    :cond_1
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v7, :cond_3

    .line 1378
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9ALdbCompareData;->pppbActiveSpc:[[[B

    filled-new-array {v5, v6}, [I

    move-result-object v2

    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[B

    aput-object v2, v3, v0

    .line 1380
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_3
    if-ge v1, v5, :cond_2

    .line 1381
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9ALdbCompareData;->pppbActiveSpc:[[[B

    aget-object v2, v2, v0

    new-array v3, v6, [B

    aput-object v3, v2, v1

    .line 1380
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1377
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1385
    .end local v1    # "j":I
    :cond_3
    const/4 v0, 0x0

    :goto_4
    if-ge v0, v8, :cond_4

    .line 1386
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9ALdbCompareData;->ppbFreq:[[B

    new-array v3, v9, [B

    aput-object v3, v2, v0

    .line 1385
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1389
    :cond_4
    return-void
.end method
