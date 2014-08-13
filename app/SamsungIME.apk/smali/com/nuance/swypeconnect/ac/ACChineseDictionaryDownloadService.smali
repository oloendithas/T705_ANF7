.class public final Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;
.super Lcom/nuance/swypeconnect/ac/ACService;
.source "ACChineseDictionaryDownloadService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionaryDownloadListCallback;,
        Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionaryDownloadFileCallback;,
        Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;
    }
.end annotation


# static fields
.field public static final REASON_FAILED_CANCELED:I = 0x2

.field public static final REASON_FAILED_HTTP:I = 0x0

.field public static final REASON_FAILED_MAX_RETRY:I = 0x1

.field public static final REASON_NETWORK_TIMEOUT:I = 0x4

.field public static final REASON_USER_CANCELED:I = 0x3


# instance fields
.field private addonDictService:Lcom/nuance/connect/api/AddonDictionariesService;

.field private bInitialized:Z

.field private final dictionaryListCallback:Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryListCallback;

.field private final listCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionaryDownloadListCallback;",
            ">;"
        }
    .end annotation
.end field

.field private log:Lcom/nuance/connect/util/Logger$Log;

.field private manager:Lcom/nuance/swypeconnect/ac/ACManager;

.field private final preinstalledDictionaries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private resourcesService:Lcom/nuance/connect/api/ResourcesService;

.field private final store:Lcom/nuance/connect/store/PersistentDataStore;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation
.end field

