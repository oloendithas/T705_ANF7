.class public Lcom/nuance/swypeconnect/ac/ACConfiguration;
.super Ljava/lang/Object;
.source "ACConfiguration.java"


# static fields
.field public static final MAX_CONNECTIONS_LIMIT:I = 0xa


# instance fields
.field private config:Lcom/nuance/connect/api/ConfigService;


# direct methods
.method protected constructor <init>(Lcom/nuance/swypeconnect/ac/ACManager;Lcom/nuance/connect/store/PersistentDataStore;)V
    .locals 2
    .param p1, "manager"    # Lcom/nuance/swypeconnect/ac/ACManager;
    .param p2, "store"    # Lcom/nuance/connect/store/PersistentDataStore;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-virtual {p1}, Lcom/nuance/swypeconnect/ac/ACManager;->getConnect()Lcom/nuance/connect/api/ConnectServiceManager;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/common/ConnectFeature;->CONFIG:Lcom/nuance/connect/common/ConnectFeature;

    invoke-interface {v0, v1}, Lcom/nuance/connect/api/ConnectServiceManager;->getFeatureService(Lcom/nuance/connect/common/ConnectFeature;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/ConfigService;

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACConfiguration;->config:Lcom/nuance/connect/api/ConfigService;

    .line 33
    return-void
.end method


# virtual methods
.method public backgroundData(ZZZ)V
    .locals 4
    .param p1, "enableWifi"    # Z
    .param p2, "enableCellular"    # Z
    .param p3, "enableRoaming"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation

    .prologue
    .line 75
    if-nez p2, :cond_0

    if-eqz p3, :cond_0

    .line 76
    new-instance v1, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v2, 0x6d

    const-string v3, "Roaming cannot be enabled when cellular is disabled"

    invoke-direct {v1, v2, v3}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 79
    :cond_0
    new-instance v0, Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    invoke-direct {v0, p1, p2, p3}, Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;-><init>(ZZZ)V

    .line 80
    .local v0, "networkConfiguration":Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;
    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACConfiguration;->config:Lcom/nuance/connect/api/ConfigService;

    invoke-interface {v1, v0}, Lcom/nuance/connect/api/ConfigService;->setBackgroundNetworkState(Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;)V

    .line 81
    return-void
.end method

.method public foregroundData(ZZZ)V
    .locals 4
    .param p1, "enableWifi"    # Z
    .param p2, "enableCellular"    # Z
    .param p3, "enableRoaming"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation

    .prologue
    .line 51
    if-nez p2, :cond_0

    if-eqz p3, :cond_0

    .line 52
    new-instance v1, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v2, 0x6d

    const-string v3, "Roaming cannot be enabled when cellular is disabled"

    invoke-direct {v1, v2, v3}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 55
    :cond_0
    new-instance v0, Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    invoke-direct {v0, p1, p2, p3}, Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;-><init>(ZZZ)V

    .line 56
    .local v0, "networkConfiguration":Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;
    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACConfiguration;->config:Lcom/nuance/connect/api/ConfigService;

    invoke-interface {v1, v0}, Lcom/nuance/connect/api/ConfigService;->setForegroundNetworkState(Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;)V

    .line 57
    return-void
.end method

.method public getConcurrentConnectionLimit()I
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACConfiguration;->config:Lcom/nuance/connect/api/ConfigService;

    invoke-interface {v0}, Lcom/nuance/connect/api/ConfigService;->getConnectionConcurrentLimit()I

    move-result v0

    return v0
.end method

.method public getCustomerString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACConfiguration;->config:Lcom/nuance/connect/api/ConfigService;

    invoke-interface {v0}, Lcom/nuance/connect/api/ConfigService;->getCustomerString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadIdleTimeout()I
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACConfiguration;->config:Lcom/nuance/connect/api/ConfigService;

    invoke-interface {v0}, Lcom/nuance/connect/api/ConfigService;->getDownloadIdleTimeout()I

    move-result v0

    return v0
.end method

.method public getRefreshInterval()I
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACConfiguration;->config:Lcom/nuance/connect/api/ConfigService;

    invoke-interface {v0}, Lcom/nuance/connect/api/ConfigService;->getRefreshInterval()I

    move-result v0

    return v0
.end method

.method public setConcurrentConnectionLimit(I)V
    .locals 3
    .param p1, "max"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation

    .prologue
    .line 127
    const/16 v0, 0xa

    if-gt p1, v0, :cond_0

    if-gtz p1, :cond_1

    .line 128
    :cond_0
    new-instance v0, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v1, 0x71

    const-string v2, "The max connection limit is 10. You may not set it below 0, or above the limit."

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACConfiguration;->config:Lcom/nuance/connect/api/ConfigService;

    invoke-interface {v0, p1}, Lcom/nuance/connect/api/ConfigService;->setConnectionConcurrentLimit(I)V

    .line 133
    return-void
.end method

.method public setCustomerString(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 183
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACConfiguration;->config:Lcom/nuance/connect/api/ConfigService;

    invoke-interface {v0, p1}, Lcom/nuance/connect/api/ConfigService;->setCustomerString(Ljava/lang/String;)V

    .line 184
    return-void
.end method

.method public setDownloadIdleTimeout(I)V
    .locals 3
    .param p1, "seconds"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation

    .prologue
    .line 158
    const/16 v0, 0xa

    if-ge p1, v0, :cond_0

    .line 159
    new-instance v0, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v1, 0x70

    const-string v2, "The download idle timeout may not be set less then 10."

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACConfiguration;->config:Lcom/nuance/connect/api/ConfigService;

    invoke-interface {v0, p1}, Lcom/nuance/connect/api/ConfigService;->setDownloadIdleTimeout(I)V

    .line 163
    return-void
.end method

.method public setLogLevel(I)V
    .locals 1
    .param p1, "logLevel"    # I

    .prologue
    .line 204
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACConfiguration;->config:Lcom/nuance/connect/api/ConfigService;

    invoke-interface {v0, p1}, Lcom/nuance/connect/api/ConfigService;->setLogLevel(I)V

    .line 205
    return-void
.end method

.method public setRefreshInterval(I)V
    .locals 3
    .param p1, "seconds"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation

    .prologue
    .line 96
    if-eqz p1, :cond_0

    const/16 v0, 0x12c

    if-ge p1, v0, :cond_0

    .line 97
    new-instance v0, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v1, 0x71

    const-string v2, "Refresh Interval cannot be less then 300"

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACConfiguration;->config:Lcom/nuance/connect/api/ConfigService;

    invoke-interface {v0, p1}, Lcom/nuance/connect/api/ConfigService;->setRefreshInterval(I)V

    .line 102
    return-void
.end method
