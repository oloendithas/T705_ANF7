.class public Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;
.super Lcom/nuance/swypeconnect/ac/ACService;
.source "ACLivingLanguageService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swypeconnect/ac/ACLivingLanguageService$ACLivingLanguageCallback;
    }
.end annotation


# instance fields
.field private final livinglanguageCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/nuance/swypeconnect/ac/ACLivingLanguageService$ACLivingLanguageCallback;",
            "Lcom/nuance/connect/api/LivingLanguageService$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private log:Lcom/nuance/connect/util/Logger$Log;

.field service:Lcom/nuance/connect/api/LivingLanguageService;


# direct methods
.method protected constructor <init>(Lcom/nuance/connect/api/LivingLanguageService;Lcom/nuance/connect/store/PersistentDataStore;)V
    .locals 1
    .param p1, "llService"    # Lcom/nuance/connect/api/LivingLanguageService;
    .param p2, "store"    # Lcom/nuance/connect/store/PersistentDataStore;

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/nuance/swypeconnect/ac/ACService;-><init>()V

    .line 115
    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-static {v0}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;->log:Lcom/nuance/connect/util/Logger$Log;

    .line 118
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;->livinglanguageCallbacks:Ljava/util/Map;

    .line 124
    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;->service:Lcom/nuance/connect/api/LivingLanguageService;

    .line 125
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;)Lcom/nuance/connect/util/Logger$Log;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;->log:Lcom/nuance/connect/util/Logger$Log;

    return-object v0
.end method


# virtual methods
.method public cancelDownloads()V
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;->service:Lcom/nuance/connect/api/LivingLanguageService;

    invoke-interface {v0}, Lcom/nuance/connect/api/LivingLanguageService;->cancelDownloads()V

    .line 224
    return-void
.end method

.method public disableLivingLanguage()V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;->service:Lcom/nuance/connect/api/LivingLanguageService;

    invoke-interface {v0}, Lcom/nuance/connect/api/LivingLanguageService;->disableLivingLanguage()V

    .line 159
    return-void
.end method

.method public enableLivingLanguage()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation

    .prologue
    .line 150
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;->service:Lcom/nuance/connect/api/LivingLanguageService;

    invoke-interface {v0}, Lcom/nuance/connect/api/LivingLanguageService;->enableLivingLanguage()V

    .line 151
    return-void
.end method

.method public forcePendingToForeground()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 233
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;->service:Lcom/nuance/connect/api/LivingLanguageService;

    invoke-interface {v0}, Lcom/nuance/connect/api/LivingLanguageService;->forcePendingToForeground()V

    .line 234
    return-void
.end method

.method getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    const-string v0, "LIVING_LANGUAGE"

    return-object v0
.end method

.method public isHotWordsEnabled()Z
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;->service:Lcom/nuance/connect/api/LivingLanguageService;

    invoke-interface {v0}, Lcom/nuance/connect/api/LivingLanguageService;->isHotWordsEnabled()Z

    move-result v0

    return v0
.end method

.method public isLivingLanguageEnabled()Z
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;->service:Lcom/nuance/connect/api/LivingLanguageService;

    invoke-interface {v0}, Lcom/nuance/connect/api/LivingLanguageService;->isLivingLanguageEnabled()Z

    move-result v0

    return v0
.end method

.method public isUDAEnabled()Z
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;->service:Lcom/nuance/connect/api/LivingLanguageService;

    invoke-interface {v0}, Lcom/nuance/connect/api/LivingLanguageService;->isUDAEnabled()Z

    move-result v0

    return v0
.end method

.method public registerCallback(Lcom/nuance/swypeconnect/ac/ACLivingLanguageService$ACLivingLanguageCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/nuance/swypeconnect/ac/ACLivingLanguageService$ACLivingLanguageCallback;

    .prologue
    .line 244
    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService$1;

    invoke-direct {v0, p0, p1}, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService$1;-><init>(Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;Lcom/nuance/swypeconnect/ac/ACLivingLanguageService$ACLivingLanguageCallback;)V

    .line 304
    .local v0, "adapter":Lcom/nuance/connect/api/LivingLanguageService$Callback;
    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;->livinglanguageCallbacks:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;->service:Lcom/nuance/connect/api/LivingLanguageService;

    invoke-interface {v1, v0}, Lcom/nuance/connect/api/LivingLanguageService;->registerCallback(Lcom/nuance/connect/api/LivingLanguageService$Callback;)V

    .line 306
    return-void
.end method

.method public setLivingLanguageStatus(ZZ)V
    .locals 1
    .param p1, "uda"    # Z
    .param p2, "hotwords"    # Z

    .prologue
    .line 184
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;->service:Lcom/nuance/connect/api/LivingLanguageService;

    invoke-interface {v0, p1, p2}, Lcom/nuance/connect/api/LivingLanguageService;->setLivingLanguageStatus(ZZ)V

    .line 185
    return-void
.end method

.method shutdown()V
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACService;->isShutdown:Z

    .line 135
    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;->unregisterCallbacks()V

    .line 136
    return-void
.end method

.method start()V
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACService;->isShutdown:Z

    .line 141
    return-void
.end method

.method public unregisterCallback(Lcom/nuance/swypeconnect/ac/ACLivingLanguageService$ACLivingLanguageCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/nuance/swypeconnect/ac/ACLivingLanguageService$ACLivingLanguageCallback;

    .prologue
    .line 317
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;->livinglanguageCallbacks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;->service:Lcom/nuance/connect/api/LivingLanguageService;

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;->livinglanguageCallbacks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/LivingLanguageService$Callback;

    invoke-interface {v1, v0}, Lcom/nuance/connect/api/LivingLanguageService;->unregisterCallback(Lcom/nuance/connect/api/LivingLanguageService$Callback;)V

    .line 319
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;->livinglanguageCallbacks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    :cond_0
    return-void
.end method

.method public unregisterCallbacks()V
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;->livinglanguageCallbacks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 329
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;->service:Lcom/nuance/connect/api/LivingLanguageService;

    invoke-interface {v0}, Lcom/nuance/connect/api/LivingLanguageService;->unregisterCallbacks()V

    .line 330
    return-void
.end method
