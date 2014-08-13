.class Lcom/nuance/connect/internal/DLMServiceInternal$2;
.super Ljava/lang/Object;
.source "DLMServiceInternal.java"

# interfaces
.implements Lcom/nuance/connect/internal/ConnectHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/internal/DLMServiceInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/internal/DLMServiceInternal;


# direct methods
.method constructor <init>(Lcom/nuance/connect/internal/DLMServiceInternal;)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lcom/nuance/connect/internal/DLMServiceInternal$2;->this$0:Lcom/nuance/connect/internal/DLMServiceInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHandlerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 259
    const-string v0, "DLMHandler"

    return-object v0
.end method

.method public getMessageIDs()[I
    .locals 3

    .prologue
    .line 250
    # getter for: Lcom/nuance/connect/internal/DLMServiceInternal;->MESSAGE_IDS:[Lcom/nuance/connect/internal/common/InternalMessages;
    invoke-static {}, Lcom/nuance/connect/internal/DLMServiceInternal;->access$300()[Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v2

    array-length v2, v2

    new-array v1, v2, [I

    .line 251
    .local v1, "messages":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    # getter for: Lcom/nuance/connect/internal/DLMServiceInternal;->MESSAGE_IDS:[Lcom/nuance/connect/internal/common/InternalMessages;
    invoke-static {}, Lcom/nuance/connect/internal/DLMServiceInternal;->access$300()[Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 252
    # getter for: Lcom/nuance/connect/internal/DLMServiceInternal;->MESSAGE_IDS:[Lcom/nuance/connect/internal/common/InternalMessages;
    invoke-static {}, Lcom/nuance/connect/internal/DLMServiceInternal;->access$300()[Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v2, v1, v0

    .line 251
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 254
    :cond_0
    return-object v1
.end method

.method public handleMessage(Landroid/os/Handler;Landroid/os/Message;)V
    .locals 8
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    .line 219
    sget-object v6, Lcom/nuance/connect/internal/DLMServiceInternal$3;->$SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I

    iget v7, p2, Landroid/os/Message;->what:I

    invoke-static {v7}, Lcom/nuance/connect/internal/common/InternalMessages;->fromInt(I)Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 246
    :goto_0
    return-void

    .line 221
    :pswitch_0
    iget-object v6, p0, Lcom/nuance/connect/internal/DLMServiceInternal$2;->this$0:Lcom/nuance/connect/internal/DLMServiceInternal;

    # getter for: Lcom/nuance/connect/internal/DLMServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v6}, Lcom/nuance/connect/internal/DLMServiceInternal;->access$000(Lcom/nuance/connect/internal/DLMServiceInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v6

    const-string v7, "MESSAGE_HOST_PROCESS_DLM_EVENTS"

    invoke-interface {v6, v7}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    .line 222
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 223
    .local v1, "b":Landroid/os/Bundle;
    const-string v6, "DLM_EVENT_FILE"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 224
    .local v5, "location":Ljava/lang/String;
    const-string v6, "DLM_EVENT_CATEGORY"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 225
    .local v2, "category":I
    const-string v6, "DLM_EVENT_ACK"

    sget-object v7, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_PROCESS_DLM_EVENTS_ACK:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 227
    .local v0, "ackMessage":I
    const-string v6, "IDENTIFIER"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 229
    .local v3, "identifier":Ljava/lang/String;
    iget-object v6, p0, Lcom/nuance/connect/internal/DLMServiceInternal$2;->this$0:Lcom/nuance/connect/internal/DLMServiceInternal;

    invoke-virtual {v6, v2, v5, v0, v3}, Lcom/nuance/connect/internal/DLMServiceInternal;->recordDLMRecordset(ILjava/lang/String;ILjava/lang/String;)Z

    .line 230
    iget-object v6, p0, Lcom/nuance/connect/internal/DLMServiceInternal$2;->this$0:Lcom/nuance/connect/internal/DLMServiceInternal;

    invoke-virtual {v6, v2}, Lcom/nuance/connect/internal/DLMServiceInternal;->processDLMCategory(I)V

    goto :goto_0

    .line 234
    .end local v0    # "ackMessage":I
    .end local v1    # "b":Landroid/os/Bundle;
    .end local v2    # "category":I
    .end local v3    # "identifier":Ljava/lang/String;
    .end local v5    # "location":Ljava/lang/String;
    :pswitch_1
    iget-object v6, p0, Lcom/nuance/connect/internal/DLMServiceInternal$2;->this$0:Lcom/nuance/connect/internal/DLMServiceInternal;

    # getter for: Lcom/nuance/connect/internal/DLMServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v6}, Lcom/nuance/connect/internal/DLMServiceInternal;->access$000(Lcom/nuance/connect/internal/DLMServiceInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v6

    const-string v7, "MESSAGE_HOST_PROCESS_DLM_DELETE_CATEGORY"

    invoke-interface {v6, v7}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    .line 235
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 236
    .restart local v1    # "b":Landroid/os/Bundle;
    const-string v6, "DLM_DELETE_CAETEGORY"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 237
    .restart local v2    # "category":I
    const-string v6, "DLM_DELETE_LANGUAGE"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 238
    .local v4, "language":I
    const-string v6, "DLM_EVENT_ACK"

    sget-object v7, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_PROCESS_CATEGORY_DELETE_CATEGORY_ACK:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 241
    .restart local v0    # "ackMessage":I
    iget-object v6, p0, Lcom/nuance/connect/internal/DLMServiceInternal$2;->this$0:Lcom/nuance/connect/internal/DLMServiceInternal;

    invoke-virtual {v6, v2, v4, v0}, Lcom/nuance/connect/internal/DLMServiceInternal;->recordDLMDeleteCategory(III)Z

    .line 242
    iget-object v6, p0, Lcom/nuance/connect/internal/DLMServiceInternal$2;->this$0:Lcom/nuance/connect/internal/DLMServiceInternal;

    invoke-virtual {v6, v2}, Lcom/nuance/connect/internal/DLMServiceInternal;->processDLMCategory(I)V

    goto :goto_0

    .line 219
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPostUpgrade()V
    .locals 0

    .prologue
    .line 264
    return-void
.end method
