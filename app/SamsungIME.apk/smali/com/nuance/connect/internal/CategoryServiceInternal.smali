.class Lcom/nuance/connect/internal/CategoryServiceInternal;
.super Lcom/nuance/connect/internal/AbstactService;
.source "CategoryServiceInternal.java"

# interfaces
.implements Lcom/nuance/connect/api/AddonDictionariesService;
.implements Lcom/nuance/connect/api/LivingLanguageService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/internal/CategoryServiceInternal$4;,
        Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;
    }
.end annotation


# static fields
.field private static final MESSAGE_IDS:[I

.field private static final SEND_DELAY:I = 0x3a98


# instance fields
.field private final availableDownloadDictionaries:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;",
            ">;"
        }
    .end annotation
.end field

.field private connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

.field private final dictionaryDownloadCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryDownloadCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final dictionaryListCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryListCallback;",
            ">;"
        }
    .end annotation
.end field

.field private dictionaryListReceived:Z

.field private handler:Lcom/nuance/connect/internal/ConnectHandler;

.field private listener:Lcom/nuance/connect/internal/Property$ValueListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nuance/connect/internal/Property$ValueListener",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final livingLanguageCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/nuance/connect/api/LivingLanguageService$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private livingLanguageHotwordsStatus:Z

.field private livingLanguageStatus:Z

.field private livingLanguageUDAStatus:Z

.field private livingLanguageUpdatesPending:Z

.field private log:Lcom/nuance/connect/util/Logger$Log;

.field private mHandler:Landroid/os/Handler;

.field private final redownloadCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryDownloadCallback;",
            ">;"
        }
    .end annotation
.end field

