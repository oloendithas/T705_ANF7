.class Lcom/nuance/connect/service/ConnectClient$7;
.super Ljava/lang/Object;
.source "ConnectClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/connect/service/ConnectClient;->sendMessageToHostDelayed(Lcom/nuance/connect/internal/common/InternalMessages;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/service/ConnectClient;

.field final synthetic val$what:Lcom/nuance/connect/internal/common/InternalMessages;


# direct methods
.method constructor <init>(Lcom/nuance/connect/service/ConnectClient;Lcom/nuance/connect/internal/common/InternalMessages;)V
    .locals 0

    .prologue
    .line 489
    iput-object p1, p0, Lcom/nuance/connect/service/ConnectClient$7;->this$0:Lcom/nuance/connect/service/ConnectClient;

    iput-object p2, p0, Lcom/nuance/connect/service/ConnectClient$7;->val$what:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 491
    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient$7;->this$0:Lcom/nuance/connect/service/ConnectClient;

    iget-object v1, p0, Lcom/nuance/connect/service/ConnectClient$7;->val$what:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;)V

    .line 492
    return-void
.end method
