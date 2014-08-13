.class public Lcom/android/server/ssrm/wluc/WlucThread;
.super Ljava/lang/Thread;
.source "WlucThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ssrm/wluc/WlucThread$1;,
        Lcom/android/server/ssrm/wluc/WlucThread$MyPakcageInstallObserver;
    }
.end annotation


# static fields
.field public static final CHECK_UPDATE_AVAIBLE:I = 0x63

.field public static final CHECK_UPDATE_SCHEDULE:I = 0x62

.field private static final CSC_PATH:Ljava/lang/String;

.field public static final DOWNLOAD_FAILED:I = 0x5e

.field private static final DOWNLOAD_PATH:Ljava/lang/String;

.field public static final DURATION_DAY:J = 0xf731400L

.field public static final INSTALL_FAILED:I = 0x5f

.field public static final INSTALL_SUCCESS:I = 0x59

.field public static final MATCHING_BUT_NO_UPDATE:I = 0x5b

.field public static final MATCHING_UPDATABLE_CRITICAL:I = 0x5d

.field public static final MATCHING_UPDATABLE_NORMAL:I = 0x5c

.field private static final NEED_TO_SUBSTRING:Ljava/lang/String; = "SAMSUNG-"

.field public static final NO_MATCHING_APPLICATION:I = 0x5a

.field public static final REQUEST_TYPE_DOWNLOAD_CHECK:I = 0x61

.field public static final REQUEST_TYPE_UPDATE_CHECK:I = 0x60

.field private static final SERVER_URL:Ljava/lang/String;

.field private static final SERVER_URL_DOWNLOAD:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field public static final UPDATE_CHECK_FAIL:I = 0x58


# instance fields
.field private final mContextSub:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mPackageName:Ljava/lang/String;

.field private final mRequestType:I

.field mSysProperty:Lcom/android/server/ssrm/DevSysProperty;