.field private sendHotwordsStatus:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 67
    const/16 v0, 0xd

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_SET_DICTIONARIES_STATUS:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_DICTIONARY_INSTALL_READY:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_DICTIONARY_DOWNLOAD_PROGRESS:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_DICTIONARY_UNINSTALL:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_GET_LIVING_LANGUAGE_STATUS:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_GET_CHINESE_CAT_DB_STATUS:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_ADD_LIVING_LANGUAGE_INFO:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_UPDATE_LIVING_LANGUAGE_INFO:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_REMOVE_LIVING_LANGUAGE_INFO:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_CATEGORY_UNSUBSCRIBE_COMPLETE:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_CATEGORY_DOWNLOAD_CANCEL_ACK:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_DICTIONARY_DOWNLOAD_FAILED:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_NOTIFY_LIVING_LANGUAGE_UPDATE_STATUS:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v2, v0, v1

    sput-object v0, Lcom/nuance/connect/internal/CategoryServiceInternal;->MESSAGE_IDS:[I

    return-void
.end method

.method constructor <init>(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)V
    .locals 3
    .param p1, "service"    # Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    .prologue
    const/4 v2, 0x1

    .line 97
    invoke-direct {p0}, Lcom/nuance/connect/internal/AbstactService;-><init>()V

    .line 31
    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    const-string v1, "CategoryService"

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    .line 33
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->mHandler:Landroid/os/Handler;

    .line 35
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->livingLanguageCallbacks:Ljava/util/Set;

    .line 37
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->dictionaryListCallbacks:Ljava/util/Set;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->dictionaryDownloadCallbacks:Ljava/util/Map;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->redownloadCallbacks:Ljava/util/Map;

    .line 44
    iput-boolean v2, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->livingLanguageStatus:Z

    .line 45
    iput-boolean v2, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->livingLanguageUDAStatus:Z

    .line 46
    iput-boolean v2, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->livingLanguageHotwordsStatus:Z

    .line 49
    iput-boolean v2, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->livingLanguageUpdatesPending:Z

    .line 53
    new-instance v0, Lcom/nuance/connect/internal/CategoryServiceInternal$1;

    invoke-direct {v0, p0}, Lcom/nuance/connect/internal/CategoryServiceInternal$1;-><init>(Lcom/nuance/connect/internal/CategoryServiceInternal;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->sendHotwordsStatus:Ljava/lang/Runnable;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->availableDownloadDictionaries:Ljava/util/HashMap;

    .line 83
    new-instance v0, Lcom/nuance/connect/internal/CategoryServiceInternal$2;

    invoke-direct {v0, p0}, Lcom/nuance/connect/internal/CategoryServiceInternal$2;-><init>(Lcom/nuance/connect/internal/CategoryServiceInternal;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->listener:Lcom/nuance/connect/internal/Property$ValueListener;

    .line 234
    new-instance v0, Lcom/nuance/connect/internal/CategoryServiceInternal$3;

    invoke-direct {v0, p0}, Lcom/nuance/connect/internal/CategoryServiceInternal$3;-><init>(Lcom/nuance/connect/internal/CategoryServiceInternal;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->handler:Lcom/nuance/connect/internal/ConnectHandler;

    .line 98
    iput-object p1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    .line 99
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getUserSettings()Lcom/nuance/connect/internal/UserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/internal/UserSettings;->isLivingLanguageEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->livingLanguageStatus:Z

    .line 100
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    const-string v1, "USER_ALLOW_USAGE_COLLECTION"

    iget-object v2, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->listener:Lcom/nuance/connect/internal/Property$ValueListener;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->registerUserSettingsListener(Ljava/lang/String;Lcom/nuance/connect/internal/Property$ValueListener;)V

    .line 102
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/connect/internal/CategoryServiceInternal;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/connect/internal/CategoryServiceInternal;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/connect/internal/CategoryServiceInternal;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nuance/connect/internal/CategoryServiceInternal;

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->livingLanguageStatus:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/nuance/connect/internal/CategoryServiceInternal;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nuance/connect/internal/CategoryServiceInternal;

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->livingLanguageUpdatesPending:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/nuance/connect/internal/CategoryServiceInternal;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/nuance/connect/internal/CategoryServiceInternal;
    .param p1, "x1"    # Z

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->livingLanguageUpdatesPending:Z

    return p1
.end method

.method static synthetic access$1100()[I
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/nuance/connect/internal/CategoryServiceInternal;->MESSAGE_IDS:[I

    return-object v0
.end method

.method static synthetic access$200(Lcom/nuance/connect/internal/CategoryServiceInternal;)Lcom/nuance/connect/util/Logger$Log;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/connect/internal/CategoryServiceInternal;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    return-object v0
.end method

.method static synthetic access$300(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/connect/internal/CategoryServiceInternal;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->availableDownloadDictionaries:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/connect/internal/CategoryServiceInternal;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->dictionaryDownloadCallbacks:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$500(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/connect/internal/CategoryServiceInternal;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->redownloadCallbacks:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$602(Lcom/nuance/connect/internal/CategoryServiceInternal;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/nuance/connect/internal/CategoryServiceInternal;
    .param p1, "x1"    # Z

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->dictionaryListReceived:Z

    return p1
.end method

.method static synthetic access$700(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/connect/internal/CategoryServiceInternal;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->livingLanguageCallbacks:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$800(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/connect/internal/CategoryServiceInternal;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->sendHotwordsStatus:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$900(Lcom/nuance/connect/internal/CategoryServiceInternal;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/connect/internal/CategoryServiceInternal;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private subscribe(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 583
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_CATEGORY_DB_SUBSCRIBE_OR_DOWNLOAD:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-interface {v0, v1, p1, v2, v2}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;II)Z

    .line 585
    return-void
.end method

.method private unsubscribe(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 588
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_CATEGORY_DB_UNSUBSCRIBE:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-interface {v0, v1, p1, v2, v2}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;II)Z

    .line 590
    return-void
.end method


# virtual methods
.method public cancelDownload(Ljava/lang/String;)V
    .locals 3
    .param p1, "dict"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 199
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->availableDownloadDictionaries:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot cancel dict: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    .line 215
    :goto_0
    return-void

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->redownloadCallbacks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->redownloadCallbacks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    :cond_1
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->availableDownloadDictionaries:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;

    const-string v1, "STATUS_CANCELED"

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;->setStatus(Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->availableDownloadDictionaries:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;->wasInstalled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 209
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_CATEGORY_DB_CANCEL:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-interface {v0, v1, p1, v2, v2}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;II)Z

    .line 214
    :goto_1
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "canceling unsubscribing dict="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto :goto_0

    .line 212
    :cond_2
    invoke-direct {p0, p1}, Lcom/nuance/connect/internal/CategoryServiceInternal;->unsubscribe(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public cancelDownloads()V
    .locals 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_CATEGORY_LIVING_LANGUAGE_CANCEL:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-interface {v0, v1}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectMessage(Lcom/nuance/connect/internal/common/InternalMessages;)Z

    .line 221
    return-void
.end method

.method public disableLivingLanguage()V
    .locals 1

    .prologue
    .line 615
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->setLivingLanguageStatus(Z)V

    .line 616
    return-void
.end method

.method public enableLivingLanguage()V
    .locals 1

    .prologue
    .line 610
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->setLivingLanguageStatus(Z)V

    .line 611
    return-void
.end method

.method public forcePendingToForeground()V
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_CATEGORY_LIVING_LANGUAGE_FOREGROUND:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-interface {v0, v1}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectMessage(Lcom/nuance/connect/internal/common/InternalMessages;)Z

    .line 227
    return-void
.end method

.method public getAvailableDictionaries()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionary;",
            ">;"
        }
    .end annotation

    .prologue
    .line 189
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->availableDownloadDictionaries:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method getDependencies()[Lcom/nuance/connect/common/ConnectFeature;
    .locals 1

    .prologue
    .line 122
    sget-object v0, Lcom/nuance/connect/common/ConnectFeature;->CATEGORY:Lcom/nuance/connect/common/ConnectFeature;

    invoke-virtual {v0}, Lcom/nuance/connect/common/ConnectFeature;->getDependencies()[Lcom/nuance/connect/common/ConnectFeature;

    move-result-object v0

    return-object v0
.end method

.method getHandlers()[Lcom/nuance/connect/internal/ConnectHandler;
    .locals 3

    .prologue
    .line 115
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/nuance/connect/internal/ConnectHandler;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->handler:Lcom/nuance/connect/internal/ConnectHandler;

    aput-object v2, v0, v1

    return-object v0
.end method

.method getServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lcom/nuance/connect/common/ConnectFeature;->CATEGORY:Lcom/nuance/connect/common/ConnectFeature;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public installDictionary(Ljava/lang/String;Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryDownloadCallback;)V
    .locals 4
    .param p1, "dict"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryDownloadCallback;

    .prologue
    .line 131
    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->availableDownloadDictionaries:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 132
    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot install dict: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    .line 152
    :goto_0
    return-void

    .line 136
    :cond_0
    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->availableDownloadDictionaries:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;->getStatus()Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "status":Ljava/lang/String;
    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "installDictionary dict="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 138
    const-string v1, "STATUS_AVAILABLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 139
    const-string v1, "STATUS_CANCELED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "STATUS_UNINSTALL_PENDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 141
    :cond_1
    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->redownloadCallbacks:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 149
    :cond_2
    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->dictionaryDownloadCallbacks:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->availableDownloadDictionaries:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;->download()V

    .line 151
    invoke-direct {p0, p1}, Lcom/nuance/connect/internal/CategoryServiceInternal;->subscribe(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isCategoryLivingLanguage(I)Z
    .locals 2
    .param p1, "category"    # I

    .prologue
    .line 708
    const/4 v0, 0x0

    .line 710
    .local v0, "check":Z
    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    .line 712
    :cond_0
    const/4 v0, 0x1

    .line 715
    :cond_1
    return v0
.end method

.method public isDictionaryListAvailable()Z
    .locals 1

    .prologue
    .line 194
    iget-boolean v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->dictionaryListReceived:Z

    return v0
.end method

.method public isHotWordsEnabled()Z
    .locals 1

    .prologue
    .line 643
    iget-boolean v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->livingLanguageHotwordsStatus:Z

    return v0
.end method

.method public isLivingLanguageEnabled()Z
    .locals 1

    .prologue
    .line 620
    iget-boolean v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->livingLanguageStatus:Z

    return v0
.end method

.method public isUDAEnabled()Z
    .locals 1

    .prologue
    .line 638
    iget-boolean v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->livingLanguageUDAStatus:Z

    return v0
.end method

.method public livingLanguageAllowed()Z
    .locals 1

    .prologue
    .line 647
    invoke-virtual {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->livingLanguageAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->isLivingLanguageEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public livingLanguageAvailable()Z
    .locals 1

    .prologue
    .line 652
    const/4 v0, 0x1

    return v0
.end method

.method public markDictionaryInstalled(Ljava/lang/String;)V
    .locals 4
    .param p1, "dict"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 174
    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->availableDownloadDictionaries:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 175
    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dictionary is not available to mark as installed.  Dict: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->availableDownloadDictionaries:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;

    .line 180
    .local v0, "d":Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;
    invoke-virtual {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;->isSubscribed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 181
    const-string v1, "STATUS_INSTALLED"

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;->setStatus(Ljava/lang/String;)V

    .line 182
    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_CATEGORY_DB_SUBSCRIBE_NO_DOWNLOAD:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-interface {v1, v2, p1, v3, v3}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;II)Z

    goto :goto_0
.end method

.method public notifyDictionariesofStatus()V
    .locals 4

    .prologue
    .line 700
    iget-object v3, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->dictionaryListCallbacks:Ljava/util/Set;

    monitor-enter v3

    .line 701
    :try_start_0
    iget-object v2, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->dictionaryListCallbacks:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryListCallback;

    .line 702
    .local v0, "callback":Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryListCallback;
    invoke-interface {v0}, Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryListCallback;->listUpdated()V

    goto :goto_0

    .line 704
    .end local v0    # "callback":Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryListCallback;
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

    .line 705
    return-void
.end method

.method public registerCallback(Lcom/nuance/connect/api/LivingLanguageService$Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/nuance/connect/api/LivingLanguageService$Callback;

    .prologue
    .line 657
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->livingLanguageCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 658
    return-void
.end method

.method public registerDictionaryListCallback(Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryListCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryListCallback;

    .prologue
    .line 672
    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->dictionaryListCallbacks:Ljava/util/Set;

    monitor-enter v1

    .line 673
    :try_start_0
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->dictionaryListCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 674
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "registerDictionaryListCallback callback already added"

    invoke-interface {v0, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 676
    :cond_0
    monitor-exit v1

    .line 677
    return-void

    .line 676
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeDictionary(Ljava/lang/String;)V
    .locals 4
    .param p1, "dict"    # Ljava/lang/String;

    .prologue
    .line 156
    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->availableDownloadDictionaries:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 157
    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot install dict: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    .line 169
    :goto_0
    return-void

    .line 161
    :cond_0
    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->availableDownloadDictionaries:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;->isInstalled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 162
    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dictionary is not installed cannot uninstall.  Dict: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto :goto_0

    .line 166
    :cond_1
    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->availableDownloadDictionaries:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;

    .line 167
    .local v0, "d":Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;
    const-string v1, "STATUS_UNINSTALL_PENDING"

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;->setStatus(Ljava/lang/String;)V

    .line 168
    invoke-direct {p0, p1}, Lcom/nuance/connect/internal/CategoryServiceInternal;->unsubscribe(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setLivingLanguageStatus(Z)V
    .locals 4
    .param p1, "status"    # Z

    .prologue
    .line 593
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLivingLanguageStatus("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 594
    invoke-virtual {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->livingLanguageAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 596
    const/4 p1, 0x0

    .line 599
    :cond_0
    iput-boolean p1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->livingLanguageStatus:Z

    .line 600
    iput-boolean p1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->livingLanguageUDAStatus:Z

    .line 601
    iput-boolean p1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->livingLanguageHotwordsStatus:Z

    .line 602
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getUserSettings()Lcom/nuance/connect/internal/UserSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nuance/connect/internal/UserSettings;->setLivingLanguageEnabled(Z)V

    .line 604
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->sendHotwordsStatus:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 605
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->sendHotwordsStatus:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 606
    return-void
.end method

.method public setLivingLanguageStatus(ZZ)V
    .locals 2
    .param p1, "uda"    # Z
    .param p2, "hotwords"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 625
    if-eq p1, v1, :cond_0

    if-ne p2, v1, :cond_1

    .line 626
    :cond_0
    iput-boolean v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->livingLanguageStatus:Z

    .line 627
    iput-boolean p1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->livingLanguageUDAStatus:Z

    .line 628
    iput-boolean p2, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->livingLanguageHotwordsStatus:Z

    .line 634
    :goto_0
    return-void

    .line 630
    :cond_1
    iput-boolean v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->livingLanguageStatus:Z

    .line 631
    iput-boolean v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->livingLanguageUDAStatus:Z

    .line 632
    iput-boolean v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->livingLanguageHotwordsStatus:Z

    goto :goto_0
.end method

.method public unregisterCallback(Lcom/nuance/connect/api/LivingLanguageService$Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/nuance/connect/api/LivingLanguageService$Callback;

    .prologue
    .line 662
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->livingLanguageCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 663
    return-void
.end method

.method public unregisterCallbacks()V
    .locals 1

    .prologue
    .line 667
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->livingLanguageCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 668
    return-void
.end method

.method public unregisterDictionaryListCallback(Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryListCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryListCallback;

    .prologue
    .line 681
    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->dictionaryListCallbacks:Ljava/util/Set;

    monitor-enter v1

    .line 682
    :try_start_0
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->dictionaryListCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 683
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "registerDictionaryListCallback callback does not exist"

    invoke-interface {v0, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 685
    :cond_0
    monitor-exit v1

    .line 686
    return-void

    .line 685
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterDictionaryListCallbacks()V
    .locals 2

    .prologue
    .line 690
    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->dictionaryListCallbacks:Ljava/util/Set;

    monitor-enter v1

    .line 691
    :try_start_0
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->dictionaryListCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 692
    monitor-exit v1

    .line 693
    return-void

    .line 692
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
