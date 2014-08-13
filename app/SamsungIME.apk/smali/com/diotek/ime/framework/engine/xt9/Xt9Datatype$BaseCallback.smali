.class public Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$BaseCallback;
.super Ljava/lang/Object;
.source "Xt9Datatype.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BaseCallback"
.end annotation


# instance fields
.field public multitapStartTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 530
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 531
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$BaseCallback;->multitapStartTime:J

    return-void
.end method


# virtual methods
.method public GetCurrentTimeMillis()J
    .locals 2

    .prologue
    .line 542
    const-wide/16 v0, 0x0

    .line 543
    .local v0, "msec":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 545
    return-wide v0
.end method

.method public GetMultitapStartTime()J
    .locals 2

    .prologue
    .line 534
    iget-wide v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$BaseCallback;->multitapStartTime:J

    return-wide v0
.end method

.method public SetMultitapStartTime(J)V
    .locals 0
    .param p1, "startTime"    # J

    .prologue
    .line 538
    iput-wide p1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$BaseCallback;->multitapStartTime:J

    .line 539
    return-void
.end method

.method public printMessage(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 550
    const-string v0, "SamsungIME"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    return-void
.end method
