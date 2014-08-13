.class public Lcom/nuance/connect/internal/LanguageServiceInternal;
.super Lcom/nuance/connect/internal/AbstactService;
.source "LanguageServiceInternal.java"

# interfaces
.implements Lcom/nuance/connect/api/LanguageService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/internal/LanguageServiceInternal$3;
    }
.end annotation


# static fields
.field private static final MESSAGE_IDS:[Lcom/nuance/connect/internal/common/InternalMessages;

.field private static final languageList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[I>;"
        }
    .end annotation
.end field


# instance fields
.field private final canceledDownloads:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

.field private final downloadingCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nuance/connect/api/LanguageService$DownloadCallback;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Lcom/nuance/connect/internal/ConnectHandler;

.field private final languageCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/nuance/connect/api/LanguageService$ListCallback;",
            ">;"
        }
    .end annotation
.end field

.field private languageListNotified:Z

.field private final languageMetadata:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private log:Lcom/nuance/connect/util/Logger$Log;

.field private final redownload:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nuance/connect/api/LanguageService$DownloadCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 38
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/nuance/connect/internal/common/InternalMessages;

    const/4 v1, 0x0

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_SET_LANGUAGES_STATUS:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_LANGUAGE_INSTALL_READY:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_LANGUAGE_DOWNLOAD_PROGRESS:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_LANGUAGE_UNINSTALL:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_LANGUAGE_DOWNLOAD_FAILED:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_LANGUAGE_DOWNLOAD_CANCEL_ACK:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nuance/connect/internal/LanguageServiceInternal;->MESSAGE_IDS:[Lcom/nuance/connect/internal/common/InternalMessages;

    .line 526
    new-instance v0, Lcom/nuance/connect/internal/LanguageServiceInternal$2;

    invoke-direct {v0}, Lcom/nuance/connect/internal/LanguageServiceInternal$2;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/nuance/connect/internal/LanguageServiceInternal;->languageList:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)V
    .locals 1
    .param p1, "service"    # Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/nuance/connect/internal/AbstactService;-><init>()V

    .line 26
    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-static {v0}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->languageMetadata:Ljava/util/HashMap;

    .line 33
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->canceledDownloads:Ljava/util/Set;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->redownload:Ljava/util/Map;

    .line 35
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->languageCallbacks:Ljava/util/Set;

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->downloadingCallbacks:Ljava/util/Map;

    .line 76
    new-instance v0, Lcom/nuance/connect/internal/LanguageServiceInternal$1;

    invoke-direct {v0, p0}, Lcom/nuance/connect/internal/LanguageServiceInternal$1;-><init>(Lcom/nuance/connect/internal/LanguageServiceInternal;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->handler:Lcom/nuance/connect/internal/ConnectHandler;

    .line 48
    iput-object p1, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/connect/internal/LanguageServiceInternal;)Lcom/nuance/connect/util/Logger$Log;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/connect/internal/LanguageServiceInternal;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/connect/internal/LanguageServiceInternal;Ljava/util/Map;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/connect/internal/LanguageServiceInternal;
    .param p1, "x1"    # Ljava/util/Map;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/nuance/connect/internal/LanguageServiceInternal;->updateLanguagesData(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$200(Lcom/nuance/connect/internal/LanguageServiceInternal;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/connect/internal/LanguageServiceInternal;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->downloadingCallbacks:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Lcom/nuance/connect/internal/LanguageServiceInternal;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/connect/internal/LanguageServiceInternal;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/nuance/connect/internal/LanguageServiceInternal;->markLanguageInstalled(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/nuance/connect/internal/LanguageServiceInternal;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/connect/internal/LanguageServiceInternal;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    return-object v0
.end method

