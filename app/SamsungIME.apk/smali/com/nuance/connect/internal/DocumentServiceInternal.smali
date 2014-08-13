.class Lcom/nuance/connect/internal/DocumentServiceInternal;
.super Lcom/nuance/connect/internal/AbstactService;
.source "DocumentServiceInternal.java"

# interfaces
.implements Lcom/nuance/connect/api/DocumentService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/internal/DocumentServiceInternal$3;
    }
.end annotation


# static fields
.field private static final DOCS_PACKAGE:Ljava/lang/String; = "/com/nuance/connect/internal/docs/"

.field private static final EULA:Ljava/lang/String; = "eula_"

.field private static final EXTENSION:Ljava/lang/String; = ".dat"

.field private static final MESSAGE_IDS:[Lcom/nuance/connect/internal/common/InternalMessages;

.field private static final PRIVACY:Ljava/lang/String; = "privacy_policy_"

.field private static final TOS:Ljava/lang/String; = "connect_tos_"

.field private static final USAGE:Ljava/lang/String; = "usage_opt_in_"


# instance fields
.field private connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

.field protected currentLocale:Ljava/util/Locale;

.field private documentRevisionProvided:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private documents:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/nuance/connect/internal/common/Document;",
            ">;>;"
        }
    .end annotation
.end field

.field private handler:Lcom/nuance/connect/internal/ConnectHandler;

.field localeCallback:Lcom/nuance/connect/api/LocaleCallback;

