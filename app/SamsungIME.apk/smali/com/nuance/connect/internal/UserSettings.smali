.class public Lcom/nuance/connect/internal/UserSettings;
.super Ljava/lang/Object;
.source "UserSettings.java"


# static fields
.field public static final BACKGROUND_DATA_STATE:Ljava/lang/String; = "BACKGROUND_DATA_STATE"

.field public static final EULA_ACCEPTED:Ljava/lang/String; = "CONFIGURATION_EULA_ACCEPTED"

.field public static final FOREGROUND_DATA_STATE:Ljava/lang/String; = "FOREGROUND_DATA_STATE"

.field public static final TOS_ACCEPTED:Ljava/lang/String; = "CONFIGURATION_TOS_ACCEPTED"

.field public static final TOS_SHOWN:Ljava/lang/String; = "CONFIGURATION_TOS_SHOWN"

.field public static final USER_ALLOW_DATA_COLLECTION:Ljava/lang/String; = "USER_ALLOW_USAGE_COLLECTION"

.field public static final USER_ALLOW_STATISTICS_COLLECTION:Ljava/lang/String; = "USER_ALLOW_STATISTICS_COLLECTION"

.field public static final USER_DLM_SYNC_ENABLED:Ljava/lang/String; = "USER_DLM_SYNC_ENABLED"

.field public static final USER_LIVING_LANGUAGE_ENABLED:Ljava/lang/String; = "USER_LIVING_LANGUAGE_ENABLED"


# instance fields
.field private backgroundNetworkState:Lcom/nuance/connect/internal/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nuance/connect/internal/Property",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private dataCollection:Lcom/nuance/connect/internal/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nuance/connect/internal/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private dlmSyncEnabled:Lcom/nuance/connect/internal/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nuance/connect/internal/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private eulaAccepted:Lcom/nuance/connect/internal/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nuance/connect/internal/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private foregroundNetworkState:Lcom/nuance/connect/internal/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nuance/connect/internal/Property",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private livingLanguageEnabled:Lcom/nuance/connect/internal/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nuance/connect/internal/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private statisticsCollectionAllowed:Lcom/nuance/connect/internal/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nuance/connect/internal/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private store:Lcom/nuance/connect/store/PersistentDataStore;

