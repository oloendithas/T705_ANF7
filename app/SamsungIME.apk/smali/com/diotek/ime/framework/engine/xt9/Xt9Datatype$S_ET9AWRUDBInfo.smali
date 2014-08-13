.class public Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWRUDBInfo;
.super Ljava/lang/Object;
.source "Xt9Datatype.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "S_ET9AWRUDBInfo"
.end annotation


# instance fields
.field public bDataArea:[B

.field public dwOffsetSaver:I

.field public wDataCheck:S

.field public wDataSize:S

.field public wLastDelCutOffFreq:S

.field public wRDBWordCount:S

.field public wRemainingMemory:S

.field public wSavedOffset:S

.field public wSizeOffset:[S

.field public wUDBWordCount:S

.field public wUpdateCounter:S


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1602
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1612
    const/16 v0, 0xa

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWRUDBInfo;->wSizeOffset:[S

    .line 1613
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWRUDBInfo;->bDataArea:[B

    return-void
.end method