.field private log:Lcom/nuance/connect/util/Logger$Log;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 55
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/nuance/connect/internal/common/InternalMessages;

    const/4 v1, 0x0

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_DOCUMENT_UPDATED:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nuance/connect/internal/DocumentServiceInternal;->MESSAGE_IDS:[Lcom/nuance/connect/internal/common/InternalMessages;

    return-void
.end method

.method constructor <init>(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)V
    .locals 2
    .param p1, "connectService"    # Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/nuance/connect/internal/AbstactService;-><init>()V

    .line 34
    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->documents:Ljava/util/HashMap;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->documentRevisionProvided:Ljava/util/HashMap;

    .line 59
    new-instance v0, Lcom/nuance/connect/internal/DocumentServiceInternal$1;

    invoke-direct {v0, p0}, Lcom/nuance/connect/internal/DocumentServiceInternal$1;-><init>(Lcom/nuance/connect/internal/DocumentServiceInternal;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->localeCallback:Lcom/nuance/connect/api/LocaleCallback;

    .line 103
    new-instance v0, Lcom/nuance/connect/internal/DocumentServiceInternal$2;

    invoke-direct {v0, p0}, Lcom/nuance/connect/internal/DocumentServiceInternal$2;-><init>(Lcom/nuance/connect/internal/DocumentServiceInternal;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->handler:Lcom/nuance/connect/internal/ConnectHandler;

    .line 71
    iput-object p1, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    .line 73
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->currentLocale:Ljava/util/Locale;

    .line 74
    iget-object v0, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->localeCallback:Lcom/nuance/connect/api/LocaleCallback;

    invoke-virtual {p1, v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->registerLocaleCallback(Lcom/nuance/connect/api/LocaleCallback;)V

    .line 75
    invoke-virtual {p1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/connect/internal/DocumentServiceInternal;->setup(Landroid/content/Context;)V

    .line 76
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/connect/internal/DocumentServiceInternal;Ljava/util/Locale;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/connect/internal/DocumentServiceInternal;
    .param p1, "x1"    # Ljava/util/Locale;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/nuance/connect/internal/DocumentServiceInternal;->addApkDocumentsForLocale(Ljava/util/Locale;)V

    return-void
.end method

.method static synthetic access$100(Lcom/nuance/connect/internal/DocumentServiceInternal;Landroid/os/Handler;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/connect/internal/DocumentServiceInternal;
    .param p1, "x1"    # Landroid/os/Handler;
    .param p2, "x2"    # Landroid/os/Message;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/nuance/connect/internal/DocumentServiceInternal;->handleMessage(Landroid/os/Handler;Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$200()[Lcom/nuance/connect/internal/common/InternalMessages;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/nuance/connect/internal/DocumentServiceInternal;->MESSAGE_IDS:[Lcom/nuance/connect/internal/common/InternalMessages;

    return-object v0
.end method

.method private addApkDocuments()V
    .locals 2

    .prologue
    .line 319
    sget-object v0, Lcom/nuance/connect/internal/common/Document$DocumentType;->TERMS_OF_SERVICE:Lcom/nuance/connect/internal/common/Document$DocumentType;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/nuance/connect/internal/DocumentServiceInternal;->checkAddDefaultDocument(Lcom/nuance/connect/internal/common/Document$DocumentType;Ljava/lang/String;)Z

    .line 320
    sget-object v0, Lcom/nuance/connect/internal/common/Document$DocumentType;->EULA:Lcom/nuance/connect/internal/common/Document$DocumentType;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/nuance/connect/internal/DocumentServiceInternal;->checkAddDefaultDocument(Lcom/nuance/connect/internal/common/Document$DocumentType;Ljava/lang/String;)Z

    .line 321
    sget-object v0, Lcom/nuance/connect/internal/common/Document$DocumentType;->PRIVACY_POLICY:Lcom/nuance/connect/internal/common/Document$DocumentType;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/nuance/connect/internal/DocumentServiceInternal;->checkAddDefaultDocument(Lcom/nuance/connect/internal/common/Document$DocumentType;Ljava/lang/String;)Z

    .line 322
    sget-object v0, Lcom/nuance/connect/internal/common/Document$DocumentType;->DATA_OPT_IN:Lcom/nuance/connect/internal/common/Document$DocumentType;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/nuance/connect/internal/DocumentServiceInternal;->checkAddDefaultDocument(Lcom/nuance/connect/internal/common/Document$DocumentType;Ljava/lang/String;)Z

    .line 325
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/connect/internal/DocumentServiceInternal;->addApkDocumentsForLocale(Ljava/util/Locale;)V

    .line 326
    return-void
.end method

.method private addApkDocumentsForLocale(Ljava/util/Locale;)V
    .locals 3
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 329
    if-nez p1, :cond_1

    .line 348
    :cond_0
    :goto_0
    return-void

    .line 333
    :cond_1
    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 334
    .local v0, "currentLocale":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 336
    .local v1, "langLocale":Ljava/lang/String;
    sget-object v2, Lcom/nuance/connect/internal/common/Document$DocumentType;->TERMS_OF_SERVICE:Lcom/nuance/connect/internal/common/Document$DocumentType;

    invoke-direct {p0, v2, v0}, Lcom/nuance/connect/internal/DocumentServiceInternal;->checkAddDefaultDocument(Lcom/nuance/connect/internal/common/Document$DocumentType;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 337
    sget-object v2, Lcom/nuance/connect/internal/common/Document$DocumentType;->TERMS_OF_SERVICE:Lcom/nuance/connect/internal/common/Document$DocumentType;

    invoke-direct {p0, v2, v1}, Lcom/nuance/connect/internal/DocumentServiceInternal;->checkAddDefaultDocument(Lcom/nuance/connect/internal/common/Document$DocumentType;Ljava/lang/String;)Z

    .line 339
    :cond_2
    sget-object v2, Lcom/nuance/connect/internal/common/Document$DocumentType;->EULA:Lcom/nuance/connect/internal/common/Document$DocumentType;

    invoke-direct {p0, v2, v0}, Lcom/nuance/connect/internal/DocumentServiceInternal;->checkAddDefaultDocument(Lcom/nuance/connect/internal/common/Document$DocumentType;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 340
    sget-object v2, Lcom/nuance/connect/internal/common/Document$DocumentType;->EULA:Lcom/nuance/connect/internal/common/Document$DocumentType;

    invoke-direct {p0, v2, v1}, Lcom/nuance/connect/internal/DocumentServiceInternal;->checkAddDefaultDocument(Lcom/nuance/connect/internal/common/Document$DocumentType;Ljava/lang/String;)Z

    .line 342
    :cond_3
    sget-object v2, Lcom/nuance/connect/internal/common/Document$DocumentType;->PRIVACY_POLICY:Lcom/nuance/connect/internal/common/Document$DocumentType;

    invoke-direct {p0, v2, v0}, Lcom/nuance/connect/internal/DocumentServiceInternal;->checkAddDefaultDocument(Lcom/nuance/connect/internal/common/Document$DocumentType;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 343
    sget-object v2, Lcom/nuance/connect/internal/common/Document$DocumentType;->PRIVACY_POLICY:Lcom/nuance/connect/internal/common/Document$DocumentType;

    invoke-direct {p0, v2, v1}, Lcom/nuance/connect/internal/DocumentServiceInternal;->checkAddDefaultDocument(Lcom/nuance/connect/internal/common/Document$DocumentType;Ljava/lang/String;)Z

    .line 345
    :cond_4
    sget-object v2, Lcom/nuance/connect/internal/common/Document$DocumentType;->DATA_OPT_IN:Lcom/nuance/connect/internal/common/Document$DocumentType;

    invoke-direct {p0, v2, v0}, Lcom/nuance/connect/internal/DocumentServiceInternal;->checkAddDefaultDocument(Lcom/nuance/connect/internal/common/Document$DocumentType;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 346
    sget-object v2, Lcom/nuance/connect/internal/common/Document$DocumentType;->DATA_OPT_IN:Lcom/nuance/connect/internal/common/Document$DocumentType;

    invoke-direct {p0, v2, v1}, Lcom/nuance/connect/internal/DocumentServiceInternal;->checkAddDefaultDocument(Lcom/nuance/connect/internal/common/Document$DocumentType;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private addDocument(Lcom/nuance/connect/internal/common/Document;Z)V
    .locals 5
    .param p1, "doc"    # Lcom/nuance/connect/internal/common/Document;
    .param p2, "checkPackagedResources"    # Z

    .prologue
    .line 230
    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/Document;->getType()I

    move-result v3

    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/Document;->getDocumentClass()I

    move-result v4

    invoke-static {v3, v4}, Lcom/nuance/connect/internal/common/Document;->getPrimaryKey(II)Ljava/lang/String;

    move-result-object v1

    .line 231
    .local v1, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->documents:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 232
    iget-object v3, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->documents:Ljava/util/HashMap;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    :cond_0
    iget-object v3, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->documents:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 235
    .local v2, "stored":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/nuance/connect/internal/common/Document;>;"
    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/Document;->getRevision()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 236
    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/Document;->getRevision()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/common/Document;

    .line 237
    .local v0, "documentForRevision":Lcom/nuance/connect/internal/common/Document;
    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/Document;->getAccepted()Z

    move-result v3

    if-nez v3, :cond_1

    .line 238
    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/Document;->getRevision()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    invoke-direct {p0, p1, p2}, Lcom/nuance/connect/internal/DocumentServiceInternal;->addToResources(Lcom/nuance/connect/internal/common/Document;Z)V

    .line 245
    .end local v0    # "documentForRevision":Lcom/nuance/connect/internal/common/Document;
    :cond_1
    :goto_0
    return-void

    .line 242
    :cond_2
    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/Document;->getRevision()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    invoke-direct {p0, p1, p2}, Lcom/nuance/connect/internal/DocumentServiceInternal;->addToResources(Lcom/nuance/connect/internal/common/Document;Z)V

    goto :goto_0
.end method

.method private addToResources(Lcom/nuance/connect/internal/common/Document;Ljava/lang/String;Z)V
    .locals 7
    .param p1, "doc"    # Lcom/nuance/connect/internal/common/Document;
    .param p2, "locale"    # Ljava/lang/String;
    .param p3, "checkPackagedResources"    # Z

    .prologue
    .line 360
    if-nez p2, :cond_0

    .line 361
    iget-object v5, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v6, "Attempting to add resource without locale, declining"

    invoke-interface {v5, v6}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    .line 389
    :goto_0
    return-void

    .line 365
    :cond_0
    iget-object v5, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    sget-object v6, Lcom/nuance/connect/common/ConnectFeature;->RESOURCES:Lcom/nuance/connect/common/ConnectFeature;

    invoke-virtual {v5, v6}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getFeatureService(Lcom/nuance/connect/common/ConnectFeature;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/connect/api/ResourcesService;

    .line 366
    .local v2, "resources":Lcom/nuance/connect/api/ResourcesService;
    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/Document;->getType()I

    move-result v5

    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/Document;->getDocumentClass()I

    move-result v6

    invoke-static {v5, v6}, Lcom/nuance/connect/internal/common/Document$DocumentType;->fromId(II)Lcom/nuance/connect/internal/common/Document$DocumentType;

    move-result-object v3

    .line 367
    .local v3, "type":Lcom/nuance/connect/internal/common/Document$DocumentType;
    const-string v4, ""

    .line 368
    .local v4, "value":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    .line 370
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/Document;->getRevision()I

    move-result v5

    if-nez v5, :cond_2

    .line 374
    if-eqz p3, :cond_1

    .line 375
    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/Document;->getType()I

    move-result v5

    invoke-direct {p0, v5, p2}, Lcom/nuance/connect/internal/DocumentServiceInternal;->readResourceFile(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 376
    new-instance v5, Ljava/util/Locale;

    invoke-direct {v5, p2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v1, v5, v4}, Lcom/nuance/connect/api/ResourcesService;->setLanguageString(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;)V

    goto :goto_0

    .line 378
    :cond_1
    iget-object v5, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v6, "By-passing resources check."

    invoke-interface {v5, v6}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto :goto_0

    .line 381
    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1, p2}, Lcom/nuance/connect/internal/common/Document;->getDocumentPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 382
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 383
    invoke-static {v0}, Lcom/nuance/connect/util/StringUtils;->getFileContents(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    .line 384
    new-instance v5, Ljava/util/Locale;

    invoke-direct {v5, p2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v1, v5, v4}, Lcom/nuance/connect/api/ResourcesService;->setLanguageString(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;)V

    goto :goto_0

    .line 386
    :cond_3
    iget-object v5, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v6, "Document not found from the server!"

    invoke-interface {v5, v6}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private addToResources(Lcom/nuance/connect/internal/common/Document;Z)V
    .locals 4
    .param p1, "doc"    # Lcom/nuance/connect/internal/common/Document;
    .param p2, "checkPackagedResources"    # Z

    .prologue
    .line 351
    if-eqz p1, :cond_0

    .line 352
    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/Document;->getLocales()Ljava/util/Set;

    move-result-object v2

    .line 353
    .local v2, "locales":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 354
    .local v1, "locale":Ljava/lang/String;
    invoke-direct {p0, p1, v1, p2}, Lcom/nuance/connect/internal/DocumentServiceInternal;->addToResources(Lcom/nuance/connect/internal/common/Document;Ljava/lang/String;Z)V

    goto :goto_0

    .line 357
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "locale":Ljava/lang/String;
    .end local v2    # "locales":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method private checkAddDefaultDocument(Lcom/nuance/connect/internal/common/Document$DocumentType;Ljava/lang/String;)Z
    .locals 13
    .param p1, "docType"    # Lcom/nuance/connect/internal/common/Document$DocumentType;
    .param p2, "locale"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x1

    const/4 v1, 0x0

    .line 278
    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/Document$DocumentType;->getDocTypeId()I

    move-result v2

    invoke-direct {p0, v2, p2}, Lcom/nuance/connect/internal/DocumentServiceInternal;->getApkFileName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 279
    .local v7, "fileName":Ljava/lang/String;
    const/4 v8, 0x0

    .line 282
    .local v8, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8

    .line 284
    if-eqz v8, :cond_4

    .line 285
    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/Document$DocumentType;->getDocTypeId()I

    move-result v2

    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/Document$DocumentType;->getDocumentClassId()I

    move-result v3

    invoke-static {v2, v3}, Lcom/nuance/connect/internal/common/Document;->getPrimaryKey(II)Ljava/lang/String;

    move-result-object v10

    .line 288
    .local v10, "primaryKey":Ljava/lang/String;
    iget-object v2, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->documents:Ljava/util/HashMap;

    invoke-virtual {v2, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 289
    iget-object v2, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->documents:Ljava/util/HashMap;

    invoke-virtual {v2, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/HashMap;

    .line 290
    .local v11, "stored":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/nuance/connect/internal/common/Document;>;"
    invoke-virtual {v11}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    .line 291
    .local v9, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v9, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 305
    if-eqz v8, :cond_0

    .line 307
    :try_start_1
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 314
    .end local v9    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v10    # "primaryKey":Ljava/lang/String;
    .end local v11    # "stored":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/nuance/connect/internal/common/Document;>;"
    :cond_0
    :goto_0
    return v1

    .line 308
    .restart local v9    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .restart local v10    # "primaryKey":Ljava/lang/String;
    .restart local v11    # "stored":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/nuance/connect/internal/common/Document;>;"
    :catch_0
    move-exception v6

    .line 309
    .local v6, "e":Ljava/io/IOException;
    iget-object v2, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error closing resource handle: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto :goto_0

    .line 295
    .end local v6    # "e":Ljava/io/IOException;
    :cond_1
    const/4 v1, 0x0

    :try_start_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/common/Document;

    .line 296
    .local v0, "doc":Lcom/nuance/connect/internal/common/Document;
    const-string v1, ""

    invoke-virtual {v0, v1, p2}, Lcom/nuance/connect/internal/common/Document;->addTranslation(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    .end local v9    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v11    # "stored":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/nuance/connect/internal/common/Document;>;"
    :goto_1
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/nuance/connect/internal/DocumentServiceInternal;->addDocument(Lcom/nuance/connect/internal/common/Document;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 305
    if-eqz v8, :cond_2

    .line 307
    :try_start_3
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_2
    :goto_2
    move v1, v12

    .line 310
    goto :goto_0

    .line 299
    .end local v0    # "doc":Lcom/nuance/connect/internal/common/Document;
    :cond_3
    :try_start_4
    new-instance v0, Lcom/nuance/connect/internal/common/Document;

    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/Document$DocumentType;->getDocTypeId()I

    move-result v1

    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/Document$DocumentType;->getDocumentClassId()I

    move-result v2

    const/4 v3, 0x0

    const-string v4, ""

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/nuance/connect/internal/common/Document;-><init>(IIILjava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .restart local v0    # "doc":Lcom/nuance/connect/internal/common/Document;
    goto :goto_1

    .line 308
    :catch_1
    move-exception v6

    .line 309
    .restart local v6    # "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error closing resource handle: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto :goto_2

    .line 305
    .end local v0    # "doc":Lcom/nuance/connect/internal/common/Document;
    .end local v6    # "e":Ljava/io/IOException;
    .end local v10    # "primaryKey":Ljava/lang/String;
    :cond_4
    if-eqz v8, :cond_0

    .line 307
    :try_start_5
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 308
    :catch_2
    move-exception v6

    .line 309
    .restart local v6    # "e":Ljava/io/IOException;
    iget-object v2, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error closing resource handle: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 305
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    if-eqz v8, :cond_5

    .line 307
    :try_start_6
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 310
    :cond_5
    :goto_3
    throw v1

    .line 308
    :catch_3
    move-exception v6

    .line 309
    .restart local v6    # "e":Ljava/io/IOException;
    iget-object v2, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error closing resource handle: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto :goto_3
.end method

.method private getApkFileName(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "type"    # I
    .param p2, "locale"    # Ljava/lang/String;

    .prologue
    .line 257
    packed-switch p1, :pswitch_data_0

    .line 274
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 259
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/com/nuance/connect/internal/docs/eula_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 262
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/com/nuance/connect/internal/docs/privacy_policy_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 265
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/com/nuance/connect/internal/docs/usage_opt_in_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 268
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/com/nuance/connect/internal/docs/connect_tos_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 257
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getLatestDocumentRevision(II)I
    .locals 4
    .param p1, "documentType"    # I
    .param p2, "documentClass"    # I

    .prologue
    .line 217
    invoke-static {p1, p2}, Lcom/nuance/connect/internal/common/Document;->getPrimaryKey(II)Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->documents:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 219
    .local v2, "stored":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/nuance/connect/internal/common/Document;>;"
    if-eqz v2, :cond_0

    .line 220
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 221
    .local v1, "sorted":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/connect/internal/common/Document;>;"
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 222
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 223
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nuance/connect/internal/common/Document;

    invoke-virtual {v3}, Lcom/nuance/connect/internal/common/Document;->getRevision()I

    move-result v3

    .line 226
    .end local v1    # "sorted":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/connect/internal/common/Document;>;"
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private handleMessage(Landroid/os/Handler;Landroid/os/Message;)V
    .locals 5
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    .line 194
    sget-object v3, Lcom/nuance/connect/internal/DocumentServiceInternal$3;->$SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I

    iget v4, p2, Landroid/os/Message;->what:I

    invoke-static {v4}, Lcom/nuance/connect/internal/common/InternalMessages;->fromInt(I)Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 206
    :cond_0
    return-void

    .line 199
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "DEFAULT_KEY"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 201
    .local v2, "newDocs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nuance/connect/internal/common/Document;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/common/Document;

    .line 202
    .local v0, "doc":Lcom/nuance/connect/internal/common/Document;
    const/4 v3, 0x0

    invoke-direct {p0, v0, v3}, Lcom/nuance/connect/internal/DocumentServiceInternal;->addDocument(Lcom/nuance/connect/internal/common/Document;Z)V

    goto :goto_0

    .line 194
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private readResourceFile(ILjava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "type"    # I
    .param p2, "locale"    # Ljava/lang/String;

    .prologue
    .line 392
    invoke-direct {p0, p1, p2}, Lcom/nuance/connect/internal/DocumentServiceInternal;->getApkFileName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 393
    .local v0, "fileName":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 394
    iget-object v4, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v5, "Could not read the document.  fileName=null"

    invoke-interface {v4, v5}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    .line 395
    const/4 v2, 0x0

    .line 410
    :cond_0
    :goto_0
    return-object v2

    .line 397
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 398
    .local v1, "is":Ljava/io/InputStream;
    const-string v2, ""

    .line 401
    .local v2, "result":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/util/Scanner;

    const-string v4, "UTF-8"

    invoke-direct {v3, v1, v4}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 402
    .local v3, "s":Ljava/util/Scanner;
    const-string v4, "\\A"

    invoke-virtual {v3, v4}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Scanner;->next()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 404
    if-eqz v1, :cond_0

    .line 405
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_0

    .line 408
    .end local v3    # "s":Ljava/util/Scanner;
    :catch_0
    move-exception v4

    goto :goto_0

    .line 404
    :catchall_0
    move-exception v4

    if-eqz v1, :cond_2

    .line 405
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_2
    throw v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method private setup(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 248
    invoke-direct {p0}, Lcom/nuance/connect/internal/DocumentServiceInternal;->addApkDocuments()V

    .line 249
    return-void
.end method


# virtual methods
.method public acceptDocument(Lcom/nuance/connect/internal/common/Document$DocumentType;)V
    .locals 8
    .param p1, "docType"    # Lcom/nuance/connect/internal/common/Document$DocumentType;

    .prologue
    .line 134
    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/Document$DocumentType;->getDocTypeId()I

    move-result v5

    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/Document$DocumentType;->getDocumentClassId()I

    move-result v6

    invoke-static {v5, v6}, Lcom/nuance/connect/internal/common/Document;->getPrimaryKey(II)Ljava/lang/String;

    move-result-object v2

    .line 135
    .local v2, "key":Ljava/lang/String;
    iget-object v5, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->documentRevisionProvided:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 136
    .local v3, "revision":I
    iget-object v5, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->documents:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    .line 137
    .local v4, "stored":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/nuance/connect/internal/common/Document;>;"
    if-eqz v4, :cond_0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 138
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/connect/internal/common/Document;

    .line 139
    .local v1, "doc":Lcom/nuance/connect/internal/common/Document;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lcom/nuance/connect/internal/common/Document;->setAcceptedTimestamp(J)V

    .line 140
    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/Document$DocumentType;->getDocTypeId()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 157
    :goto_0
    :pswitch_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 158
    .local v0, "b":Landroid/os/Bundle;
    const-string v5, "DEFAULT_KEY"

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 159
    iget-object v5, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v5}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v5

    sget-object v6, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_DOCUMENT_ACCEPTED:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-interface {v5, v6, v0}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)Z

    .line 165
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v1    # "doc":Lcom/nuance/connect/internal/common/Document;
    :goto_1
    return-void

    .line 142
    .restart local v1    # "doc":Lcom/nuance/connect/internal/common/Document;
    :pswitch_1
    iget-object v5, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v5}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getUserSettings()Lcom/nuance/connect/internal/UserSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/connect/internal/UserSettings;->acceptEula()V

    goto :goto_0

    .line 146
    :pswitch_2
    iget-object v5, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v5}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getUserSettings()Lcom/nuance/connect/internal/UserSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/connect/internal/UserSettings;->userHasAcceptedTOS()V

    goto :goto_0

    .line 153
    :pswitch_3
    iget-object v5, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v5}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getUserSettings()Lcom/nuance/connect/internal/UserSettings;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/nuance/connect/internal/UserSettings;->setDataCollectionAccepted(Z)V

    goto :goto_0

    .line 162
    .end local v1    # "doc":Lcom/nuance/connect/internal/common/Document;
    :cond_0
    iget-object v5, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Accept document failed. Unknown revision("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") requested for docType "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/Document$DocumentType;->getDocTypeId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto :goto_1

    .line 140
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method getDependencies()[Lcom/nuance/connect/common/ConnectFeature;
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lcom/nuance/connect/common/ConnectFeature;->DOCUMENTS:Lcom/nuance/connect/common/ConnectFeature;

    invoke-virtual {v0}, Lcom/nuance/connect/common/ConnectFeature;->getDependencies()[Lcom/nuance/connect/common/ConnectFeature;

    move-result-object v0

    return-object v0
.end method

.method public getDocument(Lcom/nuance/connect/internal/common/Document$DocumentType;)Ljava/lang/String;
    .locals 7
    .param p1, "docType"    # Lcom/nuance/connect/internal/common/Document$DocumentType;

    .prologue
    .line 169
    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/Document$DocumentType;->getDocTypeId()I

    move-result v4

    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/Document$DocumentType;->getDocumentClassId()I

    move-result v5

    invoke-static {v4, v5}, Lcom/nuance/connect/internal/common/Document;->getPrimaryKey(II)Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/Document$DocumentType;->getDocTypeId()I

    move-result v4

    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/Document$DocumentType;->getDocumentClassId()I

    move-result v5

    invoke-direct {p0, v4, v5}, Lcom/nuance/connect/internal/DocumentServiceInternal;->getLatestDocumentRevision(II)I

    move-result v2

    .line 172
    .local v2, "revision":I
    iget-object v4, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->documentRevisionProvided:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    iget-object v4, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->documents:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 174
    .local v3, "stored":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/nuance/connect/internal/common/Document;>;"
    if-eqz v3, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 175
    iget-object v4, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    sget-object v5, Lcom/nuance/connect/common/ConnectFeature;->RESOURCES:Lcom/nuance/connect/common/ConnectFeature;

    invoke-virtual {v4, v5}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getFeatureService(Lcom/nuance/connect/common/ConnectFeature;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/connect/api/ResourcesService;

    .line 176
    .local v1, "resources":Lcom/nuance/connect/api/ResourcesService;
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->currentLocale:Ljava/util/Locale;

    invoke-interface {v1, v4, v5}, Lcom/nuance/connect/api/ResourcesService;->getLanguageString(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 178
    .end local v1    # "resources":Lcom/nuance/connect/api/ResourcesService;
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Get document failed. requested for docType "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getDocumentRevisionNumber(Lcom/nuance/connect/internal/common/Document$DocumentType;)Ljava/lang/String;
    .locals 2
    .param p1, "docType"    # Lcom/nuance/connect/internal/common/Document$DocumentType;

    .prologue
    .line 184
    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/Document$DocumentType;->getDocTypeId()I

    move-result v0

    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/Document$DocumentType;->getDocumentClassId()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/nuance/connect/internal/DocumentServiceInternal;->getLatestDocumentRevision(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getHandlers()[Lcom/nuance/connect/internal/ConnectHandler;
    .locals 3

    .prologue
    .line 89
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/nuance/connect/internal/ConnectHandler;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->handler:Lcom/nuance/connect/internal/ConnectHandler;

    aput-object v2, v0, v1

    return-object v0
.end method

.method getServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/nuance/connect/common/ConnectFeature;->DOCUMENTS:Lcom/nuance/connect/common/ConnectFeature;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
