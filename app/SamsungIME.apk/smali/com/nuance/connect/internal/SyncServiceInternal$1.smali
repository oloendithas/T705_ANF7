.class Lcom/nuance/connect/internal/SyncServiceInternal$1;
.super Ljava/lang/Object;
.source "SyncServiceInternal.java"

# interfaces
.implements Lcom/nuance/connect/internal/ConnectHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/internal/SyncServiceInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/internal/SyncServiceInternal;


# direct methods
.method constructor <init>(Lcom/nuance/connect/internal/SyncServiceInternal;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/nuance/connect/internal/SyncServiceInternal$1;->this$0:Lcom/nuance/connect/internal/SyncServiceInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHandlerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 206
    const-string v0, "SyncHandler"

    return-object v0
.end method

.method public getMessageIDs()[I
    .locals 3

    .prologue
    .line 197
    # getter for: Lcom/nuance/connect/internal/SyncServiceInternal;->MESSAGE_IDS:[Lcom/nuance/connect/internal/common/InternalMessages;
    invoke-static {}, Lcom/nuance/connect/internal/SyncServiceInternal;->access$300()[Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v2

    array-length v2, v2

    new-array v1, v2, [I

    .line 198
    .local v1, "messages":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    # getter for: Lcom/nuance/connect/internal/SyncServiceInternal;->MESSAGE_IDS:[Lcom/nuance/connect/internal/common/InternalMessages;
    invoke-static {}, Lcom/nuance/connect/internal/SyncServiceInternal;->access$300()[Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 199
    # getter for: Lcom/nuance/connect/internal/SyncServiceInternal;->MESSAGE_IDS:[Lcom/nuance/connect/internal/common/InternalMessages;
    invoke-static {}, Lcom/nuance/connect/internal/SyncServiceInternal;->access$300()[Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v2, v1, v0

    .line 198
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 201
    :cond_0
    return-object v1
.end method

.method public handleMessage(Landroid/os/Handler;Landroid/os/Message;)V
    .locals 12
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    .line 134
    sget-object v9, Lcom/nuance/connect/internal/SyncServiceInternal$2;->$SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I

    iget v10, p2, Landroid/os/Message;->what:I

    invoke-static {v10}, Lcom/nuance/connect/internal/common/InternalMessages;->fromInt(I)Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 136
    :pswitch_0
    iget-object v9, p0, Lcom/nuance/connect/internal/SyncServiceInternal$1;->this$0:Lcom/nuance/connect/internal/SyncServiceInternal;

    # getter for: Lcom/nuance/connect/internal/SyncServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v9}, Lcom/nuance/connect/internal/SyncServiceInternal;->access$000(Lcom/nuance/connect/internal/SyncServiceInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v9

    const-string v10, "MESSAGE_HOST_DLM_BACKUP_REQUEST"

    invoke-interface {v9, v10}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    .line 137
    iget-object v9, p0, Lcom/nuance/connect/internal/SyncServiceInternal$1;->this$0:Lcom/nuance/connect/internal/SyncServiceInternal;

    # getter for: Lcom/nuance/connect/internal/SyncServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;
    invoke-static {v9}, Lcom/nuance/connect/internal/SyncServiceInternal;->access$100(Lcom/nuance/connect/internal/SyncServiceInternal;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    move-result-object v9

    sget-object v10, Lcom/nuance/connect/common/ConnectFeature;->DLM:Lcom/nuance/connect/common/ConnectFeature;

    invoke-virtual {v9, v10}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getFeatureService(Lcom/nuance/connect/common/ConnectFeature;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/connect/internal/DLMServiceInternal;

    .line 139
    .local v2, "dlm":Lcom/nuance/connect/internal/DLMServiceInternal;
    iget-object v9, p0, Lcom/nuance/connect/internal/SyncServiceInternal$1;->this$0:Lcom/nuance/connect/internal/SyncServiceInternal;

    invoke-virtual {v9}, Lcom/nuance/connect/internal/SyncServiceInternal;->dlmSyncAllowed()Z

    move-result v9

    if-eqz v9, :cond_0

    if-eqz v2, :cond_0

    .line 142
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 143
    .local v0, "b":Landroid/os/Bundle;
    const-string v9, "DLM_EVENT_CATEGORY"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 144
    .local v1, "category":I
    invoke-virtual {v2, v1}, Lcom/nuance/connect/internal/DLMServiceInternal;->backupDlm(I)Z

    goto :goto_0

    .line 148
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v1    # "category":I
    .end local v2    # "dlm":Lcom/nuance/connect/internal/DLMServiceInternal;
    :pswitch_1
    iget-object v9, p0, Lcom/nuance/connect/internal/SyncServiceInternal$1;->this$0:Lcom/nuance/connect/internal/SyncServiceInternal;

    # getter for: Lcom/nuance/connect/internal/SyncServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v9}, Lcom/nuance/connect/internal/SyncServiceInternal;->access$000(Lcom/nuance/connect/internal/SyncServiceInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v9

    const-string v10, "MESSAGE_HOST_DLM_RESTORE"

    invoke-interface {v9, v10}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    .line 149
    iget-object v9, p0, Lcom/nuance/connect/internal/SyncServiceInternal$1;->this$0:Lcom/nuance/connect/internal/SyncServiceInternal;

    # getter for: Lcom/nuance/connect/internal/SyncServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;
    invoke-static {v9}, Lcom/nuance/connect/internal/SyncServiceInternal;->access$100(Lcom/nuance/connect/internal/SyncServiceInternal;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    move-result-object v9

    sget-object v10, Lcom/nuance/connect/common/ConnectFeature;->DLM:Lcom/nuance/connect/common/ConnectFeature;

    invoke-virtual {v9, v10}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getFeatureService(Lcom/nuance/connect/common/ConnectFeature;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/connect/internal/DLMServiceInternal;

    .line 151
    .restart local v2    # "dlm":Lcom/nuance/connect/internal/DLMServiceInternal;
    iget-object v9, p0, Lcom/nuance/connect/internal/SyncServiceInternal$1;->this$0:Lcom/nuance/connect/internal/SyncServiceInternal;

    invoke-virtual {v9}, Lcom/nuance/connect/internal/SyncServiceInternal;->dlmSyncAllowed()Z

    move-result v9

    if-eqz v9, :cond_0

    if-eqz v2, :cond_0

    .line 155
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 156
    .restart local v0    # "b":Landroid/os/Bundle;
    const-string v9, "DLM_EVENT_FILE"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 157
    .local v6, "fileName":Ljava/lang/String;
    if-nez v6, :cond_1

    .line 159
    iget-object v9, p0, Lcom/nuance/connect/internal/SyncServiceInternal$1;->this$0:Lcom/nuance/connect/internal/SyncServiceInternal;

    # getter for: Lcom/nuance/connect/internal/SyncServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v9}, Lcom/nuance/connect/internal/SyncServiceInternal;->access$000(Lcom/nuance/connect/internal/SyncServiceInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v9

    const-string v10, "No events file found"

    invoke-interface {v9, v10}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto :goto_0

    .line 162
    :cond_1
    const-string v9, "DLM_EVENT_CATEGORY"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 163
    .restart local v1    # "category":I
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 164
    .local v4, "eventsFile":Ljava/io/File;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 165
    .local v3, "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 167
    :try_start_0
    new-instance v8, Ljava/util/Scanner;

    const-string v9, "UTF-8"

    invoke-direct {v8, v4, v9}, Ljava/util/Scanner;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 168
    .local v8, "s":Ljava/util/Scanner;
    :goto_1
    invoke-virtual {v8}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 169
    invoke-virtual {v8}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 170
    .local v7, "line":Ljava/lang/String;
    if-nez v7, :cond_3

    .line 182
    .end local v7    # "line":Ljava/lang/String;
    .end local v8    # "s":Ljava/util/Scanner;
    :cond_2
    :goto_2
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v9

    if-nez v9, :cond_0

    .line 183
    iget-object v9, p0, Lcom/nuance/connect/internal/SyncServiceInternal$1;->this$0:Lcom/nuance/connect/internal/SyncServiceInternal;

    # getter for: Lcom/nuance/connect/internal/SyncServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v9}, Lcom/nuance/connect/internal/SyncServiceInternal;->access$000(Lcom/nuance/connect/internal/SyncServiceInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error deleting events file: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 173
    .restart local v7    # "line":Ljava/lang/String;
    .restart local v8    # "s":Ljava/util/Scanner;
    :cond_3
    :try_start_1
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 176
    .end local v7    # "line":Ljava/lang/String;
    .end local v8    # "s":Ljava/util/Scanner;
    :catch_0
    move-exception v5

    .line 177
    .local v5, "ex":Ljava/io/FileNotFoundException;
    iget-object v9, p0, Lcom/nuance/connect/internal/SyncServiceInternal$1;->this$0:Lcom/nuance/connect/internal/SyncServiceInternal;

    # getter for: Lcom/nuance/connect/internal/SyncServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v9}, Lcom/nuance/connect/internal/SyncServiceInternal;->access$000(Lcom/nuance/connect/internal/SyncServiceInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error finding file for category install: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto :goto_2

    .line 188
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v1    # "category":I
    .end local v2    # "dlm":Lcom/nuance/connect/internal/DLMServiceInternal;
    .end local v3    # "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "eventsFile":Ljava/io/File;
    .end local v5    # "ex":Ljava/io/FileNotFoundException;
    .end local v6    # "fileName":Ljava/lang/String;
    :pswitch_2
    iget-object v9, p0, Lcom/nuance/connect/internal/SyncServiceInternal$1;->this$0:Lcom/nuance/connect/internal/SyncServiceInternal;

    # getter for: Lcom/nuance/connect/internal/SyncServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v9}, Lcom/nuance/connect/internal/SyncServiceInternal;->access$000(Lcom/nuance/connect/internal/SyncServiceInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v9

    const-string v10, "MESSAGE_HOST_GET_DLM_STATUS"

    invoke-interface {v9, v10}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    .line 189
    iget-object v9, p0, Lcom/nuance/connect/internal/SyncServiceInternal$1;->this$0:Lcom/nuance/connect/internal/SyncServiceInternal;

    # invokes: Lcom/nuance/connect/internal/SyncServiceInternal;->sendDLMSyncStatus()V
    invoke-static {v9}, Lcom/nuance/connect/internal/SyncServiceInternal;->access$200(Lcom/nuance/connect/internal/SyncServiceInternal;)V

    goto/16 :goto_0

    .line 134
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPostUpgrade()V
    .locals 0

    .prologue
    .line 211
    return-void
.end method