.field private tosAccepted:Lcom/nuance/connect/internal/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nuance/connect/internal/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private tosShown:Lcom/nuance/connect/internal/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nuance/connect/internal/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/nuance/connect/store/PersistentDataStore;ZZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "store"    # Lcom/nuance/connect/store/PersistentDataStore;
    .param p2, "defaultDlmSync"    # Z
    .param p3, "defaultLivingLanguage"    # Z
    .param p4, "defaultForegroundNetwork"    # Ljava/lang/String;
    .param p5, "defaultBackgroundNetwork"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/nuance/connect/internal/UserSettings;->store:Lcom/nuance/connect/store/PersistentDataStore;

    .line 36
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/nuance/connect/internal/UserSettings;->loadStoredSettings(ZZLjava/lang/String;Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method private static _setListener(Lcom/nuance/connect/internal/Property;Lcom/nuance/connect/internal/Property$ValueListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/nuance/connect/internal/Property",
            "<TT;>;",
            "Lcom/nuance/connect/internal/Property$ValueListener",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 224
    .local p0, "property":Lcom/nuance/connect/internal/Property;, "Lcom/nuance/connect/internal/Property<TT;>;"
    .local p1, "listener":Lcom/nuance/connect/internal/Property$ValueListener;, "Lcom/nuance/connect/internal/Property$ValueListener<*>;"
    invoke-interface {p0}, Lcom/nuance/connect/internal/Property;->getTypeArgument()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p1}, Lcom/nuance/connect/internal/Property$ValueListener;->getTypeArgument()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    const/4 v0, 0x1

    invoke-interface {p0, p1, v0}, Lcom/nuance/connect/internal/Property;->addListener(Lcom/nuance/connect/internal/Property$ValueListener;Z)V

    .line 232
    return-void

    .line 227
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Listener type does not match property type for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Lcom/nuance/connect/internal/Property;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Lcom/nuance/connect/internal/Property;->getTypeArgument()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/nuance/connect/internal/Property$ValueListener;->getTypeArgument()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private loadStoredSettings(ZZLjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "defaultDlmSync"    # Z
    .param p2, "defaultLivingLanguage"    # Z
    .param p3, "defaultForegroundNetwork"    # Ljava/lang/String;
    .param p4, "defaultBackgroundNetwork"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 41
    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;

    const-string v1, "CONFIGURATION_TOS_ACCEPTED"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/connect/internal/UserSettings;->store:Lcom/nuance/connect/store/PersistentDataStore;

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/UserSettings;->tosAccepted:Lcom/nuance/connect/internal/Property;

    .line 42
    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;

    const-string v1, "CONFIGURATION_TOS_SHOWN"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/connect/internal/UserSettings;->store:Lcom/nuance/connect/store/PersistentDataStore;

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/UserSettings;->tosShown:Lcom/nuance/connect/internal/Property;

    .line 43
    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;

    const-string v1, "USER_ALLOW_USAGE_COLLECTION"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/connect/internal/UserSettings;->store:Lcom/nuance/connect/store/PersistentDataStore;

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/UserSettings;->dataCollection:Lcom/nuance/connect/internal/Property;

    .line 45
    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;

    const-string v1, "CONFIGURATION_EULA_ACCEPTED"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/connect/internal/UserSettings;->store:Lcom/nuance/connect/store/PersistentDataStore;

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/UserSettings;->eulaAccepted:Lcom/nuance/connect/internal/Property;

    .line 46
    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;

    const-string v1, "USER_ALLOW_STATISTICS_COLLECTION"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/connect/internal/UserSettings;->store:Lcom/nuance/connect/store/PersistentDataStore;

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/UserSettings;->statisticsCollectionAllowed:Lcom/nuance/connect/internal/Property;

    .line 48
    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;

    const-string v1, "USER_DLM_SYNC_ENABLED"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/connect/internal/UserSettings;->store:Lcom/nuance/connect/store/PersistentDataStore;

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/UserSettings;->dlmSyncEnabled:Lcom/nuance/connect/internal/Property;

    .line 50
    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;

    const-string v1, "USER_LIVING_LANGUAGE_ENABLED"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/connect/internal/UserSettings;->store:Lcom/nuance/connect/store/PersistentDataStore;

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/UserSettings;->livingLanguageEnabled:Lcom/nuance/connect/internal/Property;

    .line 52
    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;

    const-string v1, "FOREGROUND_DATA_STATE"

    iget-object v3, p0, Lcom/nuance/connect/internal/UserSettings;->store:Lcom/nuance/connect/store/PersistentDataStore;

    move-object v2, p3

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/GenericProperty$StringProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/UserSettings;->foregroundNetworkState:Lcom/nuance/connect/internal/Property;

    .line 55
    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;

    const-string v1, "BACKGROUND_DATA_STATE"

    iget-object v3, p0, Lcom/nuance/connect/internal/UserSettings;->store:Lcom/nuance/connect/store/PersistentDataStore;

    move-object v2, p4

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/internal/GenericProperty$StringProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/UserSettings;->backgroundNetworkState:Lcom/nuance/connect/internal/Property;

    .line 58
    return-void
.end method


# virtual methods
.method public acceptEula()V
    .locals 3

    .prologue
    .line 114
    iget-object v0, p0, Lcom/nuance/connect/internal/UserSettings;->eulaAccepted:Lcom/nuance/connect/internal/Property;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/internal/Property$Source;->USER:Lcom/nuance/connect/internal/Property$Source;

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/internal/Property;->setValue(Ljava/lang/Object;Lcom/nuance/connect/internal/Property$Source;)V

    .line 115
    return-void
.end method

.method public getBackgroundNetworkState()Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/nuance/connect/internal/UserSettings;->backgroundNetworkState:Lcom/nuance/connect/internal/Property;

    invoke-interface {v0}, Lcom/nuance/connect/internal/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;->fromString(Ljava/lang/String;)Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getForegroundNetworkState()Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/nuance/connect/internal/UserSettings;->foregroundNetworkState:Lcom/nuance/connect/internal/Property;

    invoke-interface {v0}, Lcom/nuance/connect/internal/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;->fromString(Ljava/lang/String;)Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public hasIntegratorShownTOS()Z
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/nuance/connect/internal/UserSettings;->tosShown:Lcom/nuance/connect/internal/Property;

    invoke-interface {v0}, Lcom/nuance/connect/internal/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public integratorHasShownTOS()V
    .locals 3

    .prologue
    .line 98
    iget-object v0, p0, Lcom/nuance/connect/internal/UserSettings;->tosShown:Lcom/nuance/connect/internal/Property;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/internal/Property$Source;->USER:Lcom/nuance/connect/internal/Property$Source;

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/internal/Property;->setValue(Ljava/lang/Object;Lcom/nuance/connect/internal/Property$Source;)V

    .line 99
    return-void
.end method

.method public isDataCollectionAccepted()Z
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/nuance/connect/internal/UserSettings;->dataCollection:Lcom/nuance/connect/internal/Property;

    invoke-interface {v0}, Lcom/nuance/connect/internal/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isDlmSyncEnabled()Z
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/nuance/connect/internal/UserSettings;->dlmSyncEnabled:Lcom/nuance/connect/internal/Property;

    invoke-interface {v0}, Lcom/nuance/connect/internal/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isEulaAccepted()Z
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/nuance/connect/internal/UserSettings;->eulaAccepted:Lcom/nuance/connect/internal/Property;

    invoke-interface {v0}, Lcom/nuance/connect/internal/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isLivingLanguageEnabled()Z
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/nuance/connect/internal/UserSettings;->livingLanguageEnabled:Lcom/nuance/connect/internal/Property;

    invoke-interface {v0}, Lcom/nuance/connect/internal/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isStatisticsCollectionAllowed()Z
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/nuance/connect/internal/UserSettings;->statisticsCollectionAllowed:Lcom/nuance/connect/internal/Property;

    invoke-interface {v0}, Lcom/nuance/connect/internal/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isTOSAccepted()Z
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/nuance/connect/internal/UserSettings;->tosAccepted:Lcom/nuance/connect/internal/Property;

    invoke-interface {v0}, Lcom/nuance/connect/internal/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public registerUserSettingsListener(Ljava/lang/String;Lcom/nuance/connect/internal/Property$ValueListener;)V
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
    .line 213
    .local p2, "listener":Lcom/nuance/connect/internal/Property$ValueListener;, "Lcom/nuance/connect/internal/Property$ValueListener<*>;"
    const-string v0, "USER_ALLOW_USAGE_COLLECTION"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 214
    iget-object v0, p0, Lcom/nuance/connect/internal/UserSettings;->dataCollection:Lcom/nuance/connect/internal/Property;

    invoke-static {v0, p2}, Lcom/nuance/connect/internal/UserSettings;->_setListener(Lcom/nuance/connect/internal/Property;Lcom/nuance/connect/internal/Property$ValueListener;)V

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    const-string v0, "FOREGROUND_DATA_STATE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 216
    iget-object v0, p0, Lcom/nuance/connect/internal/UserSettings;->foregroundNetworkState:Lcom/nuance/connect/internal/Property;

    invoke-static {v0, p2}, Lcom/nuance/connect/internal/UserSettings;->_setListener(Lcom/nuance/connect/internal/Property;Lcom/nuance/connect/internal/Property$ValueListener;)V

    goto :goto_0

    .line 217
    :cond_2
    const-string v0, "BACKGROUND_DATA_STATE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/nuance/connect/internal/UserSettings;->backgroundNetworkState:Lcom/nuance/connect/internal/Property;

    invoke-static {v0, p2}, Lcom/nuance/connect/internal/UserSettings;->_setListener(Lcom/nuance/connect/internal/Property;Lcom/nuance/connect/internal/Property$ValueListener;)V

    goto :goto_0
.end method

.method public setBackgroundNetworkState(Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;)V
    .locals 3
    .param p1, "state"    # Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/nuance/connect/internal/UserSettings;->backgroundNetworkState:Lcom/nuance/connect/internal/Property;

    invoke-virtual {p1}, Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/internal/Property$Source;->OEM_RUNTIME:Lcom/nuance/connect/internal/Property$Source;

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/internal/Property;->setValue(Ljava/lang/Object;Lcom/nuance/connect/internal/Property$Source;)V

    .line 70
    return-void
.end method

.method public setDataCollectionAccepted(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 161
    iget-object v0, p0, Lcom/nuance/connect/internal/UserSettings;->dataCollection:Lcom/nuance/connect/internal/Property;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/internal/Property$Source;->USER:Lcom/nuance/connect/internal/Property$Source;

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/internal/Property;->setValue(Ljava/lang/Object;Lcom/nuance/connect/internal/Property$Source;)V

    .line 162
    return-void
.end method

.method public setDlmSyncEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 182
    iget-object v0, p0, Lcom/nuance/connect/internal/UserSettings;->dlmSyncEnabled:Lcom/nuance/connect/internal/Property;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/internal/Property$Source;->USER:Lcom/nuance/connect/internal/Property$Source;

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/internal/Property;->setValue(Ljava/lang/Object;Lcom/nuance/connect/internal/Property$Source;)V

    .line 183
    return-void
.end method

.method public setForegroundNetworkState(Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;)V
    .locals 3
    .param p1, "state"    # Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/nuance/connect/internal/UserSettings;->foregroundNetworkState:Lcom/nuance/connect/internal/Property;

    invoke-virtual {p1}, Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/internal/Property$Source;->OEM_RUNTIME:Lcom/nuance/connect/internal/Property$Source;

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/internal/Property;->setValue(Ljava/lang/Object;Lcom/nuance/connect/internal/Property$Source;)V

    .line 62
    return-void
.end method

.method public setLivingLanguageEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 195
    iget-object v0, p0, Lcom/nuance/connect/internal/UserSettings;->livingLanguageEnabled:Lcom/nuance/connect/internal/Property;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/internal/Property$Source;->USER:Lcom/nuance/connect/internal/Property$Source;

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/internal/Property;->setValue(Ljava/lang/Object;Lcom/nuance/connect/internal/Property$Source;)V

    .line 196
    return-void
.end method

.method public setStatisticsCollectionAllowed(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 137
    iget-object v0, p0, Lcom/nuance/connect/internal/UserSettings;->statisticsCollectionAllowed:Lcom/nuance/connect/internal/Property;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/internal/Property$Source;->USER:Lcom/nuance/connect/internal/Property$Source;

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/internal/Property;->setValue(Ljava/lang/Object;Lcom/nuance/connect/internal/Property$Source;)V

    .line 138
    return-void
.end method

.method public userHasAcceptedTOS()V
    .locals 3

    .prologue
    .line 82
    iget-object v0, p0, Lcom/nuance/connect/internal/UserSettings;->tosAccepted:Lcom/nuance/connect/internal/Property;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/internal/Property$Source;->USER:Lcom/nuance/connect/internal/Property$Source;

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/internal/Property;->setValue(Ljava/lang/Object;Lcom/nuance/connect/internal/Property$Source;)V

    .line 83
    return-void
.end method
