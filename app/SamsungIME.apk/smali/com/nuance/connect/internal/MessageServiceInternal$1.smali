.class Lcom/nuance/connect/internal/MessageServiceInternal$1;
.super Ljava/lang/Object;
.source "MessageServiceInternal.java"

# interfaces
.implements Lcom/nuance/connect/internal/ConnectHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/internal/MessageServiceInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/internal/MessageServiceInternal;


# direct methods
.method constructor <init>(Lcom/nuance/connect/internal/MessageServiceInternal;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/nuance/connect/internal/MessageServiceInternal$1;->this$0:Lcom/nuance/connect/internal/MessageServiceInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHandlerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    const-string v0, "MessagingHandler"

    return-object v0
.end method

.method public getMessageIDs()[I
    .locals 3

    .prologue
    .line 87
    # getter for: Lcom/nuance/connect/internal/MessageServiceInternal;->MESSAGE_IDS:[Lcom/nuance/connect/internal/common/InternalMessages;
    invoke-static {}, Lcom/nuance/connect/internal/MessageServiceInternal;->access$300()[Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v2

    array-length v2, v2

    new-array v1, v2, [I

    .line 88
    .local v1, "messages":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    # getter for: Lcom/nuance/connect/internal/MessageServiceInternal;->MESSAGE_IDS:[Lcom/nuance/connect/internal/common/InternalMessages;
    invoke-static {}, Lcom/nuance/connect/internal/MessageServiceInternal;->access$300()[Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 89
    # getter for: Lcom/nuance/connect/internal/MessageServiceInternal;->MESSAGE_IDS:[Lcom/nuance/connect/internal/common/InternalMessages;
    invoke-static {}, Lcom/nuance/connect/internal/MessageServiceInternal;->access$300()[Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v2, v1, v0

    .line 88
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 91
    :cond_0
    return-object v1
.end method

.method public handleMessage(Landroid/os/Handler;Landroid/os/Message;)V
    .locals 4
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    .line 66
    sget-object v2, Lcom/nuance/connect/internal/MessageServiceInternal$2;->$SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I

    iget v3, p2, Landroid/os/Message;->what:I

    invoke-static {v3}, Lcom/nuance/connect/internal/common/InternalMessages;->fromInt(I)Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 68
    :pswitch_0
    iget-object v2, p0, Lcom/nuance/connect/internal/MessageServiceInternal$1;->this$0:Lcom/nuance/connect/internal/MessageServiceInternal;

    # getter for: Lcom/nuance/connect/internal/MessageServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v2}, Lcom/nuance/connect/internal/MessageServiceInternal;->access$000(Lcom/nuance/connect/internal/MessageServiceInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v2

    const-string v3, "MESSAGE_HOST_SEND_NOTIFICATION"

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 70
    new-instance v1, Lcom/nuance/connect/util/ConnectNotification;

    iget-object v2, p0, Lcom/nuance/connect/internal/MessageServiceInternal$1;->this$0:Lcom/nuance/connect/internal/MessageServiceInternal;

    # getter for: Lcom/nuance/connect/internal/MessageServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;
    invoke-static {v2}, Lcom/nuance/connect/internal/MessageServiceInternal;->access$100(Lcom/nuance/connect/internal/MessageServiceInternal;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/nuance/connect/util/ConnectNotification;-><init>(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;Landroid/os/Bundle;)V

    .line 72
    .local v1, "notification":Lcom/nuance/connect/util/ConnectNotification;
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "type"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "messageType":Ljava/lang/String;
    iget-object v2, p0, Lcom/nuance/connect/internal/MessageServiceInternal$1;->this$0:Lcom/nuance/connect/internal/MessageServiceInternal;

    # invokes: Lcom/nuance/connect/internal/MessageServiceInternal;->blockNotificationSend(Ljava/lang/String;)Z
    invoke-static {v2, v0}, Lcom/nuance/connect/internal/MessageServiceInternal;->access$200(Lcom/nuance/connect/internal/MessageServiceInternal;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 74
    invoke-virtual {v1}, Lcom/nuance/connect/util/ConnectNotification;->showAndCleanup()V

    goto :goto_0

    .line 66
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPostUpgrade()V
    .locals 0

    .prologue
    .line 101
    return-void
.end method
