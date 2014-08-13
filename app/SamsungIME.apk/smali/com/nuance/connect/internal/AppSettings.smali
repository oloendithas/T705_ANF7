.class public final Lcom/nuance/connect/internal/AppSettings;
.super Ljava/lang/Object;
.source "AppSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/internal/AppSettings$Key;
    }
.end annotation


# instance fields
.field private connectionConcurrentLimit:Lcom/nuance/connect/internal/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nuance/connect/internal/Property",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private currentVersion:Lcom/nuance/connect/internal/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nuance/connect/internal/Property",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private customerString:Lcom/nuance/connect/internal/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nuance/connect/internal/Property",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private deviceId:Lcom/nuance/connect/internal/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nuance/connect/internal/Property",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private downloadIdleTimeout:Lcom/nuance/connect/internal/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nuance/connect/internal/Property",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private initialVersion:Lcom/nuance/connect/internal/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nuance/connect/internal/Property",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private initializationTimestamp:Lcom/nuance/connect/internal/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nuance/connect/internal/Property",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private oemLogLevel:Lcom/nuance/connect/internal/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nuance/connect/internal/Property",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private propertyStore:Lcom/nuance/connect/internal/PropertyStore;

.field private refreshInterval:Lcom/nuance/connect/internal/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nuance/connect/internal/Property",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private store:Lcom/nuance/connect/store/PersistentDataStore;

.field private swyperId:Lcom/nuance/connect/internal/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nuance/connect/internal/Property",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/nuance/connect/store/PersistentDataStore;)V
    .locals 1
    .param p1, "store"    # Lcom/nuance/connect/store/PersistentDataStore;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/nuance/connect/internal/PropertyStore;

    invoke-direct {v0}, Lcom/nuance/connect/internal/PropertyStore;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    .line 38
    iput-object p1, p0, Lcom/nuance/connect/internal/AppSettings;->store:Lcom/nuance/connect/store/PersistentDataStore;

    .line 39
    invoke-direct {p0}, Lcom/nuance/connect/internal/AppSettings;->loadStoredSettings()V

    .line 40
    return-void
.end method

