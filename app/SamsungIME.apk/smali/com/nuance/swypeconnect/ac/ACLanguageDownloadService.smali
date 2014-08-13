.class public final Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;
.super Lcom/nuance/swypeconnect/ac/ACService;
.source "ACLanguageDownloadService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$LanguageDownloadCallbackAdapter;,
        Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadListCallback;,
        Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadFileCallback;
    }
.end annotation


# static fields
.field private static final ALM_INSTALLED:Ljava/lang/String; = "ALM_INSTALLED"

.field private static final DOWNLOADED_LANGUAGES:Ljava/lang/String; = "AC_Language_Service_Downloaded_Languages"

.field private static final LANGUAGE_DL:Ljava/lang/String; = "LANGUAGE_DL"

.field private static final LANGUAGE_ID:Ljava/lang/String; = "LANGUAGE_ID"

.field private static final PREINSTALLED:Ljava/lang/String; = "PREINSTALLED"

.field public static final REASON_FAILED_HTTP:I = 0x0

.field public static final REASON_FAILED_MAX_RETRY:I = 0x1

.field public static final REASON_NETWORK_TIMEOUT:I = 0x4

.field public static final REASON_USER_CANCELED:I = 0x3

.field private static final VERSION:Ljava/lang/String; = "VERSION"


# instance fields
.field private bInitialized:Z

.field private final downloaded:Ljava/util/HashMap;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field languageListCallback:Lcom/nuance/connect/api/LanguageService$ListCallback;

.field languageService:Lcom/nuance/connect/api/LanguageService;

.field private final listCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadListCallback;",
            ">;"
        }
    .end annotation
.end field

.field private log:Lcom/nuance/connect/util/Logger$Log;

.field private manager:Lcom/nuance/swypeconnect/ac/ACManager;

.field private final store:Lcom/nuance/connect/store/PersistentDataStore;

