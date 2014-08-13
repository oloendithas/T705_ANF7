.class Lcom/nuance/connect/service/comm/HttpConnector$2;
.super Ljava/lang/Object;
.source "HttpConnector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/connect/service/comm/HttpConnector;->processCommand(Lcom/nuance/connect/service/comm/Command;Lcom/nuance/connect/service/comm/Transaction;Lcom/nuance/connect/service/comm/CommandQueue$NetworkExpirer;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/service/comm/HttpConnector;

.field final synthetic val$expiringServerConn:Ljava/net/HttpURLConnection;


# direct methods
.method constructor <init>(Lcom/nuance/connect/service/comm/HttpConnector;Ljava/net/HttpURLConnection;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/nuance/connect/service/comm/HttpConnector$2;->this$0:Lcom/nuance/connect/service/comm/HttpConnector;

    iput-object p2, p0, Lcom/nuance/connect/service/comm/HttpConnector$2;->val$expiringServerConn:Ljava/net/HttpURLConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 160
    iget-object v1, p0, Lcom/nuance/connect/service/comm/HttpConnector$2;->this$0:Lcom/nuance/connect/service/comm/HttpConnector;

    # getter for: Lcom/nuance/connect/service/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v1}, Lcom/nuance/connect/service/comm/HttpConnector;->access$000(Lcom/nuance/connect/service/comm/HttpConnector;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v1

    const-string v2, "Expired - disconnecting"

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 163
    new-instance v0, Lcom/nuance/connect/service/comm/HttpConnector$2$1;

    invoke-direct {v0, p0}, Lcom/nuance/connect/service/comm/HttpConnector$2$1;-><init>(Lcom/nuance/connect/service/comm/HttpConnector$2;)V

    .line 169
    .local v0, "r":Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 170
    return-void
.end method
