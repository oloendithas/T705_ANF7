.class Lcom/nuance/connect/internal/CategoryServiceInternal$3;
.super Ljava/lang/Object;
.source "CategoryServiceInternal.java"

# interfaces
.implements Lcom/nuance/connect/internal/ConnectHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/internal/CategoryServiceInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;


# direct methods
.method constructor <init>(Lcom/nuance/connect/internal/CategoryServiceInternal;)V
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$3;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHandlerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 479
    const-string v0, "CategoryHandler"

    return-object v0
.end method

.method public getMessageIDs()[I
    .locals 1

    .prologue
    .line 474
    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->MESSAGE_IDS:[I
    invoke-static {}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$1100()[I

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public handleMessage(Landroid/os/Handler;Landroid/os/Message;)V
    .locals 31
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    .line 238
    sget-object v6, Lcom/nuance/connect/internal/CategoryServiceInternal$4;->$SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I

    move-object/from16 v0, p2

    iget v11, v0, Landroid/os/Message;->what:I

    invoke-static {v11}, Lcom/nuance/connect/internal/common/InternalMessages;->fromInt(I)Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aget v6, v6, v11

    packed-switch v6, :pswitch_data_0

    .line 470
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 240
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/connect/internal/CategoryServiceInternal$3;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v6}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$200(Lcom/nuance/connect/internal/CategoryServiceInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v6

    const-string v11, "MESSAGE_HOST_CATEGORY_DOWNLOAD_CANCEL_ACK"

    invoke-interface {v6, v11}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 241
    invoke-virtual/range {p2 .. p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    const-string v11, "DEFAULT_KEY"

    invoke-virtual {v6, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 242
    .local v5, "dict":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/connect/internal/CategoryServiceInternal$3;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->availableDownloadDictionaries:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$300(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 243
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/connect/internal/CategoryServiceInternal$3;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->availableDownloadDictionaries:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$300(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;

    invoke-virtual {v6}, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;->revert()V

    .line 245
    :cond_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/connect/internal/CategoryServiceInternal$3;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->dictionaryDownloadCallbacks:Ljava/util/Map;
    invoke-static {v6}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$400(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 246
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/connect/internal/CategoryServiceInternal$3;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->dictionaryDownloadCallbacks:Ljava/util/Map;
    invoke-static {v6}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$400(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryDownloadCallback;

    .line 247
    .local v20, "callback":Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryDownloadCallback;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/connect/internal/CategoryServiceInternal$3;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->dictionaryDownloadCallbacks:Ljava/util/Map;
    invoke-static {v6}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$400(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    const/4 v6, 0x3

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryDownloadCallback;->downloadStopped(I)V

    .line 250
    .end local v20    # "callback":Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryDownloadCallback;
    :cond_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/connect/internal/CategoryServiceInternal$3;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->redownloadCallbacks:Ljava/util/Map;
    invoke-static {v6}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$500(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 251
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/nuance/connect/internal/CategoryServiceInternal$3;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/connect/internal/CategoryServiceInternal$3;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->redownloadCallbacks:Ljava/util/Map;
    invoke-static {v6}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$500(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryDownloadCallback;

    invoke-virtual {v11, v5, v6}, Lcom/nuance/connect/internal/CategoryServiceInternal;->installDictionary(Ljava/lang/String;Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryDownloadCallback;)V

    .line 252
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/connect/internal/CategoryServiceInternal$3;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->redownloadCallbacks:Ljava/util/Map;
    invoke-static {v6}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$500(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 257
    .end local v5    # "dict":Ljava/lang/String;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/connect/internal/CategoryServiceInternal$3;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v6}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$200(Lcom/nuance/connect/internal/CategoryServiceInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v6

    const-string v11, "MESSAGE_HOST_CATEGORY_UNSUBSRIBE_COMPLETE"

    invoke-interface {v6, v11}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 258
    invoke-virtual/range {p2 .. p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    const-string v11, "DEFAULT_KEY"

    invoke-virtual {v6, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 259
    .restart local v5    # "dict":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/connect/internal/CategoryServiceInternal$3;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->availableDownloadDictionaries:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$300(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 260
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/connect/internal/CategoryServiceInternal$3;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->availableDownloadDictionaries:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$300(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;

    const-string v11, "STATUS_AVAILABLE"

    invoke-virtual {v6, v11}, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;->setStatus(Ljava/lang/String;)V

    .line 262
    :cond_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/connect/internal/CategoryServiceInternal$3;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->redownloadCallbacks:Ljava/util/Map;
    invoke-static {v6}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$500(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 263
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/nuance/connect/internal/CategoryServiceInternal$3;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/connect/internal/CategoryServiceInternal$3;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->redownloadCallbacks:Ljava/util/Map;
    invoke-static {v6}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$500(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryDownloadCallback;

    invoke-virtual {v11, v5, v6}, Lcom/nuance/connect/internal/CategoryServiceInternal;->installDictionary(Ljava/lang/String;Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryDownloadCallback;)V

    .line 264
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/connect/internal/CategoryServiceInternal$3;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->redownloadCallbacks:Ljava/util/Map;
    invoke-static {v6}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$500(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 269
    .end local v5    # "dict":Ljava/lang/String;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/connect/internal/CategoryServiceInternal$3;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v6}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$200(Lcom/nuance/connect/internal/CategoryServiceInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v6

    const-string v11, "MESSAGE_HOST_DICTIONARY_DOWNLOAD_FAILED"

    invoke-interface {v6, v11}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 270
    invoke-virtual/range {p2 .. p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    const-string v11, "DEFAULT_KEY"

    invoke-virtual {v6, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v28

    .line 271
    .local v28, "reason":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    const-string v11, "PROP_CATEGORY_ID"

    invoke-virtual {v6, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 272
    .restart local v5    # "dict":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/connect/internal/CategoryServiceInternal$3;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->dictionaryDownloadCallbacks:Ljava/util/Map;
    invoke-static {v6}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$400(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 273
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/connect/internal/CategoryServiceInternal$3;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->dictionaryDownloadCallbacks:Ljava/util/Map;
    invoke-static {v6}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$400(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryDownloadCallback;

    .line 274
    .restart local v20    # "callback":Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryDownloadCallback;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/connect/internal/CategoryServiceInternal$3;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->dictionaryDownloadCallbacks:Ljava/util/Map;
    invoke-static {v6}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$400(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-interface {v0, v1}, Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryDownloadCallback;->downloadFailed(I)V

    goto/16 :goto_0

    .line 280
    .end local v5    # "dict":Ljava/lang/String;
    .end local v20    # "callback":Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryDownloadCallback;
    .end local v28    # "reason":I
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/connect/internal/CategoryServiceInternal$3;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v6}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$200(Lcom/nuance/connect/internal/CategoryServiceInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v6

    const-string v11, "MESSAGE_HOST_SET_DICTIONARIES_STATUS"

    invoke-interface {v6, v11}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 281
    invoke-virtual/range {p2 .. p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 282
    invoke-virtual/range {p2 .. p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v19

    .line 283
    .local v19, "b":Landroid/os/Bundle;
    const-string v6, "DictionaryList"

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 284
    .local v25, "keys":Ljava/lang/String;
    if-eqz v25, :cond_7

    .line 285
    const-string v6, ","

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .local v18, "arr$":[Ljava/lang/String;
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v26, v0

    .local v26, "len$":I
    const/16 v23, 0x0

    .local v23, "i$":I
    :goto_1
    move/from16 v0, v23

    move/from16 v1, v26

    if-ge v0, v1, :cond_7

    aget-object v3, v18, v23

    .line 287
    .local v3, "entry":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v11, "_status"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v21

    check-cast v21, Ljava/util/HashMap;

    .line 290
    .local v21, "dictionary":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v21, :cond_6

    .line 291
    new-instance v2, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;

    const-string v6, "PROP_CATEGORY_ID"

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const-string v6, "PROP_NAME"

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "PROP_DESCRIPTION"

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v11, "PROP_LANGUAGE"

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-direct/range {v2 .. v7}, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 297
    .local v2, "d":Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;
    const-string v6, "PROP_INSTALLEDSTATUS"

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;->setStatus(Ljava/lang/String;)V

    .line 298
    const/16 v24, 0x0

    .line 299
    .local v24, "ignore":Z
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/connect/internal/CategoryServiceInternal$3;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->availableDownloadDictionaries:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$300(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 300
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/connect/internal/CategoryServiceInternal$3;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->availableDownloadDictionaries:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$300(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;

    invoke-virtual {v6}, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;->getStatus()Ljava/lang/String;

    move-result-object v30

    .line 301
    .local v30, "status":Ljava/lang/String;
    const-string v6, "STATUS_CANCELED"

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/connect/internal/CategoryServiceInternal$3;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->redownloadCallbacks:Ljava/util/Map;
    invoke-static {v6}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$500(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 303
    const/16 v24, 0x1

    .line 305
    :cond_4
    const-string v6, "STATUS_UNINSTALL_PENDING"

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v2}, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;->getStatus()Ljava/lang/String;

    move-result-object v6

    const-string v11, "STATUS_AVAILABLE"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 307
    const/16 v24, 0x1

    .line 310
    .end local v30    # "status":Ljava/lang/String;
    :cond_5
    if-nez v24, :cond_6

    .line 311
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/connect/internal/CategoryServiceInternal$3;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->availableDownloadDictionaries:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$300(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    .end local v2    # "d":Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;
    .end local v24    # "ignore":Z
    :cond_6
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_1

    .line 318
    .end local v3    # "entry":Ljava/lang/String;
    .end local v18    # "arr$":[Ljava/lang/String;
    .end local v19    # "b":Landroid/os/Bundle;
    .end local v21    # "dictionary":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v23    # "i$":I
    .end local v25    # "keys":Ljava/lang/String;
    .end local v26    # "len$":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/connect/internal/CategoryServiceInternal$3;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    const/4 v11, 0x1

    # setter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->dictionaryListReceived:Z
    invoke-static {v6, v11}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$602(Lcom/nuance/connect/internal/CategoryServiceInternal;Z)Z

    .line 319
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/connect/internal/CategoryServiceInternal$3;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-virtual {v6}, Lcom/nuance/connect/internal/CategoryServiceInternal;->notifyDictionariesofStatus()V

    .line 320
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/connect/internal/CategoryServiceInternal$3;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;
    invoke-static {v6}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$000(Lcom/nuance/connect/internal/CategoryServiceInternal;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    move-result-object v6

    const-string v11, "com.nuance.connect.DATA_AVAILABLE"

    const-string v14, "com.nuance.connect.TYPE_CATEGORY_DATA"

    invoke-virtual {v6, v11, v14}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->dispatchAction(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    goto/16 :goto_0

    .line 325
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/connect/internal/CategoryServiceInternal$3;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v6}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$200(Lcom/nuance/connect/internal/CategoryServiceInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v6

    const-string v11, "MESSAGE_HOST_DICTIONARY_INSTALL_READY"

    invoke-interface {v6, v11}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 326
    const/4 v5, 0x0

    .line 327
    .restart local v5    # "dict":Ljava/lang/String;
    const/16 v27, 0x0

    .line 329
    .local v27, "path":Ljava/lang/String;
    const/16 v29, 0x0

    .line 331
    .local v29, "sendFail":Z
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v19

    .line 332
    .restart local v19    # "b":Landroid/os/Bundle;
    if-eqz v19, :cond_8

    .line 333
    const-string v6, "DEFAULT_KEY"

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 334
    const-string v6, "filePath"

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 337
    :cond_8
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/connect/internal/CategoryServiceInternal$3;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->availableDownloadDictionaries:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$300(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;

    .line 338
    .restart local v2    # "d":Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/connect/internal/CategoryServiceInternal$3;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;
    invoke-static {v6}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$000(Lcom/nuance/connect/internal/CategoryServiceInternal;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    move-result-object v6

    const-string v11, "com.nuance.connect.DATA_AVAILABLE"

    const-string v14, "com.nuance.connect.TYPE_CATEGORY_DATA"

    invoke-virtual {v6, v11, v14}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->dispatchAction(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    .line 341
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/connect/internal/CategoryServiceInternal$3;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->dictionaryDownloadCallbacks:Ljava/util/Map;
    invoke-static {v6}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$400(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryDownloadCallback;

    .line 342
    .restart local v20    # "callback":Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryDownloadCallback;
    if-eqz v20, :cond_9

    .line 343
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/connect/internal/CategoryServiceInternal$3;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->dictionaryDownloadCallbacks:Ljava/util/Map;
    invoke-static {v6}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$400(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    :cond_9
    if-eqz v27, :cond_a

    if-eqz v20, :cond_a

    new-instance v6, Ljava/io/File;

    move-object/from16 v0, v27

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryDownloadCallback;->downloadComplete(Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 346
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/connect/internal/CategoryServiceInternal$3;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;
    invoke-static {v6}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$000(Lcom/nuance/connect/internal/CategoryServiceInternal;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v6

    sget-object v11, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_CATEGORY_INSTALL_COMPLETE:Lcom/nuance/connect/internal/common/InternalMessages;

    const/high16 v14, -0x80000000

    const/4 v15, 0x0

    invoke-interface {v6, v11, v5, v14, v15}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;II)Z

    .line 349
    const-string v6, "STATUS_INSTALLED"

    invoke-virtual {v2, v6}, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;->setStatus(Ljava/lang/String;)V

    .line 350
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/connect/internal/CategoryServiceInternal$3;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-virtual {v6}, Lcom/nuance/connect/internal/CategoryServiceInternal;->notifyDictionariesofStatus()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 358
    .end local v2    # "d":Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;
    .end local v19    # "b":Landroid/os/Bundle;
    .end local v20    # "callback":Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryDownloadCallback;
    :goto_2
    if-eqz v29, :cond_0

    .line 359
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/connect/internal/CategoryServiceInternal$3;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;
    invoke-static {v6}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$000(Lcom/nuance/connect/internal/CategoryServiceInternal;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v6

    sget-object v11, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_CATEGORY_INSTALL_COMPLETE:Lcom/nuance/connect/internal/common/InternalMessages;

    const/4 v14, 0x1

    const/high16 v15, -0x80000000

    invoke-interface {v6, v11, v5, v14, v15}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;II)Z

    goto/16 :goto_0

    .line 352
    .restart local v2    # "d":Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;
    .restart local v19    # "b":Landroid/os/Bundle;
    .restart local v20    # "callback":Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryDownloadCallback;
    :cond_a
    const/16 v29, 0x1

    goto :goto_2

    .line 354
    .end local v2    # "d":Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;
    .end local v19    # "b":Landroid/os/Bundle;
    .end local v20    # "callback":Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryDownloadCallback;
    :catch_0
    move-exception v22

    .line 355
    .local v22, "ex":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/connect/internal/CategoryServiceInternal$3;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v6}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$200(Lcom/nuance/connect/internal/CategoryServiceInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v6

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Exception Installing: dict="

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v6, v11}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    .line 356
    const/16 v29, 0x1

    goto :goto_2

    .line 366
    .end local v5    # "dict":Ljava/lang/String;
    .end local v22    # "ex":Ljava/lang/Exception;
    .end local v27    # "path":Ljava/lang/String;
    .end local v29    # "sendFail":Z
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v19

    .line 367
    .restart local v19    # "b":Landroid/os/Bundle;
    const-string v6, "download"

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 368
    .local v10, "progress":I
    const-string v6, "dictionary"

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 369
    .restart local v5    # "dict":Ljava/lang/String;
    const-string v6, "CATEGORY_TYPE"

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    .line 371
    .local v13, "typeId":I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/connect/internal/CategoryServiceInternal$3;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    invoke-virtual {v6, v13}, Lcom/nuance/connect/internal/CategoryServiceInternal;->isCategoryLivingLanguage(I)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 373
    const-string v6, "CATEGORY_LANGUAGE_ID"

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 374
    .local v7, "languageId":Ljava/lang/String;
    const-string v6, "CATEGORY_LOCALE"

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 375
    .local v8, "locale":Ljava/lang/String;
    const-string v6, "CATEGORY_COUNTRY"

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 377
    .local v9, "countryList":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/connect/internal/CategoryServiceInternal$3;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->livingLanguageCallbacks:Ljava/util/Set;
    invoke-static {v6}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$700(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .local v23, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/connect/api/LivingLanguageService$Callback;

    .line 378
    .local v4, "c":Lcom/nuance/connect/api/LivingLanguageService$Callback;
    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {v4 .. v10}, Lcom/nuance/connect/api/LivingLanguageService$Callback;->downloadProgress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_3

    .line 382
    .end local v4    # "c":Lcom/nuance/connect/api/LivingLanguageService$Callback;
    .end local v7    # "languageId":Ljava/lang/String;
    .end local v8    # "locale":Ljava/lang/String;
    .end local v9    # "countryList":Ljava/lang/String;
    .end local v23    # "i$":Ljava/util/Iterator;
    :cond_b
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/connect/internal/CategoryServiceInternal$3;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->dictionaryDownloadCallbacks:Ljava/util/Map;
    invoke-static {v6}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$400(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 383
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/connect/internal/CategoryServiceInternal$3;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->dictionaryDownloadCallbacks:Ljava/util/Map;
    invoke-static {v6}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$400(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryDownloadCallback;

    invoke-interface {v6, v10}, Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryDownloadCallback;->downloadPercentage(I)V

    goto/16 :goto_0

    .line 407
    .end local v5    # "dict":Ljava/lang/String;
    .end local v10    # "progress":I
    .end local v13    # "typeId":I
    .end local v19    # "b":Landroid/os/Bundle;
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/connect/internal/CategoryServiceInternal$3;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$900(Lcom/nuance/connect/internal/CategoryServiceInternal;)Landroid/os/Handler;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/nuance/connect/internal/CategoryServiceInternal$3;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->sendHotwordsStatus:Ljava/lang/Runnable;
    invoke-static {v11}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$800(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/lang/Runnable;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 408
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/connect/internal/CategoryServiceInternal$3;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$900(Lcom/nuance/connect/internal/CategoryServiceInternal;)Landroid/os/Handler;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/nuance/connect/internal/CategoryServiceInternal$3;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->sendHotwordsStatus:Ljava/lang/Runnable;
    invoke-static {v11}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$800(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/lang/Runnable;

    move-result-object v11

    const-wide/16 v14, 0x3a98

    invoke-virtual {v6, v11, v14, v15}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 412
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/connect/internal/CategoryServiceInternal$3;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;
    invoke-static {v6}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$000(Lcom/nuance/connect/internal/CategoryServiceInternal;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v11

    sget-object v14, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_SET_CHINESE_CAT_DB_STATUS:Lcom/nuance/connect/internal/common/InternalMessages;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/connect/internal/CategoryServiceInternal$3;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;
    invoke-static {v6}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$000(Lcom/nuance/connect/internal/CategoryServiceInternal;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    move-result-object v6

    sget-object v15, Lcom/nuance/connect/host/service/HostInterface$HostService;->HOST_BUILD_SETTINGS:Lcom/nuance/connect/host/service/HostInterface$HostService;

    invoke-virtual {v6, v15}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getHostService(Lcom/nuance/connect/host/service/HostInterface$HostService;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/nuance/connect/host/service/BuildSettings;

    invoke-interface {v6}, Lcom/nuance/connect/host/service/BuildSettings;->isChineseCategoryEnabled()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v11, v14, v6}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectPriorityMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 419
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v19

    .line 420
    .restart local v19    # "b":Landroid/os/Bundle;
    const-string v6, "CATEGORY_ID"

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 421
    .local v12, "categoryId":Ljava/lang/String;
    const-string v6, "CATEGORY_TYPE"

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 422
    .local v13, "typeId":Ljava/lang/String;
    const-string v6, "CATEGORY_COUNT"

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v17

    .line 423
    .local v17, "count":I
    const-string v6, "CATEGORY_LANGUAGE_ID"

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 424
    .restart local v7    # "languageId":Ljava/lang/String;
    const-string v6, "CATEGORY_LOCALE"

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 425
    .restart local v8    # "locale":Ljava/lang/String;
    const-string v6, "CATEGORY_COUNTRY"

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 427
    .restart local v9    # "countryList":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/connect/internal/CategoryServiceInternal$3;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->livingLanguageCallbacks:Ljava/util/Set;
    invoke-static {v6}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$700(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .restart local v23    # "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/connect/api/LivingLanguageService$Callback;

    .restart local v4    # "c":Lcom/nuance/connect/api/LivingLanguageService$Callback;
    move-object v11, v4

    move-object v14, v7

    move-object v15, v8

    move-object/from16 v16, v9

    .line 428
    invoke-interface/range {v11 .. v17}, Lcom/nuance/connect/api/LivingLanguageService$Callback;->subscriptionAdded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_4

    .line 433
    .end local v4    # "c":Lcom/nuance/connect/api/LivingLanguageService$Callback;
    .end local v7    # "languageId":Ljava/lang/String;
    .end local v8    # "locale":Ljava/lang/String;
    .end local v9    # "countryList":Ljava/lang/String;
    .end local v12    # "categoryId":Ljava/lang/String;
    .end local v13    # "typeId":Ljava/lang/String;
    .end local v17    # "count":I
    .end local v19    # "b":Landroid/os/Bundle;
    .end local v23    # "i$":Ljava/util/Iterator;
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v19

    .line 434
    .restart local v19    # "b":Landroid/os/Bundle;
    const-string v6, "CATEGORY_ID"

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 435
    .restart local v12    # "categoryId":Ljava/lang/String;
    const-string v6, "CATEGORY_TYPE"

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 436
    .restart local v13    # "typeId":Ljava/lang/String;
    const-string v6, "CATEGORY_COUNT"

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v17

    .line 437
    .restart local v17    # "count":I
    const-string v6, "CATEGORY_LANGUAGE_ID"

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 438
    .restart local v7    # "languageId":Ljava/lang/String;
    const-string v6, "CATEGORY_LOCALE"

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 439
    .restart local v8    # "locale":Ljava/lang/String;
    const-string v6, "CATEGORY_COUNTRY"

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 441
    .restart local v9    # "countryList":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/connect/internal/CategoryServiceInternal$3;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->livingLanguageCallbacks:Ljava/util/Set;
    invoke-static {v6}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$700(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .restart local v23    # "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/connect/api/LivingLanguageService$Callback;

    .restart local v4    # "c":Lcom/nuance/connect/api/LivingLanguageService$Callback;
    move-object v11, v4

    move-object v14, v7

    move-object v15, v8

    move-object/from16 v16, v9

    .line 442
    invoke-interface/range {v11 .. v17}, Lcom/nuance/connect/api/LivingLanguageService$Callback;->subscriptionUpdated(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_5

    .line 447
    .end local v4    # "c":Lcom/nuance/connect/api/LivingLanguageService$Callback;
    .end local v7    # "languageId":Ljava/lang/String;
    .end local v8    # "locale":Ljava/lang/String;
    .end local v9    # "countryList":Ljava/lang/String;
    .end local v12    # "categoryId":Ljava/lang/String;
    .end local v13    # "typeId":Ljava/lang/String;
    .end local v17    # "count":I
    .end local v19    # "b":Landroid/os/Bundle;
    .end local v23    # "i$":Ljava/util/Iterator;
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v19

    .line 449
    .restart local v19    # "b":Landroid/os/Bundle;
    const-string v6, "CATEGORY_ID"

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 450
    .restart local v12    # "categoryId":Ljava/lang/String;
    const-string v6, "CATEGORY_TYPE"

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 451
    .restart local v13    # "typeId":Ljava/lang/String;
    const-string v6, "CATEGORY_LANGUAGE_ID"

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 452
    .restart local v7    # "languageId":Ljava/lang/String;
    const-string v6, "CATEGORY_LOCALE"

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 453
    .restart local v8    # "locale":Ljava/lang/String;
    const-string v6, "CATEGORY_COUNTRY"

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 455
    .restart local v9    # "countryList":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/connect/internal/CategoryServiceInternal$3;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->livingLanguageCallbacks:Ljava/util/Set;
    invoke-static {v6}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$700(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .restart local v23    # "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/connect/api/LivingLanguageService$Callback;

    .restart local v4    # "c":Lcom/nuance/connect/api/LivingLanguageService$Callback;
    move-object v11, v4

    move-object v14, v7

    move-object v15, v8

    move-object/from16 v16, v9

    .line 456
    invoke-interface/range {v11 .. v16}, Lcom/nuance/connect/api/LivingLanguageService$Callback;->subscriptionRemoved(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 461
    .end local v4    # "c":Lcom/nuance/connect/api/LivingLanguageService$Callback;
    .end local v7    # "languageId":Ljava/lang/String;
    .end local v8    # "locale":Ljava/lang/String;
    .end local v9    # "countryList":Ljava/lang/String;
    .end local v12    # "categoryId":Ljava/lang/String;
    .end local v13    # "typeId":Ljava/lang/String;
    .end local v19    # "b":Landroid/os/Bundle;
    .end local v23    # "i$":Ljava/util/Iterator;
    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v19

    .line 462
    .restart local v19    # "b":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/connect/internal/CategoryServiceInternal$3;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    const-string v11, "DEFAULT_KEY"

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    # setter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->livingLanguageUpdatesPending:Z
    invoke-static {v6, v11}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$1002(Lcom/nuance/connect/internal/CategoryServiceInternal;Z)Z

    .line 464
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/connect/internal/CategoryServiceInternal$3;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->livingLanguageCallbacks:Ljava/util/Set;
    invoke-static {v6}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$700(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .restart local v23    # "i$":Ljava/util/Iterator;
    :goto_7
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/connect/api/LivingLanguageService$Callback;

    .line 465
    .restart local v4    # "c":Lcom/nuance/connect/api/LivingLanguageService$Callback;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/connect/internal/CategoryServiceInternal$3;->this$0:Lcom/nuance/connect/internal/CategoryServiceInternal;

    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->livingLanguageUpdatesPending:Z
    invoke-static {v6}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$1000(Lcom/nuance/connect/internal/CategoryServiceInternal;)Z

    move-result v6

    invoke-interface {v4, v6}, Lcom/nuance/connect/api/LivingLanguageService$Callback;->updatesAvailable(Z)V

    goto :goto_7

    .line 238
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public onPostUpgrade()V
    .locals 0

    .prologue
    .line 484
    return-void
.end method