.field private supportedLangs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/nuance/connect/api/AddonDictionariesService;Lcom/nuance/connect/api/ResourcesService;Lcom/nuance/connect/store/PersistentDataStore;Lcom/nuance/swypeconnect/ac/ACManager;)V
    .locals 4
    .param p1, "addonDictService"    # Lcom/nuance/connect/api/AddonDictionariesService;
    .param p2, "resourcesService"    # Lcom/nuance/connect/api/ResourcesService;
    .param p3, "store"    # Lcom/nuance/connect/store/PersistentDataStore;
    .param p4, "manager"    # Lcom/nuance/swypeconnect/ac/ACManager;

    .prologue
    .line 228
    invoke-direct {p0}, Lcom/nuance/swypeconnect/ac/ACService;-><init>()V

    .line 32
    invoke-static {}, Lcom/nuance/swypeconnect/ac/ACLanguageList;->getChineseLanguages()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->supportedLangs:Ljava/util/List;

    .line 33
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->preinstalledDictionaries:Ljava/util/List;

    .line 34
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->bInitialized:Z

    .line 190
    sget-object v2, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-static {v2}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->log:Lcom/nuance/connect/util/Logger$Log;

    .line 218
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->listCallbacks:Ljava/util/Set;

    .line 246
    new-instance v2, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$2;

    invoke-direct {v2, p0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$2;-><init>(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;)V

    iput-object v2, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->dictionaryListCallback:Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryListCallback;

    .line 229
    iput-object p3, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->store:Lcom/nuance/connect/store/PersistentDataStore;

    .line 230
    iput-object p4, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    .line 231
    iput-object p2, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->resourcesService:Lcom/nuance/connect/api/ResourcesService;

    .line 232
    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->addonDictService:Lcom/nuance/connect/api/AddonDictionariesService;

    .line 234
    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->dictionaryListCallback:Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryListCallback;

    invoke-interface {p1, v2}, Lcom/nuance/connect/api/AddonDictionariesService;->registerDictionaryListCallback(Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryListCallback;)V

    .line 236
    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->supportedLangs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    .line 237
    .local v1, "lang":Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;
    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;->getLocale()Ljava/util/Locale;

    move-result-object v2

    new-instance v3, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$1;

    invoke-direct {v3, p0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$1;-><init>(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;)V

    invoke-interface {p2, v2, v3}, Lcom/nuance/connect/api/ResourcesService;->subscribe(Ljava/util/Locale;Lcom/nuance/connect/api/ResourcesService$ProcessingCallback;)V

    goto :goto_0

    .line 244
    .end local v1    # "lang":Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->supportedLangs:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;)Lcom/nuance/connect/api/ResourcesService;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->resourcesService:Lcom/nuance/connect/api/ResourcesService;

    return-object v0
.end method

.method static synthetic access$200(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;)Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryListCallback;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->dictionaryListCallback:Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryListCallback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;)Lcom/nuance/connect/util/Logger$Log;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->log:Lcom/nuance/connect/util/Logger$Log;

    return-object v0
.end method

.method static synthetic access$400(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->markPreinstalledDictionaries()V

    return-void
.end method

.method static synthetic access$500(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->listCallbacks:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$600(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->bInitialized:Z

    return v0
.end method

.method static synthetic access$602(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->bInitialized:Z

    return p1
.end method

.method static synthetic access$700(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;)Lcom/nuance/swypeconnect/ac/ACManager;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    return-object v0
.end method

.method private markPreinstalledDictionaries()V
    .locals 8

    .prologue
    .line 428
    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->isDictionaryListAvailable()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 429
    iget-object v6, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->addonDictService:Lcom/nuance/connect/api/AddonDictionariesService;

    invoke-interface {v6}, Lcom/nuance/connect/api/AddonDictionariesService;->getAvailableDictionaries()Ljava/util/List;

    move-result-object v2

    .line 430
    .local v2, "dictionaries":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionary;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionary;

    .line 431
    .local v1, "d":Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionary;
    iget-object v6, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->preinstalledDictionaries:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 432
    .local v5, "key":Ljava/lang/String;
    new-instance v0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    invoke-direct {v0, p0, v1}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;-><init>(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionary;)V

    .line 434
    .local v0, "availableDict":Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;
    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 435
    iget-object v6, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->addonDictService:Lcom/nuance/connect/api/AddonDictionariesService;

    # invokes: Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getDictionary()Ljava/lang/String;
    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->access$800(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/nuance/connect/api/AddonDictionariesService;->markDictionaryInstalled(Ljava/lang/String;)V

    goto :goto_0

    .line 440
    .end local v0    # "availableDict":Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;
    .end local v1    # "d":Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionary;
    .end local v2    # "dictionaries":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionary;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "key":Ljava/lang/String;
    :cond_2
    return-void
.end method


# virtual methods
.method public cancelDownload(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;)V
    .locals 2
    .param p1, "dict"    # Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation

    .prologue
    .line 520
    if-nez p1, :cond_0

    .line 521
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "ACChineseDictionaryDownloadService.cancelDownload dict is null"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    .line 525
    :goto_0
    return-void

    .line 524
    :cond_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->addonDictService:Lcom/nuance/connect/api/AddonDictionariesService;

    # invokes: Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getDictionary()Ljava/lang/String;
    invoke-static {p1}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->access$800(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/api/AddonDictionariesService;->cancelDownload(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public downloadDictionary(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionaryDownloadFileCallback;)V
    .locals 3
    .param p1, "dict"    # Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;
    .param p2, "callback"    # Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionaryDownloadFileCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation

    .prologue
    .line 455
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "downloadDictionary id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " callback="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 456
    if-nez p2, :cond_0

    .line 457
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "ACChineseDictionaryDownloadService.downloadDictionary callback is null"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    .line 509
    :goto_0
    return-void

    .line 461
    :cond_0
    if-nez p1, :cond_1

    .line 462
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "ACChineseDictionaryDownloadService.downloadDictionary dict is null"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    .line 463
    const/4 v0, 0x5

    invoke-interface {p2, v0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionaryDownloadFileCallback;->downloadFailed(I)V

    goto :goto_0

    .line 467
    :cond_1
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->addonDictService:Lcom/nuance/connect/api/AddonDictionariesService;

    # invokes: Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getDictionary()Ljava/lang/String;
    invoke-static {p1}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->access$800(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$3;

    invoke-direct {v2, p0, p2}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$3;-><init>(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionaryDownloadFileCallback;)V

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/api/AddonDictionariesService;->installDictionary(Ljava/lang/String;Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryDownloadCallback;)V

    goto :goto_0
.end method

.method public getAvailableDictionaries()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;",
            ">;"
        }
    .end annotation

    .prologue
    .line 351
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 353
    .local v5, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;>;"
    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->isDictionaryListAvailable()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 354
    iget-object v6, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->addonDictService:Lcom/nuance/connect/api/AddonDictionariesService;

    invoke-interface {v6}, Lcom/nuance/connect/api/AddonDictionariesService;->getAvailableDictionaries()Ljava/util/List;

    move-result-object v1

    .line 355
    .local v1, "dictionaries":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionary;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionary;

    .line 356
    .local v0, "d":Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionary;
    iget-object v6, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->supportedLangs:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    .line 357
    .local v4, "l":Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;
    invoke-interface {v0}, Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionary;->getLanguage()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;->usesXT9Id(I)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionary;->isInstalled()Z

    move-result v6

    if-nez v6, :cond_1

    .line 358
    new-instance v6, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    invoke-direct {v6, p0, v0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;-><init>(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionary;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 363
    .end local v0    # "d":Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionary;
    .end local v1    # "dictionaries":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionary;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "l":Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;
    :cond_2
    return-object v5
.end method

.method public getDownloadedDictionaries()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;",
            ">;"
        }
    .end annotation

    .prologue
    .line 393
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 395
    .local v5, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;>;"
    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->isDictionaryListAvailable()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 396
    iget-object v6, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->addonDictService:Lcom/nuance/connect/api/AddonDictionariesService;

    invoke-interface {v6}, Lcom/nuance/connect/api/AddonDictionariesService;->getAvailableDictionaries()Ljava/util/List;

    move-result-object v1

    .line 397
    .local v1, "dictionaries":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionary;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionary;

    .line 398
    .local v0, "d":Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionary;
    iget-object v6, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->supportedLangs:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    .line 399
    .local v4, "l":Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;
    invoke-interface {v0}, Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionary;->getLanguage()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;->usesXT9Id(I)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionary;->hasUpdate()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-interface {v0}, Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionary;->isSubscribed()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionary;->isInstalled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 401
    new-instance v6, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    invoke-direct {v6, p0, v0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;-><init>(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionary;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 406
    .end local v0    # "d":Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionary;
    .end local v1    # "dictionaries":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionary;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "l":Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;
    :cond_2
    return-object v5
.end method

.method getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 327
    const-string v0, "CHINESE_DICTIONARY_SERVICE"

    return-object v0
.end method

.method public getUpdatableDictionaries()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;",
            ">;"
        }
    .end annotation

    .prologue
    .line 372
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 374
    .local v5, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;>;"
    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->isDictionaryListAvailable()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 375
    iget-object v6, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->addonDictService:Lcom/nuance/connect/api/AddonDictionariesService;

    invoke-interface {v6}, Lcom/nuance/connect/api/AddonDictionariesService;->getAvailableDictionaries()Ljava/util/List;

    move-result-object v1

    .line 376
    .local v1, "dictionaries":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionary;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionary;

    .line 377
    .local v0, "d":Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionary;
    iget-object v6, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->supportedLangs:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    .line 378
    .local v4, "l":Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;
    invoke-interface {v0}, Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionary;->getLanguage()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;->usesXT9Id(I)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionary;->hasUpdate()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 379
    new-instance v6, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    invoke-direct {v6, p0, v0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;-><init>(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionary;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 384
    .end local v0    # "d":Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionary;
    .end local v1    # "dictionaries":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionary;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "l":Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;
    :cond_2
    return-object v5
.end method

.method public isDictionaryListAvailable()Z
    .locals 4

    .prologue
    .line 557
    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->supportedLangs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;

    .line 558
    .local v1, "l":Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;
    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->resourcesService:Lcom/nuance/connect/api/ResourcesService;

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;->getLocale()Ljava/util/Locale;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/nuance/connect/api/ResourcesService;->isLanguageAvailable(Ljava/util/Locale;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 559
    const/4 v2, 0x0

    .line 562
    .end local v1    # "l":Lcom/nuance/swypeconnect/ac/ACLanguageList$Language;
    :goto_0
    return v2

    :cond_1
    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->addonDictService:Lcom/nuance/connect/api/AddonDictionariesService;

    invoke-interface {v2}, Lcom/nuance/connect/api/AddonDictionariesService;->isDictionaryListAvailable()Z

    move-result v2

    goto :goto_0
.end method

.method public preinstallDictionary(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 418
    if-nez p1, :cond_0

    .line 419
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "preinstallDictionary key is null"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    .line 425
    :goto_0
    return-void

    .line 422
    :cond_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->preinstalledDictionaries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 423
    invoke-direct {p0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->markPreinstalledDictionaries()V

    .line 424
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->addonDictService:Lcom/nuance/connect/api/AddonDictionariesService;

    invoke-interface {v0}, Lcom/nuance/connect/api/AddonDictionariesService;->notifyDictionariesofStatus()V

    goto :goto_0
.end method

.method public registerCallback(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionaryDownloadListCallback;Z)V
    .locals 2
    .param p1, "callback"    # Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionaryDownloadListCallback;
    .param p2, "sendNow"    # Z

    .prologue
    .line 575
    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->listCallbacks:Ljava/util/Set;

    monitor-enter v1

    .line 576
    :try_start_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->listCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 577
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 579
    if-eqz p2, :cond_0

    .line 580
    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->getAvailableDictionaries()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionaryDownloadListCallback;->availableDictionaries(Ljava/util/List;)V

    .line 581
    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->getDownloadedDictionaries()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionaryDownloadListCallback;->downloadedDictionaries(Ljava/util/List;)V

    .line 582
    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->getUpdatableDictionaries()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionaryDownloadListCallback;->updatableDictionaries(Ljava/util/List;)V

    .line 584
    :cond_0
    return-void

    .line 577
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public removeDictionary(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;)V
    .locals 2
    .param p1, "dict"    # Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    .prologue
    .line 537
    if-nez p1, :cond_0

    .line 538
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "ACChineseDictionaryDownloadService.removeDictionary dict is null"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    .line 548
    :goto_0
    return-void

    .line 542
    :cond_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->preinstalledDictionaries:Ljava/util/List;

    invoke-virtual {p1}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 543
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->preinstalledDictionaries:Ljava/util/List;

    invoke-virtual {p1}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 546
    :cond_1
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->addonDictService:Lcom/nuance/connect/api/AddonDictionariesService;

    # invokes: Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getDictionary()Ljava/lang/String;
    invoke-static {p1}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->access$800(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/api/AddonDictionariesService;->removeDictionary(Ljava/lang/String;)V

    .line 547
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->addonDictService:Lcom/nuance/connect/api/AddonDictionariesService;

    invoke-interface {v0}, Lcom/nuance/connect/api/AddonDictionariesService;->notifyDictionariesofStatus()V

    goto :goto_0
.end method

.method shutdown()V
    .locals 1

    .prologue
    .line 332
    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->unregisterCallbacks()V

    .line 333
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACService;->isShutdown:Z

    .line 334
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->bInitialized:Z

    .line 335
    return-void
.end method

.method start()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 339
    iput-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACService;->isShutdown:Z

    .line 340
    iput-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->bInitialized:Z

    .line 341
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->dictionaryListCallback:Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryListCallback;

    invoke-interface {v0}, Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryListCallback;->listUpdated()V

    .line 342
    return-void
.end method

.method public unregisterCallback(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionaryDownloadListCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionaryDownloadListCallback;

    .prologue
    .line 595
    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->listCallbacks:Ljava/util/Set;

    monitor-enter v1

    .line 596
    :try_start_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->listCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 597
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->listCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 599
    :cond_0
    monitor-exit v1

    .line 600
    return-void

    .line 599
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterCallbacks()V
    .locals 2

    .prologue
    .line 606
    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->listCallbacks:Ljava/util/Set;

    monitor-enter v1

    .line 607
    :try_start_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->listCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 608
    monitor-exit v1

    .line 609
    return-void

    .line 608
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