.method static synthetic access$500(Lcom/nuance/connect/internal/LanguageServiceInternal;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/connect/internal/LanguageServiceInternal;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->canceledDownloads:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$600(Lcom/nuance/connect/internal/LanguageServiceInternal;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/connect/internal/LanguageServiceInternal;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/nuance/connect/internal/LanguageServiceInternal;->removeLanguage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/nuance/connect/internal/LanguageServiceInternal;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/connect/internal/LanguageServiceInternal;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->redownload:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$800(Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-static {p0}, Lcom/nuance/connect/internal/LanguageServiceInternal;->findLanguageIdByName(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$900()[Lcom/nuance/connect/internal/common/InternalMessages;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/nuance/connect/internal/LanguageServiceInternal;->MESSAGE_IDS:[Lcom/nuance/connect/internal/common/InternalMessages;

    return-object v0
.end method

.method private cancelDownload(Ljava/lang/String;)V
    .locals 3
    .param p1, "lang"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 459
    if-nez p1, :cond_1

    .line 460
    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "Invalid language"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    .line 479
    :cond_0
    :goto_0
    return-void

    .line 464
    :cond_1
    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->redownload:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->canceledDownloads:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 466
    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->redownload:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 470
    :cond_2
    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->canceledDownloads:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 472
    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_LANGUAGE_DOWNLOAD_CANCEL:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-interface {v0, v1, p1, v2, v2}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;II)Z

    .line 474
    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->languageMetadata:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->languageMetadata:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v1, "STEP"

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private static findLanguageById(I)Ljava/lang/String;
    .locals 7
    .param p0, "xt9LanguageId"    # I

    .prologue
    .line 632
    sget-object v6, Lcom/nuance/connect/internal/LanguageServiceInternal;->languageList:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 633
    .local v4, "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[I>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .local v0, "arr$":[I
    array-length v5, v0

    .local v5, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v5, :cond_0

    aget v3, v0, v2

    .line 634
    .local v3, "id":I
    if-ne p0, v3, :cond_1

    .line 635
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 640
    .end local v0    # "arr$":[I
    .end local v2    # "i$":I
    .end local v3    # "id":I
    .end local v4    # "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[I>;"
    .end local v5    # "len$":I
    :goto_1
    return-object v6

    .line 633
    .restart local v0    # "arr$":[I
    .restart local v2    # "i$":I
    .restart local v3    # "id":I
    .restart local v4    # "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[I>;"
    .restart local v5    # "len$":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 640
    .end local v0    # "arr$":[I
    .end local v2    # "i$":I
    .end local v3    # "id":I
    .end local v4    # "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[I>;"
    .end local v5    # "len$":I
    :cond_2
    const/4 v6, 0x0

    goto :goto_1
.end method

.method private findLanguageById(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "xt9LanguageId"    # I
    .param p2, "flavor"    # Ljava/lang/String;

    .prologue
    .line 644
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 645
    .local v0, "identifier":Ljava/lang/StringBuilder;
    invoke-static {p1}, Lcom/nuance/connect/internal/LanguageServiceInternal;->findLanguageById(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 646
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 647
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 649
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static findLanguageFlavorFromName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "languageName"    # Ljava/lang/String;

    .prologue
    .line 668
    const-string v1, "-"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 669
    .local v0, "info":[Ljava/lang/String;
    const/4 v1, 0x1

    aget-object v1, v0, v1

    return-object v1
.end method

.method private static findLanguageIdByName(Ljava/lang/String;)I
    .locals 4
    .param p0, "languageName"    # Ljava/lang/String;

    .prologue
    .line 653
    sget-object v2, Lcom/nuance/connect/internal/LanguageServiceInternal;->languageList:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 654
    .local v1, "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[I>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 655
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    const/4 v3, 0x0

    aget v2, v2, v3

    .line 659
    .end local v1    # "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[I>;"
    :goto_0
    return v2

    :cond_1
    const/4 v2, -0x1

    goto :goto_0
.end method

.method private static findLanguageIdFromFlavorByName(Ljava/lang/String;)I
    .locals 2
    .param p0, "languageName"    # Ljava/lang/String;

    .prologue
    .line 663
    const-string v1, "-"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 664
    .local v0, "info":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Lcom/nuance/connect/internal/LanguageServiceInternal;->findLanguageIdByName(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private installLanguage(Ljava/lang/String;)V
    .locals 3
    .param p1, "lang"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 437
    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->languageMetadata:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->languageMetadata:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_LANGUAGE_INSTALL:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-interface {v0, v1, p1, v2, v2}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;II)Z

    .line 443
    :goto_0
    return-void

    .line 441
    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "Attempt to install a language that isn\'t available"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static isFlavor(Ljava/lang/String;)Z
    .locals 2
    .param p0, "languageName"    # Ljava/lang/String;

    .prologue
    .line 673
    invoke-static {p0}, Lcom/nuance/connect/internal/LanguageServiceInternal;->findLanguageIdByName(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string v0, "-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 675
    const/4 v0, 0x1

    .line 677
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private markLanguageInstalled(Ljava/lang/String;)V
    .locals 4
    .param p1, "lang"    # Ljava/lang/String;

    .prologue
    .line 427
    iget-object v1, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->languageMetadata:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 428
    iget-object v1, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->languageMetadata:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "STEP"

    const/4 v3, 0x7

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    iget-object v1, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->languageMetadata:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "PROP_VERSION"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 432
    .local v0, "propVersion":Ljava/lang/String;
    iget-object v1, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->languageMetadata:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "PROP_INSTALLEDVERSION"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    .end local v0    # "propVersion":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private removeLanguage(Ljava/lang/String;)V
    .locals 4
    .param p1, "lang"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 446
    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->languageMetadata:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->languageMetadata:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->languageMetadata:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v1, "STEP"

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_LANGUAGE_UNINSTALL:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-interface {v0, v1, p1, v3, v3}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;II)Z

    .line 455
    :goto_0
    invoke-virtual {p0}, Lcom/nuance/connect/internal/LanguageServiceInternal;->notifyCallbacksOfStatus()V

    .line 456
    return-void

    .line 452
    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "Attempt to uninstall a language that isn\'t available"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private updateLanguagesData(Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 482
    .local p1, "updatedMetadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-nez p1, :cond_1

    .line 483
    iget-object v6, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v7, "updateLanguagesData contains no metadata"

    invoke-interface {v6, v7}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    .line 515
    :cond_0
    :goto_0
    return-void

    .line 487
    :cond_1
    const/4 v5, 0x0

    .line 489
    .local v5, "sendNotification":Z
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 490
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 491
    .local v3, "lang":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    .line 492
    .local v4, "props":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->canceledDownloads:Ljava/util/Set;

    invoke-interface {v6, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 493
    const-string v6, "STEP"

    const/16 v7, 0x8

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    :cond_3
    iget-object v6, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->languageMetadata:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 498
    .local v0, "current":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_4

    const-string v6, "PROP_VERSION"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_4

    const-string v6, "PROP_VERSION"

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_4

    const-string v6, "PROP_VERSION"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "PROP_VERSION"

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 502
    const/4 v5, 0x1

    goto :goto_1

    .line 503
    :cond_4
    if-nez v0, :cond_2

    .line 505
    const/4 v5, 0x1

    goto :goto_1

    .line 509
    .end local v0    # "current":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v3    # "lang":Ljava/lang/String;
    .end local v4    # "props":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_5
    iget-object v6, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->languageMetadata:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 511
    iget-boolean v6, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->languageListNotified:Z

    if-eqz v6, :cond_6

    if-eqz v5, :cond_0

    .line 512
    :cond_6
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->languageListNotified:Z

    .line 513
    invoke-virtual {p0}, Lcom/nuance/connect/internal/LanguageServiceInternal;->notifyCallbacksOfStatus()V

    goto :goto_0
.end method


# virtual methods
.method public cancelDownload(I)V
    .locals 1
    .param p1, "xt9LanguageId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/connect/api/ConnectException;
        }
    .end annotation

    .prologue
    .line 359
    invoke-static {p1}, Lcom/nuance/connect/internal/LanguageServiceInternal;->findLanguageById(I)Ljava/lang/String;

    move-result-object v0

    .line 360
    .local v0, "lang":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/nuance/connect/internal/LanguageServiceInternal;->cancelDownload(Ljava/lang/String;)V

    .line 361
    return-void
.end method

.method public cancelDownload(ILjava/lang/String;)V
    .locals 1
    .param p1, "xt9LanguageId"    # I
    .param p2, "flavor"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/connect/api/ConnectException;
        }
    .end annotation

    .prologue
    .line 364
    invoke-direct {p0, p1, p2}, Lcom/nuance/connect/internal/LanguageServiceInternal;->findLanguageById(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 365
    .local v0, "lang":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/nuance/connect/internal/LanguageServiceInternal;->cancelDownload(Ljava/lang/String;)V

    .line 366
    return-void
.end method

.method public downloadLanguage(ILcom/nuance/connect/api/LanguageService$DownloadCallback;)V
    .locals 4
    .param p1, "xt9LanguageId"    # I
    .param p2, "callback"    # Lcom/nuance/connect/api/LanguageService$DownloadCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/connect/api/ConnectException;
        }
    .end annotation

    .prologue
    .line 276
    invoke-static {p1}, Lcom/nuance/connect/internal/LanguageServiceInternal;->findLanguageById(I)Ljava/lang/String;

    move-result-object v0

    .line 277
    .local v0, "language":Ljava/lang/String;
    iget-object v1, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "downloadLanguage id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " lang="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " callback="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 280
    iget-object v1, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->languageMetadata:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 281
    new-instance v1, Lcom/nuance/connect/api/ConnectException;

    const/16 v2, 0x6e

    invoke-direct {v1, v2}, Lcom/nuance/connect/api/ConnectException;-><init>(I)V

    throw v1

    .line 284
    :cond_0
    iget-object v1, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->canceledDownloads:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 285
    iget-object v1, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "Language currently being canceled, putting into queue once verified."

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 286
    iget-object v1, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->redownload:Ljava/util/Map;

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    :goto_0
    return-void

    .line 290
    :cond_1
    iget-object v1, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->downloadingCallbacks:Ljava/util/Map;

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    invoke-direct {p0, v0}, Lcom/nuance/connect/internal/LanguageServiceInternal;->installLanguage(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public downloadLanguage(ILjava/lang/String;Lcom/nuance/connect/api/LanguageService$DownloadCallback;)V
    .locals 4
    .param p1, "xt9LanguageId"    # I
    .param p2, "flavor"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/nuance/connect/api/LanguageService$DownloadCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/connect/api/ConnectException;
        }
    .end annotation

    .prologue
    .line 295
    invoke-direct {p0, p1, p2}, Lcom/nuance/connect/internal/LanguageServiceInternal;->findLanguageById(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 296
    .local v0, "language":Ljava/lang/String;
    iget-object v1, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "downloadLanguage id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " flavor="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " lang="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " callback="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 299
    iget-object v1, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->languageMetadata:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 300
    new-instance v1, Lcom/nuance/connect/api/ConnectException;

    const/16 v2, 0x6e

    invoke-direct {v1, v2}, Lcom/nuance/connect/api/ConnectException;-><init>(I)V

    throw v1

    .line 303
    :cond_0
    iget-object v1, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->canceledDownloads:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 304
    iget-object v1, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "Language currently being canceled, putting into queue once verified."

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 305
    iget-object v1, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->redownload:Ljava/util/Map;

    invoke-interface {v1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    :goto_0
    return-void

    .line 309
    :cond_1
    iget-object v1, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->downloadingCallbacks:Ljava/util/Map;

    invoke-interface {v1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    invoke-direct {p0, v0}, Lcom/nuance/connect/internal/LanguageServiceInternal;->installLanguage(Ljava/lang/String;)V

    goto :goto_0
.end method

.method getDependencies()[Lcom/nuance/connect/common/ConnectFeature;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/nuance/connect/common/ConnectFeature;->LANGUAGE:Lcom/nuance/connect/common/ConnectFeature;

    invoke-virtual {v0}, Lcom/nuance/connect/common/ConnectFeature;->getDependencies()[Lcom/nuance/connect/common/ConnectFeature;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadLdbFlavorList()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/connect/api/LanguageService$LdbFlavorInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 244
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 245
    .local v0, "availableLanguages":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/connect/api/LanguageService$LdbFlavorInfo;>;"
    iget-object v6, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->languageMetadata:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 246
    .local v4, "lang":Ljava/lang/String;
    invoke-static {v4}, Lcom/nuance/connect/internal/LanguageServiceInternal;->isFlavor(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->languageMetadata:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 247
    invoke-static {v4}, Lcom/nuance/connect/internal/LanguageServiceInternal;->findLanguageIdFromFlavorByName(Ljava/lang/String;)I

    move-result v3

    .line 248
    .local v3, "id":I
    invoke-static {v4}, Lcom/nuance/connect/internal/LanguageServiceInternal;->findLanguageFlavorFromName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 249
    .local v1, "flavor":Ljava/lang/String;
    const/4 v5, 0x0

    .line 252
    .local v5, "version":I
    :try_start_0
    iget-object v6, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->languageMetadata:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    const-string v7, "PROP_VERSION"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 256
    :goto_1
    new-instance v6, Lcom/nuance/connect/api/LanguageService$LdbFlavorInfo;

    invoke-direct {v6, v3, v5, v1}, Lcom/nuance/connect/api/LanguageService$LdbFlavorInfo;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 259
    .end local v1    # "flavor":Ljava/lang/String;
    .end local v3    # "id":I
    .end local v4    # "lang":Ljava/lang/String;
    .end local v5    # "version":I
    :cond_1
    return-object v0

    .line 253
    .restart local v1    # "flavor":Ljava/lang/String;
    .restart local v3    # "id":I
    .restart local v4    # "lang":Ljava/lang/String;
    .restart local v5    # "version":I
    :catch_0
    move-exception v6

    goto :goto_1
.end method

.method public getDownloadLdbList()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/connect/api/LanguageService$LdbInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 226
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 227
    .local v0, "availableLanguages":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/connect/api/LanguageService$LdbInfo;>;"
    iget-object v5, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->languageMetadata:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 228
    .local v3, "lang":Ljava/lang/String;
    invoke-static {v3}, Lcom/nuance/connect/internal/LanguageServiceInternal;->findLanguageIdByName(Ljava/lang/String;)I

    move-result v2

    .line 229
    .local v2, "id":I
    if-lez v2, :cond_0

    iget-object v5, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->languageMetadata:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 230
    const/4 v4, 0x0

    .line 233
    .local v4, "version":I
    :try_start_0
    iget-object v5, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->languageMetadata:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    const-string v6, "PROP_VERSION"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 237
    :goto_1
    new-instance v5, Lcom/nuance/connect/api/LanguageService$LdbInfo;

    invoke-direct {v5, v2, v4}, Lcom/nuance/connect/api/LanguageService$LdbInfo;-><init>(II)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 240
    .end local v2    # "id":I
    .end local v3    # "lang":Ljava/lang/String;
    .end local v4    # "version":I
    :cond_1
    return-object v0

    .line 234
    .restart local v2    # "id":I
    .restart local v3    # "lang":Ljava/lang/String;
    .restart local v4    # "version":I
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method getHandlers()[Lcom/nuance/connect/internal/ConnectHandler;
    .locals 3

    .prologue
    .line 62
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/nuance/connect/internal/ConnectHandler;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->handler:Lcom/nuance/connect/internal/ConnectHandler;

    aput-object v2, v0, v1

    return-object v0
.end method

.method getServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/nuance/connect/common/ConnectFeature;->LANGUAGE:Lcom/nuance/connect/common/ConnectFeature;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isLanguageListAvailable()Z
    .locals 1

    .prologue
    .line 377
    iget-boolean v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->languageListNotified:Z

    return v0
.end method

.method public languageUninstalled(I)V
    .locals 3
    .param p1, "xt9LanguageId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/connect/api/ConnectException;
        }
    .end annotation

    .prologue
    .line 327
    invoke-static {p1}, Lcom/nuance/connect/internal/LanguageServiceInternal;->findLanguageById(I)Ljava/lang/String;

    move-result-object v1

    .line 329
    .local v1, "language":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/nuance/connect/internal/LanguageServiceInternal;->removeLanguage(Ljava/lang/String;)V

    .line 330
    iget-object v2, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->downloadingCallbacks:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 331
    iget-object v2, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->downloadingCallbacks:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/LanguageService$DownloadCallback;

    .line 332
    .local v0, "callback":Lcom/nuance/connect/api/LanguageService$DownloadCallback;
    iget-object v2, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->downloadingCallbacks:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    const/4 v2, 0x3

    invoke-interface {v0, v2}, Lcom/nuance/connect/api/LanguageService$DownloadCallback;->downloadStopped(I)V

    .line 335
    .end local v0    # "callback":Lcom/nuance/connect/api/LanguageService$DownloadCallback;
    :cond_0
    return-void
.end method

.method public languageUninstalled(ILjava/lang/String;)V
    .locals 3
    .param p1, "xt9LanguageId"    # I
    .param p2, "flavor"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/connect/api/ConnectException;
        }
    .end annotation

    .prologue
    .line 338
    invoke-direct {p0, p1, p2}, Lcom/nuance/connect/internal/LanguageServiceInternal;->findLanguageById(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 340
    .local v1, "language":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/nuance/connect/internal/LanguageServiceInternal;->removeLanguage(Ljava/lang/String;)V

    .line 341
    iget-object v2, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->downloadingCallbacks:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 342
    iget-object v2, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->downloadingCallbacks:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/LanguageService$DownloadCallback;

    .line 343
    .local v0, "callback":Lcom/nuance/connect/api/LanguageService$DownloadCallback;
    iget-object v2, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->downloadingCallbacks:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    const/4 v2, 0x3

    invoke-interface {v0, v2}, Lcom/nuance/connect/api/LanguageService$DownloadCallback;->downloadStopped(I)V

    .line 346
    .end local v0    # "callback":Lcom/nuance/connect/api/LanguageService$DownloadCallback;
    :cond_0
    return-void
.end method

.method public notifyCallbacksOfStatus()V
    .locals 4

    .prologue
    .line 518
    iget-object v3, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->languageCallbacks:Ljava/util/Set;

    monitor-enter v3

    .line 519
    :try_start_0
    iget-object v2, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->languageCallbacks:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/LanguageService$ListCallback;

    .line 520
    .local v0, "callback":Lcom/nuance/connect/api/LanguageService$ListCallback;
    invoke-interface {v0}, Lcom/nuance/connect/api/LanguageService$ListCallback;->languageListUpdate()V

    goto :goto_0

    .line 522
    .end local v0    # "callback":Lcom/nuance/connect/api/LanguageService$ListCallback;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 523
    return-void
.end method

.method public registerCallback(Lcom/nuance/connect/api/LanguageService$ListCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/nuance/connect/api/LanguageService$ListCallback;

    .prologue
    .line 388
    iget-object v1, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->languageCallbacks:Ljava/util/Set;

    monitor-enter v1

    .line 389
    :try_start_0
    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->languageCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 390
    monitor-exit v1

    .line 391
    return-void

    .line 390
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterCallback(Lcom/nuance/connect/api/LanguageService$ListCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/nuance/connect/api/LanguageService$ListCallback;

    .prologue
    .line 402
    iget-object v1, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->languageCallbacks:Ljava/util/Set;

    monitor-enter v1

    .line 403
    :try_start_0
    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->languageCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 404
    monitor-exit v1

    .line 405
    return-void

    .line 404
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
    .line 412
    iget-object v1, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->languageCallbacks:Ljava/util/Set;

    monitor-enter v1

    .line 413
    :try_start_0
    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal;->languageCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 414
    monitor-exit v1

    .line 415
    return-void

    .line 414
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
