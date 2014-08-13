.class Lcom/nuance/connect/internal/ResourcesServiceInternal;
.super Lcom/nuance/connect/internal/AbstactService;
.source "ResourcesServiceInternal.java"

# interfaces
.implements Lcom/nuance/connect/api/ResourcesService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/internal/ResourcesServiceInternal$6;
    }
.end annotation


# static fields
.field private static final MESSAGE_IDS:[Lcom/nuance/connect/internal/common/InternalMessages;


# instance fields
.field private catIdsToLocale:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private checkLanguageCompleteHandler:Landroid/os/Handler;

.field private connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

.field private handler:Lcom/nuance/connect/internal/ConnectHandler;

.field private final log:Lcom/nuance/connect/util/Logger$Log;

.field private processingResources:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private processingStatus:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private queueCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/util/Locale;",
            "Lcom/nuance/connect/api/ResourcesService$ProcessingCallback;",
            ">;"
        }
    .end annotation
.end field

.field private resources:Lcom/nuance/connect/internal/ConnectResources;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 45
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/nuance/connect/internal/common/InternalMessages;

    const/4 v1, 0x0

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_STORE_IMAGE_RESOURCE:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_STORE_TEXT_RESOURCE:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_GET_CONNECT_RESOURCES:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_SET_RESOURCES_FOR_LOCALE:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_SET_AVAILABLE_RESOURCES_LIST:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nuance/connect/internal/ResourcesServiceInternal;->MESSAGE_IDS:[Lcom/nuance/connect/internal/common/InternalMessages;

    return-void
.end method

.method constructor <init>(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)V
    .locals 5
    .param p1, "service"    # Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/nuance/connect/internal/AbstactService;-><init>()V

    .line 40
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal;->processingStatus:Ljava/util/HashMap;

    .line 41
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal;->queueCallbacks:Ljava/util/HashMap;

    .line 42
    sget-object v1, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    const-string v2, "ResourcesService"

    invoke-static {v1, v2}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    .line 43
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal;->processingResources:Ljava/util/ArrayList;

    .line 54
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal;->checkLanguageCompleteHandler:Landroid/os/Handler;

    .line 133
    new-instance v1, Lcom/nuance/connect/internal/ResourcesServiceInternal$1;

    invoke-direct {v1, p0}, Lcom/nuance/connect/internal/ResourcesServiceInternal$1;-><init>(Lcom/nuance/connect/internal/ResourcesServiceInternal;)V

    iput-object v1, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal;->handler:Lcom/nuance/connect/internal/ConnectHandler;

    .line 57
    iput-object p1, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    .line 58
    iget-object v1, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 59
    .local v0, "ctx":Landroid/content/Context;
    new-instance v1, Lcom/nuance/connect/internal/ConnectResources;

    iget-object v2, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v2}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getAppFilesFolder()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/nuance/connect/internal/ConnectResources;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/res/Resources;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal;->resources:Lcom/nuance/connect/internal/ConnectResources;

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/connect/internal/ResourcesServiceInternal;)Lcom/nuance/connect/util/Logger$Log;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/connect/internal/ResourcesServiceInternal;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/connect/internal/ResourcesServiceInternal;)Lcom/nuance/connect/internal/ConnectResources;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/connect/internal/ResourcesServiceInternal;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal;->resources:Lcom/nuance/connect/internal/ConnectResources;

    return-object v0
.end method

