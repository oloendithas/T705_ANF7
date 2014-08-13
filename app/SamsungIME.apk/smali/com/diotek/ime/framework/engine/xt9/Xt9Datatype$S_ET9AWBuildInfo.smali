.class public Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWBuildInfo;
.super Ljava/lang/Object;
.source "Xt9Datatype.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "S_ET9AWBuildInfo"
.end annotation


# instance fields
.field public bCaptureInvalidated:B

.field public bCurrCapture:B

.field public bLanguageSource:[B

.field public pCaptureActions:[Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWCaptureAction;

.field public pCaptures:[Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWCaptureBuild;

.field public pbDefaultCompLen:[B

.field public pbDefaultLen:[B

.field public pbFlushLen:[B

.field public pbFlushPos:[B

.field public psDefaultSymbs:[S

.field public psFlushedSymbs:[S

.field public pwDefaultPos:[S


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x6

    const/16 v3, 0x40

    .line 1085
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1068
    new-array v1, v3, [B

    iput-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWBuildInfo;->pbFlushPos:[B

    .line 1069
    new-array v1, v3, [B

    iput-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWBuildInfo;->pbFlushLen:[B

    .line 1071
    new-array v1, v3, [S

    iput-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWBuildInfo;->pwDefaultPos:[S

    .line 1072
    new-array v1, v3, [B

    iput-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWBuildInfo;->pbDefaultLen:[B

    .line 1073
    new-array v1, v3, [B

    iput-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWBuildInfo;->pbDefaultCompLen:[B

    .line 1075
    new-array v1, v3, [S

    iput-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWBuildInfo;->psFlushedSymbs:[S

    .line 1076
    const/16 v1, 0x200

    new-array v1, v1, [S

    iput-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWBuildInfo;->psDefaultSymbs:[S

    .line 1077
    new-array v1, v3, [B

    iput-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWBuildInfo;->bLanguageSource:[B

    .line 1079
    new-array v1, v4, [Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWCaptureBuild;

    iput-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWBuildInfo;->pCaptures:[Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWCaptureBuild;

    .line 1080
    new-array v1, v3, [Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWCaptureAction;

    iput-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWBuildInfo;->pCaptureActions:[Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWCaptureAction;

    .line 1086
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 1087
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWBuildInfo;->pCaptures:[Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWCaptureBuild;

    new-instance v2, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWCaptureBuild;

    invoke-direct {v2}, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWCaptureBuild;-><init>()V

    aput-object v2, v1, v0

    .line 1086
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1090
    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_1

    .line 1091
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWBuildInfo;->pCaptureActions:[Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWCaptureAction;

    new-instance v2, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWCaptureAction;

    invoke-direct {v2}, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWCaptureAction;-><init>()V

    aput-object v2, v1, v0

    .line 1090
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1093
    :cond_1
    return-void
.end method
