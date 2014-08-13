.class final Lcom/nuance/swypeconnect/ac/ACBuildConfig;
.super Ljava/lang/Object;
.source "ACBuildConfig.java"


# static fields
.field private static final APPKEY_STARTS:Ljava/lang/String; = ""

.field private static final BUILD_EXPIRATION:Ljava/lang/String; = ""

.field private static final BUILD_TIMESTAMP:Ljava/lang/String; = "20130102.120000"

.field private static final CONFIG_FILE:Ljava/lang/String; = "/com/nuance/swypeconnect/ac/config.dat"

.field private static final DEFAULT_DELAY:I = 0x12c

.field private static final DEFAULT_LOG_LEVEL:Ljava/lang/String; = "6"

.field private static final DEVELOPER_LOG_ENABLED:Ljava/lang/String; = "false"

.field private static final LOCATION_LEVEL:Ljava/lang/String; = "2"

.field private static final OEM_ID:Ljava/lang/String; = "0"

.field private static final URL:Ljava/lang/String; = "https://api.swypeconnect.com/"

.field private static final VERSION:Ljava/lang/String; = "0.1.0.0000"


# instance fields
.field final appKeyStarts:Ljava/lang/String;

.field final buildExpiration:Ljava/lang/String;

.field final buildTimestamp:Ljava/lang/String;

.field final defaultDelay:I

.field final defaultLogLevel:Ljava/lang/String;

.field final developerLogEnabled:Ljava/lang/String;

.field final locationLevel:Ljava/lang/String;

.field final oemId:Ljava/lang/String;

.field final url:Ljava/lang/String;

.field final version:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 14

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    const-string v13, "/com/nuance/swypeconnect/ac/config.dat"

    invoke-virtual {v12, v13}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 89
    .local v0, "is":Ljava/io/InputStream;
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 90
    .local v1, "p":Ljava/util/Properties;
    const-string v11, "0.1.0.0000"

    .line 91
    .local v11, "tmpVersion":Ljava/lang/String;
    const-string v9, "0"

    .line 92
    .local v9, "tmpOemId":Ljava/lang/String;
    const-string v10, "https://api.swypeconnect.com/"

    .line 93
    .local v10, "tmpUrl":Ljava/lang/String;
    const-string v4, "20130102.120000"

    .line 94
    .local v4, "tmpBuildTimestamp":Ljava/lang/String;
    const-string v3, ""

    .line 95
    .local v3, "tmpBuildExpiration":Ljava/lang/String;
    const-string v2, ""

    .line 96
    .local v2, "tmpAppKeyStarts":Ljava/lang/String;
    const-string v8, "2"

    .line 97
    .local v8, "tmpLocationLevel":Ljava/lang/String;
    const-string v7, "false"

    .line 98
    .local v7, "tmpDeveloperLogEnabled":Ljava/lang/String;
    const-string v6, "6"

    .line 99
    .local v6, "tmpDefaultLogLevel":Ljava/lang/String;
    const/16 v5, 0x12c

    .line 101
    .local v5, "tmpDefaultDelay":I
    if-eqz v0, :cond_0

    .line 104
    :try_start_0
    invoke-virtual {v1, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 105
    const-string v12, "version"

    const-string v13, "0.1.0.0000"

    invoke-virtual {v1, v12, v13}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 106
    const-string v12, "oem.id"

    const-string v13, "0"

    invoke-virtual {v1, v12, v13}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 107
    const-string v12, "url"

    const-string v13, "https://api.swypeconnect.com/"

    invoke-virtual {v1, v12, v13}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 108
    const-string v12, "build.timestamp"

    const-string v13, "20130102.120000"

    invoke-virtual {v1, v12, v13}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 109
    const-string v12, "build.expiration"

    const-string v13, ""

    invoke-virtual {v1, v12, v13}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 110
    const-string v12, "appkey.starts"

    const-string v13, ""

    invoke-virtual {v1, v12, v13}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 111
    const-string v12, "locationlevel.default"

    const-string v13, "2"

    invoke-virtual {v1, v12, v13}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 112
    const-string v12, "developerlog.enabled"

    const-string v13, "false"

    invoke-virtual {v1, v12, v13}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 113
    const-string v12, "loglevel.default"

    const-string v13, "6"

    invoke-virtual {v1, v12, v13}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 116
    :try_start_1
    const-string v12, "delay"

    const/16 v13, 0x12c

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v12, v13}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    .line 121
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 127
    :cond_0
    :goto_1
    iput-object v11, p0, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->version:Ljava/lang/String;

    .line 128
    iput-object v9, p0, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->oemId:Ljava/lang/String;

    .line 129
    iput-object v10, p0, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->url:Ljava/lang/String;

    .line 130
    iput-object v4, p0, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->buildTimestamp:Ljava/lang/String;

    .line 131
    iput-object v3, p0, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->buildExpiration:Ljava/lang/String;

    .line 132
    iput-object v2, p0, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->appKeyStarts:Ljava/lang/String;

    .line 133
    iput-object v8, p0, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->locationLevel:Ljava/lang/String;

    .line 134
    iput-object v7, p0, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->developerLogEnabled:Ljava/lang/String;

    .line 135
    iput-object v6, p0, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->defaultLogLevel:Ljava/lang/String;

    .line 136
    iput v5, p0, Lcom/nuance/swypeconnect/ac/ACBuildConfig;->defaultDelay:I

    .line 137
    return-void

    .line 121
    :catchall_0
    move-exception v12

    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v12
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 123
    :catch_0
    move-exception v12

    goto :goto_1

    .line 117
    :catch_1
    move-exception v12

    goto :goto_0
.end method
