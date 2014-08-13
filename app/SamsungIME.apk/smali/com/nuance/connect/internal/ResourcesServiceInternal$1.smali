.class Lcom/nuance/connect/internal/ResourcesServiceInternal$1;
.super Ljava/lang/Object;
.source "ResourcesServiceInternal.java"

# interfaces
.implements Lcom/nuance/connect/internal/ConnectHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/internal/ResourcesServiceInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/internal/ResourcesServiceInternal;


# direct methods
.method constructor <init>(Lcom/nuance/connect/internal/ResourcesServiceInternal;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$1;->this$0:Lcom/nuance/connect/internal/ResourcesServiceInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHandlerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    const-string v0, "ResourcesHandler"

    return-object v0
.end method

.method public getMessageIDs()[I
    .locals 3

    .prologue
    .line 207
    # getter for: Lcom/nuance/connect/internal/ResourcesServiceInternal;->MESSAGE_IDS:[Lcom/nuance/connect/internal/common/InternalMessages;
    invoke-static {}, Lcom/nuance/connect/internal/ResourcesServiceInternal;->access$700()[Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v2

    array-length v2, v2

    new-array v1, v2, [I

    .line 208
    .local v1, "messages":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    # getter for: Lcom/nuance/connect/internal/ResourcesServiceInternal;->MESSAGE_IDS:[Lcom/nuance/connect/internal/common/InternalMessages;
    invoke-static {}, Lcom/nuance/connect/internal/ResourcesServiceInternal;->access$700()[Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 209
    # getter for: Lcom/nuance/connect/internal/ResourcesServiceInternal;->MESSAGE_IDS:[Lcom/nuance/connect/internal/common/InternalMessages;
    invoke-static {}, Lcom/nuance/connect/internal/ResourcesServiceInternal;->access$700()[Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v2, v1, v0

    .line 208
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 211
    :cond_0
    return-object v1
.end method

.method public handleMessage(Landroid/os/Handler;Landroid/os/Message;)V
    .locals 12
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    .line 136
    sget-object v9, Lcom/nuance/connect/internal/ResourcesServiceInternal$6;->$SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I

    iget v10, p2, Landroid/os/Message;->what:I

    invoke-static {v10}, Lcom/nuance/connect/internal/common/InternalMessages;->fromInt(I)Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    .line 199
    iget-object v9, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$1;->this$0:Lcom/nuance/connect/internal/ResourcesServiceInternal;

    # getter for: Lcom/nuance/connect/internal/ResourcesServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v9}, Lcom/nuance/connect/internal/ResourcesServiceInternal;->access$000(Lcom/nuance/connect/internal/ResourcesServiceInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ResourcesServiceInternal - caught unexpected message: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p2, Landroid/os/Message;->what:I

    invoke-static {v11}, Lcom/nuance/connect/internal/common/InternalMessages;->fromInt(I)Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 138
    :pswitch_0
    iget-object v9, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$1;->this$0:Lcom/nuance/connect/internal/ResourcesServiceInternal;

    # getter for: Lcom/nuance/connect/internal/ResourcesServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v9}, Lcom/nuance/connect/internal/ResourcesServiceInternal;->access$000(Lcom/nuance/connect/internal/ResourcesServiceInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v9

    const-string v10, "MESSAGE_HOST_GET_CONNECT_RESOURCES"

    invoke-interface {v9, v10}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto :goto_0

    .line 142
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 143
    .local v0, "b":Landroid/os/Bundle;
    const-string v9, "KEY"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 144
    const-string v9, "KEY"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 145
    .local v6, "key":Ljava/lang/String;
    const-string v9, "PROP_LANGUAGE"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 146
    .local v7, "lang":Ljava/lang/String;
    const-string v9, "VALUE"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 147
    .local v8, "value":Ljava/lang/String;
    if-eqz v7, :cond_1

    .line 148
    iget-object v9, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$1;->this$0:Lcom/nuance/connect/internal/ResourcesServiceInternal;

    # getter for: Lcom/nuance/connect/internal/ResourcesServiceInternal;->resources:Lcom/nuance/connect/internal/ConnectResources;
    invoke-static {v9}, Lcom/nuance/connect/internal/ResourcesServiceInternal;->access$100(Lcom/nuance/connect/internal/ResourcesServiceInternal;)Lcom/nuance/connect/internal/ConnectResources;

    move-result-object v9

    invoke-virtual {v9, v6, v7, v8}, Lcom/nuance/connect/internal/ConnectResources;->setLanguageBitmap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :goto_1
    iget-object v9, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$1;->this$0:Lcom/nuance/connect/internal/ResourcesServiceInternal;

    # getter for: Lcom/nuance/connect/internal/ResourcesServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;
    invoke-static {v9}, Lcom/nuance/connect/internal/ResourcesServiceInternal;->access$200(Lcom/nuance/connect/internal/ResourcesServiceInternal;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    move-result-object v9

    const-string v10, "com.nuance.connect.DATA_AVAILABLE"

    const-string v11, "com.nuance.connect.TYPE_RESOURCES_DATA"

    invoke-virtual {v9, v10, v11}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->dispatchAction(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    goto :goto_0

    .line 150
    :cond_1
    iget-object v9, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$1;->this$0:Lcom/nuance/connect/internal/ResourcesServiceInternal;

    # getter for: Lcom/nuance/connect/internal/ResourcesServiceInternal;->resources:Lcom/nuance/connect/internal/ConnectResources;
    invoke-static {v9}, Lcom/nuance/connect/internal/ResourcesServiceInternal;->access$100(Lcom/nuance/connect/internal/ResourcesServiceInternal;)Lcom/nuance/connect/internal/ConnectResources;

    move-result-object v9

    invoke-virtual {v9, v6, v8}, Lcom/nuance/connect/internal/ConnectResources;->setBitmap(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 158
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "lang":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/String;
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 159
    .restart local v0    # "b":Landroid/os/Bundle;
    const-string v9, "KEY"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 160
    const-string v9, "KEY"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 161
    .restart local v6    # "key":Ljava/lang/String;
    const-string v9, "PROP_LANGUAGE"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 162
    .restart local v7    # "lang":Ljava/lang/String;
    const-string v9, "VALUE"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 163
    .restart local v8    # "value":Ljava/lang/String;
    if-eqz v7, :cond_2

    .line 164
    iget-object v9, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$1;->this$0:Lcom/nuance/connect/internal/ResourcesServiceInternal;

    # getter for: Lcom/nuance/connect/internal/ResourcesServiceInternal;->resources:Lcom/nuance/connect/internal/ConnectResources;
    invoke-static {v9}, Lcom/nuance/connect/internal/ResourcesServiceInternal;->access$100(Lcom/nuance/connect/internal/ResourcesServiceInternal;)Lcom/nuance/connect/internal/ConnectResources;

    move-result-object v9

    invoke-virtual {v9, v6, v7, v8}, Lcom/nuance/connect/internal/ConnectResources;->setLanguageString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    :goto_2
    iget-object v9, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$1;->this$0:Lcom/nuance/connect/internal/ResourcesServiceInternal;

    # getter for: Lcom/nuance/connect/internal/ResourcesServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;
    invoke-static {v9}, Lcom/nuance/connect/internal/ResourcesServiceInternal;->access$200(Lcom/nuance/connect/internal/ResourcesServiceInternal;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    move-result-object v9

    const-string v10, "com.nuance.connect.DATA_AVAILABLE"

    const-string v11, "com.nuance.connect.TYPE_RESOURCES_DATA"

    invoke-virtual {v9, v10, v11}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->dispatchAction(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    goto/16 :goto_0

    .line 166
    :cond_2
    iget-object v9, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$1;->this$0:Lcom/nuance/connect/internal/ResourcesServiceInternal;

    # getter for: Lcom/nuance/connect/internal/ResourcesServiceInternal;->resources:Lcom/nuance/connect/internal/ConnectResources;
    invoke-static {v9}, Lcom/nuance/connect/internal/ResourcesServiceInternal;->access$100(Lcom/nuance/connect/internal/ResourcesServiceInternal;)Lcom/nuance/connect/internal/ConnectResources;

    move-result-object v9

    invoke-virtual {v9, v6, v8}, Lcom/nuance/connect/internal/ConnectResources;->setString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 174
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "lang":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/String;
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 175
    .restart local v0    # "b":Landroid/os/Bundle;
    const-string v9, "filePath"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    const-string v9, "PROP_LANGUAGE"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 177
    const-string v9, "PROP_CATEGORY_ID"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 178
    .local v5, "id":Ljava/lang/String;
    const-string v9, "PROP_LANGUAGE"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 179
    .restart local v7    # "lang":Ljava/lang/String;
    const-string v9, "filePath"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 180
    .local v3, "file":Ljava/lang/String;
    iget-object v9, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$1;->this$0:Lcom/nuance/connect/internal/ResourcesServiceInternal;

    # invokes: Lcom/nuance/connect/internal/ResourcesServiceInternal;->processResourcesXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v9, v5, v3, v7}, Lcom/nuance/connect/internal/ResourcesServiceInternal;->access$300(Lcom/nuance/connect/internal/ResourcesServiceInternal;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 185
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v3    # "file":Ljava/lang/String;
    .end local v5    # "id":Ljava/lang/String;
    .end local v7    # "lang":Ljava/lang/String;
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 186
    .restart local v0    # "b":Landroid/os/Bundle;
    iget-object v10, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$1;->this$0:Lcom/nuance/connect/internal/ResourcesServiceInternal;

    const-string v9, "DEFAULT_KEY"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v9

    check-cast v9, Ljava/util/HashMap;

    # setter for: Lcom/nuance/connect/internal/ResourcesServiceInternal;->catIdsToLocale:Ljava/util/HashMap;
    invoke-static {v10, v9}, Lcom/nuance/connect/internal/ResourcesServiceInternal;->access$402(Lcom/nuance/connect/internal/ResourcesServiceInternal;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 187
    iget-object v9, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$1;->this$0:Lcom/nuance/connect/internal/ResourcesServiceInternal;

    # getter for: Lcom/nuance/connect/internal/ResourcesServiceInternal;->catIdsToLocale:Ljava/util/HashMap;
    invoke-static {v9}, Lcom/nuance/connect/internal/ResourcesServiceInternal;->access$400(Lcom/nuance/connect/internal/ResourcesServiceInternal;)Ljava/util/HashMap;

    move-result-object v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$1;->this$0:Lcom/nuance/connect/internal/ResourcesServiceInternal;

    # getter for: Lcom/nuance/connect/internal/ResourcesServiceInternal;->catIdsToLocale:Ljava/util/HashMap;
    invoke-static {v9}, Lcom/nuance/connect/internal/ResourcesServiceInternal;->access$400(Lcom/nuance/connect/internal/ResourcesServiceInternal;)Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/HashMap;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    .line 188
    iget-object v9, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$1;->this$0:Lcom/nuance/connect/internal/ResourcesServiceInternal;

    # getter for: Lcom/nuance/connect/internal/ResourcesServiceInternal;->catIdsToLocale:Ljava/util/HashMap;
    invoke-static {v9}, Lcom/nuance/connect/internal/ResourcesServiceInternal;->access$400(Lcom/nuance/connect/internal/ResourcesServiceInternal;)Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 189
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v10, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$1;->this$0:Lcom/nuance/connect/internal/ResourcesServiceInternal;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    # invokes: Lcom/nuance/connect/internal/ResourcesServiceInternal;->normalizeLocaleString(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v10, v9}, Lcom/nuance/connect/internal/ResourcesServiceInternal;->access$500(Lcom/nuance/connect/internal/ResourcesServiceInternal;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 191
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    iget-object v9, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$1;->this$0:Lcom/nuance/connect/internal/ResourcesServiceInternal;

    # getter for: Lcom/nuance/connect/internal/ResourcesServiceInternal;->queueCallbacks:Ljava/util/HashMap;
    invoke-static {v9}, Lcom/nuance/connect/internal/ResourcesServiceInternal;->access$600(Lcom/nuance/connect/internal/ResourcesServiceInternal;)Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 192
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/Locale;Lcom/nuance/connect/api/ResourcesService$ProcessingCallback;>;"
    iget-object v11, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$1;->this$0:Lcom/nuance/connect/internal/ResourcesServiceInternal;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Locale;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/nuance/connect/api/ResourcesService$ProcessingCallback;

    invoke-virtual {v11, v9, v10}, Lcom/nuance/connect/internal/ResourcesServiceInternal;->subscribe(Ljava/util/Locale;Lcom/nuance/connect/api/ResourcesService$ProcessingCallback;)V

    goto :goto_4

    .line 194
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/Locale;Lcom/nuance/connect/api/ResourcesService$ProcessingCallback;>;"
    :cond_4
    iget-object v9, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$1;->this$0:Lcom/nuance/connect/internal/ResourcesServiceInternal;

    # getter for: Lcom/nuance/connect/internal/ResourcesServiceInternal;->queueCallbacks:Ljava/util/HashMap;
    invoke-static {v9}, Lcom/nuance/connect/internal/ResourcesServiceInternal;->access$600(Lcom/nuance/connect/internal/ResourcesServiceInternal;)Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/HashMap;->clear()V

    goto/16 :goto_0

    .line 136
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onPostUpgrade()V
    .locals 0

    .prologue
    .line 221
    return-void
.end method