.method static synthetic access$200(Lcom/nuance/connect/internal/ResourcesServiceInternal;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/connect/internal/ResourcesServiceInternal;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    return-object v0
.end method

.method static synthetic access$300(Lcom/nuance/connect/internal/ResourcesServiceInternal;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/connect/internal/ResourcesServiceInternal;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/nuance/connect/internal/ResourcesServiceInternal;->processResourcesXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/nuance/connect/internal/ResourcesServiceInternal;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/connect/internal/ResourcesServiceInternal;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal;->catIdsToLocale:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$402(Lcom/nuance/connect/internal/ResourcesServiceInternal;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0
    .param p0, "x0"    # Lcom/nuance/connect/internal/ResourcesServiceInternal;
    .param p1, "x1"    # Ljava/util/HashMap;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal;->catIdsToLocale:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic access$500(Lcom/nuance/connect/internal/ResourcesServiceInternal;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/connect/internal/ResourcesServiceInternal;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/nuance/connect/internal/ResourcesServiceInternal;->normalizeLocaleString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/nuance/connect/internal/ResourcesServiceInternal;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/connect/internal/ResourcesServiceInternal;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal;->queueCallbacks:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$700()[Lcom/nuance/connect/internal/common/InternalMessages;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/nuance/connect/internal/ResourcesServiceInternal;->MESSAGE_IDS:[Lcom/nuance/connect/internal/common/InternalMessages;

    return-object v0
.end method

.method static synthetic access$800(Lcom/nuance/connect/internal/ResourcesServiceInternal;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/connect/internal/ResourcesServiceInternal;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/nuance/connect/internal/ResourcesServiceInternal;->checkLanguageComplete(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/nuance/connect/internal/ResourcesServiceInternal;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/connect/internal/ResourcesServiceInternal;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal;->processingStatus:Ljava/util/HashMap;

    return-object v0
.end method

.method private checkLanguageComplete(Ljava/lang/String;)V
    .locals 5
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 229
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 230
    .local v0, "locale":Ljava/util/Locale;
    invoke-virtual {p0, v0}, Lcom/nuance/connect/internal/ResourcesServiceInternal;->isLanguageAvailable(Ljava/util/Locale;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/nuance/connect/internal/ResourcesServiceInternal;->isLanguageProcessing(Ljava/util/Locale;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 231
    iget-object v1, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal;->checkLanguageCompleteHandler:Landroid/os/Handler;

    new-instance v2, Lcom/nuance/connect/internal/ResourcesServiceInternal$2;

    invoke-direct {v2, p0, p1}, Lcom/nuance/connect/internal/ResourcesServiceInternal$2;-><init>(Lcom/nuance/connect/internal/ResourcesServiceInternal;Ljava/lang/String;)V

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 241
    :goto_0
    return-void

    .line 238
    :cond_0
    iget-object v1, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal;->processingStatus:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 239
    iget-object v1, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal;->processingStatus:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private normalizeLocaleString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "lang"    # Ljava/lang/String;

    .prologue
    .line 450
    if-eqz p1, :cond_0

    const-string v0, "-R"

    const-string v1, "_"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private processResourcesXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "givenLanguage"    # Ljava/lang/String;

    .prologue
    .line 244
    invoke-direct {p0, p3}, Lcom/nuance/connect/internal/ResourcesServiceInternal;->normalizeLocaleString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 245
    .local v2, "language":Ljava/lang/String;
    iget-object v1, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "processResourcesXML filename="

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, " language="

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 248
    iget-object v1, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal;->processingResources:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    iget-object v3, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal;->resources:Lcom/nuance/connect/internal/ConnectResources;

    .line 253
    .local v3, "processResources":Lcom/nuance/connect/internal/ConnectResources;
    const/4 v6, 0x1

    .line 254
    .local v6, "BEGIN":I
    const/4 v7, 0x2

    .line 255
    .local v7, "END":I
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 257
    .local v4, "processing":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/nuance/connect/internal/ResourcesServiceInternal$3;

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/nuance/connect/internal/ResourcesServiceInternal$3;-><init>(Lcom/nuance/connect/internal/ResourcesServiceInternal;Ljava/lang/String;Lcom/nuance/connect/internal/ConnectResources;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 280
    .local v0, "callback":Landroid/os/Handler$Callback;
    new-instance v9, Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v9, v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 282
    .local v9, "queue":Landroid/os/Handler;
    new-instance v10, Lcom/nuance/connect/internal/ResourcesServiceInternal$4;

    invoke-direct {v10, p0, p2, v9, v4}, Lcom/nuance/connect/internal/ResourcesServiceInternal$4;-><init>(Lcom/nuance/connect/internal/ResourcesServiceInternal;Ljava/lang/String;Landroid/os/Handler;Ljava/util/HashMap;)V

    .line 340
    .local v10, "r":Ljava/lang/Runnable;
    new-instance v8, Ljava/lang/Thread;

    invoke-direct {v8, v10}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 341
    .local v8, "async":Ljava/lang/Thread;
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 342
    return-void
.end method


# virtual methods
.method getBestMatch(Ljava/util/Locale;)Ljava/lang/String;
    .locals 9
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    const/4 v0, 0x0

    .line 397
    iget-object v6, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal;->catIdsToLocale:Ljava/util/HashMap;

    if-nez v6, :cond_1

    .line 398
    iget-object v6, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v7, "ResourceService.getBestMatch() catIdsToLocale not ready, yet."

    invoke-interface {v6, v7}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 423
    :cond_0
    :goto_0
    return-object v0

    .line 401
    :cond_1
    if-eqz p1, :cond_0

    iget-object v6, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal;->catIdsToLocale:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 406
    const/4 v0, 0x0

    .line 407
    .local v0, "bestMatch":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 408
    .local v5, "localeNormalized":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 409
    .local v4, "localeLang":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 410
    .local v3, "localeCountry":Ljava/lang/String;
    iget-object v6, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal;->catIdsToLocale:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 411
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 412
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 413
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "bestMatch":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 414
    .restart local v0    # "bestMatch":Ljava/lang/String;
    goto :goto_0

    .line 415
    :cond_3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 416
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "bestMatch":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 417
    .restart local v0    # "bestMatch":Ljava/lang/String;
    goto/16 :goto_0

    .line 418
    :cond_4
    if-nez v0, :cond_2

    .line 419
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "bestMatch":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0    # "bestMatch":Ljava/lang/String;
    goto :goto_1
.end method

.method public getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal;->resources:Lcom/nuance/connect/internal/ConnectResources;

    invoke-virtual {v0, p1}, Lcom/nuance/connect/internal/ConnectResources;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method getDependencies()[Lcom/nuance/connect/common/ConnectFeature;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/nuance/connect/common/ConnectFeature;->RESOURCES:Lcom/nuance/connect/common/ConnectFeature;

    invoke-virtual {v0}, Lcom/nuance/connect/common/ConnectFeature;->getDependencies()[Lcom/nuance/connect/common/ConnectFeature;

    move-result-object v0

    return-object v0
.end method

.method getHandlers()[Lcom/nuance/connect/internal/ConnectHandler;
    .locals 3

    .prologue
    .line 74
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/nuance/connect/internal/ConnectHandler;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal;->handler:Lcom/nuance/connect/internal/ConnectHandler;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getLanguageBitmap(Ljava/lang/String;Ljava/util/Locale;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal;->resources:Lcom/nuance/connect/internal/ConnectResources;

    invoke-virtual {p2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/nuance/connect/internal/ConnectResources;->getLanguageBitmap(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getLanguageString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal;->resources:Lcom/nuance/connect/internal/ConnectResources;

    invoke-virtual {v0, p1}, Lcom/nuance/connect/internal/ConnectResources;->getLanguageString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLanguageString(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal;->resources:Lcom/nuance/connect/internal/ConnectResources;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/nuance/connect/internal/ConnectResources;->getLanguageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/nuance/connect/common/ConnectFeature;->RESOURCES:Lcom/nuance/connect/common/ConnectFeature;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal;->resources:Lcom/nuance/connect/internal/ConnectResources;

    invoke-virtual {v0, p1}, Lcom/nuance/connect/internal/ConnectResources;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isLanguageAvailable(Ljava/util/Locale;)Z
    .locals 3
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 439
    invoke-virtual {p0, p1}, Lcom/nuance/connect/internal/ResourcesServiceInternal;->getBestMatch(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 440
    .local v0, "bestMatch":Ljava/lang/String;
    iget-object v1, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal;->resources:Lcom/nuance/connect/internal/ConnectResources;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/connect/internal/ConnectResources;->hasResourcesForLanguage(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public isLanguageProcessing(Ljava/util/Locale;)Z
    .locals 2
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 445
    invoke-virtual {p0, p1}, Lcom/nuance/connect/internal/ResourcesServiceInternal;->getBestMatch(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 446
    .local v0, "bestMatch":Ljava/lang/String;
    iget-object v1, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal;->processingResources:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public setBitmap(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal;->resources:Lcom/nuance/connect/internal/ConnectResources;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/connect/internal/ConnectResources;->setBitmap(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method public setLanguageBitmap(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;
    .param p3, "filename"    # Ljava/lang/String;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal;->resources:Lcom/nuance/connect/internal/ConnectResources;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p3}, Lcom/nuance/connect/internal/ConnectResources;->setLanguageBitmap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method public setLanguageString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal;->resources:Lcom/nuance/connect/internal/ConnectResources;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/connect/internal/ConnectResources;->setLanguageString(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public setLanguageString(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal;->resources:Lcom/nuance/connect/internal/ConnectResources;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p3}, Lcom/nuance/connect/internal/ConnectResources;->setLanguageString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal;->resources:Lcom/nuance/connect/internal/ConnectResources;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/connect/internal/ConnectResources;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public subscribe(Ljava/util/Locale;Lcom/nuance/connect/api/ResourcesService$ProcessingCallback;)V
    .locals 9
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "callback"    # Lcom/nuance/connect/api/ResourcesService$ProcessingCallback;

    .prologue
    .line 347
    iget-object v6, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "subscribe locale: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 348
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 349
    :cond_0
    iget-object v6, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v7, "subscribe Error locale or callback is null"

    invoke-interface {v6, v7}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    .line 394
    :goto_0
    return-void

    .line 352
    :cond_1
    iget-object v6, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal;->catIdsToLocale:Ljava/util/HashMap;

    if-nez v6, :cond_2

    .line 353
    iget-object v6, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v7, "queuing callback"

    invoke-interface {v6, v7}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 354
    iget-object v6, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal;->queueCallbacks:Ljava/util/HashMap;

    invoke-virtual {v6, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 357
    :cond_2
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 358
    .local v1, "currentLocale":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 360
    .local v5, "variant":Ljava/lang/String;
    const/4 v0, 0x0

    .line 361
    .local v0, "bestMatch":Ljava/lang/String;
    const/4 v4, 0x0

    .line 362
    .local v4, "usedLocale":Ljava/lang/String;
    iget-object v6, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal;->catIdsToLocale:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 363
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 364
    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 365
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "bestMatch":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 366
    .restart local v0    # "bestMatch":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "usedLocale":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 378
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v4    # "usedLocale":Ljava/lang/String;
    :cond_4
    :goto_2
    if-eqz v4, :cond_7

    new-instance v6, Ljava/util/Locale;

    invoke-direct {v6, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lcom/nuance/connect/internal/ResourcesServiceInternal;->isLanguageAvailable(Ljava/util/Locale;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 379
    iget-object v6, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "resources already downloaded for: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    .line 380
    invoke-interface {p2, p1}, Lcom/nuance/connect/api/ResourcesService$ProcessingCallback;->complete(Ljava/util/Locale;)V

    goto/16 :goto_0

    .line 368
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_5
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 369
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "bestMatch":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 370
    .restart local v0    # "bestMatch":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "usedLocale":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 371
    .restart local v4    # "usedLocale":Ljava/lang/String;
    goto :goto_2

    .line 372
    :cond_6
    if-nez v0, :cond_3

    .line 373
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "bestMatch":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 374
    .restart local v0    # "bestMatch":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "usedLocale":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .restart local v4    # "usedLocale":Ljava/lang/String;
    goto/16 :goto_1

    .line 381
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_7
    if-eqz v0, :cond_8

    if-eqz v4, :cond_8

    .line 382
    iget-object v6, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal;->processingStatus:Ljava/util/HashMap;

    new-instance v7, Lcom/nuance/connect/internal/ResourcesServiceInternal$5;

    invoke-direct {v7, p0, p2, p1}, Lcom/nuance/connect/internal/ResourcesServiceInternal$5;-><init>(Lcom/nuance/connect/internal/ResourcesServiceInternal;Lcom/nuance/connect/api/ResourcesService$ProcessingCallback;Ljava/util/Locale;)V

    invoke-virtual {v6, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    iget-object v6, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v6}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v6

    sget-object v7, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_CATEGORY_DB_SUBSCRIBE_OR_DOWNLOAD:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-interface {v6, v7, v0}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 392
    :cond_8
    iget-object v6, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Did not find suitable resources for: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public unsubscribe(Ljava/util/Locale;)V
    .locals 3
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 428
    invoke-virtual {p0, p1}, Lcom/nuance/connect/internal/ResourcesServiceInternal;->getBestMatch(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 429
    .local v0, "bestMatch":Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal;->catIdsToLocale:Ljava/util/HashMap;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 435
    :cond_0
    return-void
.end method