.field private final supportedLangs:Ljava/util/HashMap;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/nuance/connect/api/LanguageService;Lcom/nuance/connect/store/PersistentDataStore;Lcom/nuance/swypeconnect/ac/ACManager;)V
    .locals 2
    .param p1, "languageService"    # Lcom/nuance/connect/api/LanguageService;
    .param p2, "store"    # Lcom/nuance/connect/store/PersistentDataStore;
    .param p3, "manager"    # Lcom/nuance/swypeconnect/ac/ACManager;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .prologue
    .line 295
    invoke-direct {p0}, Lcom/nuance/swypeconnect/ac/ACService;-><init>()V

    .line 187
    new-instance v1, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$1;

    invoke-direct {v1, p0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$1;-><init>(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;)V

    iput-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->languageListCallback:Lcom/nuance/connect/api/LanguageService$ListCallback;

    .line 251
    sget-object v1, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-static {v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->log:Lcom/nuance/connect/util/Logger$Log;

    .line 283
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->listCallbacks:Ljava/util/Set;

    .line 284
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->bInitialized:Z

    .line 286
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->supportedLangs:Ljava/util/HashMap;

    .line 288
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->downloaded:Ljava/util/HashMap;

    .line 296
    iput-object p2, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->store:Lcom/nuance/connect/store/PersistentDataStore;

    .line 297
    iput-object p3, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    .line 300
    const-string v1, "AC_Language_Service_Downloaded_Languages"

    invoke-interface {p2, v1}, Lcom/nuance/connect/store/PersistentDataStore;->readObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 302
    .local v0, "downloadLoading":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->languageListCallback:Lcom/nuance/connect/api/LanguageService$ListCallback;

    invoke-interface {p1, v1}, Lcom/nuance/connect/api/LanguageService;->registerCallback(Lcom/nuance/connect/api/LanguageService$ListCallback;)V

    .line 304
    if-eqz v0, :cond_0

    .line 305
    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->downloaded:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 308
    :cond_0
    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->languageService:Lcom/nuance/connect/api/LanguageService;

    .line 309
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->downloaded:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->save()V

    return-void
.end method

.method static synthetic access$200(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->listCallbacks:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$300(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->bInitialized:Z

    return v0
.end method

.method static synthetic access$302(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->bInitialized:Z

    return p1
.end method

.method static synthetic access$400(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;)Lcom/nuance/swypeconnect/ac/ACManager;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    return-object v0
.end method

.method private addSupportedLanguage(Lcom/nuance/swypeconnect/ac/ACLdbInfo;)V
    .locals 6
    .param p1, "ldbInfo"    # Lcom/nuance/swypeconnect/ac/ACLdbInfo;

    .prologue
    const/4 v3, 0x1

    .line 376
    if-eqz p1, :cond_2

    .line 377
    invoke-virtual {p1}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->getXT9LanguageId()I

    move-result v0

    .line 380
    .local v0, "id":I
    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->supportedLangs:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 381
    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->supportedLangs:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v4, "LANGUAGE_DL"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    :cond_0
    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->supportedLangs:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->isPreinstalled(I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 389
    :cond_1
    invoke-virtual {p1}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->isALM()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->isALM()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 390
    .local v1, "isALM":Z
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->getXT9LanguageId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->getVersion()I

    move-result v5

    invoke-direct {p0, v4, v3, v5, v1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->generateSupportedHashMap(Ljava/lang/Integer;ZIZ)Ljava/util/HashMap;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->addSupportedLanguge(Ljava/lang/Integer;Ljava/util/HashMap;)V

    .line 415
    .end local v0    # "id":I
    .end local v1    # "isALM":Z
    :cond_2
    :goto_1
    return-void

    .restart local v0    # "id":I
    :cond_3
    move v1, v3

    .line 389
    goto :goto_0

    .line 406
    :cond_4
    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->supportedLangs:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v4, "VERSION"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->getVersion()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 407
    invoke-virtual {p1}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->isALM()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {p1}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->isALM()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 408
    .restart local v1    # "isALM":Z
    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->getXT9LanguageId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->getVersion()I

    move-result v5

    invoke-direct {p0, v4, v3, v5, v1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->generateSupportedHashMap(Ljava/lang/Integer;ZIZ)Ljava/util/HashMap;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->addSupportedLanguge(Ljava/lang/Integer;Ljava/util/HashMap;)V

    goto :goto_1

    .end local v1    # "isALM":Z
    :cond_5
    move v1, v3

    .line 407
    goto :goto_2
.end method

.method private addSupportedLanguage(Ljava/lang/Integer;[Lcom/nuance/swypeconnect/ac/ACLdbInfo;)V
    .locals 8
    .param p1, "xt9LanguageId"    # Ljava/lang/Integer;
    .param p2, "ldbInfoList"    # [Lcom/nuance/swypeconnect/ac/ACLdbInfo;

    .prologue
    const/4 v6, 0x1

    .line 441
    iget-object v7, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->supportedLangs:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    if-eqz p2, :cond_3

    array-length v7, p2

    if-lez v7, :cond_3

    .line 443
    const/4 v5, -0x1

    .line 444
    .local v5, "version":I
    const/4 v2, 0x0

    .line 445
    .local v2, "isALM":Z
    move-object v0, p2

    .local v0, "arr$":[Lcom/nuance/swypeconnect/ac/ACLdbInfo;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v4, :cond_2

    aget-object v3, v0, v1

    .line 448
    .local v3, "ldbInfo":Lcom/nuance/swypeconnect/ac/ACLdbInfo;
    invoke-virtual {v3}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->isALM()Ljava/lang/Boolean;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v3}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->isALM()Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 451
    :goto_1
    const/4 v7, -0x1

    if-le v5, v7, :cond_1

    invoke-virtual {v3}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->getVersion()I

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 445
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v2, v6

    .line 448
    goto :goto_1

    .line 451
    :cond_1
    invoke-virtual {v3}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->getVersion()I

    move-result v5

    goto :goto_2

    .line 460
    .end local v3    # "ldbInfo":Lcom/nuance/swypeconnect/ac/ACLdbInfo;
    :cond_2
    invoke-direct {p0, p1, v6, v5, v2}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->generateSupportedHashMap(Ljava/lang/Integer;ZIZ)Ljava/util/HashMap;

    move-result-object v6

    invoke-direct {p0, p1, v6}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->addSupportedLanguge(Ljava/lang/Integer;Ljava/util/HashMap;)V

    .line 474
    .end local v0    # "arr$":[Lcom/nuance/swypeconnect/ac/ACLdbInfo;
    .end local v1    # "i$":I
    .end local v2    # "isALM":Z
    .end local v4    # "len$":I
    .end local v5    # "version":I
    :cond_3
    return-void
.end method

.method private addSupportedLanguge(Ljava/lang/Integer;Ljava/util/HashMap;)V
    .locals 1
    .param p1, "xt9LanguageId"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 356
    .local p2, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->supportedLangs:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->isLanguageListAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->languageService:Lcom/nuance/connect/api/LanguageService;

    invoke-interface {v0}, Lcom/nuance/connect/api/LanguageService;->notifyCallbacksOfStatus()V

    .line 362
    :cond_0
    return-void
.end method

.method private generateSupportedHashMap(Ljava/lang/Integer;ZIZ)Ljava/util/HashMap;
    .locals 3
    .param p1, "xt9LanguageId"    # Ljava/lang/Integer;
    .param p2, "preinstalled"    # Z
    .param p3, "version"    # I
    .param p4, "almInstalled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "ZIZ)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 534
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 535
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "LANGUAGE_ID"

    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    const-string v1, "PREINSTALLED"

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    const-string v1, "VERSION"

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    const-string v1, "ALM_INSTALLED"

    invoke-static {p4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    return-object v0
.end method

.method private isDownloaded(I)Z
    .locals 4
    .param p1, "xt9LanguageId"    # I

    .prologue
    const/4 v1, 0x0

    .line 583
    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->downloaded:Ljava/util/HashMap;

    monitor-enter v2

    .line 584
    :try_start_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->downloaded:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 585
    monitor-exit v2

    move v0, v1

    .line 593
    :goto_0
    return v0

    .line 588
    :cond_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->supportedLangs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->downloaded:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_1

    .line 589
    const/4 v0, 0x1

    monitor-exit v2

    goto :goto_0

    .line 591
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    .line 593
    goto :goto_0
.end method

.method private isPreinstalled(I)Z
    .locals 3
    .param p1, "xt9LanguageId"    # I

    .prologue
    .line 565
    const/4 v0, 0x0

    .line 567
    .local v0, "preinstalled":Z
    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->supportedLangs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 568
    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->supportedLangs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "PREINSTALLED"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 569
    const/4 v0, 0x1

    .line 573
    :cond_0
    return v0
.end method

.method private isSupported(I)Z
    .locals 3
    .param p1, "xt9LanguageId"    # I

    .prologue
    .line 550
    const/4 v0, 0x0

    .line 552
    .local v0, "supported":Z
    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->supportedLangs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 553
    const/4 v0, 0x1

    .line 556
    :cond_0
    return v0
.end method

.method private isUpdateAvailable(II)Z
    .locals 7
    .param p1, "xt9LanguageId"    # I
    .param p2, "availableVersion"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 605
    const/4 v1, 0x0

    .line 607
    .local v1, "upgradeable":Z
    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->supportedLangs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 608
    const/4 v0, 0x0

    .line 609
    .local v0, "currentVersion":I
    iget-object v5, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->downloaded:Ljava/util/HashMap;

    monitor-enter v5

    .line 610
    :try_start_0
    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->downloaded:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->downloaded:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 611
    :goto_0
    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->supportedLangs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v6, "LANGUAGE_DL"

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->supportedLangs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v6, "LANGUAGE_DL"

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 613
    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->supportedLangs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v6, "LANGUAGE_DL"

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 618
    :cond_0
    :goto_1
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 623
    invoke-direct {p0, p1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->isPreinstalled(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 625
    invoke-direct {p0, p1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->isDownloaded(I)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->supportedLangs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v5, "ALM_INSTALLED"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 629
    const/4 v1, 0x1

    .line 644
    .end local v0    # "currentVersion":I
    :cond_1
    :goto_2
    return v1

    .restart local v0    # "currentVersion":I
    :cond_2
    move v0, v4

    .line 610
    goto :goto_0

    .line 614
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->supportedLangs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v6, "VERSION"

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->supportedLangs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v6, "VERSION"

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 616
    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->supportedLangs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v6, "VERSION"

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_1

    .line 618
    :catchall_0
    move-exception v2

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 631
    :cond_4
    if-le p2, v0, :cond_5

    move v1, v3

    :goto_3
    goto :goto_2

    :cond_5
    move v1, v4

    goto :goto_3

    .line 633
    :cond_6
    invoke-direct {p0, p1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->isDownloaded(I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 635
    if-lez v0, :cond_1

    .line 636
    if-le p2, v0, :cond_7

    move v1, v3

    :goto_4
    goto :goto_2

    :cond_7
    move v1, v4

    goto :goto_4

    .line 640
    :cond_8
    const/4 v1, 0x0

    goto :goto_2
.end method

.method private save()V
    .locals 4

    .prologue
    .line 312
    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->downloaded:Ljava/util/HashMap;

    monitor-enter v1

    .line 313
    :try_start_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->store:Lcom/nuance/connect/store/PersistentDataStore;

    const-string v2, "AC_Language_Service_Downloaded_Languages"

    iget-object v3, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->downloaded:Ljava/util/HashMap;

    invoke-interface {v0, v2, v3}, Lcom/nuance/connect/store/PersistentDataStore;->saveObject(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 314
    monitor-exit v1

    .line 315
    return-void

    .line 314
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public addExistingLanguage(Ljava/lang/Integer;[Ljava/lang/String;)V
    .locals 4
    .param p1, "xt9LanguageId"    # Ljava/lang/Integer;
    .param p2, "pathList"    # [Ljava/lang/String;

    .prologue
    .line 486
    if-eqz p2, :cond_1

    .line 487
    array-length v3, p2

    new-array v2, v3, [Lcom/nuance/swypeconnect/ac/ACLdbInfo;

    .line 489
    .local v2, "ldbInfoList":[Lcom/nuance/swypeconnect/ac/ACLdbInfo;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p2

    if-ge v0, v3, :cond_0

    .line 490
    aget-object v3, p2, v0

    invoke-static {v3}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->load(Ljava/lang/String;)Lcom/nuance/swypeconnect/ac/ACLdbInfo;

    move-result-object v1

    .line 491
    .local v1, "info":Lcom/nuance/swypeconnect/ac/ACLdbInfo;
    aput-object v1, v2, v0

    .line 489
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 494
    .end local v1    # "info":Lcom/nuance/swypeconnect/ac/ACLdbInfo;
    :cond_0
    invoke-direct {p0, p1, v2}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->addSupportedLanguage(Ljava/lang/Integer;[Lcom/nuance/swypeconnect/ac/ACLdbInfo;)V

    .line 496
    .end local v0    # "i":I
    .end local v2    # "ldbInfoList":[Lcom/nuance/swypeconnect/ac/ACLdbInfo;
    :cond_1
    return-void
.end method

.method public addExistingLanguage(Ljava/lang/String;)V
    .locals 1
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 426
    invoke-static {p1}, Lcom/nuance/swypeconnect/ac/ACLdbInfo;->load(Ljava/lang/String;)Lcom/nuance/swypeconnect/ac/ACLdbInfo;

    move-result-object v0

    .line 427
    .local v0, "info":Lcom/nuance/swypeconnect/ac/ACLdbInfo;
    invoke-direct {p0, v0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->addSupportedLanguage(Lcom/nuance/swypeconnect/ac/ACLdbInfo;)V

    .line 428
    return-void
.end method

.method public addSupportedLanguage(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "xt9LanguageId"    # Ljava/lang/Integer;

    .prologue
    const/4 v1, 0x0

    .line 347
    const/4 v0, -0x1

    invoke-direct {p0, p1, v1, v0, v1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->generateSupportedHashMap(Ljava/lang/Integer;ZIZ)Ljava/util/HashMap;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->addSupportedLanguge(Ljava/lang/Integer;Ljava/util/HashMap;)V

    .line 348
    return-void
.end method

.method public cancelDownload(I)V
    .locals 4
    .param p1, "xt9LanguageId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation

    .prologue
    .line 854
    invoke-direct {p0, p1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->isSupported(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 855
    new-instance v1, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v2, 0x6f

    const-string v3, "The language you requested is not supported."

    invoke-direct {v1, v2, v3}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 859
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->languageService:Lcom/nuance/connect/api/LanguageService;

    invoke-interface {v1, p1}, Lcom/nuance/connect/api/LanguageService;->cancelDownload(I)V
    :try_end_0
    .catch Lcom/nuance/connect/api/ConnectException; {:try_start_0 .. :try_end_0} :catch_0

    .line 864
    :goto_0
    return-void

    .line 860
    :catch_0
    move-exception v0

    .line 862
    .local v0, "e":Lcom/nuance/connect/api/ConnectException;
    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, ""

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public downloadLanguage(ILcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadFileCallback;)V
    .locals 8
    .param p1, "xt9LanguageId"    # I
    .param p2, "callback"    # Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadFileCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation

    .prologue
    .line 794
    iget-object v4, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "downloadLanguage id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " callback="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 796
    invoke-direct {p0, p1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->isSupported(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 797
    new-instance v4, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v5, 0x6f

    const-string v6, "The language you requested is not supported."

    invoke-direct {v4, v5, v6}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 800
    :cond_0
    const/4 v3, -0x1

    .line 801
    .local v3, "v":I
    iget-object v4, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->languageService:Lcom/nuance/connect/api/LanguageService;

    invoke-interface {v4}, Lcom/nuance/connect/api/LanguageService;->getDownloadLdbList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/connect/api/LanguageService$LdbInfo;

    .line 802
    .local v2, "info":Lcom/nuance/connect/api/LanguageService$LdbInfo;
    invoke-virtual {v2}, Lcom/nuance/connect/api/LanguageService$LdbInfo;->getXT9LanguageId()I

    move-result v4

    if-ne v4, p1, :cond_1

    .line 803
    invoke-virtual {v2}, Lcom/nuance/connect/api/LanguageService$LdbInfo;->getVersion()I

    move-result v3

    .line 809
    .end local v2    # "info":Lcom/nuance/connect/api/LanguageService$LdbInfo;
    :cond_2
    :try_start_0
    iget-object v4, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->languageService:Lcom/nuance/connect/api/LanguageService;

    new-instance v5, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$LanguageDownloadCallbackAdapter;

    invoke-direct {v5, p0, p1, v3, p2}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$LanguageDownloadCallbackAdapter;-><init>(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;IILcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadFileCallback;)V

    invoke-interface {v4, p1, v5}, Lcom/nuance/connect/api/LanguageService;->downloadLanguage(ILcom/nuance/connect/api/LanguageService$DownloadCallback;)V
    :try_end_0
    .catch Lcom/nuance/connect/api/ConnectException; {:try_start_0 .. :try_end_0} :catch_0

    .line 813
    return-void

    .line 810
    :catch_0
    move-exception v0

    .line 811
    .local v0, "e":Lcom/nuance/connect/api/ConnectException;
    new-instance v4, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v5, 0x6e

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The language you requested is not available: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/nuance/connect/api/ConnectException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v4
.end method

.method public downloadLanguageFlavor(ILjava/lang/String;Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadFileCallback;)V
    .locals 8
    .param p1, "xt9LanguageId"    # I
    .param p2, "flavor"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadFileCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x6e

    .line 724
    iget-object v4, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "downloadLanguageFlavor id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " callback="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 726
    invoke-direct {p0, p1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->isSupported(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 727
    new-instance v4, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v5, 0x6f

    const-string v6, "The language flavor you requested is not supported."

    invoke-direct {v4, v5, v6}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 730
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->isFlavorAvailable(ILjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 731
    new-instance v4, Lcom/nuance/swypeconnect/ac/ACException;

    const-string v5, "the language flavor you requested is not avaialable"

    invoke-direct {v4, v7, v5}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 734
    :cond_1
    const/4 v3, -0x1

    .line 735
    .local v3, "v":I
    iget-object v4, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->languageService:Lcom/nuance/connect/api/LanguageService;

    invoke-interface {v4}, Lcom/nuance/connect/api/LanguageService;->getDownloadLdbFlavorList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/connect/api/LanguageService$LdbFlavorInfo;

    .line 736
    .local v2, "info":Lcom/nuance/connect/api/LanguageService$LdbFlavorInfo;
    invoke-virtual {v2}, Lcom/nuance/connect/api/LanguageService$LdbFlavorInfo;->getXT9LanguageId()I

    move-result v4

    if-ne v4, p1, :cond_2

    invoke-virtual {v2}, Lcom/nuance/connect/api/LanguageService$LdbFlavorInfo;->getFlavor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 737
    invoke-virtual {v2}, Lcom/nuance/connect/api/LanguageService$LdbFlavorInfo;->getVersion()I

    move-result v3

    .line 742
    .end local v2    # "info":Lcom/nuance/connect/api/LanguageService$LdbFlavorInfo;
    :cond_3
    :try_start_0
    iget-object v4, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->languageService:Lcom/nuance/connect/api/LanguageService;

    new-instance v5, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$LanguageDownloadCallbackAdapter;

    invoke-direct {v5, p0, p1, v3, p3}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$LanguageDownloadCallbackAdapter;-><init>(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;IILcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadFileCallback;)V

    invoke-interface {v4, p1, p2, v5}, Lcom/nuance/connect/api/LanguageService;->downloadLanguage(ILjava/lang/String;Lcom/nuance/connect/api/LanguageService$DownloadCallback;)V
    :try_end_0
    .catch Lcom/nuance/connect/api/ConnectException; {:try_start_0 .. :try_end_0} :catch_0

    .line 746
    return-void

    .line 743
    :catch_0
    move-exception v0

    .line 744
    .local v0, "e":Lcom/nuance/connect/api/ConnectException;
    new-instance v4, Lcom/nuance/swypeconnect/ac/ACException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The language you requested is not available: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/nuance/connect/api/ConnectException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v7, v5}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v4
.end method

.method public getAvailableLanguages()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 656
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 657
    .local v0, "availableLanguages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v3, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->languageService:Lcom/nuance/connect/api/LanguageService;

    invoke-interface {v3}, Lcom/nuance/connect/api/LanguageService;->getDownloadLdbList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/connect/api/LanguageService$LdbInfo;

    .line 658
    .local v2, "info":Lcom/nuance/connect/api/LanguageService$LdbInfo;
    invoke-virtual {v2}, Lcom/nuance/connect/api/LanguageService$LdbInfo;->getXT9LanguageId()I

    move-result v3

    if-lez v3, :cond_0

    .line 659
    invoke-virtual {v2}, Lcom/nuance/connect/api/LanguageService$LdbInfo;->getXT9LanguageId()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->isSupported(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/nuance/connect/api/LanguageService$LdbInfo;->getXT9LanguageId()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->isPreinstalled(I)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/nuance/connect/api/LanguageService$LdbInfo;->getXT9LanguageId()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->isDownloaded(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 662
    invoke-virtual {v2}, Lcom/nuance/connect/api/LanguageService$LdbInfo;->getXT9LanguageId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 666
    .end local v2    # "info":Lcom/nuance/connect/api/LanguageService$LdbInfo;
    :cond_1
    return-object v0
.end method

.method public getDownloadedLanguages()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 698
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 699
    .local v0, "availableLanguages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v4, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->languageService:Lcom/nuance/connect/api/LanguageService;

    invoke-interface {v4}, Lcom/nuance/connect/api/LanguageService;->getDownloadLdbList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nuance/connect/api/LanguageService$LdbInfo;

    .line 700
    .local v3, "info":Lcom/nuance/connect/api/LanguageService$LdbInfo;
    invoke-virtual {v3}, Lcom/nuance/connect/api/LanguageService$LdbInfo;->getXT9LanguageId()I

    move-result v2

    .line 701
    .local v2, "id":I
    if-lez v2, :cond_0

    invoke-direct {p0, v2}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->isSupported(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0, v2}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->isDownloaded(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/nuance/connect/api/LanguageService$LdbInfo;->getVersion()I

    move-result v4

    invoke-direct {p0, v2, v4}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->isUpdateAvailable(II)Z

    move-result v4

    if-nez v4, :cond_0

    .line 703
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 706
    .end local v2    # "id":I
    .end local v3    # "info":Lcom/nuance/connect/api/LanguageService$LdbInfo;
    :cond_1
    return-object v0
.end method

.method getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 319
    const-string v0, "LANGUAGE"

    return-object v0
.end method

.method public getUpdatableLanguages()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 677
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 678
    .local v2, "updateableLanguages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v3, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->languageService:Lcom/nuance/connect/api/LanguageService;

    invoke-interface {v3}, Lcom/nuance/connect/api/LanguageService;->getDownloadLdbList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/connect/api/LanguageService$LdbInfo;

    .line 679
    .local v1, "info":Lcom/nuance/connect/api/LanguageService$LdbInfo;
    invoke-virtual {v1}, Lcom/nuance/connect/api/LanguageService$LdbInfo;->getXT9LanguageId()I

    move-result v3

    if-lez v3, :cond_1

    .line 680
    invoke-virtual {v1}, Lcom/nuance/connect/api/LanguageService$LdbInfo;->getXT9LanguageId()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->isSupported(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/nuance/connect/api/LanguageService$LdbInfo;->getXT9LanguageId()I

    move-result v3

    invoke-virtual {v1}, Lcom/nuance/connect/api/LanguageService$LdbInfo;->getVersion()I

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->isUpdateAvailable(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 683
    invoke-virtual {v1}, Lcom/nuance/connect/api/LanguageService$LdbInfo;->getXT9LanguageId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 686
    :cond_1
    iget-object v3, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Language not found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/nuance/connect/api/LanguageService$LdbInfo;->getXT9LanguageId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto :goto_0

    .line 689
    .end local v1    # "info":Lcom/nuance/connect/api/LanguageService$LdbInfo;
    :cond_2
    return-object v2
.end method

.method public isFlavorAvailable(ILjava/lang/String;)Z
    .locals 5
    .param p1, "xt9LanguageId"    # I
    .param p2, "flavor"    # Ljava/lang/String;

    .prologue
    .line 767
    const/4 v2, 0x0

    .line 769
    .local v2, "returnValue":Z
    iget-object v3, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->supportedLangs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 770
    iget-object v3, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->languageService:Lcom/nuance/connect/api/LanguageService;

    invoke-interface {v3}, Lcom/nuance/connect/api/LanguageService;->getDownloadLdbFlavorList()Ljava/util/List;

    .line 771
    iget-object v3, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->languageService:Lcom/nuance/connect/api/LanguageService;

    invoke-interface {v3}, Lcom/nuance/connect/api/LanguageService;->getDownloadLdbFlavorList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/connect/api/LanguageService$LdbFlavorInfo;

    .line 772
    .local v1, "info":Lcom/nuance/connect/api/LanguageService$LdbFlavorInfo;
    invoke-virtual {v1}, Lcom/nuance/connect/api/LanguageService$LdbFlavorInfo;->getXT9LanguageId()I

    move-result v3

    if-ne v3, p1, :cond_0

    invoke-virtual {v1}, Lcom/nuance/connect/api/LanguageService$LdbFlavorInfo;->getFlavor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 773
    const/4 v2, 0x1

    .line 778
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "info":Lcom/nuance/connect/api/LanguageService$LdbFlavorInfo;
    .end local v2    # "returnValue":Z
    :cond_1
    return v2
.end method

.method public isLanguageListAvailable()Z
    .locals 1

    .prologue
    .line 873
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->languageService:Lcom/nuance/connect/api/LanguageService;

    invoke-interface {v0}, Lcom/nuance/connect/api/LanguageService;->isLanguageListAvailable()Z

    move-result v0

    return v0
.end method

.method public languageUninstalled(I)V
    .locals 3
    .param p1, "xt9LanguageId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation

    .prologue
    .line 827
    invoke-direct {p0, p1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 828
    new-instance v0, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v1, 0x6f

    const-string v2, "The language you requested is not supported."

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 831
    :cond_0
    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->downloaded:Ljava/util/HashMap;

    monitor-enter v1

    .line 832
    :try_start_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->downloaded:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 833
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 834
    invoke-direct {p0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->save()V

    .line 836
    :try_start_1
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->languageService:Lcom/nuance/connect/api/LanguageService;

    invoke-interface {v0, p1}, Lcom/nuance/connect/api/LanguageService;->languageUninstalled(I)V
    :try_end_1
    .catch Lcom/nuance/connect/api/ConnectException; {:try_start_1 .. :try_end_1} :catch_0

    .line 839
    :goto_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->supportedLangs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 840
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->supportedLangs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v1, "LANGUAGE_DL"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 842
    :cond_1
    return-void

    .line 833
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 837
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public registerCallback(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadListCallback;Z)V
    .locals 2
    .param p1, "callback"    # Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadListCallback;
    .param p2, "sendNow"    # Z

    .prologue
    .line 887
    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->listCallbacks:Ljava/util/Set;

    monitor-enter v1

    .line 888
    :try_start_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->listCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 889
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 891
    if-eqz p2, :cond_0

    .line 892
    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->getAvailableLanguages()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadListCallback;->availableLanguages(Ljava/util/List;)V

    .line 893
    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->getDownloadedLanguages()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadListCallback;->downloadedLanguages(Ljava/util/List;)V

    .line 894
    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->getUpdatableLanguages()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadListCallback;->updatableLanguages(Ljava/util/List;)V

    .line 896
    :cond_0
    return-void

    .line 889
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public removeSupportedLanguage(Ljava/lang/Integer;)V
    .locals 4
    .param p1, "xt9LanguageId"    # Ljava/lang/Integer;

    .prologue
    .line 511
    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->supportedLangs:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 512
    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->supportedLangs:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->downloaded:Ljava/util/HashMap;

    monitor-enter v2

    .line 514
    :try_start_0
    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->downloaded:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 516
    invoke-direct {p0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->save()V

    .line 518
    :try_start_1
    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->languageService:Lcom/nuance/connect/api/LanguageService;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/nuance/connect/api/LanguageService;->cancelDownload(I)V
    :try_end_1
    .catch Lcom/nuance/connect/api/ConnectException; {:try_start_1 .. :try_end_1} :catch_0

    .line 523
    :goto_0
    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->languageService:Lcom/nuance/connect/api/LanguageService;

    invoke-interface {v1}, Lcom/nuance/connect/api/LanguageService;->notifyCallbacksOfStatus()V

    .line 525
    :cond_0
    return-void

    .line 515
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 519
    :catch_0
    move-exception v0

    .line 520
    .local v0, "e":Lcom/nuance/connect/api/ConnectException;
    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeSupportedLanguage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/nuance/connect/api/ConnectException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method shutdown()V
    .locals 1

    .prologue
    .line 324
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->bInitialized:Z

    .line 325
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACService;->isShutdown:Z

    .line 326
    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->unregisterCallbacks()V

    .line 327
    return-void
.end method

.method start()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 331
    iput-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACService;->isShutdown:Z

    .line 332
    iput-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->bInitialized:Z

    .line 333
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->languageListCallback:Lcom/nuance/connect/api/LanguageService$ListCallback;

    invoke-interface {v0}, Lcom/nuance/connect/api/LanguageService$ListCallback;->languageListUpdate()V

    .line 334
    return-void
.end method

.method public unregisterCallback(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadListCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadListCallback;

    .prologue
    .line 907
    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->listCallbacks:Ljava/util/Set;

    monitor-enter v1

    .line 908
    :try_start_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->listCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 909
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->listCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 911
    :cond_0
    monitor-exit v1

    .line 912
    return-void

    .line 911
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
    .line 918
    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->listCallbacks:Ljava/util/Set;

    monitor-enter v1

    .line 919
    :try_start_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->listCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 920
    monitor-exit v1

    .line 921
    return-void

    .line 920
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
