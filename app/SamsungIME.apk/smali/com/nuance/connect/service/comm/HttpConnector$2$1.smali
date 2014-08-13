.class Lcom/nuance/connect/service/comm/HttpConnector$2$1;
.super Ljava/lang/Object;
.source "HttpConnector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/connect/service/comm/HttpConnector$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nuance/connect/service/comm/HttpConnector$2;


# direct methods
.method constructor <init>(Lcom/nuance/connect/service/comm/HttpConnector$2;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/nuance/connect/service/comm/HttpConnector$2$1;->this$1:Lcom/nuance/connect/service/comm/HttpConnector$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/nuance/connect/service/comm/HttpConnector$2$1;->this$1:Lcom/nuance/connect/service/comm/HttpConnector$2;

    iget-object v0, v0, Lcom/nuance/connect/service/comm/HttpConnector$2;->val$expiringServerConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 167
    return-void
.end method
