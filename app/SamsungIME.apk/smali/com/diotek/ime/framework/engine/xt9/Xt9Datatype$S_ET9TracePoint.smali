.class public Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9TracePoint;
.super Ljava/lang/Object;
.source "Xt9Datatype.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "S_ET9TracePoint"
.end annotation


# instance fields
.field public nX:J

.field public nY:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0
    .param p1, "x"    # J
    .param p3, "y"    # J

    .prologue
    .line 1763
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1764
    iput-wide p1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9TracePoint;->nX:J

    .line 1765
    iput-wide p3, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9TracePoint;->nY:J

    .line 1766
    return-void
.end method
