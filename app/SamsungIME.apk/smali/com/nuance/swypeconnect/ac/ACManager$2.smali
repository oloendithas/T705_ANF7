.class Lcom/nuance/swypeconnect/ac/ACManager$2;
.super Ljava/lang/Object;
.source "ACManager.java"

# interfaces
.implements Lcom/nuance/connect/api/ConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swypeconnect/ac/ACManager;->registerConnectionCallback(Lcom/nuance/swypeconnect/ac/ACManager$ACConnectionCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swypeconnect/ac/ACManager;

.field final synthetic val$callback:Lcom/nuance/swypeconnect/ac/ACManager$ACConnectionCallback;


# direct methods
.method constructor <init>(Lcom/nuance/swypeconnect/ac/ACManager;Lcom/nuance/swypeconnect/ac/ACManager$ACConnectionCallback;)V
    .locals 0

    .prologue
    .line 776
    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACManager$2;->this$0:Lcom/nuance/swypeconnect/ac/ACManager;

    iput-object p2, p0, Lcom/nuance/swypeconnect/ac/ACManager$2;->val$callback:Lcom/nuance/swypeconnect/ac/ACManager$ACConnectionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected(II)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "connectionMethod"    # I

    .prologue
    .line 780
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager$2;->val$callback:Lcom/nuance/swypeconnect/ac/ACManager$ACConnectionCallback;

    invoke-interface {v0, p1, p2}, Lcom/nuance/swypeconnect/ac/ACManager$ACConnectionCallback;->connected(II)V

    .line 782
    return-void
.end method

.method public onConnectionStatus(ILjava/lang/String;)V
    .locals 1
    .param p1, "statusCode"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 791
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 793
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager$2;->this$0:Lcom/nuance/swypeconnect/ac/ACManager;

    invoke-virtual {v0, p2}, Lcom/nuance/swypeconnect/ac/ACManager;->convertJSONTasksToServiceTasks(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 795
    :cond_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager$2;->val$callback:Lcom/nuance/swypeconnect/ac/ACManager$ACConnectionCallback;

    invoke-interface {v0, p1, p2}, Lcom/nuance/swypeconnect/ac/ACManager$ACConnectionCallback;->connectionStatus(ILjava/lang/String;)V

    .line 796
    return-void
.end method

.method public onDisconnected(I)V
    .locals 1
    .param p1, "connectionMethod"    # I

    .prologue
    .line 786
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager$2;->val$callback:Lcom/nuance/swypeconnect/ac/ACManager$ACConnectionCallback;

    invoke-interface {v0, p1}, Lcom/nuance/swypeconnect/ac/ACManager$ACConnectionCallback;->disconnected(I)V

    .line 787
    return-void
.end method
