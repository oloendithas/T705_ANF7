.class Lcom/nuance/connect/service/comm/CommandQueue$5;
.super Ljava/lang/Object;
.source "CommandQueue.java"

# interfaces
.implements Lcom/nuance/connect/service/comm/CommandQueue$ConnectionStatus;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/service/comm/CommandQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/service/comm/CommandQueue;


# direct methods
.method constructor <init>(Lcom/nuance/connect/service/comm/CommandQueue;)V
    .locals 0

    .prologue
    .line 407
    iput-object p1, p0, Lcom/nuance/connect/service/comm/CommandQueue$5;->this$0:Lcom/nuance/connect/service/comm/CommandQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isConnected()Z
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue$5;->this$0:Lcom/nuance/connect/service/comm/CommandQueue;

    invoke-virtual {v0}, Lcom/nuance/connect/service/comm/CommandQueue;->isOnline()Z

    move-result v0

    return v0
.end method
