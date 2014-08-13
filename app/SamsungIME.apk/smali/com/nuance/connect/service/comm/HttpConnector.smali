.class public Lcom/nuance/connect/service/comm/HttpConnector;
.super Ljava/lang/Object;
.source "HttpConnector.java"


# static fields
.field private static final COMPRESSION_THRESHOLD:I = 0xc8

.field private static final encoding:Ljava/lang/String; = "UTF-8"


# instance fields
.field private analyticsScribe:Lcom/nuance/connect/service/comm/AnalyticsDataUsageScribe;

.field private client:Lcom/nuance/connect/service/ConnectClient;

.field private connectionStatus:Lcom/nuance/connect/service/comm/CommandQueue$ConnectionStatus;

.field private connectorCallback:Lcom/nuance/connect/service/comm/ConnectorCallback;

.field private log:Lcom/nuance/connect/util/Logger$Log;

.field private serverURL:Ljava/lang/String;

.field private serverUrlChangeListener:Lcom/nuance/connect/internal/Property$ValueListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nuance/connect/internal/Property$ValueListener",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/nuance/connect/service/ConnectClient;Lcom/nuance/connect/service/comm/CommandQueue$ConnectionStatus;Lcom/nuance/connect/service/comm/ConnectorCallback;Lcom/nuance/connect/service/comm/AnalyticsDataUsageScribe;)V
    .locals 2
    .param p1, "client"    # Lcom/nuance/connect/service/ConnectClient;
    .param p2, "connectionStatus"    # Lcom/nuance/connect/service/comm/CommandQueue$ConnectionStatus;
    .param p3, "connectorCallback"    # Lcom/nuance/connect/service/comm/ConnectorCallback;
    .param p4, "analyticsScribe"    # Lcom/nuance/connect/service/comm/AnalyticsDataUsageScribe;

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    .line 66
    new-instance v0, Lcom/nuance/connect/service/comm/HttpConnector$1;

    invoke-direct {v0, p0}, Lcom/nuance/connect/service/comm/HttpConnector$1;-><init>(Lcom/nuance/connect/service/comm/HttpConnector;)V

    iput-object v0, p0, Lcom/nuance/connect/service/comm/HttpConnector;->serverUrlChangeListener:Lcom/nuance/connect/internal/Property$ValueListener;

    .line 89
    iput-object p1, p0, Lcom/nuance/connect/service/comm/HttpConnector;->client:Lcom/nuance/connect/service/ConnectClient;

    .line 90
    iput-object p2, p0, Lcom/nuance/connect/service/comm/HttpConnector;->connectionStatus:Lcom/nuance/connect/service/comm/CommandQueue$ConnectionStatus;

    .line 91
    iput-object p3, p0, Lcom/nuance/connect/service/comm/HttpConnector;->connectorCallback:Lcom/nuance/connect/service/comm/ConnectorCallback;

    .line 92
    iput-object p4, p0, Lcom/nuance/connect/service/comm/HttpConnector;->analyticsScribe:Lcom/nuance/connect/service/comm/AnalyticsDataUsageScribe;

    .line 94
    sget-object v0, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->URL:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/service/comm/HttpConnector;->serverUrlChangeListener:Lcom/nuance/connect/internal/Property$ValueListener;

    invoke-virtual {p1, v0, v1}, Lcom/nuance/connect/service/ConnectClient;->addListener(Ljava/lang/String;Lcom/nuance/connect/internal/Property$ValueListener;)V

    .line 95
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/connect/service/comm/HttpConnector;)Lcom/nuance/connect/util/Logger$Log;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/connect/service/comm/HttpConnector;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/nuance/connect/service/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    return-object v0
.end method

