.class Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$1;
.super Ljava/lang/Object;
.source "ACLanguageDownloadService.java"

# interfaces
.implements Lcom/nuance/connect/api/LanguageService$ListCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;
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
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field downloaded:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;

.field updatable:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;)V
    .locals 1

    .prologue
    .line 187
    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$1;->this$0:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$1;->available:Ljava/util/List;

    .line 189
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$1;->downloaded:Ljava/util/List;

    .line 190
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$1;->updatable:Ljava/util/List;

    return-void
.end method


# virtual methods
.method isListUpdated(Ljava/util/List;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "original":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p2, "updated":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 193
    invoke-interface {p1, p2}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    .line 194
    .local v0, "hasUpdated":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 195
    :goto_1
    return v0

    .end local v0    # "hasUpdated":Z
    :cond_0
    move v0, v2

    .line 193
    goto :goto_0

    .line 194
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

.method public languageListUpdate()V
    .locals 9

    .prologue
    .line 201
    iget-object v7, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$1;->this$0:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;

    iget-boolean v7, v7, Lcom/nuance/swypeconnect/ac/ACService;->isShutdown:Z

    if-nez v7, :cond_7

    iget-object v7, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$1;->this$0:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;

    invoke-virtual {v7}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->isLanguageListAvailable()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 202
    const/4 v4, 0x0

    .line 203
    .local v4, "notifyAvailable":Z
    const/4 v5, 0x0

    .line 204
    .local v5, "notifyDownloaded":Z
    const/4 v6, 0x0

    .line 206
    .local v6, "notifyUpdatable":Z
    iget-object v7, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$1;->this$0:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;

    invoke-virtual {v7}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->getAvailableLanguages()Ljava/util/List;

    move-result-object v2

    .line 207
    .local v2, "current":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v7, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$1;->available:Ljava/util/List;

    invoke-virtual {p0, v7, v2}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$1;->isListUpdated(Ljava/util/List;Ljava/util/List;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 208
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v7, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$1;->available:Ljava/util/List;

    .line 209
    const/4 v4, 0x1

    .line 211
    :cond_0
    iget-object v7, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$1;->this$0:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;

    invoke-virtual {v7}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->getDownloadedLanguages()Ljava/util/List;

    move-result-object v2

    .line 212
    iget-object v7, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$1;->downloaded:Ljava/util/List;

    invoke-virtual {p0, v7, v2}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$1;->isListUpdated(Ljava/util/List;Ljava/util/List;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 213
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v7, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$1;->downloaded:Ljava/util/List;

    .line 214
    const/4 v5, 0x1

    .line 216
    :cond_1
    iget-object v7, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$1;->this$0:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;

    invoke-virtual {v7}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->getUpdatableLanguages()Ljava/util/List;

    move-result-object v2

    .line 217
    iget-object v7, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$1;->updatable:Ljava/util/List;

    invoke-virtual {p0, v7, v2}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$1;->isListUpdated(Ljava/util/List;Ljava/util/List;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 218
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v7, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$1;->updatable:Ljava/util/List;

    .line 219
    const/4 v6, 0x1

    .line 222
    :cond_2
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 223
    .local v1, "callbacksArray":Ljava/util/Set;, "Ljava/util/Set<Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadListCallback;>;"
    iget-object v7, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$1;->this$0:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;

    # getter for: Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->listCallbacks:Ljava/util/Set;
    invoke-static {v7}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->access$200(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;)Ljava/util/Set;

    move-result-object v8

    monitor-enter v8

    .line 224
    :try_start_0
    iget-object v7, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$1;->this$0:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;

    # getter for: Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->listCallbacks:Ljava/util/Set;
    invoke-static {v7}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->access$200(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;)Ljava/util/Set;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 225
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadListCallback;

    .line 229
    .local v0, "callback":Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadListCallback;
    if-eqz v4, :cond_4

    .line 230
    iget-object v7, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$1;->available:Ljava/util/List;

    invoke-interface {v0, v7}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadListCallback;->availableLanguages(Ljava/util/List;)V

    .line 233
    :cond_4
    if-eqz v5, :cond_5

    .line 234
    iget-object v7, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$1;->downloaded:Ljava/util/List;

    invoke-interface {v0, v7}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadListCallback;->downloadedLanguages(Ljava/util/List;)V

    .line 237
    :cond_5
    if-eqz v6, :cond_3

    .line 238
    iget-object v7, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$1;->updatable:Ljava/util/List;

    invoke-interface {v0, v7}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadListCallback;->updatableLanguages(Ljava/util/List;)V

    goto :goto_0

    .line 225
    .end local v0    # "callback":Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadListCallback;
    .end local v3    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v7

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    .line 242
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_6
    iget-object v7, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$1;->this$0:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;

    # getter for: Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->bInitialized:Z
    invoke-static {v7}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->access$300(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 243
    iget-object v7, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$1;->this$0:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;

    # getter for: Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->manager:Lcom/nuance/swypeconnect/ac/ACManager;
    invoke-static {v7}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->access$400(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;)Lcom/nuance/swypeconnect/ac/ACManager;

    move-result-object v7

    iget-object v8, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$1;->this$0:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;

    invoke-virtual {v8}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/nuance/swypeconnect/ac/ACManager;->serviceInitialized(Ljava/lang/String;)V

    .line 244
    iget-object v7, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$1;->this$0:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;

    const/4 v8, 0x1

    # setter for: Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->bInitialized:Z
    invoke-static {v7, v8}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->access$302(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;Z)Z

    .line 247
    .end local v1    # "callbacksArray":Ljava/util/Set;, "Ljava/util/Set<Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadListCallback;>;"
    .end local v2    # "current":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "notifyAvailable":Z
    .end local v5    # "notifyDownloaded":Z
    .end local v6    # "notifyUpdatable":Z
    :cond_7
    return-void
.end method
