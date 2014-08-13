.class Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$2;
.super Ljava/lang/Object;
.source "ACChineseDictionaryDownloadService.java"

# interfaces
.implements Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryListCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field available:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field downloaded:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

.field updatable:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;)V
    .locals 1

    .prologue
    .line 246
    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$2;->this$0:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$2;->available:Ljava/util/List;

    .line 249
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$2;->downloaded:Ljava/util/List;

    .line 250
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$2;->updatable:Ljava/util/List;

    return-void
.end method


# virtual methods
.method dictionaryListToStrings(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 259
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 261
    .local v2, "stringList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    .line 262
    .local v0, "dictionary":Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;
    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 265
    .end local v0    # "dictionary":Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;
    :cond_0
    return-object v2
.end method

.method isListUpdated(Ljava/util/List;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "original":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "updated":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 253
    invoke-interface {p1, p2}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    .line 254
    .local v0, "hasUpdated":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 255
    :goto_1
    return v0

    .end local v0    # "hasUpdated":Z
    :cond_0
    move v0, v2

    .line 253
    goto :goto_0

    .line 254
    .restart local v0    # "hasUpdated":Z
    :cond_1
    invoke-interface {p2, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method public listUpdated()V
    .locals 13

    .prologue
    .line 270
    iget-object v10, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$2;->this$0:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    # getter for: Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v10}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->access$300(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "dictionaryListCallback.listUpdated() available="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$2;->this$0:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    invoke-virtual {v12}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->isDictionaryListAvailable()Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 271
    iget-object v10, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$2;->this$0:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    iget-boolean v10, v10, Lcom/nuance/swypeconnect/ac/ACService;->isShutdown:Z

    if-nez v10, :cond_7

    iget-object v10, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$2;->this$0:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    invoke-virtual {v10}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->isDictionaryListAvailable()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 272
    const/4 v6, 0x0

    .line 273
    .local v6, "notifyAvailable":Z
    const/4 v7, 0x0

    .line 274
    .local v7, "notifyDownloaded":Z
    const/4 v8, 0x0

    .line 276
    .local v8, "notifyUpdatable":Z
    iget-object v10, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$2;->this$0:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    # invokes: Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->markPreinstalledDictionaries()V
    invoke-static {v10}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->access$400(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;)V

    .line 278
    iget-object v10, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$2;->this$0:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    invoke-virtual {v10}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->getAvailableDictionaries()Ljava/util/List;

    move-result-object v0

    .line 279
    .local v0, "availableList":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;>;"
    invoke-virtual {p0, v0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$2;->dictionaryListToStrings(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 280
    .local v3, "current":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v10, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$2;->available:Ljava/util/List;

    invoke-virtual {p0, v10, v3}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$2;->isListUpdated(Ljava/util/List;Ljava/util/List;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 281
    iput-object v3, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$2;->available:Ljava/util/List;

    .line 282
    const/4 v6, 0x1

    .line 284
    :cond_0
    iget-object v10, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$2;->this$0:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    invoke-virtual {v10}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->getDownloadedDictionaries()Ljava/util/List;

    move-result-object v4

    .line 285
    .local v4, "currentList":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;>;"
    invoke-virtual {p0, v4}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$2;->dictionaryListToStrings(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 286
    iget-object v10, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$2;->downloaded:Ljava/util/List;

    invoke-virtual {p0, v10, v3}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$2;->isListUpdated(Ljava/util/List;Ljava/util/List;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 287
    iput-object v3, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$2;->downloaded:Ljava/util/List;

    .line 288
    const/4 v7, 0x1

    .line 290
    :cond_1
    iget-object v10, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$2;->this$0:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    invoke-virtual {v10}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->getUpdatableDictionaries()Ljava/util/List;

    move-result-object v9

    .line 291
    .local v9, "updatableList":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;>;"
    invoke-virtual {p0, v9}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$2;->dictionaryListToStrings(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 292
    iget-object v10, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$2;->updatable:Ljava/util/List;

    invoke-virtual {p0, v10, v3}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$2;->isListUpdated(Ljava/util/List;Ljava/util/List;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 293
    iput-object v3, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$2;->updatable:Ljava/util/List;

    .line 294
    const/4 v8, 0x1

    .line 297
    :cond_2
    iget-object v10, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$2;->this$0:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    # getter for: Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v10}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->access$300(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "dictionaryListCallback.listUpdated() status available="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " downloaded="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " updatable="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 298
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 299
    .local v2, "callbacksArray":Ljava/util/Set;, "Ljava/util/Set<Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionaryDownloadListCallback;>;"
    iget-object v10, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$2;->this$0:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    # getter for: Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->listCallbacks:Ljava/util/Set;
    invoke-static {v10}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->access$500(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;)Ljava/util/Set;

    move-result-object v11

    monitor-enter v11

    .line 300
    :try_start_0
    iget-object v10, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$2;->this$0:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    # getter for: Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->listCallbacks:Ljava/util/Set;
    invoke-static {v10}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->access$500(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;)Ljava/util/Set;

    move-result-object v10

    invoke-interface {v2, v10}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 301
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionaryDownloadListCallback;

    .line 304
    .local v1, "callback":Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionaryDownloadListCallback;
    if-eqz v6, :cond_4

    .line 305
    invoke-interface {v1, v0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionaryDownloadListCallback;->availableDictionaries(Ljava/util/List;)V

    .line 308
    :cond_4
    if-eqz v7, :cond_5

    .line 309
    invoke-interface {v1, v4}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionaryDownloadListCallback;->downloadedDictionaries(Ljava/util/List;)V

    .line 312
    :cond_5
    if-eqz v8, :cond_3

    .line 313
    invoke-interface {v1, v9}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionaryDownloadListCallback;->updatableDictionaries(Ljava/util/List;)V

    goto :goto_0

    .line 301
    .end local v1    # "callback":Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionaryDownloadListCallback;
    .end local v5    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v10

    :try_start_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v10

    .line 317
    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_6
    iget-object v10, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$2;->this$0:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    # getter for: Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->bInitialized:Z
    invoke-static {v10}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->access$600(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 318
    iget-object v10, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$2;->this$0:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    # getter for: Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->manager:Lcom/nuance/swypeconnect/ac/ACManager;
    invoke-static {v10}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->access$700(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;)Lcom/nuance/swypeconnect/ac/ACManager;

    move-result-object v10

    iget-object v11, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$2;->this$0:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    invoke-virtual {v11}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/nuance/swypeconnect/ac/ACManager;->serviceInitialized(Ljava/lang/String;)V

    .line 319
    iget-object v10, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$2;->this$0:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    const/4 v11, 0x1

    # setter for: Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->bInitialized:Z
    invoke-static {v10, v11}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->access$602(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;Z)Z

    .line 322
    .end local v0    # "availableList":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;>;"
    .end local v2    # "callbacksArray":Ljava/util/Set;, "Ljava/util/Set<Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionaryDownloadListCallback;>;"
    .end local v3    # "current":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "currentList":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "notifyAvailable":Z
    .end local v7    # "notifyDownloaded":Z
    .end local v8    # "notifyUpdatable":Z
    .end local v9    # "updatableList":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;>;"
    :cond_7
    return-void
.end method