.method private loadStoredSettings()V
    .locals 14

    .prologue
    const/4 v11, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 164
    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;

    sget-object v1, Lcom/nuance/connect/internal/AppSettings$Key;->CONFIGURATION_REFRESH_INTERVAL:Lcom/nuance/connect/internal/AppSettings$Key;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x15180

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/connect/internal/AppSettings;->store:Lcom/nuance/connect/store/PersistentDataStore;

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->refreshInterval:Lcom/nuance/connect/internal/Property;

    .line 166
    iget-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    iget-object v1, p0, Lcom/nuance/connect/internal/AppSettings;->refreshInterval:Lcom/nuance/connect/internal/Property;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    .line 168
    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;

    sget-object v1, Lcom/nuance/connect/internal/AppSettings$Key;->CONFIGURATION_CONNECTION_CONCURRENT_LIMIT:Lcom/nuance/connect/internal/AppSettings$Key;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/connect/internal/AppSettings;->store:Lcom/nuance/connect/store/PersistentDataStore;

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->connectionConcurrentLimit:Lcom/nuance/connect/internal/Property;

    .line 170
    iget-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    iget-object v1, p0, Lcom/nuance/connect/internal/AppSettings;->connectionConcurrentLimit:Lcom/nuance/connect/internal/Property;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    .line 172
    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;

    sget-object v1, Lcom/nuance/connect/internal/AppSettings$Key;->DOWNLOAD_IDLE_TIMEOUT:Lcom/nuance/connect/internal/AppSettings$Key;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/connect/internal/AppSettings;->store:Lcom/nuance/connect/store/PersistentDataStore;

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->downloadIdleTimeout:Lcom/nuance/connect/internal/Property;

    .line 174
    iget-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    iget-object v1, p0, Lcom/nuance/connect/internal/AppSettings;->downloadIdleTimeout:Lcom/nuance/connect/internal/Property;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    .line 176
    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;

    sget-object v1, Lcom/nuance/connect/internal/AppSettings$Key;->CUSTOMER_STRING:Lcom/nuance/connect/internal/AppSettings$Key;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    iget-object v3, p0, Lcom/nuance/connect/internal/AppSettings;->store:Lcom/nuance/connect/store/PersistentDataStore;

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/GenericProperty$StringProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->customerString:Lcom/nuance/connect/internal/Property;

    .line 178
    iget-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    iget-object v1, p0, Lcom/nuance/connect/internal/AppSettings;->customerString:Lcom/nuance/connect/internal/Property;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    .line 180
    new-instance v7, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;

    sget-object v0, Lcom/nuance/connect/internal/AppSettings$Key;->OEM_LOG_LEVEL:Lcom/nuance/connect/internal/AppSettings$Key;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-object v10, p0, Lcom/nuance/connect/internal/AppSettings;->store:Lcom/nuance/connect/store/PersistentDataStore;

    move v12, v5

    move-object v13, v6

    invoke-direct/range {v7 .. v13}, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    iput-object v7, p0, Lcom/nuance/connect/internal/AppSettings;->oemLogLevel:Lcom/nuance/connect/internal/Property;

    .line 182
    iget-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    iget-object v1, p0, Lcom/nuance/connect/internal/AppSettings;->oemLogLevel:Lcom/nuance/connect/internal/Property;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    .line 184
    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;

    sget-object v1, Lcom/nuance/connect/internal/AppSettings$Key;->API_DEVICE_ID:Lcom/nuance/connect/internal/AppSettings$Key;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    iget-object v3, p0, Lcom/nuance/connect/internal/AppSettings;->store:Lcom/nuance/connect/store/PersistentDataStore;

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/GenericProperty$StringProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->deviceId:Lcom/nuance/connect/internal/Property;

    .line 185
    iget-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    iget-object v1, p0, Lcom/nuance/connect/internal/AppSettings;->deviceId:Lcom/nuance/connect/internal/Property;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    .line 187
    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;

    sget-object v1, Lcom/nuance/connect/internal/AppSettings$Key;->API_SWYPER_ID:Lcom/nuance/connect/internal/AppSettings$Key;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    iget-object v3, p0, Lcom/nuance/connect/internal/AppSettings;->store:Lcom/nuance/connect/store/PersistentDataStore;

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/GenericProperty$StringProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->swyperId:Lcom/nuance/connect/internal/Property;

    .line 188
    iget-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    iget-object v1, p0, Lcom/nuance/connect/internal/AppSettings;->swyperId:Lcom/nuance/connect/internal/Property;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    .line 191
    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;

    sget-object v1, Lcom/nuance/connect/internal/AppSettings$Key;->INITIAL_VERSION_NUMBER:Lcom/nuance/connect/internal/AppSettings$Key;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/nuance/connect/internal/AppSettings;->store:Lcom/nuance/connect/store/PersistentDataStore;

    move-object v2, v6

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/GenericProperty$StringProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->initialVersion:Lcom/nuance/connect/internal/Property;

    .line 193
    iget-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    iget-object v1, p0, Lcom/nuance/connect/internal/AppSettings;->initialVersion:Lcom/nuance/connect/internal/Property;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    .line 195
    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;

    sget-object v1, Lcom/nuance/connect/internal/AppSettings$Key;->CURRENT_VERSION_NUMBER:Lcom/nuance/connect/internal/AppSettings$Key;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/nuance/connect/internal/AppSettings;->store:Lcom/nuance/connect/store/PersistentDataStore;

    move-object v2, v6

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/GenericProperty$StringProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->currentVersion:Lcom/nuance/connect/internal/Property;

    .line 197
    iget-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    iget-object v1, p0, Lcom/nuance/connect/internal/AppSettings;->currentVersion:Lcom/nuance/connect/internal/Property;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    .line 199
    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$LongProperty;

    sget-object v1, Lcom/nuance/connect/internal/AppSettings$Key;->INITIALIZATION_TIMESTAMP:Lcom/nuance/connect/internal/AppSettings$Key;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-wide/high16 v2, -0x8000000000000000L

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/connect/internal/AppSettings;->store:Lcom/nuance/connect/store/PersistentDataStore;

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/GenericProperty$LongProperty;-><init>(Ljava/lang/String;Ljava/lang/Long;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->initializationTimestamp:Lcom/nuance/connect/internal/Property;

    .line 201
    iget-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    iget-object v1, p0, Lcom/nuance/connect/internal/AppSettings;->initializationTimestamp:Lcom/nuance/connect/internal/Property;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/PropertyStore;->setProperty(Lcom/nuance/connect/internal/Property;)V

    .line 203
    return-void
.end method


# virtual methods
.method public getConnectionConcurrentLimit()I
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->connectionConcurrentLimit:Lcom/nuance/connect/internal/Property;

    invoke-interface {v0}, Lcom/nuance/connect/internal/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getCurrentVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->currentVersion:Lcom/nuance/connect/internal/Property;

    invoke-interface {v0}, Lcom/nuance/connect/internal/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getCustomerString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->customerString:Lcom/nuance/connect/internal/Property;

    invoke-interface {v0}, Lcom/nuance/connect/internal/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->deviceId:Lcom/nuance/connect/internal/Property;

    invoke-interface {v0}, Lcom/nuance/connect/internal/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadIdleTimeout()I
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->downloadIdleTimeout:Lcom/nuance/connect/internal/Property;

    invoke-interface {v0}, Lcom/nuance/connect/internal/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getInitialVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->initialVersion:Lcom/nuance/connect/internal/Property;

    invoke-interface {v0}, Lcom/nuance/connect/internal/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getInitializationTimestamp()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->initializationTimestamp:Lcom/nuance/connect/internal/Property;

    invoke-interface {v0}, Lcom/nuance/connect/internal/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    return-object v0
.end method

.method public getLogLevel()I
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->oemLogLevel:Lcom/nuance/connect/internal/Property;

    invoke-interface {v0}, Lcom/nuance/connect/internal/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getRefreshInterval()I
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->refreshInterval:Lcom/nuance/connect/internal/Property;

    invoke-interface {v0}, Lcom/nuance/connect/internal/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getSwyperId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->swyperId:Lcom/nuance/connect/internal/Property;

    invoke-interface {v0}, Lcom/nuance/connect/internal/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public registerSettingsListener(Lcom/nuance/connect/internal/AppSettings$Key;Lcom/nuance/connect/internal/Property$ValueListener;)V
    .locals 2
    .param p1, "setting"    # Lcom/nuance/connect/internal/AppSettings$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nuance/connect/internal/AppSettings$Key;",
            "Lcom/nuance/connect/internal/Property$ValueListener",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 160
    .local p2, "listener":Lcom/nuance/connect/internal/Property$ValueListener;, "Lcom/nuance/connect/internal/Property$ValueListener<*>;"
    iget-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/nuance/connect/internal/PropertyStore;->addListener(Ljava/lang/String;Lcom/nuance/connect/internal/Property$ValueListener;)V

    .line 161
    return-void
.end method

.method public registerSettingsListener(Ljava/lang/String;Lcom/nuance/connect/internal/Property$ValueListener;)V
    .locals 1
    .param p1, "setting"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/nuance/connect/internal/Property$ValueListener",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 146
    .local p2, "listener":Lcom/nuance/connect/internal/Property$ValueListener;, "Lcom/nuance/connect/internal/Property$ValueListener<*>;"
    iget-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->propertyStore:Lcom/nuance/connect/internal/PropertyStore;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/connect/internal/PropertyStore;->addListener(Ljava/lang/String;Lcom/nuance/connect/internal/Property$ValueListener;)V

    .line 147
    return-void
.end method

.method public setConnectionConcurrentLimit(I)V
    .locals 3
    .param p1, "max"    # I

    .prologue
    .line 64
    iget-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->connectionConcurrentLimit:Lcom/nuance/connect/internal/Property;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/internal/Property$Source;->OEM_RUNTIME:Lcom/nuance/connect/internal/Property$Source;

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/internal/Property;->setValue(Ljava/lang/Object;Lcom/nuance/connect/internal/Property$Source;)V

    .line 65
    return-void
.end method

.method public setCurrentVersion(Ljava/lang/String;)V
    .locals 2
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->currentVersion:Lcom/nuance/connect/internal/Property;

    sget-object v1, Lcom/nuance/connect/internal/Property$Source;->BUILD:Lcom/nuance/connect/internal/Property$Source;

    invoke-interface {v0, p1, v1}, Lcom/nuance/connect/internal/Property;->set(Ljava/lang/Object;Lcom/nuance/connect/internal/Property$Source;)V

    .line 125
    return-void
.end method

.method public setCustomerString(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->customerString:Lcom/nuance/connect/internal/Property;

    sget-object v1, Lcom/nuance/connect/internal/Property$Source;->OEM_RUNTIME:Lcom/nuance/connect/internal/Property$Source;

    invoke-interface {v0, p1, v1}, Lcom/nuance/connect/internal/Property;->setValue(Ljava/lang/Object;Lcom/nuance/connect/internal/Property$Source;)V

    .line 81
    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->deviceId:Lcom/nuance/connect/internal/Property;

    sget-object v1, Lcom/nuance/connect/internal/Property$Source;->USER:Lcom/nuance/connect/internal/Property$Source;

    invoke-interface {v0, p1, v1}, Lcom/nuance/connect/internal/Property;->setValue(Ljava/lang/Object;Lcom/nuance/connect/internal/Property$Source;)V

    .line 101
    return-void
.end method

.method public setDownloadIdleTimeout(I)V
    .locals 3
    .param p1, "timeout"    # I

    .prologue
    .line 72
    iget-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->downloadIdleTimeout:Lcom/nuance/connect/internal/Property;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/internal/Property$Source;->OEM_RUNTIME:Lcom/nuance/connect/internal/Property$Source;

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/internal/Property;->setValue(Ljava/lang/Object;Lcom/nuance/connect/internal/Property$Source;)V

    .line 73
    return-void
.end method

.method public setInitialVersion(Ljava/lang/String;)V
    .locals 2
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->initialVersion:Lcom/nuance/connect/internal/Property;

    sget-object v1, Lcom/nuance/connect/internal/Property$Source;->BUILD:Lcom/nuance/connect/internal/Property$Source;

    invoke-interface {v0, p1, v1}, Lcom/nuance/connect/internal/Property;->set(Ljava/lang/Object;Lcom/nuance/connect/internal/Property$Source;)V

    .line 117
    return-void
.end method

.method public setInitializationTimestamp(Ljava/lang/Long;)V
    .locals 2
    .param p1, "timestamp"    # Ljava/lang/Long;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->initializationTimestamp:Lcom/nuance/connect/internal/Property;

    sget-object v1, Lcom/nuance/connect/internal/Property$Source;->DEFAULT:Lcom/nuance/connect/internal/Property$Source;

    invoke-interface {v0, p1, v1}, Lcom/nuance/connect/internal/Property;->set(Ljava/lang/Object;Lcom/nuance/connect/internal/Property$Source;)V

    .line 133
    return-void
.end method

.method public setLogLevel(I)V
    .locals 3
    .param p1, "logLevel"    # I

    .prologue
    .line 88
    iget-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->oemLogLevel:Lcom/nuance/connect/internal/Property;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/internal/Property$Source;->OEM_RUNTIME:Lcom/nuance/connect/internal/Property$Source;

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/internal/Property;->setValue(Ljava/lang/Object;Lcom/nuance/connect/internal/Property$Source;)V

    .line 89
    return-void
.end method

.method public setRefreshInterval(I)V
    .locals 3
    .param p1, "seconds"    # I

    .prologue
    .line 50
    iget-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->refreshInterval:Lcom/nuance/connect/internal/Property;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/internal/Property$Source;->OEM_RUNTIME:Lcom/nuance/connect/internal/Property$Source;

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/internal/Property;->setValue(Ljava/lang/Object;Lcom/nuance/connect/internal/Property$Source;)V

    .line 51
    return-void
.end method

.method public setSwyperId(Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/nuance/connect/internal/AppSettings;->swyperId:Lcom/nuance/connect/internal/Property;

    sget-object v1, Lcom/nuance/connect/internal/Property$Source;->USER:Lcom/nuance/connect/internal/Property$Source;

    invoke-interface {v0, p1, v1}, Lcom/nuance/connect/internal/Property;->setValue(Ljava/lang/Object;Lcom/nuance/connect/internal/Property$Source;)V

    .line 109
    return-void
.end method