.method static synthetic access$102(Lcom/nuance/connect/service/comm/HttpConnector;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/nuance/connect/service/comm/HttpConnector;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/nuance/connect/service/comm/HttpConnector;->serverURL:Ljava/lang/String;

    return-object p1
.end method

.method private allowsOutput()Z
    .locals 3

    .prologue
    .line 122
    const/4 v0, 0x1

    .line 124
    .local v0, "allowed":Z
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    .line 126
    const/4 v0, 0x0

    .line 129
    :cond_0
    return v0
.end method

.method private commandToURL(Lcom/nuance/connect/service/comm/Command;)Ljava/lang/String;
    .locals 2
    .param p1, "command"    # Lcom/nuance/connect/service/comm/Command;

    .prologue
    .line 856
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/nuance/connect/service/comm/HttpConnector;->serverURL:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 857
    .local v0, "urlBuilder":Ljava/lang/StringBuilder;
    iget-object v1, p1, Lcom/nuance/connect/service/comm/Command;->commandFamily:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 858
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 859
    iget v1, p1, Lcom/nuance/connect/service/comm/Command;->version:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 860
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 861
    iget-object v1, p1, Lcom/nuance/connect/service/comm/Command;->command:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 863
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private connectToUrl(Lcom/nuance/connect/service/comm/Command;)Ljava/net/HttpURLConnection;
    .locals 12
    .param p1, "command"    # Lcom/nuance/connect/service/comm/Command;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/MalformedURLException;,
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 821
    const/4 v8, 0x0

    .line 824
    .local v8, "connection":Ljava/net/HttpURLConnection;
    iget-object v1, p1, Lcom/nuance/connect/service/comm/Command;->thirdPartyURL:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/nuance/connect/service/comm/Command;->thirdPartyURL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x5

    if-le v1, v2, :cond_0

    .line 825
    iget-object v11, p1, Lcom/nuance/connect/service/comm/Command;->thirdPartyURL:Ljava/lang/String;

    .line 830
    .local v11, "urlString":Ljava/lang/String;
    :goto_0
    new-instance v10, Ljava/net/URL;

    invoke-direct {v10, v11}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 835
    .local v10, "url":Ljava/net/URL;
    :try_start_0
    invoke-virtual {v10}, Ljava/net/URL;->toURI()Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 843
    :goto_1
    invoke-virtual {v10}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 844
    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    .end local v8    # "connection":Ljava/net/HttpURLConnection;
    check-cast v8, Ljavax/net/ssl/HttpsURLConnection;

    .line 849
    .restart local v8    # "connection":Ljava/net/HttpURLConnection;
    :goto_2
    return-object v8

    .line 827
    .end local v10    # "url":Ljava/net/URL;
    .end local v11    # "urlString":Ljava/lang/String;
    :cond_0
    invoke-direct {p0, p1}, Lcom/nuance/connect/service/comm/HttpConnector;->commandToURL(Lcom/nuance/connect/service/comm/Command;)Ljava/lang/String;

    move-result-object v11

    .restart local v11    # "urlString":Ljava/lang/String;
    goto :goto_0

    .line 836
    .restart local v10    # "url":Ljava/net/URL;
    :catch_0
    move-exception v9

    .line 838
    .local v9, "ex":Ljava/net/URISyntaxException;
    new-instance v0, Ljava/net/URI;

    invoke-virtual {v10}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10}, Ljava/net/URL;->getPort()I

    move-result v4

    invoke-virtual {v10}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    .local v0, "uri":Ljava/net/URI;
    invoke-virtual {v0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v10

    goto :goto_1

    .line 846
    .end local v0    # "uri":Ljava/net/URI;
    .end local v9    # "ex":Ljava/net/URISyntaxException;
    :cond_1
    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    .end local v8    # "connection":Ljava/net/HttpURLConnection;
    check-cast v8, Ljava/net/HttpURLConnection;

    .restart local v8    # "connection":Ljava/net/HttpURLConnection;
    goto :goto_2
.end method

.method private generateBody(Lcom/nuance/connect/service/comm/Command;)Lorg/json/JSONObject;
    .locals 12
    .param p1, "command"    # Lcom/nuance/connect/service/comm/Command;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 550
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 552
    .local v0, "body":Lorg/json/JSONObject;
    iget-boolean v9, p1, Lcom/nuance/connect/service/comm/Command;->requireDevice:Z

    if-eqz v9, :cond_0

    .line 553
    const-string v9, "5"

    iget-object v10, p0, Lcom/nuance/connect/service/comm/HttpConnector;->connectorCallback:Lcom/nuance/connect/service/comm/ConnectorCallback;

    invoke-interface {v10}, Lcom/nuance/connect/service/comm/ConnectorCallback;->getDeviceId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 556
    :cond_0
    iget-boolean v9, p1, Lcom/nuance/connect/service/comm/Command;->requireSession:Z

    if-eqz v9, :cond_1

    .line 557
    const-string v9, "3"

    iget-object v10, p0, Lcom/nuance/connect/service/comm/HttpConnector;->connectorCallback:Lcom/nuance/connect/service/comm/ConnectorCallback;

    invoke-interface {v10}, Lcom/nuance/connect/service/comm/ConnectorCallback;->getSessionId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 561
    :cond_1
    const-string v9, "0"

    iget-object v10, p0, Lcom/nuance/connect/service/comm/HttpConnector;->connectorCallback:Lcom/nuance/connect/service/comm/ConnectorCallback;

    invoke-interface {v10}, Lcom/nuance/connect/service/comm/ConnectorCallback;->getRequestKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 564
    iget-object v9, p1, Lcom/nuance/connect/service/comm/Command;->transactionId:Ljava/lang/String;

    if-eqz v9, :cond_2

    .line 565
    const-string v9, "4"

    iget-object v10, p1, Lcom/nuance/connect/service/comm/Command;->transactionId:Ljava/lang/String;

    invoke-virtual {v0, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 569
    :cond_2
    iget-object v9, p1, Lcom/nuance/connect/service/comm/Command;->parameters:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 570
    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 571
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 572
    .local v4, "key":Ljava/lang/String;
    iget-object v9, p1, Lcom/nuance/connect/service/comm/Command;->parameters:Ljava/util/HashMap;

    invoke-virtual {v9, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 574
    .local v6, "value":Ljava/lang/Object;
    instance-of v9, v6, Ljava/lang/String;

    if-eqz v9, :cond_3

    .line 575
    invoke-virtual {v0, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 576
    :cond_3
    instance-of v9, v6, Ljava/lang/Long;

    if-eqz v9, :cond_4

    .line 577
    check-cast v6, Ljava/lang/Long;

    .end local v6    # "value":Ljava/lang/Object;
    invoke-virtual {v6}, Ljava/lang/Long;->intValue()I

    move-result v9

    invoke-virtual {v0, v4, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_0

    .line 578
    .restart local v6    # "value":Ljava/lang/Object;
    :cond_4
    instance-of v9, v6, Ljava/lang/Integer;

    if-eqz v9, :cond_5

    .line 579
    check-cast v6, Ljava/lang/Integer;

    .end local v6    # "value":Ljava/lang/Object;
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v0, v4, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_0

    .line 580
    .restart local v6    # "value":Ljava/lang/Object;
    :cond_5
    instance-of v9, v6, Ljava/lang/Boolean;

    if-eqz v9, :cond_6

    .line 581
    check-cast v6, Ljava/lang/Boolean;

    .end local v6    # "value":Ljava/lang/Object;
    invoke-virtual {v0, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 582
    .restart local v6    # "value":Ljava/lang/Object;
    :cond_6
    instance-of v9, v6, Ljava/util/HashMap;

    if-eqz v9, :cond_8

    .line 583
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 584
    .local v5, "property":Lorg/json/JSONObject;
    check-cast v6, Ljava/util/HashMap;

    .end local v6    # "value":Ljava/lang/Object;
    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 585
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 586
    .local v7, "valueKey":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 587
    .local v8, "valueValue":Ljava/lang/String;
    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 589
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v7    # "valueKey":Ljava/lang/String;
    .end local v8    # "valueValue":Ljava/lang/String;
    :cond_7
    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 590
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v5    # "property":Lorg/json/JSONObject;
    .restart local v6    # "value":Ljava/lang/Object;
    :cond_8
    instance-of v9, v6, Lorg/json/JSONObject;

    if-eqz v9, :cond_9

    .line 591
    invoke-virtual {v0, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 592
    :cond_9
    instance-of v9, v6, Lorg/json/JSONArray;

    if-eqz v9, :cond_a

    .line 593
    invoke-virtual {v0, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_0

    .line 595
    :cond_a
    iget-object v9, p0, Lcom/nuance/connect/service/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error: unusable key type key="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " value="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 599
    .end local v4    # "key":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/Object;
    :cond_b
    return-object v0
.end method

.method private hasSufficientSpace(I)Z
    .locals 9
    .param p1, "length"    # I

    .prologue
    .line 109
    new-instance v6, Landroid/os/StatFs;

    iget-object v7, p0, Lcom/nuance/connect/service/comm/HttpConnector;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v7}, Landroid/content/ContextWrapper;->getCacheDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 110
    .local v6, "stat":Landroid/os/StatFs;
    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockSize()I

    move-result v7

    int-to-long v2, v7

    .line 111
    .local v2, "blockSize":J
    invoke-virtual {v6}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v7

    int-to-long v0, v7

    .line 112
    .local v0, "availableBlocks":J
    mul-long v4, v0, v2

    .line 113
    .local v4, "freeSpace":J
    int-to-long v7, p1

    cmp-long v7, v7, v4

    if-gez v7, :cond_0

    const/4 v7, 0x1

    :goto_0
    return v7

    :cond_0
    const/4 v7, 0x0

    goto :goto_0
.end method

.method private processFileResult(Lcom/nuance/connect/service/comm/Command;Ljava/io/File;)V
    .locals 5
    .param p1, "command"    # Lcom/nuance/connect/service/comm/Command;
    .param p2, "filehandler"    # Ljava/io/File;

    .prologue
    .line 613
    new-instance v0, Lcom/nuance/connect/service/comm/Response;

    invoke-direct {v0}, Lcom/nuance/connect/service/comm/Response;-><init>()V

    .line 615
    .local v0, "response":Lcom/nuance/connect/service/comm/Response;
    iget-object v2, p1, Lcom/nuance/connect/service/comm/Command;->command:Ljava/lang/String;

    iput-object v2, v0, Lcom/nuance/connect/service/comm/Response;->command:Ljava/lang/String;

    .line 616
    iget-object v2, p1, Lcom/nuance/connect/service/comm/Command;->commandFamily:Ljava/lang/String;

    iput-object v2, v0, Lcom/nuance/connect/service/comm/Response;->commandFamily:Ljava/lang/String;

    .line 617
    iget-object v2, p1, Lcom/nuance/connect/service/comm/Command;->transactionId:Ljava/lang/String;

    iput-object v2, v0, Lcom/nuance/connect/service/comm/Response;->transactionId:Ljava/lang/String;

    .line 618
    iget-object v2, p1, Lcom/nuance/connect/service/comm/Command;->identifier:Ljava/lang/String;

    iput-object v2, v0, Lcom/nuance/connect/service/comm/Response;->identifier:Ljava/lang/String;

    .line 620
    const/4 v2, 0x1

    iput v2, v0, Lcom/nuance/connect/service/comm/Response;->status:I

    .line 621
    iput-object p1, v0, Lcom/nuance/connect/service/comm/Response;->initialCommand:Lcom/nuance/connect/service/comm/Command;

    .line 623
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/nuance/connect/service/comm/Response;->fileLocation:Ljava/lang/String;

    .line 624
    iput-object p2, v0, Lcom/nuance/connect/service/comm/Response;->file:Ljava/io/File;

    .line 626
    iget-object v2, p0, Lcom/nuance/connect/service/comm/HttpConnector;->connectorCallback:Lcom/nuance/connect/service/comm/ConnectorCallback;

    invoke-interface {v2, v0}, Lcom/nuance/connect/service/comm/ConnectorCallback;->onResponse(Lcom/nuance/connect/service/comm/Response;)V

    .line 628
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Downloaded File: \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\nSize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 630
    .local v1, "status":Ljava/lang/String;
    iget-object v2, p0, Lcom/nuance/connect/service/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    invoke-interface {v2, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 631
    return-void
.end method

.method private processResult(Lcom/nuance/connect/service/comm/Command;Lorg/json/JSONObject;)Z
    .locals 18
    .param p1, "command"    # Lcom/nuance/connect/service/comm/Command;
    .param p2, "result"    # Lorg/json/JSONObject;

    .prologue
    .line 640
    const/4 v8, 0x1

    .line 642
    .local v8, "processed":Z
    new-instance v9, Lcom/nuance/connect/service/comm/Response;

    invoke-direct {v9}, Lcom/nuance/connect/service/comm/Response;-><init>()V

    .line 644
    .local v9, "response":Lcom/nuance/connect/service/comm/Response;
    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 645
    .local v2, "commandProcessed":Ljava/lang/Boolean;
    const/4 v3, 0x0

    .line 647
    .local v3, "delayedFor":I
    const/4 v11, 0x1

    .line 648
    .local v11, "statusCode":I
    const-string v12, ""

    .line 652
    .local v12, "statusMessage":Ljava/lang/String;
    :try_start_0
    const-string v15, "6"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 653
    const-string v15, "6"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    .line 654
    .local v13, "statusResponse":I
    move v10, v13

    .line 655
    .local v10, "status":I
    const-string v15, "6"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 661
    .end local v13    # "statusResponse":I
    :goto_0
    iput v10, v9, Lcom/nuance/connect/service/comm/Response;->status:I

    .line 662
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/nuance/connect/service/comm/Command;->command:Ljava/lang/String;

    iput-object v15, v9, Lcom/nuance/connect/service/comm/Response;->command:Ljava/lang/String;

    .line 663
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/nuance/connect/service/comm/Command;->commandFamily:Ljava/lang/String;

    iput-object v15, v9, Lcom/nuance/connect/service/comm/Response;->commandFamily:Ljava/lang/String;

    .line 664
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/nuance/connect/service/comm/Command;->identifier:Ljava/lang/String;

    iput-object v15, v9, Lcom/nuance/connect/service/comm/Response;->identifier:Ljava/lang/String;

    .line 666
    const-string v15, "5"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 667
    const-string v15, "5"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v9, Lcom/nuance/connect/service/comm/Response;->deviceId:Ljava/lang/String;

    .line 668
    const-string v15, "5"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 671
    :cond_0
    const-string v15, "3"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 672
    const-string v15, "3"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v9, Lcom/nuance/connect/service/comm/Response;->sessionId:Ljava/lang/String;

    .line 673
    const-string v15, "3"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 676
    :cond_1
    const-string v15, "4"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 677
    const-string v15, "4"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v9, Lcom/nuance/connect/service/comm/Response;->transactionId:Ljava/lang/String;

    .line 678
    const-string v15, "4"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 681
    :cond_2
    const-string v15, "51"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 682
    const-string v15, "51"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v9, Lcom/nuance/connect/service/comm/Response;->thirdPartyURL:Ljava/lang/String;

    .line 683
    const-string v15, "51"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 686
    :cond_3
    const-string v15, "0"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 688
    const-string v15, "0"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 691
    :cond_4
    const-string v15, "64"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 693
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nuance/connect/service/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Debug Info: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "64"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    .line 697
    :cond_5
    sparse-switch v10, :sswitch_data_0

    .line 769
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nuance/connect/service/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "processResult() UNKNOWN COMMAND: ["

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "]"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 774
    :goto_1
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 776
    .local v7, "parameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 777
    .local v5, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_a

    .line 778
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 779
    .local v6, "key":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    .line 780
    .local v14, "value":Ljava/lang/Object;
    invoke-virtual {v7, v6, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 785
    .end local v5    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "parameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v10    # "status":I
    .end local v14    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v4

    .line 786
    .local v4, "ex":Lorg/json/JSONException;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nuance/connect/service/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "processResult() - JSONException "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 787
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    if-nez v15, :cond_6

    .line 788
    const/4 v11, 0x5

    .line 797
    .end local v4    # "ex":Lorg/json/JSONException;
    :cond_6
    :goto_3
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    if-eqz v15, :cond_b

    .line 799
    move-object/from16 v0, p1

    iput-object v0, v9, Lcom/nuance/connect/service/comm/Response;->initialCommand:Lcom/nuance/connect/service/comm/Command;

    .line 800
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nuance/connect/service/comm/HttpConnector;->connectorCallback:Lcom/nuance/connect/service/comm/ConnectorCallback;

    invoke-interface {v15, v9}, Lcom/nuance/connect/service/comm/ConnectorCallback;->onResponse(Lcom/nuance/connect/service/comm/Response;)V

    .line 809
    :goto_4
    return v8

    .line 657
    :cond_7
    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nuance/connect/service/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v16, "No status sent back from server."

    invoke-interface/range {v15 .. v16}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    .line 658
    const/4 v10, 0x0

    .restart local v10    # "status":I
    goto/16 :goto_0

    .line 701
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nuance/connect/service/comm/HttpConnector;->connectorCallback:Lcom/nuance/connect/service/comm/ConnectorCallback;

    invoke-interface {v15}, Lcom/nuance/connect/service/comm/ConnectorCallback;->onDeviceInvalidated()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 790
    .end local v10    # "status":I
    :catch_1
    move-exception v4

    .line 791
    .local v4, "ex":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nuance/connect/service/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "processResult() - Exception "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 792
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    if-nez v15, :cond_6

    .line 793
    const/4 v11, 0x2

    goto :goto_3

    .line 706
    .end local v4    # "ex":Ljava/lang/Exception;
    .restart local v10    # "status":I
    :sswitch_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nuance/connect/service/comm/HttpConnector;->connectorCallback:Lcom/nuance/connect/service/comm/ConnectorCallback;

    invoke-interface {v15}, Lcom/nuance/connect/service/comm/ConnectorCallback;->onSessionInvalidated()V

    .line 707
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nuance/connect/service/comm/HttpConnector;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v16, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_RESET_SESSION:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual/range {v15 .. v16}, Lcom/nuance/connect/service/ConnectClient;->postMessage(Lcom/nuance/connect/internal/common/InternalMessages;)V

    .line 708
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nuance/connect/service/comm/HttpConnector;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v16, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_SESSION_CREATE:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual/range {v15 .. v16}, Lcom/nuance/connect/service/ConnectClient;->postMessage(Lcom/nuance/connect/internal/common/InternalMessages;)V

    goto/16 :goto_1

    .line 712
    :sswitch_2
    const/4 v15, 0x0

    iput-object v15, v9, Lcom/nuance/connect/service/comm/Response;->transactionId:Ljava/lang/String;

    .line 713
    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 714
    goto/16 :goto_1

    .line 719
    :sswitch_3
    const/16 v11, 0x9

    .line 720
    goto/16 :goto_1

    .line 725
    :sswitch_4
    const-string v15, "8"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 726
    const-string v15, "8"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 727
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Server requested delay for "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 731
    :goto_5
    const/4 v11, 0x3

    .line 732
    goto/16 :goto_1

    .line 729
    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nuance/connect/service/comm/HttpConnector;->connectorCallback:Lcom/nuance/connect/service/comm/ConnectorCallback;

    invoke-interface {v15}, Lcom/nuance/connect/service/comm/ConnectorCallback;->getDefaultDelay()I

    move-result v3

    goto :goto_5

    .line 734
    :sswitch_5
    const-string v15, "9"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 735
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 736
    .restart local v7    # "parameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v15, "9"

    const-string v16, "9"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 738
    iput-object v7, v9, Lcom/nuance/connect/service/comm/Response;->parameters:Ljava/util/HashMap;

    .line 740
    .end local v7    # "parameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nuance/connect/service/comm/HttpConnector;->connectorCallback:Lcom/nuance/connect/service/comm/ConnectorCallback;

    invoke-interface {v15, v9}, Lcom/nuance/connect/service/comm/ConnectorCallback;->onValidateDeviceProperties(Lcom/nuance/connect/service/comm/Response;)V

    goto/16 :goto_1

    .line 744
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nuance/connect/service/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v16, "Client recieved Invalid Argument."

    invoke-interface/range {v15 .. v16}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    .line 745
    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 746
    goto/16 :goto_1

    .line 749
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nuance/connect/service/comm/HttpConnector;->connectorCallback:Lcom/nuance/connect/service/comm/ConnectorCallback;

    invoke-interface {v15}, Lcom/nuance/connect/service/comm/ConnectorCallback;->onAccountInvalidated()V

    .line 750
    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 751
    goto/16 :goto_1

    .line 766
    :sswitch_8
    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 767
    goto/16 :goto_1

    .line 783
    .restart local v5    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .restart local v7    # "parameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_a
    iput-object v7, v9, Lcom/nuance/connect/service/comm/Response;->parameters:Ljava/util/HashMap;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_3

    .line 801
    .end local v5    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v7    # "parameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v10    # "status":I
    :cond_b
    move-object/from16 v0, p1

    iget v15, v0, Lcom/nuance/connect/service/comm/Command;->retryCount:I

    add-int/lit8 v16, v15, -0x1

    move/from16 v0, v16

    move-object/from16 v1, p1

    iput v0, v1, Lcom/nuance/connect/service/comm/Command;->retryCount:I

    if-gez v15, :cond_c

    sget-object v15, Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;->CRITICAL:Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/nuance/connect/service/comm/Command;->requestType:Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_d

    .line 803
    :cond_c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nuance/connect/service/comm/HttpConnector;->connectorCallback:Lcom/nuance/connect/service/comm/ConnectorCallback;

    move-object/from16 v0, p1

    invoke-interface {v15, v0, v3, v11, v12}, Lcom/nuance/connect/service/comm/ConnectorCallback;->onRetry(Lcom/nuance/connect/service/comm/Command;IILjava/lang/String;)V

    .line 804
    const/4 v8, 0x0

    goto/16 :goto_4

    .line 807
    :cond_d
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nuance/connect/service/comm/HttpConnector;->connectorCallback:Lcom/nuance/connect/service/comm/ConnectorCallback;

    move-object/from16 v0, p1

    invoke-interface {v15, v0, v11, v12}, Lcom/nuance/connect/service/comm/ConnectorCallback;->onFailure(Lcom/nuance/connect/service/comm/Command;ILjava/lang/String;)V

    goto/16 :goto_4

    .line 697
    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_8
        0x0 -> :sswitch_8
        0x1 -> :sswitch_8
        0x2 -> :sswitch_3
        0x3 -> :sswitch_4
        0x4 -> :sswitch_0
        0x5 -> :sswitch_1
        0x6 -> :sswitch_2
        0x7 -> :sswitch_3
        0x8 -> :sswitch_3
        0x9 -> :sswitch_3
        0xa -> :sswitch_8
        0xb -> :sswitch_8
        0xc -> :sswitch_8
        0xd -> :sswitch_8
        0xf -> :sswitch_6
        0x11 -> :sswitch_5
        0x12 -> :sswitch_8
        0x13 -> :sswitch_8
        0x14 -> :sswitch_8
        0x18 -> :sswitch_7
        0x19 -> :sswitch_8
        0x1a -> :sswitch_8
        0x1fa -> :sswitch_8
    .end sparse-switch
.end method


# virtual methods
.method public destroyConnection()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/nuance/connect/service/comm/HttpConnector;->analyticsScribe:Lcom/nuance/connect/service/comm/AnalyticsDataUsageScribe;

    invoke-interface {v0}, Lcom/nuance/connect/service/comm/AnalyticsDataUsageScribe;->flush()V

    .line 102
    return-void
.end method

.method public processCommand(Lcom/nuance/connect/service/comm/Command;Lcom/nuance/connect/service/comm/Transaction;Lcom/nuance/connect/service/comm/CommandQueue$NetworkExpirer;)Z
    .locals 56
    .param p1, "command"    # Lcom/nuance/connect/service/comm/Command;
    .param p2, "transaction"    # Lcom/nuance/connect/service/comm/Transaction;
    .param p3, "expirer"    # Lcom/nuance/connect/service/comm/CommandQueue$NetworkExpirer;

    .prologue
    .line 138
    const/16 v31, 0x1

    .line 140
    .local v31, "processed":Z
    const/16 v45, 0x0

    .line 141
    .local v45, "serverConn":Ljava/net/HttpURLConnection;
    const/4 v9, 0x0

    .line 142
    .local v9, "connectionError":Z
    const/16 v23, 0x0

    .line 143
    .local v23, "ioException":Z
    invoke-virtual/range {p1 .. p1}, Lcom/nuance/connect/service/comm/Command;->shortString()Ljava/lang/String;

    move-result-object v8

    .line 145
    .local v8, "commandDesc":Ljava/lang/String;
    const/4 v10, 0x0

    .line 146
    .local v10, "downloadFile":Ljava/io/File;
    const-wide/16 v33, 0x0

    .line 148
    .local v33, "rangeLength":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/comm/HttpConnector;->analyticsScribe:Lcom/nuance/connect/service/comm/AnalyticsDataUsageScribe;

    move-object/from16 v52, v0

    invoke-interface/range {v52 .. v52}, Lcom/nuance/connect/service/comm/AnalyticsDataUsageScribe;->mark()V

    .line 150
    const/16 v46, 0x1

    .line 151
    .local v46, "statusCode":I
    const-string v47, ""

    .line 153
    .local v47, "statusMessage":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lcom/nuance/connect/service/comm/CommandQueue$NetworkExpirer;->start()V

    .line 155
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/nuance/connect/service/comm/HttpConnector;->connectToUrl(Lcom/nuance/connect/service/comm/Command;)Ljava/net/HttpURLConnection;

    move-result-object v45

    .line 156
    move-object/from16 v15, v45

    .line 157
    .local v15, "expiringServerConn":Ljava/net/HttpURLConnection;
    new-instance v52, Lcom/nuance/connect/service/comm/HttpConnector$2;

    move-object/from16 v0, v52

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v15}, Lcom/nuance/connect/service/comm/HttpConnector$2;-><init>(Lcom/nuance/connect/service/comm/HttpConnector;Ljava/net/HttpURLConnection;)V

    move-object/from16 v0, p3

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/comm/CommandQueue$NetworkExpirer;->setExpirer(Ljava/lang/Runnable;)V

    .line 173
    const-string v52, "http.keepAlive"

    const-string v53, "false"

    invoke-static/range {v52 .. v53}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 174
    const/16 v52, 0x0

    move-object/from16 v0, v45

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setAllowUserInteraction(Z)V

    .line 177
    invoke-interface/range {p2 .. p2}, Lcom/nuance/connect/service/comm/Transaction;->getDownloadFile()Ljava/lang/String;

    move-result-object v52

    if-eqz v52, :cond_2

    invoke-interface/range {p2 .. p2}, Lcom/nuance/connect/service/comm/Transaction;->getDownloadFile()Ljava/lang/String;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/String;->length()I

    move-result v52

    if-lez v52, :cond_2

    .line 178
    new-instance v11, Ljava/io/File;

    invoke-interface/range {p2 .. p2}, Lcom/nuance/connect/service/comm/Transaction;->getDownloadFile()Ljava/lang/String;

    move-result-object v52

    move-object/from16 v0, v52

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    .line 179
    .end local v10    # "downloadFile":Ljava/io/File;
    .local v11, "downloadFile":Ljava/io/File;
    :try_start_1
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v52

    if-eqz v52, :cond_0

    .line 180
    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v33

    .line 183
    :cond_0
    const-wide/16 v52, 0x0

    cmp-long v52, v33, v52

    if-lez v52, :cond_1

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    move-object/from16 v52, v0

    new-instance v53, Ljava/lang/StringBuilder;

    invoke-direct/range {v53 .. v53}, Ljava/lang/StringBuilder;-><init>()V

    const-string v54, "Seeking to: "

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    move-object/from16 v0, v53

    move-wide/from16 v1, v33

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    invoke-interface/range {v52 .. v53}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 185
    const-string v52, "Range"

    new-instance v53, Ljava/lang/StringBuilder;

    invoke-direct/range {v53 .. v53}, Ljava/lang/StringBuilder;-><init>()V

    const-string v54, "bytes="

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    move-object/from16 v0, v53

    move-wide/from16 v1, v33

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v53

    const-string v54, "-"

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, v45

    move-object/from16 v1, v52

    move-object/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_1a
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_19
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_18
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_17
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_16
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_15
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_14
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_13

    :cond_1
    move-object v10, v11

    .line 189
    .end local v11    # "downloadFile":Ljava/io/File;
    .restart local v10    # "downloadFile":Ljava/io/File;
    :cond_2
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/nuance/connect/service/comm/HttpConnector;->allowsOutput()Z

    move-result v52

    if-eqz v52, :cond_3

    .line 191
    const/16 v52, 0x1

    move-object/from16 v0, v45

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 193
    :cond_3
    const/16 v52, 0x0

    move-object/from16 v0, v45

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 194
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/nuance/connect/service/comm/Command;->method:Ljava/lang/String;

    move-object/from16 v52, v0

    move-object/from16 v0, v45

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    move-object/from16 v52, v0

    new-instance v53, Ljava/lang/StringBuilder;

    invoke-direct/range {v53 .. v53}, Ljava/lang/StringBuilder;-><init>()V

    const-string v54, "Thread ["

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/Thread;->getId()J

    move-result-wide v54

    invoke-virtual/range {v53 .. v55}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v53

    const-string v54, "] processCommand()  URL: ["

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v45 .. v45}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v54

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v53

    const-string v54, "]"

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    invoke-interface/range {v52 .. v53}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 197
    const-wide/16 v43, 0x0

    .line 199
    .local v43, "sendLength":J
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/nuance/connect/service/comm/Command;->method:Ljava/lang/String;

    move-object/from16 v52, v0

    const-string v53, "PUT"

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_d

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/nuance/connect/service/comm/Command;->sendFileLocation:Ljava/lang/String;

    move-object/from16 v52, v0

    if-eqz v52, :cond_d

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    move-object/from16 v52, v0

    new-instance v53, Ljava/lang/StringBuilder;

    invoke-direct/range {v53 .. v53}, Ljava/lang/StringBuilder;-><init>()V

    const-string v54, "Thread ["

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/Thread;->getId()J

    move-result-wide v54

    invoke-virtual/range {v53 .. v55}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v53

    const-string v54, "] PUT request "

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/nuance/connect/service/comm/Command;->sendFileLocation:Ljava/lang/String;

    move-object/from16 v54, v0

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    invoke-interface/range {v52 .. v53}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 201
    new-instance v16, Ljava/io/File;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/nuance/connect/service/comm/Command;->sendFileLocation:Ljava/lang/String;

    move-object/from16 v52, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v52

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 202
    .local v16, "f":Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v52

    if-nez v52, :cond_a

    .line 205
    new-instance v52, Ljava/io/IOException;

    const-string v53, "File does not exists!"

    invoke-direct/range {v52 .. v53}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v52
    :try_end_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/net/ProtocolException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7

    .line 277
    .end local v15    # "expiringServerConn":Ljava/net/HttpURLConnection;
    .end local v16    # "f":Ljava/io/File;
    .end local v43    # "sendLength":J
    :catch_0
    move-exception v14

    .line 278
    .local v14, "ex":Ljavax/net/ssl/SSLException;
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    move-object/from16 v52, v0

    new-instance v53, Ljava/lang/StringBuilder;

    invoke-direct/range {v53 .. v53}, Ljava/lang/StringBuilder;-><init>()V

    const-string v54, "Thread ["

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/Thread;->getId()J

    move-result-wide v54

    invoke-virtual/range {v53 .. v55}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v53

    const-string v54, "] processCommand() - send - SSLException "

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual {v14}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v54

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    invoke-interface/range {v52 .. v53}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 280
    const/4 v9, 0x1

    .line 281
    const/16 v23, 0x1

    .line 282
    const/16 v46, 0x4

    .line 283
    invoke-virtual {v14}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v47

    .line 325
    .end local v14    # "ex":Ljavax/net/ssl/SSLException;
    :goto_1
    invoke-virtual/range {p3 .. p3}, Lcom/nuance/connect/service/comm/CommandQueue$NetworkExpirer;->tick()V

    .line 327
    if-nez v9, :cond_4

    .line 329
    :try_start_3
    invoke-virtual/range {v45 .. v45}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v40

    .line 330
    .local v40, "responseCode":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    move-object/from16 v52, v0

    new-instance v53, Ljava/lang/StringBuilder;

    invoke-direct/range {v53 .. v53}, Ljava/lang/StringBuilder;-><init>()V

    const-string v54, "Thread ["

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/Thread;->getId()J

    move-result-wide v54

    invoke-virtual/range {v53 .. v55}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v53

    const-string v54, "] serverConn.getResponseCode("

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    move-object/from16 v0, v53

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v53

    const-string v54, ") command: "

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    move-object/from16 v0, v53

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    invoke-interface/range {v52 .. v53}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 332
    sparse-switch v40, :sswitch_data_0

    .line 353
    const/4 v9, 0x1

    .line 354
    const/16 v46, 0x2

    .line 355
    invoke-static/range {v40 .. v40}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_3
    .catch Ljavax/net/ssl/SSLException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_b

    move-result-object v47

    .line 383
    .end local v40    # "responseCode":I
    :cond_4
    :goto_2
    :sswitch_0
    if-nez v9, :cond_8

    .line 384
    const/16 v24, 0x0

    .line 385
    .local v24, "is":Ljava/io/InputStream;
    const/16 v37, 0x0

    .line 386
    .local v37, "reader":Ljava/io/BufferedReader;
    const/16 v29, 0x0

    .line 389
    .local v29, "os":Ljava/io/BufferedOutputStream;
    :try_start_4
    invoke-virtual/range {v45 .. v45}, Ljava/net/URLConnection;->getContentLength()I

    move-result v27

    .line 390
    .local v27, "len":I
    const-string v52, "Content-Range"

    move-object/from16 v0, v45

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 391
    .local v32, "range":Ljava/lang/String;
    const/high16 v35, -0x80000000

    .line 393
    .local v35, "rangeTotal":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/comm/HttpConnector;->analyticsScribe:Lcom/nuance/connect/service/comm/AnalyticsDataUsageScribe;

    move-object/from16 v52, v0

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v53, v0

    move-object/from16 v0, v52

    move-object/from16 v1, p1

    move-wide/from16 v2, v53

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/connect/service/comm/AnalyticsDataUsageScribe;->writeResponse(Lcom/nuance/connect/service/comm/Command;J)V

    .line 395
    if-eqz v27, :cond_12

    invoke-virtual/range {v45 .. v45}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object v52

    const-string v53, "json"

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v52

    if-eqz v52, :cond_12

    .line 396
    invoke-virtual/range {v45 .. v45}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v24

    .line 397
    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    .line 398
    .local v42, "sb":Ljava/lang/StringBuilder;
    new-instance v38, Ljava/io/BufferedReader;

    new-instance v52, Ljava/io/InputStreamReader;

    const-string v53, "UTF-8"

    move-object/from16 v0, v52

    move-object/from16 v1, v24

    move-object/from16 v2, v53

    invoke-direct {v0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/16 v53, 0x400

    move-object/from16 v0, v38

    move-object/from16 v1, v52

    move/from16 v2, v53

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 399
    .end local v37    # "reader":Ljava/io/BufferedReader;
    .local v38, "reader":Ljava/io/BufferedReader;
    :try_start_5
    invoke-virtual/range {v38 .. v38}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v52

    move-object/from16 v0, v42

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    invoke-virtual/range {v24 .. v24}, Ljava/io/InputStream;->close()V

    .line 401
    invoke-virtual/range {v38 .. v38}, Ljava/io/BufferedReader;->close()V

    .line 403
    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    .line 404
    .local v48, "temp":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    move-object/from16 v52, v0

    new-instance v53, Ljava/lang/StringBuilder;

    invoke-direct/range {v53 .. v53}, Ljava/lang/StringBuilder;-><init>()V

    const-string v54, "Thread ["

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/Thread;->getId()J

    move-result-wide v54

    invoke-virtual/range {v53 .. v55}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v53

    const-string v54, "] "

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    move-object/from16 v0, v53

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    const-string v54, " JSON response: "

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    invoke-interface/range {v52 .. v53}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 405
    new-instance v41, Lorg/json/JSONObject;

    move-object/from16 v0, v41

    move-object/from16 v1, v48

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 406
    .local v41, "result":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v41

    invoke-direct {v0, v1, v2}, Lcom/nuance/connect/service/comm/HttpConnector;->processResult(Lcom/nuance/connect/service/comm/Command;Lorg/json/JSONObject;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    move-result v31

    move-object/from16 v37, v38

    .line 482
    .end local v38    # "reader":Ljava/io/BufferedReader;
    .end local v41    # "result":Lorg/json/JSONObject;
    .end local v42    # "sb":Ljava/lang/StringBuilder;
    .end local v48    # "temp":Ljava/lang/String;
    .restart local v37    # "reader":Ljava/io/BufferedReader;
    :cond_5
    :goto_3
    if-eqz v29, :cond_6

    .line 483
    :try_start_6
    invoke-virtual/range {v29 .. v29}, Ljava/io/BufferedOutputStream;->close()V

    .line 485
    :cond_6
    if-eqz v24, :cond_7

    .line 486
    invoke-virtual/range {v24 .. v24}, Ljava/io/InputStream;->close()V

    .line 488
    :cond_7
    if-eqz v37, :cond_8

    .line 489
    invoke-virtual/range {v37 .. v37}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_c
    .catch Ljavax/net/ssl/SSLException; {:try_start_6 .. :try_end_6} :catch_10
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_11
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_12

    .line 519
    .end local v24    # "is":Ljava/io/InputStream;
    .end local v27    # "len":I
    .end local v29    # "os":Ljava/io/BufferedOutputStream;
    .end local v32    # "range":Ljava/lang/String;
    .end local v35    # "rangeTotal":I
    .end local v37    # "reader":Ljava/io/BufferedReader;
    :cond_8
    :goto_4
    invoke-virtual/range {p3 .. p3}, Lcom/nuance/connect/service/comm/CommandQueue$NetworkExpirer;->complete()V

    .line 520
    if-eqz v45, :cond_9

    .line 521
    invoke-virtual/range {v45 .. v45}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 524
    :cond_9
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/nuance/connect/service/comm/Command;->canceled:Z

    move/from16 v52, v0

    if-eqz v52, :cond_26

    .line 525
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/comm/HttpConnector;->connectorCallback:Lcom/nuance/connect/service/comm/ConnectorCallback;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/nuance/connect/service/comm/ConnectorCallback;->onCancel(Lcom/nuance/connect/service/comm/Command;)V

    .line 536
    :goto_5
    return v31

    .line 208
    .restart local v15    # "expiringServerConn":Ljava/net/HttpURLConnection;
    .restart local v16    # "f":Ljava/io/File;
    .restart local v43    # "sendLength":J
    :cond_a
    const/16 v52, 0x1

    :try_start_7
    move-object/from16 v0, v45

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 209
    invoke-direct/range {p0 .. p1}, Lcom/nuance/connect/service/comm/HttpConnector;->generateBody(Lcom/nuance/connect/service/comm/Command;)Lorg/json/JSONObject;

    move-result-object v26

    .line 210
    .local v26, "json":Lorg/json/JSONObject;
    const-string v52, "Content-Type"

    const-string v53, "application/octet-stream"

    move-object/from16 v0, v45

    move-object/from16 v1, v52

    move-object/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const-string v52, "X-Swype-Connect"

    invoke-virtual/range {v26 .. v26}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, v45

    move-object/from16 v1, v52

    move-object/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->length()J

    move-result-wide v52

    move-wide/from16 v0, v52

    long-to-int v0, v0

    move/from16 v52, v0

    move-object/from16 v0, v45

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 213
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->length()J
    :try_end_7
    .catch Ljavax/net/ssl/SSLException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/net/ProtocolException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/net/URISyntaxException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/net/MalformedURLException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    move-result-wide v43

    .line 214
    const/16 v29, 0x0

    .line 215
    .local v29, "os":Ljava/io/OutputStream;
    const/4 v5, 0x0

    .line 216
    .local v5, "bis":Ljava/io/BufferedInputStream;
    const/16 v18, 0x0

    .line 218
    .local v18, "fis":Ljava/io/FileInputStream;
    :try_start_8
    invoke-virtual/range {v45 .. v45}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v29

    .line 219
    new-instance v19, Ljava/io/FileInputStream;

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 220
    .end local v18    # "fis":Ljava/io/FileInputStream;
    .local v19, "fis":Ljava/io/FileInputStream;
    :try_start_9
    new-instance v6, Ljava/io/BufferedInputStream;

    const/16 v52, 0x1000

    move-object/from16 v0, v19

    move/from16 v1, v52

    invoke-direct {v6, v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    .line 221
    .end local v5    # "bis":Ljava/io/BufferedInputStream;
    .local v6, "bis":Ljava/io/BufferedInputStream;
    :try_start_a
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->read()I

    move-result v36

    .line 222
    .local v36, "readByte":I
    :goto_6
    if-ltz v36, :cond_b

    .line 223
    move-object/from16 v0, v29

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 224
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->read()I

    move-result v36

    goto :goto_6

    .line 226
    :cond_b
    invoke-virtual/range {v29 .. v29}, Ljava/io/OutputStream;->flush()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    .line 228
    :try_start_b
    invoke-virtual/range {v29 .. v29}, Ljava/io/OutputStream;->close()V

    .line 229
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileInputStream;->close()V

    .line 230
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    move-object/from16 v52, v0

    new-instance v53, Ljava/lang/StringBuilder;

    invoke-direct/range {v53 .. v53}, Ljava/lang/StringBuilder;-><init>()V

    const-string v54, "Thread ["

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/Thread;->getId()J

    move-result-wide v54

    invoke-virtual/range {v53 .. v55}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v53

    const-string v54, "] sendingFile() --- "

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    invoke-interface/range {v52 .. v53}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 275
    .end local v6    # "bis":Ljava/io/BufferedInputStream;
    .end local v16    # "f":Ljava/io/File;
    .end local v19    # "fis":Ljava/io/FileInputStream;
    .end local v26    # "json":Lorg/json/JSONObject;
    .end local v29    # "os":Ljava/io/OutputStream;
    .end local v36    # "readByte":I
    :cond_c
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/comm/HttpConnector;->analyticsScribe:Lcom/nuance/connect/service/comm/AnalyticsDataUsageScribe;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    move-object/from16 v1, p1

    move-wide/from16 v2, v43

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/connect/service/comm/AnalyticsDataUsageScribe;->writeRequest(Lcom/nuance/connect/service/comm/Command;J)V

    .line 276
    invoke-virtual/range {v45 .. v45}, Ljava/net/URLConnection;->connect()V
    :try_end_b
    .catch Ljavax/net/ssl/SSLException; {:try_start_b .. :try_end_b} :catch_0
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/net/ProtocolException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/net/URISyntaxException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/net/MalformedURLException; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_b} :catch_6
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    goto/16 :goto_1

    .line 284
    .end local v15    # "expiringServerConn":Ljava/net/HttpURLConnection;
    .end local v43    # "sendLength":J
    :catch_1
    move-exception v14

    .line 285
    .local v14, "ex":Lorg/json/JSONException;
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    move-object/from16 v52, v0

    new-instance v53, Ljava/lang/StringBuilder;

    invoke-direct/range {v53 .. v53}, Ljava/lang/StringBuilder;-><init>()V

    const-string v54, "Thread ["

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/Thread;->getId()J

    move-result-wide v54

    invoke-virtual/range {v53 .. v55}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v53

    const-string v54, "] processCommand() - send - JSONException "

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual {v14}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v54

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    invoke-interface/range {v52 .. v53}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 287
    const/4 v9, 0x1

    .line 288
    const/16 v46, 0x5

    .line 289
    invoke-virtual {v14}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v47

    .line 324
    goto/16 :goto_1

    .line 228
    .end local v14    # "ex":Lorg/json/JSONException;
    .restart local v5    # "bis":Ljava/io/BufferedInputStream;
    .restart local v15    # "expiringServerConn":Ljava/net/HttpURLConnection;
    .restart local v16    # "f":Ljava/io/File;
    .restart local v18    # "fis":Ljava/io/FileInputStream;
    .restart local v26    # "json":Lorg/json/JSONObject;
    .restart local v29    # "os":Ljava/io/OutputStream;
    .restart local v43    # "sendLength":J
    :catchall_0
    move-exception v52

    :goto_9
    :try_start_c
    invoke-virtual/range {v29 .. v29}, Ljava/io/OutputStream;->close()V

    .line 229
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->close()V

    .line 230
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V

    throw v52
    :try_end_c
    .catch Ljavax/net/ssl/SSLException; {:try_start_c .. :try_end_c} :catch_0
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/net/ProtocolException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/net/URISyntaxException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/net/MalformedURLException; {:try_start_c .. :try_end_c} :catch_4
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_c} :catch_6
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7

    .line 290
    .end local v5    # "bis":Ljava/io/BufferedInputStream;
    .end local v15    # "expiringServerConn":Ljava/net/HttpURLConnection;
    .end local v16    # "f":Ljava/io/File;
    .end local v18    # "fis":Ljava/io/FileInputStream;
    .end local v26    # "json":Lorg/json/JSONObject;
    .end local v29    # "os":Ljava/io/OutputStream;
    .end local v43    # "sendLength":J
    :catch_2
    move-exception v14

    .line 291
    .local v14, "ex":Ljava/net/ProtocolException;
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    move-object/from16 v52, v0

    new-instance v53, Ljava/lang/StringBuilder;

    invoke-direct/range {v53 .. v53}, Ljava/lang/StringBuilder;-><init>()V

    const-string v54, "Thread ["

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/Thread;->getId()J

    move-result-wide v54

    invoke-virtual/range {v53 .. v55}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v53

    const-string v54, "] processCommand() - send - ProtocolException "

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual {v14}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v54

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    invoke-interface/range {v52 .. v53}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 293
    const/4 v9, 0x1

    .line 294
    const/16 v46, 0x6

    .line 295
    invoke-virtual {v14}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v47

    .line 324
    goto/16 :goto_1

    .line 234
    .end local v14    # "ex":Ljava/net/ProtocolException;
    .restart local v15    # "expiringServerConn":Ljava/net/HttpURLConnection;
    .restart local v43    # "sendLength":J
    :cond_d
    :try_start_d
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/nuance/connect/service/comm/Command;->hasBody:Z

    move/from16 v52, v0

    if-eqz v52, :cond_c

    .line 236
    const/16 v52, 0x1

    move-object/from16 v0, v45

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 238
    invoke-direct/range {p0 .. p1}, Lcom/nuance/connect/service/comm/HttpConnector;->generateBody(Lcom/nuance/connect/service/comm/Command;)Lorg/json/JSONObject;

    move-result-object v26

    .line 239
    .restart local v26    # "json":Lorg/json/JSONObject;
    invoke-virtual/range {v26 .. v26}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    .line 240
    .local v7, "body":Ljava/lang/String;
    const-string v52, "UTF-8"

    move-object/from16 v0, v52

    invoke-virtual {v7, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v13

    .line 241
    .local v13, "encodedBody":[B
    const-string v52, "Content-Type"

    const-string v53, "text/json"

    move-object/from16 v0, v45

    move-object/from16 v1, v52

    move-object/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    array-length v0, v13

    move/from16 v52, v0

    move/from16 v0, v52

    int-to-long v0, v0

    move-wide/from16 v43, v0

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    move-object/from16 v53, v0

    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    const-string v54, "Thread ["

    move-object/from16 v0, v52

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/Thread;->getId()J

    move-result-wide v54

    move-object/from16 v0, v52

    move-wide/from16 v1, v54

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v52

    const-string v54, "] Size of content: "

    move-object/from16 v0, v52

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    array-length v0, v13

    move/from16 v54, v0

    move-object/from16 v0, v52

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v54

    const/16 v52, 0xc8

    array-length v0, v13

    move/from16 v55, v0

    move/from16 v0, v52

    move/from16 v1, v55

    if-ge v0, v1, :cond_f

    const-string v52, " compressing"

    :goto_b
    move-object/from16 v0, v54

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    move-object/from16 v0, v53

    move-object/from16 v1, v52

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 249
    const/16 v52, 0xc8

    array-length v0, v13

    move/from16 v53, v0

    move/from16 v0, v52

    move/from16 v1, v53

    if-ge v0, v1, :cond_11

    .line 251
    const-string v52, "Content-Encoding"

    const-string v53, "gzip"

    move-object/from16 v0, v45

    move-object/from16 v1, v52

    move-object/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    invoke-virtual/range {v45 .. v45}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;
    :try_end_d
    .catch Ljavax/net/ssl/SSLException; {:try_start_d .. :try_end_d} :catch_0
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/net/ProtocolException; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljava/net/URISyntaxException; {:try_start_d .. :try_end_d} :catch_3
    .catch Ljava/net/MalformedURLException; {:try_start_d .. :try_end_d} :catch_4
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_d} :catch_6
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7

    move-result-object v29

    .line 253
    .restart local v29    # "os":Ljava/io/OutputStream;
    const/16 v20, 0x0

    .line 256
    .local v20, "gos":Ljava/util/zip/GZIPOutputStream;
    :try_start_e
    new-instance v21, Ljava/util/zip/GZIPOutputStream;

    const/16 v52, 0x1000

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    move/from16 v2, v52

    invoke-direct {v0, v1, v2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 257
    .end local v20    # "gos":Ljava/util/zip/GZIPOutputStream;
    .local v21, "gos":Ljava/util/zip/GZIPOutputStream;
    :try_start_f
    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/io/OutputStream;->write([B)V

    .line 258
    invoke-virtual/range {v21 .. v21}, Ljava/util/zip/GZIPOutputStream;->finish()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    .line 260
    if-eqz v21, :cond_e

    .line 261
    :try_start_10
    invoke-virtual/range {v21 .. v21}, Ljava/util/zip/DeflaterOutputStream;->close()V

    .line 263
    :cond_e
    invoke-virtual/range {v29 .. v29}, Ljava/io/OutputStream;->close()V

    .line 272
    .end local v21    # "gos":Ljava/util/zip/GZIPOutputStream;
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    move-object/from16 v52, v0

    new-instance v53, Ljava/lang/StringBuilder;

    invoke-direct/range {v53 .. v53}, Ljava/lang/StringBuilder;-><init>()V

    const-string v54, "Thread ["

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/Thread;->getId()J

    move-result-wide v54

    invoke-virtual/range {v53 .. v55}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v53

    const-string v54, "] sendingBody() --- "

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    move-object/from16 v0, v53

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    const-string v54, " --- "

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    move-object/from16 v0, v53

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    invoke-interface/range {v52 .. v53}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V
    :try_end_10
    .catch Ljavax/net/ssl/SSLException; {:try_start_10 .. :try_end_10} :catch_0
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_10} :catch_1
    .catch Ljava/net/ProtocolException; {:try_start_10 .. :try_end_10} :catch_2
    .catch Ljava/net/URISyntaxException; {:try_start_10 .. :try_end_10} :catch_3
    .catch Ljava/net/MalformedURLException; {:try_start_10 .. :try_end_10} :catch_4
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_10 .. :try_end_10} :catch_6
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_7

    goto/16 :goto_7

    .line 296
    .end local v7    # "body":Ljava/lang/String;
    .end local v13    # "encodedBody":[B
    .end local v15    # "expiringServerConn":Ljava/net/HttpURLConnection;
    .end local v26    # "json":Lorg/json/JSONObject;
    .end local v29    # "os":Ljava/io/OutputStream;
    .end local v43    # "sendLength":J
    :catch_3
    move-exception v14

    .line 297
    .local v14, "ex":Ljava/net/URISyntaxException;
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    move-object/from16 v52, v0

    new-instance v53, Ljava/lang/StringBuilder;

    invoke-direct/range {v53 .. v53}, Ljava/lang/StringBuilder;-><init>()V

    const-string v54, "Thread ["

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/Thread;->getId()J

    move-result-wide v54

    invoke-virtual/range {v53 .. v55}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v53

    const-string v54, "] processCommand() - send - URISyntaxException "

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual {v14}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v54

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    invoke-interface/range {v52 .. v53}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 299
    const/4 v9, 0x1

    .line 300
    const/16 v46, 0x6

    .line 301
    invoke-virtual {v14}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v47

    .line 324
    goto/16 :goto_1

    .line 244
    .end local v14    # "ex":Ljava/net/URISyntaxException;
    .restart local v7    # "body":Ljava/lang/String;
    .restart local v13    # "encodedBody":[B
    .restart local v15    # "expiringServerConn":Ljava/net/HttpURLConnection;
    .restart local v26    # "json":Lorg/json/JSONObject;
    .restart local v43    # "sendLength":J
    :cond_f
    :try_start_11
    const-string v52, " not compressing"

    goto/16 :goto_b

    .line 260
    .restart local v20    # "gos":Ljava/util/zip/GZIPOutputStream;
    .restart local v29    # "os":Ljava/io/OutputStream;
    :catchall_1
    move-exception v52

    :goto_e
    if-eqz v20, :cond_10

    .line 261
    invoke-virtual/range {v20 .. v20}, Ljava/util/zip/DeflaterOutputStream;->close()V

    .line 263
    :cond_10
    invoke-virtual/range {v29 .. v29}, Ljava/io/OutputStream;->close()V

    throw v52
    :try_end_11
    .catch Ljavax/net/ssl/SSLException; {:try_start_11 .. :try_end_11} :catch_0
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_11} :catch_1
    .catch Ljava/net/ProtocolException; {:try_start_11 .. :try_end_11} :catch_2
    .catch Ljava/net/URISyntaxException; {:try_start_11 .. :try_end_11} :catch_3
    .catch Ljava/net/MalformedURLException; {:try_start_11 .. :try_end_11} :catch_4
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_11 .. :try_end_11} :catch_6
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_7

    .line 302
    .end local v7    # "body":Ljava/lang/String;
    .end local v13    # "encodedBody":[B
    .end local v15    # "expiringServerConn":Ljava/net/HttpURLConnection;
    .end local v20    # "gos":Ljava/util/zip/GZIPOutputStream;
    .end local v26    # "json":Lorg/json/JSONObject;
    .end local v29    # "os":Ljava/io/OutputStream;
    .end local v43    # "sendLength":J
    :catch_4
    move-exception v14

    .line 303
    .local v14, "ex":Ljava/net/MalformedURLException;
    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    move-object/from16 v52, v0

    new-instance v53, Ljava/lang/StringBuilder;

    invoke-direct/range {v53 .. v53}, Ljava/lang/StringBuilder;-><init>()V

    const-string v54, "Thread ["

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/Thread;->getId()J

    move-result-wide v54

    invoke-virtual/range {v53 .. v55}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v53

    const-string v54, "] processCommand() - send - MalformedURLException "

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual {v14}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v54

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    invoke-interface/range {v52 .. v53}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 305
    const/4 v9, 0x1

    .line 306
    const/16 v46, 0x6

    .line 307
    invoke-virtual {v14}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v47

    .line 324
    goto/16 :goto_1

    .line 267
    .end local v14    # "ex":Ljava/net/MalformedURLException;
    .restart local v7    # "body":Ljava/lang/String;
    .restart local v13    # "encodedBody":[B
    .restart local v15    # "expiringServerConn":Ljava/net/HttpURLConnection;
    .restart local v26    # "json":Lorg/json/JSONObject;
    .restart local v43    # "sendLength":J
    :cond_11
    :try_start_12
    invoke-virtual/range {v45 .. v45}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v29

    .line 268
    .restart local v29    # "os":Ljava/io/OutputStream;
    move-object/from16 v0, v29

    invoke-virtual {v0, v13}, Ljava/io/OutputStream;->write([B)V

    .line 269
    invoke-virtual/range {v29 .. v29}, Ljava/io/OutputStream;->close()V
    :try_end_12
    .catch Ljavax/net/ssl/SSLException; {:try_start_12 .. :try_end_12} :catch_0
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_12} :catch_1
    .catch Ljava/net/ProtocolException; {:try_start_12 .. :try_end_12} :catch_2
    .catch Ljava/net/URISyntaxException; {:try_start_12 .. :try_end_12} :catch_3
    .catch Ljava/net/MalformedURLException; {:try_start_12 .. :try_end_12} :catch_4
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_12 .. :try_end_12} :catch_6
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_7

    goto/16 :goto_c

    .line 308
    .end local v7    # "body":Ljava/lang/String;
    .end local v13    # "encodedBody":[B
    .end local v15    # "expiringServerConn":Ljava/net/HttpURLConnection;
    .end local v26    # "json":Lorg/json/JSONObject;
    .end local v29    # "os":Ljava/io/OutputStream;
    .end local v43    # "sendLength":J
    :catch_5
    move-exception v14

    .line 309
    .local v14, "ex":Ljava/io/IOException;
    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    move-object/from16 v52, v0

    new-instance v53, Ljava/lang/StringBuilder;

    invoke-direct/range {v53 .. v53}, Ljava/lang/StringBuilder;-><init>()V

    const-string v54, "Thread ["

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/Thread;->getId()J

    move-result-wide v54

    invoke-virtual/range {v53 .. v55}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v53

    const-string v54, "] processCommand() - send - IOException "

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual {v14}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v54

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    invoke-interface/range {v52 .. v53}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 310
    const/4 v9, 0x1

    .line 311
    const/16 v46, 0x2

    .line 312
    invoke-virtual {v14}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v47

    .line 324
    goto/16 :goto_1

    .line 313
    .end local v14    # "ex":Ljava/io/IOException;
    :catch_6
    move-exception v14

    .line 314
    .local v14, "ex":Ljava/lang/NullPointerException;
    :goto_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    move-object/from16 v52, v0

    new-instance v53, Ljava/lang/StringBuilder;

    invoke-direct/range {v53 .. v53}, Ljava/lang/StringBuilder;-><init>()V

    const-string v54, "Thread ["

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/Thread;->getId()J

    move-result-wide v54

    invoke-virtual/range {v53 .. v55}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v53

    const-string v54, "] processCommand() - send - NullPointerException "

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual {v14}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v54

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    invoke-interface/range {v52 .. v53}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 316
    const/4 v9, 0x1

    .line 317
    const/16 v46, 0x2

    .line 318
    invoke-virtual {v14}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v47

    .line 324
    goto/16 :goto_1

    .line 319
    .end local v14    # "ex":Ljava/lang/NullPointerException;
    :catch_7
    move-exception v14

    .line 320
    .local v14, "ex":Ljava/lang/Exception;
    :goto_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    move-object/from16 v52, v0

    new-instance v53, Ljava/lang/StringBuilder;

    invoke-direct/range {v53 .. v53}, Ljava/lang/StringBuilder;-><init>()V

    const-string v54, "Thread ["

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/Thread;->getId()J

    move-result-wide v54

    invoke-virtual/range {v53 .. v55}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v53

    const-string v54, "] processCommand() - send - Exception "

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual {v14}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v54

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    invoke-interface/range {v52 .. v53}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 321
    const/4 v9, 0x1

    .line 322
    const/16 v46, 0x2

    .line 323
    invoke-virtual {v14}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v47

    goto/16 :goto_1

    .line 335
    .end local v14    # "ex":Ljava/lang/Exception;
    .restart local v40    # "responseCode":I
    :sswitch_1
    const/16 v23, 0x1

    .line 336
    const/16 v46, 0x7

    .line 337
    :try_start_13
    invoke-static/range {v40 .. v40}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_13
    .catch Ljavax/net/ssl/SSLException; {:try_start_13 .. :try_end_13} :catch_8
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_9
    .catch Ljava/lang/NullPointerException; {:try_start_13 .. :try_end_13} :catch_a
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_b

    move-result-object v47

    .line 338
    goto/16 :goto_2

    .line 341
    :sswitch_2
    const-wide/16 v52, 0x0

    cmp-long v52, v33, v52

    if-gtz v52, :cond_4

    .line 342
    const/16 v23, 0x1

    .line 343
    const/16 v46, 0x8

    goto/16 :goto_2

    .line 358
    .end local v40    # "responseCode":I
    :catch_8
    move-exception v12

    .line 359
    .local v12, "e":Ljavax/net/ssl/SSLException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    move-object/from16 v52, v0

    new-instance v53, Ljava/lang/StringBuilder;

    invoke-direct/range {v53 .. v53}, Ljava/lang/StringBuilder;-><init>()V

    const-string v54, "Thread ["

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/Thread;->getId()J

    move-result-wide v54

    invoke-virtual/range {v53 .. v55}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v53

    const-string v54, "] SSLException trying to get response code "

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual {v12}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v54

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    invoke-interface/range {v52 .. v53}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 360
    const/4 v9, 0x1

    .line 361
    const/16 v23, 0x1

    .line 362
    const/16 v46, 0x4

    .line 363
    invoke-virtual {v12}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v47

    .line 380
    goto/16 :goto_2

    .line 364
    .end local v12    # "e":Ljavax/net/ssl/SSLException;
    :catch_9
    move-exception v12

    .line 365
    .local v12, "e":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    move-object/from16 v52, v0

    new-instance v53, Ljava/lang/StringBuilder;

    invoke-direct/range {v53 .. v53}, Ljava/lang/StringBuilder;-><init>()V

    const-string v54, "Thread ["

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/Thread;->getId()J

    move-result-wide v54

    invoke-virtual/range {v53 .. v55}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v53

    const-string v54, "] IOException trying to get response code "

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual {v12}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v54

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    invoke-interface/range {v52 .. v53}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 366
    const/4 v9, 0x1

    .line 367
    const/16 v23, 0x1

    .line 368
    const/16 v46, 0x2

    .line 369
    invoke-virtual {v12}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v47

    .line 380
    goto/16 :goto_2

    .line 370
    .end local v12    # "e":Ljava/io/IOException;
    :catch_a
    move-exception v12

    .line 371
    .local v12, "e":Ljava/lang/NullPointerException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    move-object/from16 v52, v0

    new-instance v53, Ljava/lang/StringBuilder;

    invoke-direct/range {v53 .. v53}, Ljava/lang/StringBuilder;-><init>()V

    const-string v54, "Thread ["

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/Thread;->getId()J

    move-result-wide v54

    invoke-virtual/range {v53 .. v55}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v53

    const-string v54, "] NPE trying to get response code "

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual {v12}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v54

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    invoke-interface/range {v52 .. v53}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 372
    const/4 v9, 0x1

    .line 373
    const/16 v46, 0x2

    .line 374
    invoke-virtual {v12}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v47

    .line 380
    goto/16 :goto_2

    .line 375
    .end local v12    # "e":Ljava/lang/NullPointerException;
    :catch_b
    move-exception v12

    .line 376
    .local v12, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    move-object/from16 v52, v0

    new-instance v53, Ljava/lang/StringBuilder;

    invoke-direct/range {v53 .. v53}, Ljava/lang/StringBuilder;-><init>()V

    const-string v54, "Thread ["

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/Thread;->getId()J

    move-result-wide v54

    invoke-virtual/range {v53 .. v55}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v53

    const-string v54, "] Exception trying to get response code "

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual {v12}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v54

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    invoke-interface/range {v52 .. v53}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 377
    const/4 v9, 0x1

    .line 378
    const/16 v46, 0x2

    .line 379
    invoke-virtual {v12}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v47

    goto/16 :goto_2

    .line 407
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v24    # "is":Ljava/io/InputStream;
    .restart local v27    # "len":I
    .local v29, "os":Ljava/io/BufferedOutputStream;
    .restart local v32    # "range":Ljava/lang/String;
    .restart local v35    # "rangeTotal":I
    .restart local v37    # "reader":Ljava/io/BufferedReader;
    :cond_12
    if-gtz v27, :cond_13

    const/16 v52, -0x1

    move/from16 v0, v27

    move/from16 v1, v52

    if-ne v0, v1, :cond_23

    :cond_13
    :try_start_14
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/nuance/connect/service/comm/HttpConnector;->hasSufficientSpace(I)Z

    move-result v52

    if-eqz v52, :cond_23

    .line 408
    const-wide/16 v52, 0x0

    cmp-long v52, v33, v52

    if-lez v52, :cond_14

    if-eqz v32, :cond_14

    const-string v52, "/"

    move-object/from16 v0, v32

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    move-result v52

    if-eqz v52, :cond_14

    .line 410
    :try_start_15
    const-string v52, "/"

    move-object/from16 v0, v32

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v52

    add-int/lit8 v52, v52, 0x1

    move-object/from16 v0, v32

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v52

    invoke-static/range {v52 .. v52}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_15
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_15} :catch_d
    .catch Ljava/lang/NullPointerException; {:try_start_15 .. :try_end_15} :catch_e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_15 .. :try_end_15} :catch_f
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    move-result v35

    .line 419
    :cond_14
    :goto_13
    const-wide/16 v52, 0x0

    cmp-long v52, v33, v52

    if-lez v52, :cond_19

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v52, v0

    cmp-long v52, v33, v52

    if-eqz v52, :cond_15

    move/from16 v0, v35

    int-to-long v0, v0

    move-wide/from16 v52, v0

    cmp-long v52, v33, v52

    if-nez v52, :cond_19

    .line 420
    :cond_15
    :try_start_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    move-object/from16 v52, v0

    const-string v53, "Download already complete!"

    invoke-interface/range {v52 .. v53}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 472
    :goto_14
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v10}, Lcom/nuance/connect/service/comm/HttpConnector;->processFileResult(Lcom/nuance/connect/service/comm/Command;Ljava/io/File;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    goto/16 :goto_3

    .line 482
    .end local v27    # "len":I
    .end local v32    # "range":Ljava/lang/String;
    .end local v35    # "rangeTotal":I
    :catchall_2
    move-exception v52

    :goto_15
    if-eqz v29, :cond_16

    .line 483
    :try_start_17
    invoke-virtual/range {v29 .. v29}, Ljava/io/BufferedOutputStream;->close()V

    .line 485
    :cond_16
    if-eqz v24, :cond_17

    .line 486
    invoke-virtual/range {v24 .. v24}, Ljava/io/InputStream;->close()V

    .line 488
    :cond_17
    if-eqz v37, :cond_18

    .line 489
    invoke-virtual/range {v37 .. v37}, Ljava/io/BufferedReader;->close()V

    :cond_18
    throw v52
    :try_end_17
    .catch Lorg/json/JSONException; {:try_start_17 .. :try_end_17} :catch_c
    .catch Ljavax/net/ssl/SSLException; {:try_start_17 .. :try_end_17} :catch_10
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_11
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_12

    .line 492
    :catch_c
    move-exception v14

    .line 493
    .local v14, "ex":Lorg/json/JSONException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    move-object/from16 v52, v0

    new-instance v53, Ljava/lang/StringBuilder;

    invoke-direct/range {v53 .. v53}, Ljava/lang/StringBuilder;-><init>()V

    const-string v54, "Thread ["

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/Thread;->getId()J

    move-result-wide v54

    invoke-virtual/range {v53 .. v55}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v53

    const-string v54, "] processCommand() - receive - JSONException "

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual {v14}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v54

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    invoke-interface/range {v52 .. v53}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 495
    const/4 v9, 0x1

    .line 496
    const/16 v46, 0x5

    .line 497
    invoke-virtual {v14}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v47

    .line 516
    goto/16 :goto_4

    .line 411
    .end local v14    # "ex":Lorg/json/JSONException;
    .restart local v27    # "len":I
    .restart local v32    # "range":Ljava/lang/String;
    .restart local v35    # "rangeTotal":I
    :catch_d
    move-exception v14

    .line 412
    .local v14, "ex":Ljava/lang/NumberFormatException;
    :try_start_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    move-object/from16 v52, v0

    const-string v53, "Invalid range to get total from. NFE"

    invoke-interface/range {v52 .. v53}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto/16 :goto_13

    .line 413
    .end local v14    # "ex":Ljava/lang/NumberFormatException;
    :catch_e
    move-exception v14

    .line 414
    .local v14, "ex":Ljava/lang/NullPointerException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    move-object/from16 v52, v0

    const-string v53, "Invalid range to get total from. NPE"

    invoke-interface/range {v52 .. v53}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto/16 :goto_13

    .line 415
    .end local v14    # "ex":Ljava/lang/NullPointerException;
    :catch_f
    move-exception v14

    .line 416
    .local v14, "ex":Ljava/lang/IndexOutOfBoundsException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    move-object/from16 v52, v0

    const-string v53, "Invalid substring?"

    invoke-interface/range {v52 .. v53}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto/16 :goto_13

    .line 423
    .end local v14    # "ex":Ljava/lang/IndexOutOfBoundsException;
    :cond_19
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/nuance/connect/service/comm/Command;->notifyDownloadStatus:Z

    move/from16 v39, v0

    .line 424
    .local v39, "reportDownload":Z
    move-wide/from16 v0, v33

    long-to-int v0, v0

    move/from16 v51, v0

    .line 425
    .local v51, "totalRead":I
    const/16 v49, 0x0

    .line 426
    .local v49, "totalBuffered":I
    move-wide/from16 v0, v33

    long-to-int v0, v0

    move/from16 v52, v0

    add-int v50, v27, v52

    .line 427
    .local v50, "totalFileLength":I
    div-int/lit8 v22, v50, 0x64

    .line 429
    .local v22, "interval":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    move-object/from16 v52, v0

    new-instance v53, Ljava/lang/StringBuilder;

    invoke-direct/range {v53 .. v53}, Ljava/lang/StringBuilder;-><init>()V

    const-string v54, "Thread ["

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/Thread;->getId()J

    move-result-wide v54

    invoke-virtual/range {v53 .. v55}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v53

    const-string v54, "] Downloading file now. total size is: ["

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    move-object/from16 v0, v53

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v53

    const-string v54, "]["

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    move-object/from16 v0, v53

    move-wide/from16 v1, v33

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v53

    const-string v54, "] "

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    move-object/from16 v0, v53

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    invoke-interface/range {v52 .. v53}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 432
    if-nez v10, :cond_1a

    .line 433
    new-instance v11, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/comm/HttpConnector;->client:Lcom/nuance/connect/service/ConnectClient;

    move-object/from16 v52, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v52

    invoke-interface {v0, v1}, Lcom/nuance/connect/service/comm/Transaction;->createDownloadFile(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v52

    move-object/from16 v0, v52

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .end local v10    # "downloadFile":Ljava/io/File;
    .restart local v11    # "downloadFile":Ljava/io/File;
    move-object v10, v11

    .line 435
    .end local v11    # "downloadFile":Ljava/io/File;
    .restart local v10    # "downloadFile":Ljava/io/File;
    :cond_1a
    new-instance v25, Ljava/io/BufferedInputStream;

    invoke-virtual/range {v45 .. v45}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v52

    move-object/from16 v0, v25

    move-object/from16 v1, v52

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_2

    .line 436
    .end local v24    # "is":Ljava/io/InputStream;
    .local v25, "is":Ljava/io/InputStream;
    :try_start_19
    new-instance v30, Ljava/io/BufferedOutputStream;

    new-instance v52, Ljava/io/FileOutputStream;

    const/16 v53, 0x1

    move-object/from16 v0, v52

    move/from16 v1, v53

    invoke-direct {v0, v10, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    move-object/from16 v0, v30

    move-object/from16 v1, v52

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_5

    .line 437
    .end local v29    # "os":Ljava/io/BufferedOutputStream;
    .local v30, "os":Ljava/io/BufferedOutputStream;
    const/16 v17, 0x0

    .line 438
    .local v17, "finished":Z
    :cond_1b
    if-nez v17, :cond_22

    .line 439
    :try_start_1a
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/nuance/connect/service/comm/Command;->canceled:Z

    move/from16 v52, v0

    if-eqz v52, :cond_1c

    .line 440
    new-instance v52, Ljava/io/IOException;

    const-string v53, "download canceled"

    invoke-direct/range {v52 .. v53}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v52

    .line 482
    :catchall_3
    move-exception v52

    move-object/from16 v29, v30

    .end local v30    # "os":Ljava/io/BufferedOutputStream;
    .restart local v29    # "os":Ljava/io/BufferedOutputStream;
    move-object/from16 v24, v25

    .end local v25    # "is":Ljava/io/InputStream;
    .restart local v24    # "is":Ljava/io/InputStream;
    goto/16 :goto_15

    .line 442
    .end local v24    # "is":Ljava/io/InputStream;
    .end local v29    # "os":Ljava/io/BufferedOutputStream;
    .restart local v25    # "is":Ljava/io/InputStream;
    .restart local v30    # "os":Ljava/io/BufferedOutputStream;
    :cond_1c
    invoke-virtual/range {v25 .. v25}, Ljava/io/BufferedInputStream;->read()I

    move-result v28

    .line 443
    .local v28, "oneByte":I
    const/16 v52, -0x1

    move/from16 v0, v28

    move/from16 v1, v52

    if-eq v0, v1, :cond_1d

    .line 444
    move-object/from16 v0, v30

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 445
    add-int/lit8 v51, v51, 0x1

    .line 446
    add-int/lit8 v49, v49, 0x1

    .line 450
    :goto_16
    invoke-virtual/range {p3 .. p3}, Lcom/nuance/connect/service/comm/CommandQueue$NetworkExpirer;->isExpired()Z

    move-result v52

    if-eqz v52, :cond_1e

    .line 451
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    move-object/from16 v52, v0

    const-string v53, "network timed out"

    invoke-interface/range {v52 .. v53}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 452
    new-instance v52, Ljava/io/IOException;

    const-string v53, "timeout occurred"

    invoke-direct/range {v52 .. v53}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v52

    .line 448
    :cond_1d
    const/16 v17, 0x1

    goto :goto_16

    .line 455
    :cond_1e
    if-eqz v39, :cond_20

    move/from16 v0, v49

    move/from16 v1, v22

    if-ge v0, v1, :cond_1f

    const/16 v52, 0x1

    move/from16 v0, v17

    move/from16 v1, v52

    if-ne v0, v1, :cond_20

    .line 456
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/comm/HttpConnector;->connectorCallback:Lcom/nuance/connect/service/comm/ConnectorCallback;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    move-object/from16 v1, p1

    move/from16 v2, v51

    move/from16 v3, v50

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/connect/service/comm/ConnectorCallback;->onDownloadStatus(Lcom/nuance/connect/service/comm/Command;II)V

    .line 457
    const/16 v49, 0x0

    .line 459
    :cond_20
    invoke-virtual/range {p3 .. p3}, Lcom/nuance/connect/service/comm/CommandQueue$NetworkExpirer;->getInterval()I

    move-result v52

    rem-int v52, v51, v52

    if-nez v52, :cond_21

    .line 460
    invoke-virtual/range {v30 .. v30}, Ljava/io/BufferedOutputStream;->flush()V

    .line 461
    invoke-virtual/range {p3 .. p3}, Lcom/nuance/connect/service/comm/CommandQueue$NetworkExpirer;->tick()V

    .line 465
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/comm/HttpConnector;->connectionStatus:Lcom/nuance/connect/service/comm/CommandQueue$ConnectionStatus;

    move-object/from16 v52, v0

    invoke-interface/range {v52 .. v52}, Lcom/nuance/connect/service/comm/CommandQueue$ConnectionStatus;->isConnected()Z

    move-result v52

    if-nez v52, :cond_1b

    .line 466
    new-instance v52, Ljava/io/IOException;

    const-string v53, "Connection lost"

    invoke-direct/range {v52 .. v53}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v52

    .line 469
    .end local v28    # "oneByte":I
    :cond_22
    invoke-virtual/range {v30 .. v30}, Ljava/io/BufferedOutputStream;->close()V

    .line 470
    invoke-virtual/range {v25 .. v25}, Ljava/io/BufferedInputStream;->close()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_3

    move-object/from16 v29, v30

    .end local v30    # "os":Ljava/io/BufferedOutputStream;
    .restart local v29    # "os":Ljava/io/BufferedOutputStream;
    move-object/from16 v24, v25

    .end local v25    # "is":Ljava/io/InputStream;
    .restart local v24    # "is":Ljava/io/InputStream;
    goto/16 :goto_14

    .line 473
    .end local v17    # "finished":Z
    .end local v22    # "interval":I
    .end local v39    # "reportDownload":Z
    .end local v49    # "totalBuffered":I
    .end local v50    # "totalFileLength":I
    .end local v51    # "totalRead":I
    :cond_23
    if-gtz v27, :cond_24

    const/16 v52, -0x1

    move/from16 v0, v27

    move/from16 v1, v52

    if-ne v0, v1, :cond_25

    :cond_24
    :try_start_1b
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/nuance/connect/service/comm/HttpConnector;->hasSufficientSpace(I)Z

    move-result v52

    if-nez v52, :cond_25

    .line 475
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/nuance/connect/service/comm/Command;->notifyDownloadStatus:Z

    move/from16 v52, v0

    if-eqz v52, :cond_5

    .line 476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/comm/HttpConnector;->connectorCallback:Lcom/nuance/connect/service/comm/ConnectorCallback;

    move-object/from16 v52, v0

    const/16 v53, -0x1

    move-object/from16 v0, v52

    move-object/from16 v1, p1

    move/from16 v2, v53

    move/from16 v3, v27

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/connect/service/comm/ConnectorCallback;->onDownloadStatus(Lcom/nuance/connect/service/comm/Command;II)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_2

    goto/16 :goto_3

    .line 479
    :cond_25
    const/4 v9, 0x1

    goto/16 :goto_3

    .line 498
    .end local v27    # "len":I
    .end local v32    # "range":Ljava/lang/String;
    .end local v35    # "rangeTotal":I
    :catch_10
    move-exception v12

    .line 499
    .local v12, "e":Ljavax/net/ssl/SSLException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    move-object/from16 v52, v0

    new-instance v53, Ljava/lang/StringBuilder;

    invoke-direct/range {v53 .. v53}, Ljava/lang/StringBuilder;-><init>()V

    const-string v54, "Thread ["

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/Thread;->getId()J

    move-result-wide v54

    invoke-virtual/range {v53 .. v55}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v53

    const-string v54, "] processCommand() - recieve - SSLException "

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual {v12}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v54

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    invoke-interface/range {v52 .. v53}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 501
    const/4 v9, 0x1

    .line 502
    const/16 v23, 0x1

    .line 503
    const/16 v46, 0x4

    .line 504
    invoke-virtual {v12}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v47

    .line 516
    goto/16 :goto_4

    .line 505
    .end local v12    # "e":Ljavax/net/ssl/SSLException;
    :catch_11
    move-exception v14

    .line 506
    .local v14, "ex":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    move-object/from16 v52, v0

    new-instance v53, Ljava/lang/StringBuilder;

    invoke-direct/range {v53 .. v53}, Ljava/lang/StringBuilder;-><init>()V

    const-string v54, "Thread ["

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/Thread;->getId()J

    move-result-wide v54

    invoke-virtual/range {v53 .. v55}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v53

    const-string v54, "] processCommand() - receive - IOException "

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual {v14}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v54

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    invoke-interface/range {v52 .. v53}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 508
    const/4 v9, 0x1

    .line 509
    const/16 v23, 0x1

    .line 510
    const/16 v46, 0x2

    .line 516
    goto/16 :goto_4

    .line 511
    .end local v14    # "ex":Ljava/io/IOException;
    :catch_12
    move-exception v14

    .line 512
    .local v14, "ex":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    move-object/from16 v52, v0

    new-instance v53, Ljava/lang/StringBuilder;

    invoke-direct/range {v53 .. v53}, Ljava/lang/StringBuilder;-><init>()V

    const-string v54, "Thread ["

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/Thread;->getId()J

    move-result-wide v54

    invoke-virtual/range {v53 .. v55}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v53

    const-string v54, "] processCommand() - receive - Exception "

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual {v14}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v54

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    invoke-interface/range {v52 .. v53}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 513
    const/4 v9, 0x1

    .line 514
    const/16 v46, 0x2

    .line 515
    invoke-virtual {v14}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v47

    goto/16 :goto_4

    .line 527
    .end local v14    # "ex":Ljava/lang/Exception;
    .end local v24    # "is":Ljava/io/InputStream;
    .end local v29    # "os":Ljava/io/BufferedOutputStream;
    .end local v37    # "reader":Ljava/io/BufferedReader;
    :cond_26
    if-nez v9, :cond_27

    .line 528
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/comm/HttpConnector;->connectorCallback:Lcom/nuance/connect/service/comm/ConnectorCallback;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/nuance/connect/service/comm/ConnectorCallback;->onSuccess(Lcom/nuance/connect/service/comm/Command;)V

    goto/16 :goto_5

    .line 529
    :cond_27
    invoke-virtual/range {p3 .. p3}, Lcom/nuance/connect/service/comm/CommandQueue$NetworkExpirer;->isExpired()Z

    move-result v52

    if-nez v52, :cond_28

    if-eqz v23, :cond_29

    :cond_28
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/nuance/connect/service/comm/Command;->handleIOException:Z

    move/from16 v52, v0

    if-nez v52, :cond_29

    .line 530
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/comm/HttpConnector;->connectorCallback:Lcom/nuance/connect/service/comm/ConnectorCallback;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    move-object/from16 v1, p1

    move/from16 v2, v46

    move-object/from16 v3, v47

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/connect/service/comm/ConnectorCallback;->onIOException(Lcom/nuance/connect/service/comm/Command;ILjava/lang/String;)V

    goto/16 :goto_5

    .line 532
    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/comm/HttpConnector;->connectorCallback:Lcom/nuance/connect/service/comm/ConnectorCallback;

    move-object/from16 v52, v0

    const/16 v53, -0x1

    move-object/from16 v0, v52

    move-object/from16 v1, p1

    move/from16 v2, v53

    move/from16 v3, v46

    move-object/from16 v4, v47

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/nuance/connect/service/comm/ConnectorCallback;->onRetry(Lcom/nuance/connect/service/comm/Command;IILjava/lang/String;)V

    .line 533
    const/16 v31, 0x0

    goto/16 :goto_5

    .line 482
    .restart local v24    # "is":Ljava/io/InputStream;
    .restart local v27    # "len":I
    .restart local v29    # "os":Ljava/io/BufferedOutputStream;
    .restart local v32    # "range":Ljava/lang/String;
    .restart local v35    # "rangeTotal":I
    .restart local v38    # "reader":Ljava/io/BufferedReader;
    .restart local v42    # "sb":Ljava/lang/StringBuilder;
    :catchall_4
    move-exception v52

    move-object/from16 v37, v38

    .end local v38    # "reader":Ljava/io/BufferedReader;
    .restart local v37    # "reader":Ljava/io/BufferedReader;
    goto/16 :goto_15

    .end local v24    # "is":Ljava/io/InputStream;
    .end local v42    # "sb":Ljava/lang/StringBuilder;
    .restart local v22    # "interval":I
    .restart local v25    # "is":Ljava/io/InputStream;
    .restart local v39    # "reportDownload":Z
    .restart local v49    # "totalBuffered":I
    .restart local v50    # "totalFileLength":I
    .restart local v51    # "totalRead":I
    :catchall_5
    move-exception v52

    move-object/from16 v24, v25

    .end local v25    # "is":Ljava/io/InputStream;
    .restart local v24    # "is":Ljava/io/InputStream;
    goto/16 :goto_15

    .line 319
    .end local v10    # "downloadFile":Ljava/io/File;
    .end local v22    # "interval":I
    .end local v24    # "is":Ljava/io/InputStream;
    .end local v27    # "len":I
    .end local v29    # "os":Ljava/io/BufferedOutputStream;
    .end local v32    # "range":Ljava/lang/String;
    .end local v35    # "rangeTotal":I
    .end local v37    # "reader":Ljava/io/BufferedReader;
    .end local v39    # "reportDownload":Z
    .end local v49    # "totalBuffered":I
    .end local v50    # "totalFileLength":I
    .end local v51    # "totalRead":I
    .restart local v11    # "downloadFile":Ljava/io/File;
    .restart local v15    # "expiringServerConn":Ljava/net/HttpURLConnection;
    :catch_13
    move-exception v14

    move-object v10, v11

    .end local v11    # "downloadFile":Ljava/io/File;
    .restart local v10    # "downloadFile":Ljava/io/File;
    goto/16 :goto_12

    .line 313
    .end local v10    # "downloadFile":Ljava/io/File;
    .restart local v11    # "downloadFile":Ljava/io/File;
    :catch_14
    move-exception v14

    move-object v10, v11

    .end local v11    # "downloadFile":Ljava/io/File;
    .restart local v10    # "downloadFile":Ljava/io/File;
    goto/16 :goto_11

    .line 308
    .end local v10    # "downloadFile":Ljava/io/File;
    .restart local v11    # "downloadFile":Ljava/io/File;
    :catch_15
    move-exception v14

    move-object v10, v11

    .end local v11    # "downloadFile":Ljava/io/File;
    .restart local v10    # "downloadFile":Ljava/io/File;
    goto/16 :goto_10

    .line 302
    .end local v10    # "downloadFile":Ljava/io/File;
    .restart local v11    # "downloadFile":Ljava/io/File;
    :catch_16
    move-exception v14

    move-object v10, v11

    .end local v11    # "downloadFile":Ljava/io/File;
    .restart local v10    # "downloadFile":Ljava/io/File;
    goto/16 :goto_f

    .line 296
    .end local v10    # "downloadFile":Ljava/io/File;
    .restart local v11    # "downloadFile":Ljava/io/File;
    :catch_17
    move-exception v14

    move-object v10, v11

    .end local v11    # "downloadFile":Ljava/io/File;
    .restart local v10    # "downloadFile":Ljava/io/File;
    goto/16 :goto_d

    .line 290
    .end local v10    # "downloadFile":Ljava/io/File;
    .restart local v11    # "downloadFile":Ljava/io/File;
    :catch_18
    move-exception v14

    move-object v10, v11

    .end local v11    # "downloadFile":Ljava/io/File;
    .restart local v10    # "downloadFile":Ljava/io/File;
    goto/16 :goto_a

    .line 284
    .end local v10    # "downloadFile":Ljava/io/File;
    .restart local v11    # "downloadFile":Ljava/io/File;
    :catch_19
    move-exception v14

    move-object v10, v11

    .end local v11    # "downloadFile":Ljava/io/File;
    .restart local v10    # "downloadFile":Ljava/io/File;
    goto/16 :goto_8

    .line 277
    .end local v10    # "downloadFile":Ljava/io/File;
    .restart local v11    # "downloadFile":Ljava/io/File;
    :catch_1a
    move-exception v14

    move-object v10, v11

    .end local v11    # "downloadFile":Ljava/io/File;
    .restart local v10    # "downloadFile":Ljava/io/File;
    goto/16 :goto_0

    .line 260
    .restart local v7    # "body":Ljava/lang/String;
    .restart local v13    # "encodedBody":[B
    .restart local v21    # "gos":Ljava/util/zip/GZIPOutputStream;
    .restart local v26    # "json":Lorg/json/JSONObject;
    .local v29, "os":Ljava/io/OutputStream;
    .restart local v43    # "sendLength":J
    :catchall_6
    move-exception v52

    move-object/from16 v20, v21

    .end local v21    # "gos":Ljava/util/zip/GZIPOutputStream;
    .restart local v20    # "gos":Ljava/util/zip/GZIPOutputStream;
    goto/16 :goto_e

    .line 228
    .end local v7    # "body":Ljava/lang/String;
    .end local v13    # "encodedBody":[B
    .end local v20    # "gos":Ljava/util/zip/GZIPOutputStream;
    .restart local v5    # "bis":Ljava/io/BufferedInputStream;
    .restart local v16    # "f":Ljava/io/File;
    .restart local v19    # "fis":Ljava/io/FileInputStream;
    :catchall_7
    move-exception v52

    move-object/from16 v18, v19

    .end local v19    # "fis":Ljava/io/FileInputStream;
    .restart local v18    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_9

    .end local v5    # "bis":Ljava/io/BufferedInputStream;
    .end local v18    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "bis":Ljava/io/BufferedInputStream;
    .restart local v19    # "fis":Ljava/io/FileInputStream;
    :catchall_8
    move-exception v52

    move-object/from16 v18, v19

    .end local v19    # "fis":Ljava/io/FileInputStream;
    .restart local v18    # "fis":Ljava/io/FileInputStream;
    move-object v5, v6

    .end local v6    # "bis":Ljava/io/BufferedInputStream;
    .restart local v5    # "bis":Ljava/io/BufferedInputStream;
    goto/16 :goto_9

    .line 332
    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0xce -> :sswitch_2
        0x193 -> :sswitch_1
        0x196 -> :sswitch_1
    .end sparse-switch
.end method