.field private mVersionname:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/android/server/ssrm/wluc/WlucThread;->x([I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/wluc/WlucThread;->TAG:Ljava/lang/String;

    .line 73
    const/16 v0, 0x2e

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    invoke-static {v0}, Lcom/android/server/ssrm/wluc/WlucThread;->x([I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/wluc/WlucThread;->SERVER_URL:Ljava/lang/String;

    .line 80
    const/16 v0, 0x30

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    invoke-static {v0}, Lcom/android/server/ssrm/wluc/WlucThread;->x([I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/wluc/WlucThread;->SERVER_URL_DOWNLOAD:Ljava/lang/String;

    .line 87
    const/16 v0, 0x1a

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    invoke-static {v0}, Lcom/android/server/ssrm/wluc/WlucThread;->x([I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/wluc/WlucThread;->CSC_PATH:Ljava/lang/String;

    .line 93
    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    invoke-static {v0}, Lcom/android/server/ssrm/wluc/WlucThread;->x([I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/wluc/WlucThread;->DOWNLOAD_PATH:Ljava/lang/String;

    return-void

    .line 68
    :array_0
    .array-data 4
        0x29
        0x29
        0x28
        0x37
        0xc
        0x48
        0x40
        0x2d
        0x16
        0xf
        0x19
        0x2e
        0x12
        0x8
        0x1f
        0x1b
        0x1e
    .end array-data

    .line 73
    :array_1
    .array-data 4
        0x12
        0xe
        0xe
        0xa
        0x40
        0x55
        0x55
        0x12
        0xf
        0x18
        0x54
        0x9
        0x1b
        0x17
        0x9
        0xf
        0x14
        0x1d
        0x1b
        0xa
        0xa
        0x9
        0x54
        0x19
        0x15
        0x17
        0x55
        0xa
        0x8
        0x15
        0x1e
        0xf
        0x19
        0xe
        0x55
        0x1b
        0xa
        0xa
        0x39
        0x12
        0x1f
        0x19
        0x11
        0x54
        0x1b
        0x9
    .end array-data

    .line 80
    :array_2
    .array-data 4
        0x12
        0xe
        0xe
        0xa
        0x9
        0x40
        0x55
        0x55
        0xc
        0x1b
        0x9
        0x54
        0x9
        0x1b
        0x17
        0x9
        0xf
        0x14
        0x1d
        0x1b
        0xa
        0xa
        0x9
        0x54
        0x19
        0x15
        0x17
        0x55
        0x9
        0xe
        0xf
        0x18
        0x55
        0x9
        0xe
        0xf
        0x18
        0x3e
        0x15
        0xd
        0x14
        0x16
        0x15
        0x1b
        0x1e
        0x54
        0x1b
        0x9
    .end array-data

    .line 87
    :array_3
    .array-data 4
        0x55
        0x9
        0x3
        0x9
        0xe
        0x1f
        0x17
        0x55
        0x19
        0x9
        0x19
        0x55
        0x9
        0x1b
        0x16
        0x1f
        0x9
        0x25
        0x19
        0x15
        0x1e
        0x1f
        0x54
        0x1e
        0x1b
        0xe
    .end array-data

    .line 93
    :array_4
    .array-data 4
        0x55
        0x1e
        0x1b
        0xe
        0x1b
        0x55
        0x9
        0x3
        0x9
        0xe
        0x1f
        0x17
        0x55
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "requestType"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "handler"    # Landroid/os/Handler;

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 135
    new-instance v0, Lcom/android/server/ssrm/DevSysProperty;

    invoke-direct {v0}, Lcom/android/server/ssrm/DevSysProperty;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/wluc/WlucThread;->mSysProperty:Lcom/android/server/ssrm/DevSysProperty;

    .line 142
    iput-object p1, p0, Lcom/android/server/ssrm/wluc/WlucThread;->mContextSub:Landroid/content/Context;

    .line 143
    iput-object p3, p0, Lcom/android/server/ssrm/wluc/WlucThread;->mPackageName:Ljava/lang/String;

    .line 144
    iput-object p4, p0, Lcom/android/server/ssrm/wluc/WlucThread;->mHandler:Landroid/os/Handler;

    .line 145
    iput p2, p0, Lcom/android/server/ssrm/wluc/WlucThread;->mRequestType:I

    .line 146
    return-void
.end method

.method public static IsWifiOnlyModel(Landroid/content/Context;)Z
    .locals 4
    .param p0, "mContextSub"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 801
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 803
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 805
    .local v1, "mobileNetwork":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    .line 808
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/android/server/ssrm/wluc/WlucThread;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private checkDownload(Ljava/net/URL;)Z
    .locals 18
    .param p1, "url"    # Ljava/net/URL;

    .prologue
    .line 437
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v4

    .line 438
    .local v4, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v4}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v9

    .line 439
    .local v9, "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v5, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v5}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 440
    .local v5, "httpclient":Lorg/apache/http/client/HttpClient;
    invoke-interface {v5}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v15

    const-string v16, "http.useragent"

    const-string v17, "http.agent"

    invoke-static/range {v17 .. v17}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-interface/range {v15 .. v17}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 444
    new-instance v6, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v6, v15}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6

    .line 445
    .local v6, "httpget":Lorg/apache/http/client/methods/HttpGet;
    const/4 v3, 0x0

    .line 450
    .local v3, "entity":Lorg/apache/http/HttpEntity;
    :try_start_1
    invoke-interface {v5, v6}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v11

    .line 453
    .local v11, "response":Lorg/apache/http/HttpResponse;
    sget-object v15, Lcom/android/server/ssrm/wluc/WlucThread;->TAG:Ljava/lang/String;

    invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/android/server/ssrm/wluc/WlucThread;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    move-result-object v3

    .line 465
    .end local v11    # "response":Lorg/apache/http/HttpResponse;
    :goto_0
    if-eqz v3, :cond_0

    .line 468
    :try_start_2
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v8

    .line 470
    .local v8, "instream":Ljava/io/InputStream;
    const/4 v15, 0x0

    invoke-interface {v9, v8, v15}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_5

    .line 484
    .end local v8    # "instream":Ljava/io/InputStream;
    :cond_0
    :goto_1
    :try_start_3
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v10

    .line 486
    .local v10, "parserEvent":I
    const-string v7, ""

    .local v7, "id":Ljava/lang/String;
    const-string v12, ""

    .line 487
    .local v12, "result":Ljava/lang/String;
    const-string v1, ""

    .line 489
    .local v1, "DownloadURI":Ljava/lang/String;
    :goto_2
    const/4 v15, 0x1

    if-eq v10, v15, :cond_7

    .line 490
    const/4 v15, 0x2

    if-ne v10, v15, :cond_4

    .line 491
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    .line 492
    .local v13, "tag":Ljava/lang/String;
    const-string v15, "appId"

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 493
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v14

    .line 494
    .local v14, "type":I
    const/4 v15, 0x4

    if-ne v14, v15, :cond_1

    .line 495
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v7

    .line 498
    .end local v14    # "type":I
    :cond_1
    const-string v15, "resultCode"

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 499
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v14

    .line 500
    .restart local v14    # "type":I
    const/4 v15, 0x4

    if-ne v14, v15, :cond_2

    .line 501
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v12

    .line 502
    sget-object v15, Lcom/android/server/ssrm/wluc/WlucThread;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "downloadCheck : resultCode = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/android/server/ssrm/wluc/WlucThread;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    .end local v14    # "type":I
    :cond_2
    const-string v15, "downloadURI"

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 506
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v14

    .line 507
    .restart local v14    # "type":I
    const/4 v15, 0x4

    if-ne v14, v15, :cond_3

    .line 508
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    .line 510
    :cond_3
    const/4 v15, 0x3

    if-ne v14, v15, :cond_4

    .line 511
    move v10, v14

    .line 515
    .end local v13    # "tag":Ljava/lang/String;
    .end local v14    # "type":I
    :cond_4
    const/4 v15, 0x3

    if-ne v10, v15, :cond_6

    .line 516
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    .line 517
    .restart local v13    # "tag":Ljava/lang/String;
    const-string v15, "downloadURI"

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 519
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12, v1}, Lcom/android/server/ssrm/wluc/WlucThread;->downloadApk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 520
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ssrm/wluc/WlucThread;->installApk()Z

    .line 523
    :cond_5
    const-string v7, ""

    .line 524
    const-string v12, ""

    .line 527
    .end local v13    # "tag":Ljava/lang/String;
    :cond_6
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10

    goto/16 :goto_2

    .line 461
    .end local v1    # "DownloadURI":Ljava/lang/String;
    .end local v7    # "id":Ljava/lang/String;
    .end local v10    # "parserEvent":I
    .end local v12    # "result":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 462
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    goto/16 :goto_0

    .line 529
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "entity":Lorg/apache/http/HttpEntity;
    .end local v4    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v5    # "httpclient":Lorg/apache/http/client/HttpClient;
    .end local v6    # "httpget":Lorg/apache/http/client/methods/HttpGet;
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_1
    move-exception v2

    .line 530
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    sget-object v15, Lcom/android/server/ssrm/wluc/WlucThread;->TAG:Ljava/lang/String;

    const-string/jumbo v16, "xml parsing error"

    invoke-static/range {v15 .. v16}, Lcom/android/server/ssrm/wluc/WlucThread;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 532
    const/4 v15, 0x0

    .line 546
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_3
    return v15

    .line 477
    .restart local v3    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v4    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v5    # "httpclient":Lorg/apache/http/client/HttpClient;
    .restart local v6    # "httpget":Lorg/apache/http/client/methods/HttpGet;
    .restart local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_2
    move-exception v2

    .line 478
    .local v2, "e":Ljava/lang/IllegalStateException;
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    goto/16 :goto_1

    .line 533
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    .end local v3    # "entity":Lorg/apache/http/HttpEntity;
    .end local v4    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v5    # "httpclient":Lorg/apache/http/client/HttpClient;
    .end local v6    # "httpget":Lorg/apache/http/client/methods/HttpGet;
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_3
    move-exception v2

    .line 534
    .local v2, "e":Ljava/net/SocketException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 535
    sget-object v15, Lcom/android/server/ssrm/wluc/WlucThread;->TAG:Ljava/lang/String;

    const-string v16, "network is unavailable"

    invoke-static/range {v15 .. v16}, Lcom/android/server/ssrm/wluc/WlucThread;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    const/4 v15, 0x0

    goto :goto_3

    .line 479
    .end local v2    # "e":Ljava/net/SocketException;
    .restart local v3    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v4    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v5    # "httpclient":Lorg/apache/http/client/HttpClient;
    .restart local v6    # "httpget":Lorg/apache/http/client/methods/HttpGet;
    .restart local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_4
    move-exception v2

    .line 480
    .local v2, "e":Ljava/io/IOException;
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/net/UnknownHostException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    goto/16 :goto_1

    .line 537
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "entity":Lorg/apache/http/HttpEntity;
    .end local v4    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v5    # "httpclient":Lorg/apache/http/client/HttpClient;
    .end local v6    # "httpget":Lorg/apache/http/client/methods/HttpGet;
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_5
    move-exception v2

    .line 538
    .local v2, "e":Ljava/net/UnknownHostException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 539
    sget-object v15, Lcom/android/server/ssrm/wluc/WlucThread;->TAG:Ljava/lang/String;

    const-string/jumbo v16, "server is not response"

    invoke-static/range {v15 .. v16}, Lcom/android/server/ssrm/wluc/WlucThread;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    .end local v2    # "e":Ljava/net/UnknownHostException;
    :cond_7
    const/4 v15, 0x1

    goto :goto_3

    .line 540
    :catch_6
    move-exception v2

    .line 541
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 542
    sget-object v15, Lcom/android/server/ssrm/wluc/WlucThread;->TAG:Ljava/lang/String;

    const-string v16, "network error"

    invoke-static/range {v15 .. v16}, Lcom/android/server/ssrm/wluc/WlucThread;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    const/4 v15, 0x0

    goto :goto_3
.end method

.method private checkUpdate(Ljava/net/URL;)Z
    .locals 17
    .param p1, "url"    # Ljava/net/URL;

    .prologue
    .line 295
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v3

    .line 296
    .local v3, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v8

    .line 298
    .local v8, "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v4, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 301
    .local v4, "httpclient":Lorg/apache/http/client/HttpClient;
    new-instance v5, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v5, v15}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6

    .line 306
    .local v5, "httpget":Lorg/apache/http/client/methods/HttpGet;
    :try_start_1
    invoke-interface {v4, v5}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v10

    .line 308
    .local v10, "response":Lorg/apache/http/HttpResponse;
    sget-object v15, Lcom/android/server/ssrm/wluc/WlucThread;->TAG:Ljava/lang/String;

    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/android/server/ssrm/wluc/WlucThread;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    move-result-object v2

    .line 314
    .local v2, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v2, :cond_0

    .line 319
    :try_start_2
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v7

    .line 321
    .local v7, "instream":Ljava/io/InputStream;
    const/4 v15, 0x0

    invoke-interface {v8, v7, v15}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_5

    .line 332
    .end local v2    # "entity":Lorg/apache/http/HttpEntity;
    .end local v7    # "instream":Ljava/io/InputStream;
    .end local v10    # "response":Lorg/apache/http/HttpResponse;
    :cond_0
    :goto_0
    :try_start_3
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v9

    .line 335
    .local v9, "parserEvent":I
    const-string v6, ""

    .local v6, "id":Ljava/lang/String;
    const-string v11, ""

    .local v11, "result":Ljava/lang/String;
    const-string v14, ""

    .line 337
    .local v14, "version":Ljava/lang/String;
    :goto_1
    const/4 v15, 0x1

    if-eq v9, v15, :cond_5

    .line 338
    const/4 v15, 0x2

    if-ne v9, v15, :cond_3

    .line 340
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    .line 341
    .local v12, "tag":Ljava/lang/String;
    const-string v15, "appId"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 342
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v13

    .line 343
    .local v13, "type":I
    const/4 v15, 0x4

    if-ne v13, v15, :cond_1

    .line 344
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v6

    .line 347
    .end local v13    # "type":I
    :cond_1
    const-string v15, "resultCode"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 348
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v13

    .line 349
    .restart local v13    # "type":I
    const/4 v15, 0x4

    if-ne v13, v15, :cond_2

    .line 350
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v11

    .line 353
    .end local v13    # "type":I
    :cond_2
    const-string/jumbo v15, "version"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 354
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v13

    .line 355
    .restart local v13    # "type":I
    const/4 v15, 0x4

    if-ne v13, v15, :cond_3

    .line 356
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v14

    .line 360
    .end local v12    # "tag":Ljava/lang/String;
    .end local v13    # "type":I
    :cond_3
    const/4 v15, 0x3

    if-ne v9, v15, :cond_4

    .line 361
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    .line 362
    .restart local v12    # "tag":Ljava/lang/String;
    const-string v15, "appInfo"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 363
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v11, v14}, Lcom/android/server/ssrm/wluc/WlucThread;->getResultUpdateCheck(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    const-string v6, ""

    .line 365
    const-string v11, ""

    .line 366
    const-string v14, ""

    .line 369
    .end local v12    # "tag":Ljava/lang/String;
    :cond_4
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    move-result v9

    goto :goto_1

    .line 322
    .end local v6    # "id":Ljava/lang/String;
    .end local v9    # "parserEvent":I
    .end local v11    # "result":Ljava/lang/String;
    .end local v14    # "version":Ljava/lang/String;
    .restart local v2    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v10    # "response":Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v1

    .line 323
    .local v1, "e":Ljava/lang/IllegalStateException;
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    goto :goto_0

    .line 328
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    .end local v2    # "entity":Lorg/apache/http/HttpEntity;
    .end local v10    # "response":Lorg/apache/http/HttpResponse;
    :catch_1
    move-exception v1

    .line 329
    .local v1, "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/net/UnknownHostException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    goto :goto_0

    .line 371
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v4    # "httpclient":Lorg/apache/http/client/HttpClient;
    .end local v5    # "httpget":Lorg/apache/http/client/methods/HttpGet;
    .end local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_2
    move-exception v1

    .line 372
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    sget-object v15, Lcom/android/server/ssrm/wluc/WlucThread;->TAG:Ljava/lang/String;

    const-string/jumbo v16, "xml parsing error"

    invoke-static/range {v15 .. v16}, Lcom/android/server/ssrm/wluc/WlucThread;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 374
    const/4 v15, 0x0

    .line 388
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_2
    return v15

    .line 324
    .restart local v2    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v3    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v4    # "httpclient":Lorg/apache/http/client/HttpClient;
    .restart local v5    # "httpget":Lorg/apache/http/client/methods/HttpGet;
    .restart local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v10    # "response":Lorg/apache/http/HttpResponse;
    :catch_3
    move-exception v1

    .line 325
    .local v1, "e":Ljava/io/IOException;
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/net/SocketException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/net/UnknownHostException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    goto/16 :goto_0

    .line 375
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "entity":Lorg/apache/http/HttpEntity;
    .end local v3    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v4    # "httpclient":Lorg/apache/http/client/HttpClient;
    .end local v5    # "httpget":Lorg/apache/http/client/methods/HttpGet;
    .end local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v10    # "response":Lorg/apache/http/HttpResponse;
    :catch_4
    move-exception v1

    .line 376
    .local v1, "e":Ljava/net/SocketException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 377
    sget-object v15, Lcom/android/server/ssrm/wluc/WlucThread;->TAG:Ljava/lang/String;

    const-string v16, "network is unavailable"

    invoke-static/range {v15 .. v16}, Lcom/android/server/ssrm/wluc/WlucThread;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    const/4 v15, 0x0

    goto :goto_2

    .line 379
    .end local v1    # "e":Ljava/net/SocketException;
    :catch_5
    move-exception v1

    .line 380
    .local v1, "e":Ljava/net/UnknownHostException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 381
    sget-object v15, Lcom/android/server/ssrm/wluc/WlucThread;->TAG:Ljava/lang/String;

    const-string/jumbo v16, "server is not response"

    invoke-static/range {v15 .. v16}, Lcom/android/server/ssrm/wluc/WlucThread;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    .end local v1    # "e":Ljava/net/UnknownHostException;
    :cond_5
    const/4 v15, 0x1

    goto :goto_2

    .line 382
    :catch_6
    move-exception v1

    .line 383
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 384
    sget-object v15, Lcom/android/server/ssrm/wluc/WlucThread;->TAG:Ljava/lang/String;

    const-string v16, "network error"

    invoke-static/range {v15 .. v16}, Lcom/android/server/ssrm/wluc/WlucThread;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    const/4 v15, 0x0

    goto :goto_2
.end method

.method private downloadApk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 22
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "code"    # Ljava/lang/String;
    .param p3, "URI"    # Ljava/lang/String;

    .prologue
    .line 550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ssrm/wluc/WlucThread;->mPackageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5

    const-string v19, "1"

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5

    const-string v19, ""

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_5

    .line 551
    const/4 v8, 0x0

    .line 553
    .local v8, "file":Ljava/io/File;
    new-instance v10, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v10}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 554
    .local v10, "httpclient":Lorg/apache/http/client/HttpClient;
    new-instance v9, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v9}, Lorg/apache/http/client/methods/HttpGet;-><init>()V

    .line 556
    .local v9, "httpGet":Lorg/apache/http/client/methods/HttpGet;
    new-instance v6, Ljava/io/File;

    sget-object v19, Lcom/android/server/ssrm/wluc/WlucThread;->DOWNLOAD_PATH:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 558
    .local v6, "directory":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v19

    if-nez v19, :cond_0

    .line 559
    invoke-virtual {v6}, Ljava/io/File;->mkdir()Z

    .line 562
    :cond_0
    new-instance v8, Ljava/io/File;

    .end local v8    # "file":Ljava/io/File;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v20, Lcom/android/server/ssrm/wluc/WlucThread;->DOWNLOAD_PATH:Ljava/lang/String;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {}, Lcom/android/server/ssrm/wluc/WlucThread;->getApkName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 564
    .restart local v8    # "file":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_1

    .line 565
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 569
    :cond_1
    const-wide/16 v17, 0x0

    .line 570
    .local v17, "sizeTotal":J
    const-wide/16 v15, 0x0

    .line 572
    .local v15, "sizeDownload":J
    :try_start_0
    new-instance v19, Ljava/net/URI;

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Lorg/apache/http/client/methods/HttpRequestBase;->setURI(Ljava/net/URI;)V

    .line 574
    invoke-interface {v10, v9}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v14

    .line 575
    .local v14, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    .line 577
    .local v3, "InStream":Ljava/io/InputStream;
    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v17

    .line 579
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 581
    .local v2, "Fout":Ljava/io/FileOutputStream;
    const/16 v19, 0x400

    move/from16 v0, v19

    new-array v4, v0, [B

    .line 582
    .local v4, "buffer":[B
    const/4 v11, 0x0

    .line 583
    .local v11, "len1":I
    const/4 v13, -0x1

    .line 585
    .local v13, "percentage":I
    :goto_0
    invoke-virtual {v3, v4}, Ljava/io/InputStream;->read([B)I

    move-result v11

    if-lez v11, :cond_3

    .line 593
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v2, v4, v0, v11}, Ljava/io/FileOutputStream;->write([BII)V

    .line 595
    int-to-long v0, v11

    move-wide/from16 v19, v0

    add-long v15, v15, v19

    .line 597
    const-wide/16 v19, 0x64

    mul-long v19, v19, v15

    div-long v19, v19, v17

    move-wide/from16 v0, v19

    long-to-int v5, v0

    .line 599
    .local v5, "currentPercentage":I
    if-eq v13, v5, :cond_2

    .line 600
    sget-object v19, Lcom/android/server/ssrm/wluc/WlucThread;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Downloading..."

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "%"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/android/server/ssrm/wluc/WlucThread;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    :cond_2
    move v13, v5

    .line 604
    goto :goto_0

    .line 605
    .end local v5    # "currentPercentage":I
    :cond_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 620
    sget-object v19, Lcom/android/server/ssrm/wluc/WlucThread;->TAG:Ljava/lang/String;

    const-string v20, "Download complete."

    invoke-static/range {v19 .. v20}, Lcom/android/server/ssrm/wluc/WlucThread;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "chmod 666 "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 624
    sget-object v19, Lcom/android/server/ssrm/wluc/WlucThread;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Change file permission : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/android/server/ssrm/wluc/WlucThread;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 629
    :goto_1
    const/16 v19, 0x1

    .line 631
    .end local v2    # "Fout":Ljava/io/FileOutputStream;
    .end local v3    # "InStream":Ljava/io/InputStream;
    .end local v4    # "buffer":[B
    .end local v6    # "directory":Ljava/io/File;
    .end local v8    # "file":Ljava/io/File;
    .end local v9    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .end local v10    # "httpclient":Lorg/apache/http/client/HttpClient;
    .end local v11    # "len1":I
    .end local v13    # "percentage":I
    .end local v14    # "response":Lorg/apache/http/HttpResponse;
    .end local v15    # "sizeDownload":J
    .end local v17    # "sizeTotal":J
    :goto_2
    return v19

    .line 606
    .restart local v6    # "directory":Ljava/io/File;
    .restart local v8    # "file":Ljava/io/File;
    .restart local v9    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .restart local v10    # "httpclient":Lorg/apache/http/client/HttpClient;
    .restart local v15    # "sizeDownload":J
    .restart local v17    # "sizeTotal":J
    :catch_0
    move-exception v7

    .line 607
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    .line 608
    sget-object v19, Lcom/android/server/ssrm/wluc/WlucThread;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Download fail - "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/android/server/ssrm/wluc/WlucThread;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ssrm/wluc/WlucThread;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    if-eqz v19, :cond_4

    .line 610
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ssrm/wluc/WlucThread;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v12

    .line 611
    .local v12, "msg":Landroid/os/Message;
    const/16 v19, 0x6

    move/from16 v0, v19

    iput v0, v12, Landroid/os/Message;->what:I

    .line 612
    const/16 v19, 0x5e

    move/from16 v0, v19

    iput v0, v12, Landroid/os/Message;->arg1:I

    .line 613
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ssrm/wluc/WlucThread;->mPackageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput-object v0, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 614
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ssrm/wluc/WlucThread;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 616
    .end local v12    # "msg":Landroid/os/Message;
    :cond_4
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 617
    const/16 v19, 0x0

    goto :goto_2

    .line 625
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v2    # "Fout":Ljava/io/FileOutputStream;
    .restart local v3    # "InStream":Ljava/io/InputStream;
    .restart local v4    # "buffer":[B
    .restart local v11    # "len1":I
    .restart local v13    # "percentage":I
    .restart local v14    # "response":Lorg/apache/http/HttpResponse;
    :catch_1
    move-exception v7

    .line 626
    .restart local v7    # "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 631
    .end local v2    # "Fout":Ljava/io/FileOutputStream;
    .end local v3    # "InStream":Ljava/io/InputStream;
    .end local v4    # "buffer":[B
    .end local v6    # "directory":Ljava/io/File;
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v8    # "file":Ljava/io/File;
    .end local v9    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .end local v10    # "httpclient":Lorg/apache/http/client/HttpClient;
    .end local v11    # "len1":I
    .end local v13    # "percentage":I
    .end local v14    # "response":Lorg/apache/http/HttpResponse;
    .end local v15    # "sizeDownload":J
    .end local v17    # "sizeTotal":J
    :cond_5
    const/16 v19, 0x0

    goto :goto_2
.end method

.method private static getApkName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 677
    const-string/jumbo v0, "wluc"

    return-object v0
.end method

.method public static getCSC()Ljava/lang/String;
    .locals 4

    .prologue
    .line 718
    const/4 v0, 0x0

    .line 719
    .local v0, "cscVersion":Ljava/lang/String;
    const/4 v1, 0x0

    .line 722
    .local v1, "value":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/ssrm/wluc/WlucThread;->isCSCExistFile()Z

    move-result v2

    if-nez v2, :cond_0

    .line 741
    :goto_0
    return-object v0

    .line 726
    :cond_0
    invoke-static {}, Lcom/android/server/ssrm/wluc/WlucThread;->getCSCVersion()Ljava/lang/String;

    move-result-object v1

    .line 727
    if-nez v1, :cond_1

    .line 728
    const-string v2, ""

    const-string v3, "getCSC::getCSCVersion::value is null"

    invoke-static {v2, v3}, Lcom/android/server/ssrm/wluc/WlucThread;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 732
    :cond_1
    const-string v2, "FAIL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 733
    const-string v2, ""

    const-string v3, "getCSC::getCSCVersion::Fail to read CSC Version"

    invoke-static {v2, v3}, Lcom/android/server/ssrm/wluc/WlucThread;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 737
    :cond_2
    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getCSCVersion()Ljava/lang/String;
    .locals 8

    .prologue
    .line 745
    const/4 v5, 0x0

    .line 746
    .local v5, "s":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    sget-object v7, Lcom/android/server/ssrm/wluc/WlucThread;->CSC_PATH:Ljava/lang/String;

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 747
    .local v4, "mFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 748
    const/16 v7, 0x14

    new-array v0, v7, [B

    .line 750
    .local v0, "buffer":[B
    const/4 v2, 0x0

    .line 753
    .local v2, "in":Ljava/io/InputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 755
    .end local v2    # "in":Ljava/io/InputStream;
    .local v3, "in":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v7

    if-eqz v7, :cond_1

    .line 756
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v5    # "s":Ljava/lang/String;
    .local v6, "s":Ljava/lang/String;
    move-object v5, v6

    .line 767
    .end local v6    # "s":Ljava/lang/String;
    .restart local v5    # "s":Ljava/lang/String;
    :goto_0
    if-eqz v3, :cond_3

    .line 769
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 773
    .end local v3    # "in":Ljava/io/InputStream;
    :goto_1
    const/4 v2, 0x0

    .line 779
    .end local v0    # "buffer":[B
    :cond_0
    :goto_2
    return-object v5

    .line 758
    .restart local v0    # "buffer":[B
    .restart local v3    # "in":Ljava/io/InputStream;
    :cond_1
    :try_start_3
    new-instance v6, Ljava/lang/String;

    const-string v7, "FAIL"

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .end local v5    # "s":Ljava/lang/String;
    .restart local v6    # "s":Ljava/lang/String;
    move-object v5, v6

    .end local v6    # "s":Ljava/lang/String;
    .restart local v5    # "s":Ljava/lang/String;
    goto :goto_0

    .line 761
    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v2    # "in":Ljava/io/InputStream;
    :catch_0
    move-exception v1

    .line 762
    .local v1, "e":Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 767
    if-eqz v2, :cond_0

    .line 769
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 770
    :catch_1
    move-exception v1

    .line 771
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 763
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 764
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_4
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 767
    if-eqz v2, :cond_0

    .line 769
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_1

    .line 770
    :catch_3
    move-exception v1

    .line 771
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 767
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_5
    if-eqz v2, :cond_2

    .line 769
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 773
    :goto_6
    const/4 v2, 0x0

    .line 767
    :cond_2
    throw v7

    .line 770
    :catch_4
    move-exception v1

    .line 771
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_6

    .line 770
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "in":Ljava/io/InputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    :catch_5
    move-exception v1

    .line 771
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 767
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v2    # "in":Ljava/io/InputStream;
    goto :goto_5

    .line 763
    .end local v2    # "in":Ljava/io/InputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    :catch_6
    move-exception v1

    move-object v2, v3

    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v2    # "in":Ljava/io/InputStream;
    goto :goto_4

    .line 761
    .end local v2    # "in":Ljava/io/InputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    :catch_7
    move-exception v1

    move-object v2, v3

    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v2    # "in":Ljava/io/InputStream;
    goto :goto_3

    .end local v2    # "in":Ljava/io/InputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    :cond_3
    move-object v2, v3

    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v2    # "in":Ljava/io/InputStream;
    goto :goto_2
.end method

.method private getIMEI()Ljava/lang/String;
    .locals 9

    .prologue
    const/16 v8, 0x10

    .line 812
    const-string v3, ""

    .line 813
    .local v3, "imei":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/ssrm/wluc/WlucThread;->mContextSub:Landroid/content/Context;

    const-string v7, "phone"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 815
    .local v5, "telMgr":Landroid/telephony/TelephonyManager;
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 817
    .local v4, "md5":Ljava/lang/StringBuffer;
    if-eqz v5, :cond_0

    .line 820
    const/4 v0, 0x0

    .line 822
    .local v0, "digest":[B
    :try_start_0
    const-string v6, "MD5"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    const-string v7, "000000000000000"

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 828
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v6, v0

    if-ge v2, v6, :cond_0

    .line 829
    aget-byte v6, v0, v2

    and-int/lit16 v6, v6, 0xf0

    shr-int/lit8 v6, v6, 0x4

    invoke-static {v6, v8}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 830
    aget-byte v6, v0, v2

    and-int/lit8 v6, v6, 0xf

    shr-int/lit8 v6, v6, 0x0

    invoke-static {v6, v8}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 828
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 823
    .end local v2    # "i":I
    :catch_0
    move-exception v1

    .line 825
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 838
    .end local v0    # "digest":[B
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    .line 839
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private getMCC()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x3

    .line 681
    iget-object v4, p0, Lcom/android/server/ssrm/wluc/WlucThread;->mContextSub:Landroid/content/Context;

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 683
    .local v3, "telMgr":Landroid/telephony/TelephonyManager;
    const/4 v0, 0x0

    .line 685
    .local v0, "mcc":Ljava/lang/String;
    if-nez v3, :cond_0

    move-object v1, v0

    .line 695
    .end local v0    # "mcc":Ljava/lang/String;
    .local v1, "mcc":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 689
    .end local v1    # "mcc":Ljava/lang/String;
    .restart local v0    # "mcc":Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v2

    .line 690
    .local v2, "networkOperator":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v6, :cond_1

    .line 692
    const/4 v4, 0x0

    invoke-virtual {v2, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_1
    move-object v1, v0

    .line 695
    .end local v0    # "mcc":Ljava/lang/String;
    .restart local v1    # "mcc":Ljava/lang/String;
    goto :goto_0
.end method

.method private getMNC()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x3

    .line 699
    const/4 v0, 0x0

    .line 701
    .local v0, "mnc":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/ssrm/wluc/WlucThread;->mContextSub:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 704
    .local v2, "telMgr":Landroid/telephony/TelephonyManager;
    if-nez v2, :cond_1

    .line 713
    .end local v0    # "mnc":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 708
    .restart local v0    # "mnc":Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    .line 709
    .local v1, "networkOperator":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v5, :cond_0

    .line 711
    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getPD()Ljava/lang/String;
    .locals 3

    .prologue
    .line 843
    const-string v1, "0"

    .line 844
    .local v1, "result":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/ssrm/wluc/WlucThread;->mSysProperty:Lcom/android/server/ssrm/DevSysProperty;

    invoke-virtual {v2}, Lcom/android/server/ssrm/DevSysProperty;->getWlucTestMode()I

    move-result v0

    .line 846
    .local v0, "isTestMode":I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 847
    const-string v1, "1"

    .line 849
    :cond_0
    return-object v1
.end method

.method private getResultUpdateCheck(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "code"    # Ljava/lang/String;
    .param p3, "version"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x5a

    const/4 v5, 0x0

    const/4 v4, 0x6

    .line 393
    sget-object v1, Lcom/android/server/ssrm/wluc/WlucThread;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "version:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/wluc/WlucThread;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    iget-object v1, p0, Lcom/android/server/ssrm/wluc/WlucThread;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 396
    iget-object v1, p0, Lcom/android/server/ssrm/wluc/WlucThread;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 397
    iget-object v1, p0, Lcom/android/server/ssrm/wluc/WlucThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 398
    .local v0, "msg":Landroid/os/Message;
    const-string v1, "2"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 403
    iget-object v1, p0, Lcom/android/server/ssrm/wluc/WlucThread;->mVersionname:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v1, v2, :cond_1

    .line 404
    iput v4, v0, Landroid/os/Message;->what:I

    .line 405
    const/16 v1, 0x5d

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 418
    :goto_0
    iget-object v1, p0, Lcom/android/server/ssrm/wluc/WlucThread;->mPackageName:Ljava/lang/String;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 420
    iget-object v1, p0, Lcom/android/server/ssrm/wluc/WlucThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 431
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    :goto_1
    return-void

    .line 407
    .restart local v0    # "msg":Landroid/os/Message;
    :cond_1
    iput v4, v0, Landroid/os/Message;->what:I

    .line 408
    const/16 v1, 0x5c

    iput v1, v0, Landroid/os/Message;->arg1:I

    goto :goto_0

    .line 411
    :cond_2
    const-string v1, "1"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 412
    iput v4, v0, Landroid/os/Message;->what:I

    .line 413
    const/16 v1, 0x5b

    iput v1, v0, Landroid/os/Message;->arg1:I

    goto :goto_0

    .line 415
    :cond_3
    iput v4, v0, Landroid/os/Message;->what:I

    .line 416
    iput v6, v0, Landroid/os/Message;->arg1:I

    goto :goto_0

    .line 423
    .end local v0    # "msg":Landroid/os/Message;
    :cond_4
    iget-object v1, p0, Lcom/android/server/ssrm/wluc/WlucThread;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 424
    iget-object v1, p0, Lcom/android/server/ssrm/wluc/WlucThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 425
    .restart local v0    # "msg":Landroid/os/Message;
    iput v4, v0, Landroid/os/Message;->what:I

    .line 426
    iput v6, v0, Landroid/os/Message;->arg1:I

    .line 427
    iget-object v1, p0, Lcom/android/server/ssrm/wluc/WlucThread;->mPackageName:Ljava/lang/String;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 428
    iget-object v1, p0, Lcom/android/server/ssrm/wluc/WlucThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1
.end method

.method private installApk()Z
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 635
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/android/server/ssrm/wluc/WlucThread;->DOWNLOAD_PATH:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/android/server/ssrm/wluc/WlucThread;->getApkName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 636
    .local v1, "filePath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 638
    .local v0, "apkFile":Ljava/io/File;
    iget-object v7, p0, Lcom/android/server/ssrm/wluc/WlucThread;->mHandler:Landroid/os/Handler;

    if-nez v7, :cond_0

    .line 664
    :goto_0
    return v6

    .line 642
    :cond_0
    iget-object v7, p0, Lcom/android/server/ssrm/wluc/WlucThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    .line 643
    .local v3, "msg":Landroid/os/Message;
    const/4 v7, 0x6

    iput v7, v3, Landroid/os/Message;->what:I

    .line 644
    iget-object v7, p0, Lcom/android/server/ssrm/wluc/WlucThread;->mPackageName:Ljava/lang/String;

    iput-object v7, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 646
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    .line 647
    const/16 v7, 0x5f

    iput v7, v3, Landroid/os/Message;->arg1:I

    .line 648
    iget-object v7, p0, Lcom/android/server/ssrm/wluc/WlucThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 652
    :cond_1
    sget-object v6, Lcom/android/server/ssrm/wluc/WlucThread;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "install start"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/ssrm/wluc/WlucThread;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    const/4 v2, 0x0

    .line 656
    .local v2, "installFlags":I
    or-int/lit8 v2, v2, 0x2

    .line 657
    iget-object v6, p0, Lcom/android/server/ssrm/wluc/WlucThread;->mContextSub:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 658
    .local v5, "pm":Landroid/content/pm/PackageManager;
    new-instance v4, Lcom/android/server/ssrm/wluc/WlucThread$MyPakcageInstallObserver;

    const/4 v6, 0x0

    invoke-direct {v4, p0, v6}, Lcom/android/server/ssrm/wluc/WlucThread$MyPakcageInstallObserver;-><init>(Lcom/android/server/ssrm/wluc/WlucThread;Lcom/android/server/ssrm/wluc/WlucThread$1;)V

    .line 659
    .local v4, "observer":Landroid/content/pm/IPackageInstallObserver;
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/android/server/ssrm/wluc/WlucThread;->DOWNLOAD_PATH:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/android/server/ssrm/wluc/WlucThread;->getApkName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v4, v2, v7}, Landroid/content/pm/PackageManager;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V

    .line 662
    const/16 v6, 0x59

    iput v6, v3, Landroid/os/Message;->arg1:I

    .line 663
    iget-object v6, p0, Lcom/android/server/ssrm/wluc/WlucThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 664
    const/4 v6, 0x1

    goto :goto_0
.end method

.method private static isCSCExistFile()Z
    .locals 6

    .prologue
    .line 783
    const/4 v2, 0x0

    .line 785
    .local v2, "result":Z
    new-instance v1, Ljava/io/File;

    sget-object v3, Lcom/android/server/ssrm/wluc/WlucThread;->CSC_PATH:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 788
    .local v1, "file":Ljava/io/File;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    .line 789
    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 790
    const-string v3, ""

    const-string v4, "CSC is not exist"

    invoke-static {v3, v4}, Lcom/android/server/ssrm/wluc/WlucThread;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 796
    :cond_0
    :goto_0
    return v2

    .line 792
    :catch_0
    move-exception v0

    .line 793
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isCSCExistFile::"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/ssrm/wluc/WlucThread;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected static logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 138
    invoke-static {p0, p1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public static x([I)Ljava/lang/String;
    .locals 1
    .param p0, "raw"    # [I

    .prologue
    .line 853
    invoke-static {p0}, Lcom/android/server/ssrm/SSRMUtil;->x([I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 26

    .prologue
    .line 150
    sget-object v22, Lcom/android/server/ssrm/wluc/WlucThread;->TAG:Ljava/lang/String;

    const-string/jumbo v23, "start update check"

    invoke-static/range {v22 .. v23}, Lcom/android/server/ssrm/wluc/WlucThread;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 152
    .local v6, "device":Ljava/lang/String;
    sget-object v22, Lcom/android/server/ssrm/wluc/WlucThread;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "device : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/server/ssrm/wluc/WlucThread;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-string v22, "SAMSUNG-"

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_0

    const-string v22, "SAMSUNG-"

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_0

    .line 154
    const-string v22, "SAMSUNG-"

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 157
    :cond_0
    const/4 v13, 0x0

    .line 159
    .local v13, "pInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ssrm/wluc/WlucThread;->mContextSub:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ssrm/wluc/WlucThread;->mPackageName:Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    .line 164
    :goto_0
    if-eqz v13, :cond_3

    .line 165
    iget-object v0, v13, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/ssrm/wluc/WlucThread;->mVersionname:Ljava/lang/String;

    .line 170
    :goto_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 172
    .local v3, "apiLevel":I
    const/4 v9, 0x0

    .line 173
    .local v9, "mcc":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ssrm/wluc/WlucThread;->mContextSub:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/ssrm/wluc/WlucThread;->IsWifiOnlyModel(Landroid/content/Context;)Z

    move-result v22

    if-eqz v22, :cond_4

    .line 174
    const-string v9, "505"

    .line 179
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ssrm/wluc/WlucThread;->getMNC()Ljava/lang/String;

    move-result-object v10

    .line 181
    .local v10, "mnc":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/ssrm/wluc/WlucThread;->getCSC()Ljava/lang/String;

    move-result-object v5

    .line 191
    .local v5, "csc":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ssrm/wluc/WlucThread;->mRequestType:I

    move/from16 v22, v0

    const/16 v23, 0x60

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_b

    .line 194
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v23, Lcom/android/server/ssrm/wluc/WlucThread;->SERVER_URL:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "?"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 195
    .local v15, "server_url":Ljava/lang/String;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "appInfo="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ssrm/wluc/WlucThread;->mPackageName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "@"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ssrm/wluc/WlucThread;->mVersionname:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 196
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "&deviceId="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 197
    if-eqz v9, :cond_5

    .line 198
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "&mcc="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 202
    :goto_3
    if-eqz v10, :cond_6

    .line 203
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "&mnc="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 207
    :goto_4
    if-eqz v5, :cond_7

    .line 208
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "&csc="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 212
    :goto_5
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "&openApi="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "&pd="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-direct/range {p0 .. p0}, Lcom/android/server/ssrm/wluc/WlucThread;->getPD()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 214
    const/4 v14, 0x0

    .line 216
    .local v14, "result":Z
    :try_start_1
    sget-object v22, Lcom/android/server/ssrm/wluc/WlucThread;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "check url : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/server/ssrm/wluc/WlucThread;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    new-instance v20, Ljava/net/URL;

    move-object/from16 v0, v20

    invoke-direct {v0, v15}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 218
    .local v20, "url":Ljava/net/URL;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/ssrm/wluc/WlucThread;->checkUpdate(Ljava/net/URL;)Z
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v14

    .line 222
    if-nez v14, :cond_2

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ssrm/wluc/WlucThread;->mHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    if-eqz v22, :cond_1

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ssrm/wluc/WlucThread;->mHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v12

    .line 225
    .local v12, "msg":Landroid/os/Message;
    const/16 v22, 0x6

    move/from16 v0, v22

    iput v0, v12, Landroid/os/Message;->what:I

    .line 226
    const/16 v22, 0x58

    move/from16 v0, v22

    iput v0, v12, Landroid/os/Message;->arg1:I

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ssrm/wluc/WlucThread;->mPackageName:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iput-object v0, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ssrm/wluc/WlucThread;->mHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 230
    .end local v12    # "msg":Landroid/os/Message;
    :cond_1
    sget-object v22, Lcom/android/server/ssrm/wluc/WlucThread;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "[Step] end update check : mPackageName = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ssrm/wluc/WlucThread;->mPackageName:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " result = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .end local v20    # "url":Ljava/net/URL;
    :goto_6
    invoke-static/range {v22 .. v23}, Lcom/android/server/ssrm/wluc/WlucThread;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    .end local v14    # "result":Z
    .end local v15    # "server_url":Ljava/lang/String;
    :cond_2
    :goto_7
    return-void

    .line 160
    .end local v3    # "apiLevel":I
    .end local v5    # "csc":Ljava/lang/String;
    .end local v9    # "mcc":Ljava/lang/String;
    .end local v10    # "mnc":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 161
    .local v7, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 167
    .end local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_3
    const-string v22, "1.0.0"

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/ssrm/wluc/WlucThread;->mVersionname:Ljava/lang/String;

    goto/16 :goto_1

    .line 176
    .restart local v3    # "apiLevel":I
    .restart local v9    # "mcc":Ljava/lang/String;
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ssrm/wluc/WlucThread;->getMCC()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_2

    .line 200
    .restart local v5    # "csc":Ljava/lang/String;
    .restart local v10    # "mnc":Ljava/lang/String;
    .restart local v15    # "server_url":Ljava/lang/String;
    :cond_5
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "&mcc="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_3

    .line 205
    :cond_6
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "&mnc="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_4

    .line 210
    :cond_7
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "&csc="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_5

    .line 219
    .restart local v14    # "result":Z
    :catch_1
    move-exception v8

    .line 220
    .local v8, "e1":Ljava/net/MalformedURLException;
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 222
    if-nez v14, :cond_2

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ssrm/wluc/WlucThread;->mHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    if-eqz v22, :cond_8

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ssrm/wluc/WlucThread;->mHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v12

    .line 225
    .restart local v12    # "msg":Landroid/os/Message;
    const/16 v22, 0x6

    move/from16 v0, v22

    iput v0, v12, Landroid/os/Message;->what:I

    .line 226
    const/16 v22, 0x58

    move/from16 v0, v22

    iput v0, v12, Landroid/os/Message;->arg1:I

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ssrm/wluc/WlucThread;->mPackageName:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iput-object v0, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ssrm/wluc/WlucThread;->mHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 230
    .end local v12    # "msg":Landroid/os/Message;
    :cond_8
    sget-object v22, Lcom/android/server/ssrm/wluc/WlucThread;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "[Step] end update check : mPackageName = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ssrm/wluc/WlucThread;->mPackageName:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " result = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_6

    .line 222
    .end local v8    # "e1":Ljava/net/MalformedURLException;
    :catchall_0
    move-exception v22

    if-nez v14, :cond_a

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ssrm/wluc/WlucThread;->mHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    if-eqz v23, :cond_9

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ssrm/wluc/WlucThread;->mHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v12

    .line 225
    .restart local v12    # "msg":Landroid/os/Message;
    const/16 v23, 0x6

    move/from16 v0, v23

    iput v0, v12, Landroid/os/Message;->what:I

    .line 226
    const/16 v23, 0x58

    move/from16 v0, v23

    iput v0, v12, Landroid/os/Message;->arg1:I

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ssrm/wluc/WlucThread;->mPackageName:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iput-object v0, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ssrm/wluc/WlucThread;->mHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 230
    .end local v12    # "msg":Landroid/os/Message;
    :cond_9
    sget-object v23, Lcom/android/server/ssrm/wluc/WlucThread;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[Step] end update check : mPackageName = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ssrm/wluc/WlucThread;->mPackageName:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " result = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/android/server/ssrm/wluc/WlucThread;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    :cond_a
    throw v22

    .line 234
    .end local v14    # "result":Z
    .end local v15    # "server_url":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ssrm/wluc/WlucThread;->mRequestType:I

    move/from16 v22, v0

    const/16 v23, 0x61

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_2

    .line 237
    sget-object v18, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 238
    .local v18, "szModel":Ljava/lang/String;
    const-string v19, "SAMSUNG-"

    .line 240
    .local v19, "szPrefix":Ljava/lang/String;
    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_c

    .line 241
    const-string v22, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 245
    :cond_c
    const-string v16, ""

    .line 246
    .local v16, "szMCC":Ljava/lang/String;
    const-string v17, ""

    .line 251
    .local v17, "szMNC":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ssrm/wluc/WlucThread;->mContextSub:Landroid/content/Context;

    move-object/from16 v22, v0

    const-string v23, "connectivity"

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    .line 253
    .local v4, "cManager":Landroid/net/ConnectivityManager;
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v11

    .line 254
    .local v11, "mobile":Landroid/net/NetworkInfo;
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v21

    .line 256
    .local v21, "wifi":Landroid/net/NetworkInfo;
    if-eqz v21, :cond_d

    invoke-virtual/range {v21 .. v21}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v22

    if-eqz v22, :cond_d

    .line 257
    const-string v16, "505"

    .line 258
    const-string v17, "00"

    .line 267
    :goto_8
    sget-object v15, Lcom/android/server/ssrm/wluc/WlucThread;->SERVER_URL_DOWNLOAD:Ljava/lang/String;

    .line 268
    .restart local v15    # "server_url":Ljava/lang/String;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "?appId="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ssrm/wluc/WlucThread;->mPackageName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 269
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "&encImei="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-direct/range {p0 .. p0}, Lcom/android/server/ssrm/wluc/WlucThread;->getIMEI()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 270
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "&deviceId="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 271
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "&mcc="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 272
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "&mnc="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 273
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "&csc="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static {}, Lcom/android/server/ssrm/wluc/WlucThread;->getCSC()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 274
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "&sdkVer="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget v23, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 275
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "&pd="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-direct/range {p0 .. p0}, Lcom/android/server/ssrm/wluc/WlucThread;->getPD()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 277
    const/4 v14, 0x0

    .line 280
    .restart local v14    # "result":Z
    :try_start_3
    sget-object v22, Lcom/android/server/ssrm/wluc/WlucThread;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "StubDownload url : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/server/ssrm/wluc/WlucThread;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    new-instance v20, Ljava/net/URL;

    move-object/from16 v0, v20

    invoke-direct {v0, v15}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 282
    .restart local v20    # "url":Ljava/net/URL;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/ssrm/wluc/WlucThread;->checkDownload(Ljava/net/URL;)Z
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v14

    .line 286
    sget-object v22, Lcom/android/server/ssrm/wluc/WlucThread;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "end StubDownload : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .end local v20    # "url":Ljava/net/URL;
    :goto_9
    invoke-static/range {v22 .. v23}, Lcom/android/server/ssrm/wluc/WlucThread;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 259
    .end local v14    # "result":Z
    .end local v15    # "server_url":Ljava/lang/String;
    :cond_d
    if-eqz v11, :cond_e

    invoke-virtual {v11}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v22

    if-eqz v22, :cond_e

    .line 260
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ssrm/wluc/WlucThread;->getMCC()Ljava/lang/String;

    move-result-object v16

    .line 261
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ssrm/wluc/WlucThread;->getMNC()Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_8

    .line 263
    :cond_e
    sget-object v22, Lcom/android/server/ssrm/wluc/WlucThread;->TAG:Ljava/lang/String;

    const-string v23, "Connection failed"

    invoke-static/range {v22 .. v23}, Lcom/android/server/ssrm/wluc/WlucThread;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 283
    .restart local v14    # "result":Z
    .restart local v15    # "server_url":Ljava/lang/String;
    :catch_2
    move-exception v8

    .line 284
    .restart local v8    # "e1":Ljava/net/MalformedURLException;
    :try_start_4
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 286
    sget-object v22, Lcom/android/server/ssrm/wluc/WlucThread;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "end StubDownload : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    goto :goto_9

    .end local v8    # "e1":Ljava/net/MalformedURLException;
    :catchall_1
    move-exception v22

    sget-object v23, Lcom/android/server/ssrm/wluc/WlucThread;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "end StubDownload : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/android/server/ssrm/wluc/WlucThread;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    throw v22
.end method
