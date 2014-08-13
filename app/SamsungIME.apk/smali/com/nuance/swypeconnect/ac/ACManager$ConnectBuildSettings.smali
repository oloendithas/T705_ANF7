.class Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;
.super Ljava/lang/Object;
.source "ACManager.java"

# interfaces
.implements Lcom/nuance/connect/host/service/BuildSettings;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swypeconnect/ac/ACManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectBuildSettings"
.end annotation


# instance fields
.field private acConfig:Lcom/nuance/swypeconnect/ac/ACManager$ACConfig;

.field private buildConfig:Lcom/nuance/swypeconnect/ac/ACBuildConfig;

.field private properties:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/nuance/swypeconnect/ac/ACManager;


# direct methods
.method public constructor <init>(Lcom/nuance/swypeconnect/ac/ACManager;Lcom/nuance/swypeconnect/ac/ACManager$ACConfig;Lcom/nuance/swypeconnect/ac/ACBuildConfig;)V
    .locals 3
    .param p2, "acConfig"    # Lcom/nuance/swypeconnect/ac/ACManager$ACConfig;
    .param p3, "buildConfig"    # Lcom/nuance/swypeconnect/ac/ACBuildConfig;

    .prologue
    .line 268
    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;->this$0:Lcom/nuance/swypeconnect/ac/ACManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 266
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;->properties:Landroid/util/SparseArray;

    .line 269
    iput-object p3, p0, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;->buildConfig:Lcom/nuance/swypeconnect/ac/ACBuildConfig;

    .line 270
    iput-object p2, p0, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;->acConfig:Lcom/nuance/swypeconnect/ac/ACManager$ACConfig;

    .line 272
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;->properties:Landroid/util/SparseArray;

    sget-object v1, Lcom/nuance/connect/host/service/BuildSettings$Property;->OEM_ID:Lcom/nuance/connect/host/service/BuildSettings$Property;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    iget-object v2, p3, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->oemId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 273
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;->properties:Landroid/util/SparseArray;

    sget-object v1, Lcom/nuance/connect/host/service/BuildSettings$Property;->ANALYTICS_LEVEL:Lcom/nuance/connect/host/service/BuildSettings$Property;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 274
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;->properties:Landroid/util/SparseArray;

    sget-object v1, Lcom/nuance/connect/host/service/BuildSettings$Property;->LOCATION_LEVEL:Lcom/nuance/connect/host/service/BuildSettings$Property;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    iget-object v2, p3, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->locationLevel:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 275
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;->properties:Landroid/util/SparseArray;

    sget-object v1, Lcom/nuance/connect/host/service/BuildSettings$Property;->VERSION:Lcom/nuance/connect/host/service/BuildSettings$Property;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    iget-object v2, p3, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->version:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 276
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;->properties:Landroid/util/SparseArray;

    sget-object v1, Lcom/nuance/connect/host/service/BuildSettings$Property;->APPLICATION_ID:Lcom/nuance/connect/host/service/BuildSettings$Property;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    # getter for: Lcom/nuance/swypeconnect/ac/ACManager;->applicationId:Ljava/lang/String;
    invoke-static {p1}, Lcom/nuance/swypeconnect/ac/ACManager;->access$000(Lcom/nuance/swypeconnect/ac/ACManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 277
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;->properties:Landroid/util/SparseArray;

    sget-object v1, Lcom/nuance/connect/host/service/BuildSettings$Property;->BUILD_TIMESTAMP:Lcom/nuance/connect/host/service/BuildSettings$Property;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    iget-object v2, p3, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->buildTimestamp:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 278
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;->properties:Landroid/util/SparseArray;

    sget-object v1, Lcom/nuance/connect/host/service/BuildSettings$Property;->APP_KEY_STARTS:Lcom/nuance/connect/host/service/BuildSettings$Property;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    iget-object v2, p3, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->appKeyStarts:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 279
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;->properties:Landroid/util/SparseArray;

    sget-object v1, Lcom/nuance/connect/host/service/BuildSettings$Property;->BUILD_EXPIRATION:Lcom/nuance/connect/host/service/BuildSettings$Property;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    iget-object v2, p3, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->buildExpiration:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 280
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;->properties:Landroid/util/SparseArray;

    sget-object v1, Lcom/nuance/connect/host/service/BuildSettings$Property;->DEFAULT_DELAY:Lcom/nuance/connect/host/service/BuildSettings$Property;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    iget v2, p3, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->defaultDelay:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 281
    return-void
.end method


# virtual methods
.method public getAnalyticsLevel()I
    .locals 2

    .prologue
    .line 290
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;->properties:Landroid/util/SparseArray;

    sget-object v1, Lcom/nuance/connect/host/service/BuildSettings$Property;->ANALYTICS_LEVEL:Lcom/nuance/connect/host/service/BuildSettings$Property;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getAppKeyStarts()Ljava/lang/String;
    .locals 2

    .prologue
    .line 376
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;->properties:Landroid/util/SparseArray;

    sget-object v1, Lcom/nuance/connect/host/service/BuildSettings$Property;->APP_KEY_STARTS:Lcom/nuance/connect/host/service/BuildSettings$Property;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getApplicationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;->this$0:Lcom/nuance/swypeconnect/ac/ACManager;

    # getter for: Lcom/nuance/swypeconnect/ac/ACManager;->applicationId:Ljava/lang/String;
    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACManager;->access$000(Lcom/nuance/swypeconnect/ac/ACManager;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundNetworkDefault()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 400
    new-instance v0, Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;-><init>(ZZZ)V

    invoke-virtual {v0}, Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBuildExpiration()Ljava/lang/String;
    .locals 2

    .prologue
    .line 381
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;->properties:Landroid/util/SparseArray;

    sget-object v1, Lcom/nuance/connect/host/service/BuildSettings$Property;->BUILD_EXPIRATION:Lcom/nuance/connect/host/service/BuildSettings$Property;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getBuildTimestamp()Ljava/lang/String;
    .locals 2

    .prologue
    .line 371
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;->properties:Landroid/util/SparseArray;

    sget-object v1, Lcom/nuance/connect/host/service/BuildSettings$Property;->BUILD_TIMESTAMP:Lcom/nuance/connect/host/service/BuildSettings$Property;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getConnectUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;->buildConfig:Lcom/nuance/swypeconnect/ac/ACBuildConfig;

    iget-object v0, v0, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getCoreVersions()Landroid/util/SparseArray;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 340
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 341
    .local v0, "s":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;->this$0:Lcom/nuance/swypeconnect/ac/ACManager;

    # getter for: Lcom/nuance/swypeconnect/ac/ACManager;->coreVersionAlpha:Ljava/lang/String;
    invoke-static {v2}, Lcom/nuance/swypeconnect/ac/ACManager;->access$100(Lcom/nuance/swypeconnect/ac/ACManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 342
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;->this$0:Lcom/nuance/swypeconnect/ac/ACManager;

    # getter for: Lcom/nuance/swypeconnect/ac/ACManager;->coreVersionChinese:Ljava/lang/String;
    invoke-static {v2}, Lcom/nuance/swypeconnect/ac/ACManager;->access$200(Lcom/nuance/swypeconnect/ac/ACManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 343
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;->this$0:Lcom/nuance/swypeconnect/ac/ACManager;

    # getter for: Lcom/nuance/swypeconnect/ac/ACManager;->coreVersionJapanese:Ljava/lang/String;
    invoke-static {v2}, Lcom/nuance/swypeconnect/ac/ACManager;->access$300(Lcom/nuance/swypeconnect/ac/ACManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 344
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;->this$0:Lcom/nuance/swypeconnect/ac/ACManager;

    # getter for: Lcom/nuance/swypeconnect/ac/ACManager;->coreVersionKorean:Ljava/lang/String;
    invoke-static {v2}, Lcom/nuance/swypeconnect/ac/ACManager;->access$400(Lcom/nuance/swypeconnect/ac/ACManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 345
    return-object v0
.end method

.method public getDefaultDelay()I
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;->buildConfig:Lcom/nuance/swypeconnect/ac/ACBuildConfig;

    iget v0, v0, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->defaultDelay:I

    return v0
.end method

.method public getDlmSyncDefault()Z
    .locals 1

    .prologue
    .line 295
    const/4 v0, 0x0

    return v0
.end method

.method public getForegroundNetworkDefault()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 395
    new-instance v0, Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;-><init>(ZZZ)V

    invoke-virtual {v0}, Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLanguageCoreMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 350
    invoke-static {}, Lcom/nuance/swypeconnect/ac/ACLanguageList;->getLanguageCoreMap()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public getLocationLevel()I
    .locals 2

    .prologue
    .line 300
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;->properties:Landroid/util/SparseArray;

    sget-object v1, Lcom/nuance/connect/host/service/BuildSettings$Property;->LOCATION_LEVEL:Lcom/nuance/connect/host/service/BuildSettings$Property;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getLogLevel()I
    .locals 2

    .prologue
    .line 355
    const/4 v0, 0x6

    .line 357
    .local v0, "logLevel":I
    :try_start_0
    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;->buildConfig:Lcom/nuance/swypeconnect/ac/ACBuildConfig;

    iget-object v1, v1, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->defaultLogLevel:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 361
    :goto_0
    return v0

    .line 358
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getOemId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 285
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;->properties:Landroid/util/SparseArray;

    sget-object v1, Lcom/nuance/connect/host/service/BuildSettings$Property;->OEM_ID:Lcom/nuance/connect/host/service/BuildSettings$Property;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getUdbAnonymousUpload()Z
    .locals 1

    .prologue
    .line 305
    const/4 v0, 0x0

    return v0
.end method

.method public getUpdateLivingLanguageByDefault()Z
    .locals 1

    .prologue
    .line 330
    const/4 v0, 0x0

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 310
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;->properties:Landroid/util/SparseArray;

    sget-object v1, Lcom/nuance/connect/host/service/BuildSettings$Property;->VERSION:Lcom/nuance/connect/host/service/BuildSettings$Property;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public isChineseCategoryEnabled()Z
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;->acConfig:Lcom/nuance/swypeconnect/ac/ACManager$ACConfig;

    iget-boolean v0, v0, Lcom/nuance/swypeconnect/ac/ACManager$ACConfig;->chineseCategoryEnabled:Z

    return v0
.end method

.method public isDeveloperLogEnabled()Z
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;->buildConfig:Lcom/nuance/swypeconnect/ac/ACBuildConfig;

    iget-object v0, v0, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->developerLogEnabled:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isDlmSyncEnabled()Z
    .locals 1

    .prologue
    .line 320
    const/4 v0, 0x0

    return v0
.end method

.method public isLivingLanguageEnabled()Z
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager$ConnectBuildSettings;->acConfig:Lcom/nuance/swypeconnect/ac/ACManager$ACConfig;

    iget-boolean v0, v0, Lcom/nuance/swypeconnect/ac/ACManager$ACConfig;->livingLanguageEnabled:Z

    return v0
.end method
