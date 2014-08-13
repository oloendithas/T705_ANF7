.class public Lcom/nuance/connect/service/comm/CommandQueue;
.super Ljava/lang/Object;
.source "CommandQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/service/comm/CommandQueue$MessageHandler;,
        Lcom/nuance/connect/service/comm/CommandQueue$ConnectionPool;,
        Lcom/nuance/connect/service/comm/CommandQueue$NetworkExpirer;,
        Lcom/nuance/connect/service/comm/CommandQueue$PriorityTaskComparator;,
        Lcom/nuance/connect/service/comm/CommandQueue$TransactionRunnable;,
        Lcom/nuance/connect/service/comm/CommandQueue$ConnectionStatus;
    }
.end annotation


# static fields
.field private static final BACKDOWN_START:I = 0x0

.field private static final DEFAULT_DOWNLOAD_TIMEOUT_SECONDS:I = 0xa

.field private static final MAX_DELAY_SECONDS:I = 0xa8c0

.field private static final MESSAGE_CHECK_QUEUE:I = 0x3

.field private static final MESSAGE_LAST:I = 0x3

.field private static final MESSAGE_QUEUE_PAUSE:I = 0x1

.field private static final MESSAGE_QUEUE_RESUME:I = 0x2

.field private static final THREAD_POOL_MAX_THREADS:I = 0x6

.field private static final THREAD_POOL_THREADS:I = 0x3

.field private static final THREAD_POOL_TIMEOUT_SECONDS:I = 0x3c


# instance fields
.field private volatile active:Z

.field private final activeTransactions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nuance/connect/service/comm/CommandQueue$TransactionRunnable;",
            ">;"
        }
    .end annotation
.end field

.field private final analyticsScribe:Lcom/nuance/connect/service/comm/AnalyticsDataUsageScribeImpl;

.field private volatile backdownCounter:I

.field private backdownDelay:I

.field private boolListener:Lcom/nuance/connect/internal/Property$ValueListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nuance/connect/internal/Property$ValueListener",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private broadcastResponseEnabled:Z

.field private final callback:Lcom/nuance/connect/service/comm/ConnectorCallback;

.field private final client:Lcom/nuance/connect/service/ConnectClient;

.field private final commandsInProgress:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/nuance/connect/service/comm/Command;",
            ">;"
        }
    .end annotation
.end field

.field private concurrentThreadCount:I

.field private final connection:Lcom/nuance/connect/service/comm/CommandQueue$ConnectionStatus;

.field private final connectionHandler:Lcom/nuance/connect/service/comm/CommandQueue$MessageHandler;

.field private defaultDelaySeconds:I

.field private delayTimeoutSeconds:I

.field private volatile deviceId:Ljava/lang/String;

.field private final executor:Lcom/nuance/connect/service/comm/CommandQueue$ConnectionPool;

.field private volatile goodConnection:Z

.field private volatile hasConnectivity:Z

.field private final httpConnector:Lcom/nuance/connect/service/comm/HttpConnector;

.field private intListener:Lcom/nuance/connect/internal/Property$ValueListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nuance/connect/internal/Property$ValueListener",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private log:Lcom/nuance/connect/util/Logger$Log;

.field private final mainHandler:Landroid/os/Handler;

.field private mqttEnabled:Z

.field private networkListener:Lcom/nuance/connect/system/NetworkListener;

.field private final pendingQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nuance/connect/service/comm/CommandQueue$TransactionRunnable;",
            ">;"
        }
    .end annotation
.end field

.field rejectedHandler:Ljava/util/concurrent/RejectedExecutionHandler;

.field private volatile requestKey:Ljava/lang/String;

.field responseListener:Lcom/nuance/connect/service/ConnectClient$ResponseListener;

.field private volatile sessionId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/nuance/connect/service/ConnectClient;)V
    .locals 10
    .param p1, "cc"    # Lcom/nuance/connect/service/ConnectClient;

    .prologue
    const/4 v2, 0x3

    const/4 v3, 0x0

    .line 717
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue;->log:Lcom/nuance/connect/util/Logger$Log;

    .line 63
    iput v3, p0, Lcom/nuance/connect/service/comm/CommandQueue;->backdownCounter:I

    .line 64
    const/16 v0, 0x12c

    iput v0, p0, Lcom/nuance/connect/service/comm/CommandQueue;->defaultDelaySeconds:I

    .line 67
    const/16 v0, 0xa

    iput v0, p0, Lcom/nuance/connect/service/comm/CommandQueue;->delayTimeoutSeconds:I

    .line 72
    iput v2, p0, Lcom/nuance/connect/service/comm/CommandQueue;->concurrentThreadCount:I

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue;->activeTransactions:Ljava/util/List;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue;->pendingQueue:Ljava/util/List;

    .line 79
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue;->commandsInProgress:Ljava/util/Set;

    .line 102
    iput-boolean v3, p0, Lcom/nuance/connect/service/comm/CommandQueue;->goodConnection:Z

    .line 113
    iput-boolean v3, p0, Lcom/nuance/connect/service/comm/CommandQueue;->mqttEnabled:Z

    .line 117
    new-instance v0, Lcom/nuance/connect/service/comm/CommandQueue$1;

    invoke-direct {v0, p0}, Lcom/nuance/connect/service/comm/CommandQueue$1;-><init>(Lcom/nuance/connect/service/comm/CommandQueue;)V

    iput-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue;->intListener:Lcom/nuance/connect/internal/Property$ValueListener;

    .line 138
    new-instance v0, Lcom/nuance/connect/service/comm/CommandQueue$2;

    invoke-direct {v0, p0}, Lcom/nuance/connect/service/comm/CommandQueue$2;-><init>(Lcom/nuance/connect/service/comm/CommandQueue;)V

    iput-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue;->boolListener:Lcom/nuance/connect/internal/Property$ValueListener;

    .line 160
    new-instance v0, Lcom/nuance/connect/service/comm/CommandQueue$3;

    invoke-direct {v0, p0}, Lcom/nuance/connect/service/comm/CommandQueue$3;-><init>(Lcom/nuance/connect/service/comm/CommandQueue;)V

    iput-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue;->networkListener:Lcom/nuance/connect/system/NetworkListener;

    .line 199
    new-instance v0, Lcom/nuance/connect/service/comm/CommandQueue$4;

    invoke-direct {v0, p0}, Lcom/nuance/connect/service/comm/CommandQueue$4;-><init>(Lcom/nuance/connect/service/comm/CommandQueue;)V

    iput-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue;->rejectedHandler:Ljava/util/concurrent/RejectedExecutionHandler;

    .line 407
    new-instance v0, Lcom/nuance/connect/service/comm/CommandQueue$5;

    invoke-direct {v0, p0}, Lcom/nuance/connect/service/comm/CommandQueue$5;-><init>(Lcom/nuance/connect/service/comm/CommandQueue;)V

    iput-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue;->connection:Lcom/nuance/connect/service/comm/CommandQueue$ConnectionStatus;

    .line 414
    new-instance v0, Lcom/nuance/connect/service/comm/CommandQueue$6;

    invoke-direct {v0, p0}, Lcom/nuance/connect/service/comm/CommandQueue$6;-><init>(Lcom/nuance/connect/service/comm/CommandQueue;)V

    iput-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue;->callback:Lcom/nuance/connect/service/comm/ConnectorCallback;

    .line 718
    iput-object p1, p0, Lcom/nuance/connect/service/comm/CommandQueue;->client:Lcom/nuance/connect/service/ConnectClient;

    .line 720
    new-instance v0, Lcom/nuance/connect/service/comm/AnalyticsDataUsageScribeImpl;

    iget-object v1, p0, Lcom/nuance/connect/service/comm/CommandQueue;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-direct {v0, v1}, Lcom/nuance/connect/service/comm/AnalyticsDataUsageScribeImpl;-><init>(Lcom/nuance/connect/service/ConnectClient;)V

    iput-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue;->analyticsScribe:Lcom/nuance/connect/service/comm/AnalyticsDataUsageScribeImpl;

    .line 723
    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->DEFAULT_DELAY:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    iget-object v3, p0, Lcom/nuance/connect/service/comm/CommandQueue;->intListener:Lcom/nuance/connect/internal/Property$ValueListener;

    invoke-virtual {v0, v1, v3}, Lcom/nuance/connect/service/ConnectClient;->addListener(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Lcom/nuance/connect/internal/Property$ValueListener;)V

    .line 724
    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->NETWORK_TIMEOUT:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    iget-object v3, p0, Lcom/nuance/connect/service/comm/CommandQueue;->intListener:Lcom/nuance/connect/internal/Property$ValueListener;

    invoke-virtual {v0, v1, v3}, Lcom/nuance/connect/service/ConnectClient;->addListener(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Lcom/nuance/connect/internal/Property$ValueListener;)V

    .line 725
    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->CONNECTION_LIMIT:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    iget-object v3, p0, Lcom/nuance/connect/service/comm/CommandQueue;->intListener:Lcom/nuance/connect/internal/Property$ValueListener;

    invoke-virtual {v0, v1, v3}, Lcom/nuance/connect/service/ConnectClient;->addListener(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Lcom/nuance/connect/internal/Property$ValueListener;)V

    .line 726
    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->HTTP_ANALYTICS_TIME:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    iget-object v3, p0, Lcom/nuance/connect/service/comm/CommandQueue;->intListener:Lcom/nuance/connect/internal/Property$ValueListener;

    invoke-virtual {v0, v1, v3}, Lcom/nuance/connect/service/ConnectClient;->addListener(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Lcom/nuance/connect/internal/Property$ValueListener;)V

    .line 728
    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->MQTT_ENABLED:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    iget-object v3, p0, Lcom/nuance/connect/service/comm/CommandQueue;->boolListener:Lcom/nuance/connect/internal/Property$ValueListener;

    invoke-virtual {v0, v1, v3}, Lcom/nuance/connect/service/ConnectClient;->addListener(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Lcom/nuance/connect/internal/Property$ValueListener;)V

    .line 729
    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->BROADCAST_RESPONSE:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    iget-object v3, p0, Lcom/nuance/connect/service/comm/CommandQueue;->boolListener:Lcom/nuance/connect/internal/Property$ValueListener;

    invoke-virtual {v0, v1, v3}, Lcom/nuance/connect/service/ConnectClient;->addListener(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Lcom/nuance/connect/internal/Property$ValueListener;)V

    .line 731
    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue;->mainHandler:Landroid/os/Handler;

    .line 732
    new-instance v0, Lcom/nuance/connect/service/comm/CommandQueue$MessageHandler;

    invoke-direct {v0, p0}, Lcom/nuance/connect/service/comm/CommandQueue$MessageHandler;-><init>(Lcom/nuance/connect/service/comm/CommandQueue;)V

    iput-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue;->connectionHandler:Lcom/nuance/connect/service/comm/CommandQueue$MessageHandler;

    .line 733
    invoke-static {}, Lcom/nuance/connect/service/security/RequestKey;->getKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue;->requestKey:Ljava/lang/String;

    .line 736
    new-instance v0, Lcom/nuance/connect/service/comm/CommandQueue$ConnectionPool;

    const/4 v3, 0x6

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/PriorityBlockingQueue;

    const/16 v1, 0xb

    new-instance v8, Lcom/nuance/connect/service/comm/CommandQueue$PriorityTaskComparator;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Lcom/nuance/connect/service/comm/CommandQueue$PriorityTaskComparator;-><init>(Lcom/nuance/connect/service/comm/CommandQueue$1;)V

    invoke-direct {v7, v1, v8}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>(ILjava/util/Comparator;)V

    iget-object v8, p0, Lcom/nuance/connect/service/comm/CommandQueue;->rejectedHandler:Ljava/util/concurrent/RejectedExecutionHandler;

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/nuance/connect/service/comm/CommandQueue$ConnectionPool;-><init>(Lcom/nuance/connect/service/comm/CommandQueue;IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue;->executor:Lcom/nuance/connect/service/comm/CommandQueue$ConnectionPool;

    .line 740
    new-instance v0, Lcom/nuance/connect/service/comm/HttpConnector;

    iget-object v1, p0, Lcom/nuance/connect/service/comm/CommandQueue;->client:Lcom/nuance/connect/service/ConnectClient;

    iget-object v2, p0, Lcom/nuance/connect/service/comm/CommandQueue;->connection:Lcom/nuance/connect/service/comm/CommandQueue$ConnectionStatus;

    iget-object v3, p0, Lcom/nuance/connect/service/comm/CommandQueue;->callback:Lcom/nuance/connect/service/comm/ConnectorCallback;

    iget-object v4, p0, Lcom/nuance/connect/service/comm/CommandQueue;->analyticsScribe:Lcom/nuance/connect/service/comm/AnalyticsDataUsageScribeImpl;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nuance/connect/service/comm/HttpConnector;-><init>(Lcom/nuance/connect/service/ConnectClient;Lcom/nuance/connect/service/comm/CommandQueue$ConnectionStatus;Lcom/nuance/connect/service/comm/ConnectorCallback;Lcom/nuance/connect/service/comm/AnalyticsDataUsageScribe;)V

    iput-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue;->httpConnector:Lcom/nuance/connect/service/comm/HttpConnector;

    .line 742
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/connect/service/comm/CommandQueue;)Lcom/nuance/connect/util/Logger$Log;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/connect/service/comm/CommandQueue;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue;->log:Lcom/nuance/connect/util/Logger$Log;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/connect/service/comm/CommandQueue;)I
    .locals 1
    .param p0, "x0"    # Lcom/nuance/connect/service/comm/CommandQueue;

    .prologue
    .line 48
    iget v0, p0, Lcom/nuance/connect/service/comm/CommandQueue;->defaultDelaySeconds:I

    return v0
.end method

.method static synthetic access$1000(Lcom/nuance/connect/service/comm/CommandQueue;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/connect/service/comm/CommandQueue;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue;->activeTransactions:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$102(Lcom/nuance/connect/service/comm/CommandQueue;I)I
    .locals 0
    .param p0, "x0"    # Lcom/nuance/connect/service/comm/CommandQueue;
    .param p1, "x1"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/nuance/connect/service/comm/CommandQueue;->defaultDelaySeconds:I

    return p1
.end method

.method static synthetic access$1100(Lcom/nuance/connect/service/comm/CommandQueue;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/connect/service/comm/CommandQueue;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue;->pendingQueue:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/nuance/connect/service/comm/CommandQueue;Lcom/nuance/connect/service/comm/CommandQueue$TransactionRunnable;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/connect/service/comm/CommandQueue;
    .param p1, "x1"    # Lcom/nuance/connect/service/comm/CommandQueue$TransactionRunnable;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/nuance/connect/service/comm/CommandQueue;->processTransaction(Lcom/nuance/connect/service/comm/CommandQueue$TransactionRunnable;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/nuance/connect/service/comm/CommandQueue;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/connect/service/comm/CommandQueue;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue;->mainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/nuance/connect/service/comm/CommandQueue;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nuance/connect/service/comm/CommandQueue;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/nuance/connect/service/comm/CommandQueue;->active:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/nuance/connect/service/comm/CommandQueue;)Lcom/nuance/connect/service/ConnectClient;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/connect/service/comm/CommandQueue;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue;->client:Lcom/nuance/connect/service/ConnectClient;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/nuance/connect/service/comm/CommandQueue;)Lcom/nuance/connect/service/comm/CommandQueue$MessageHandler;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/connect/service/comm/CommandQueue;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue;->connectionHandler:Lcom/nuance/connect/service/comm/CommandQueue$MessageHandler;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/nuance/connect/service/comm/CommandQueue;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nuance/connect/service/comm/CommandQueue;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/nuance/connect/service/comm/CommandQueue;->goodConnection:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/nuance/connect/service/comm/CommandQueue;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/nuance/connect/service/comm/CommandQueue;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/nuance/connect/service/comm/CommandQueue;->goodConnection:Z

    return p1
.end method

.method static synthetic access$1802(Lcom/nuance/connect/service/comm/CommandQueue;I)I
    .locals 0
    .param p0, "x0"    # Lcom/nuance/connect/service/comm/CommandQueue;
    .param p1, "x1"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/nuance/connect/service/comm/CommandQueue;->backdownCounter:I

    return p1
.end method

.method static synthetic access$1902(Lcom/nuance/connect/service/comm/CommandQueue;I)I
    .locals 0
    .param p0, "x0"    # Lcom/nuance/connect/service/comm/CommandQueue;
    .param p1, "x1"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/nuance/connect/service/comm/CommandQueue;->backdownDelay:I

    return p1
.end method

.method static synthetic access$200(Lcom/nuance/connect/service/comm/CommandQueue;)Lcom/nuance/connect/service/comm/AnalyticsDataUsageScribeImpl;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/connect/service/comm/CommandQueue;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue;->analyticsScribe:Lcom/nuance/connect/service/comm/AnalyticsDataUsageScribeImpl;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/nuance/connect/service/comm/CommandQueue;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/connect/service/comm/CommandQueue;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/nuance/connect/service/comm/CommandQueue;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/nuance/connect/service/comm/CommandQueue;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/nuance/connect/service/comm/CommandQueue;->sessionId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/nuance/connect/service/comm/CommandQueue;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/connect/service/comm/CommandQueue;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/nuance/connect/service/comm/CommandQueue;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/nuance/connect/service/comm/CommandQueue;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/nuance/connect/service/comm/CommandQueue;->deviceId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/nuance/connect/service/comm/CommandQueue;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/connect/service/comm/CommandQueue;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue;->requestKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/nuance/connect/service/comm/CommandQueue;)I
    .locals 1
    .param p0, "x0"    # Lcom/nuance/connect/service/comm/CommandQueue;

    .prologue
    .line 48
    iget v0, p0, Lcom/nuance/connect/service/comm/CommandQueue;->delayTimeoutSeconds:I

    return v0
.end method

.method static synthetic access$302(Lcom/nuance/connect/service/comm/CommandQueue;I)I
    .locals 0
    .param p0, "x0"    # Lcom/nuance/connect/service/comm/CommandQueue;
    .param p1, "x1"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/nuance/connect/service/comm/CommandQueue;->delayTimeoutSeconds:I

    return p1
.end method

.method static synthetic access$400(Lcom/nuance/connect/service/comm/CommandQueue;)I
    .locals 1
    .param p0, "x0"    # Lcom/nuance/connect/service/comm/CommandQueue;

    .prologue
    .line 48
    iget v0, p0, Lcom/nuance/connect/service/comm/CommandQueue;->concurrentThreadCount:I

    return v0
.end method

.method static synthetic access$402(Lcom/nuance/connect/service/comm/CommandQueue;I)I
    .locals 0
    .param p0, "x0"    # Lcom/nuance/connect/service/comm/CommandQueue;
    .param p1, "x1"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/nuance/connect/service/comm/CommandQueue;->concurrentThreadCount:I

    return p1
.end method

.method static synthetic access$500(Lcom/nuance/connect/service/comm/CommandQueue;)Lcom/nuance/connect/service/comm/CommandQueue$ConnectionPool;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/connect/service/comm/CommandQueue;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue;->executor:Lcom/nuance/connect/service/comm/CommandQueue$ConnectionPool;

    return-object v0
.end method

.method static synthetic access$600(Lcom/nuance/connect/service/comm/CommandQueue;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nuance/connect/service/comm/CommandQueue;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/nuance/connect/service/comm/CommandQueue;->broadcastResponseEnabled:Z

    return v0
.end method

.method static synthetic access$602(Lcom/nuance/connect/service/comm/CommandQueue;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/nuance/connect/service/comm/CommandQueue;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/nuance/connect/service/comm/CommandQueue;->broadcastResponseEnabled:Z

    return p1
.end method

.method static synthetic access$702(Lcom/nuance/connect/service/comm/CommandQueue;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/nuance/connect/service/comm/CommandQueue;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/nuance/connect/service/comm/CommandQueue;->hasConnectivity:Z

    return p1
.end method

.method static synthetic access$800(Lcom/nuance/connect/service/comm/CommandQueue;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/connect/service/comm/CommandQueue;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/nuance/connect/service/comm/CommandQueue;->resetTimers()V

    return-void
.end method

.method static synthetic access$900(Lcom/nuance/connect/service/comm/CommandQueue;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/connect/service/comm/CommandQueue;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/nuance/connect/service/comm/CommandQueue;->processQueue()V

    return-void
.end method

.method private static fib(I)I
    .locals 7
    .param p0, "n"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x2

    .line 912
    if-gez p0, :cond_0

    .line 923
    :goto_0
    return v2

    .line 914
    :cond_0
    const/4 v3, 0x3

    new-array v1, v3, [I

    fill-array-data v1, :array_0

    .line 915
    .local v1, "n0":[I
    if-gt p0, v5, :cond_1

    .line 916
    aget v2, v1, p0

    goto :goto_0

    .line 918
    :cond_1
    const/4 v0, 0x2

    .local v0, "i":I
    :goto_1
    if-ge v0, p0, :cond_2

    .line 919
    aget v3, v1, v6

    aput v3, v1, v2

    .line 920
    aget v3, v1, v5

    aput v3, v1, v6

    .line 921
    aget v3, v1, v2

    aget v4, v1, v6

    add-int/2addr v3, v4

    aput v3, v1, v5

    .line 918
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 923
    :cond_2
    aget v2, v1, v5

    goto :goto_0

    .line 914
    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x1
    .end array-data
.end method

.method private getBackdownDelay()I
    .locals 1

    .prologue
    .line 946
    iget v0, p0, Lcom/nuance/connect/service/comm/CommandQueue;->backdownDelay:I

    return v0
.end method

.method private incrementBackdownDelay()V
    .locals 4

    .prologue
    .line 932
    iget v3, p0, Lcom/nuance/connect/service/comm/CommandQueue;->backdownCounter:I

    add-int/lit8 v2, v3, 0x1

    .line 933
    .local v2, "n":I
    iget v3, p0, Lcom/nuance/connect/service/comm/CommandQueue;->backdownCounter:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Lcom/nuance/connect/service/comm/CommandQueue;->fib(I)I

    move-result v1

    .line 934
    .local v1, "fibn":I
    iget v3, p0, Lcom/nuance/connect/service/comm/CommandQueue;->defaultDelaySeconds:I

    mul-int v0, v1, v3

    .line 935
    .local v0, "delay":I
    const v3, 0xa8c0

    if-gt v0, v3, :cond_0

    .line 936
    iput v0, p0, Lcom/nuance/connect/service/comm/CommandQueue;->backdownDelay:I

    .line 937
    iget v3, p0, Lcom/nuance/connect/service/comm/CommandQueue;->backdownCounter:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/nuance/connect/service/comm/CommandQueue;->backdownCounter:I

    .line 939
    :cond_0
    return-void
.end method

.method private isCommandInQueue(Ljava/lang/String;Ljava/util/List;)Z
    .locals 3
    .param p1, "commandFamily"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 689
    .local p2, "commands":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/nuance/connect/service/comm/CommandQueue;->commandsInProgress:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/comm/Command;

    .line 690
    .local v0, "cmd":Lcom/nuance/connect/service/comm/Command;
    iget-object v2, v0, Lcom/nuance/connect/service/comm/Command;->commandFamily:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/nuance/connect/service/comm/Command;->command:Ljava/lang/String;

    invoke-interface {p2, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 692
    const/4 v2, 0x1

    .line 695
    .end local v0    # "cmd":Lcom/nuance/connect/service/comm/Command;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private processQueue()V
    .locals 12

    .prologue
    .line 810
    iget-object v7, p0, Lcom/nuance/connect/service/comm/CommandQueue;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "processQueue size="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/nuance/connect/service/comm/CommandQueue;->pendingQueue:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "; executor active threads="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/nuance/connect/service/comm/CommandQueue;->executor:Lcom/nuance/connect/service/comm/CommandQueue$ConnectionPool;

    invoke-virtual {v9}, Ljava/util/concurrent/ThreadPoolExecutor;->getActiveCount()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "; completed tasks="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/nuance/connect/service/comm/CommandQueue;->executor:Lcom/nuance/connect/service/comm/CommandQueue$ConnectionPool;

    invoke-virtual {v9}, Ljava/util/concurrent/ThreadPoolExecutor;->getCompletedTaskCount()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 814
    invoke-virtual {p0}, Lcom/nuance/connect/service/comm/CommandQueue;->isOnline()Z

    move-result v7

    if-nez v7, :cond_0

    .line 815
    iget-object v7, p0, Lcom/nuance/connect/service/comm/CommandQueue;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v8, "not online... exiting"

    invoke-interface {v7, v8}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 893
    :goto_0
    return-void

    .line 822
    :cond_0
    iget-object v8, p0, Lcom/nuance/connect/service/comm/CommandQueue;->pendingQueue:Ljava/util/List;

    monitor-enter v8

    .line 823
    :try_start_0
    iget-object v7, p0, Lcom/nuance/connect/service/comm/CommandQueue;->pendingQueue:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/connect/service/comm/CommandQueue$TransactionRunnable;

    .line 824
    .local v4, "t":Lcom/nuance/connect/service/comm/CommandQueue$TransactionRunnable;
    invoke-virtual {v4}, Lcom/nuance/connect/service/comm/CommandQueue$TransactionRunnable;->getTransaction()Lcom/nuance/connect/service/comm/Transaction;

    move-result-object v5

    .line 826
    .local v5, "transaction":Lcom/nuance/connect/service/comm/Transaction;
    const/4 v1, 0x0

    .line 827
    .local v1, "delay":Z
    invoke-interface {v5}, Lcom/nuance/connect/service/comm/Transaction;->requiresDeviceId()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/nuance/connect/service/comm/CommandQueue;->deviceId:Ljava/lang/String;

    if-nez v7, :cond_3

    .line 828
    iget-object v7, p0, Lcom/nuance/connect/service/comm/CommandQueue;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v7}, Lcom/nuance/connect/service/ConnectClient;->getDeviceId()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/nuance/connect/service/comm/CommandQueue;->deviceId:Ljava/lang/String;

    .line 829
    iget-object v7, p0, Lcom/nuance/connect/service/comm/CommandQueue;->deviceId:Ljava/lang/String;

    if-nez v7, :cond_3

    .line 833
    iget-object v7, p0, Lcom/nuance/connect/service/comm/CommandQueue;->deviceId:Ljava/lang/String;

    if-nez v7, :cond_2

    sget-object v7, Lcom/nuance/connect/service/manager/DeviceManager;->COMMAND_FAMILY:Ljava/lang/String;

    sget-object v9, Lcom/nuance/connect/service/manager/DeviceManager;->REGISTRATION_COMMANDS:Ljava/util/List;

    invoke-direct {p0, v7, v9}, Lcom/nuance/connect/service/comm/CommandQueue;->isCommandInQueue(Ljava/lang/String;Ljava/util/List;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 836
    iget-object v7, p0, Lcom/nuance/connect/service/comm/CommandQueue;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v9, "processQueue()  deviceId is null, no queued register device command found -- sending register request"

    invoke-interface {v7, v9}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 837
    iget-object v7, p0, Lcom/nuance/connect/service/comm/CommandQueue;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v9, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_DEVICE_REGISTER:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v7, v9}, Lcom/nuance/connect/service/ConnectClient;->postMessage(Lcom/nuance/connect/internal/common/InternalMessages;)V

    .line 839
    :cond_2
    const/4 v1, 0x1

    .line 842
    :cond_3
    invoke-interface {v5}, Lcom/nuance/connect/service/comm/Transaction;->requiresSessionId()Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/nuance/connect/service/comm/CommandQueue;->sessionId:Ljava/lang/String;

    if-nez v7, :cond_5

    .line 843
    iget-object v7, p0, Lcom/nuance/connect/service/comm/CommandQueue;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v7}, Lcom/nuance/connect/service/ConnectClient;->getSessionId()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/nuance/connect/service/comm/CommandQueue;->sessionId:Ljava/lang/String;

    .line 844
    iget-object v7, p0, Lcom/nuance/connect/service/comm/CommandQueue;->sessionId:Ljava/lang/String;

    if-nez v7, :cond_5

    .line 845
    sget-object v7, Lcom/nuance/connect/service/manager/SessionManager;->COMMAND_FAMILY:Ljava/lang/String;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "create"

    aput-object v11, v9, v10

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-direct {p0, v7, v9}, Lcom/nuance/connect/service/comm/CommandQueue;->isCommandInQueue(Ljava/lang/String;Ljava/util/List;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 847
    iget-object v7, p0, Lcom/nuance/connect/service/comm/CommandQueue;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v9, "processQueue()  sessionId is null, no queued create session command found -- sending session create request"

    invoke-interface {v7, v9}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 848
    iget-object v7, p0, Lcom/nuance/connect/service/comm/CommandQueue;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v9, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_SESSION_CREATE:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v7, v9}, Lcom/nuance/connect/service/ConnectClient;->postMessage(Lcom/nuance/connect/internal/common/InternalMessages;)V

    .line 853
    :cond_4
    const/4 v1, 0x1

    .line 857
    :cond_5
    invoke-interface {v5}, Lcom/nuance/connect/service/comm/Transaction;->getRequestType()Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    move-result-object v6

    .line 858
    .local v6, "type":Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;
    if-nez v1, :cond_8

    .line 862
    iget-object v7, p0, Lcom/nuance/connect/service/comm/CommandQueue;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v7}, Lcom/nuance/connect/service/ConnectClient;->getConnectivity()Lcom/nuance/connect/system/Connectivity;

    move-result-object v0

    .line 863
    .local v0, "conn":Lcom/nuance/connect/system/Connectivity;
    invoke-virtual {v0}, Lcom/nuance/connect/system/Connectivity;->getForegroundConfiguration()Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    move-result-object v3

    .line 865
    .local v3, "networkConfig":Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;
    sget-object v7, Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;->BACKGROUND:Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    if-ne v6, v7, :cond_6

    .line 866
    invoke-virtual {v0}, Lcom/nuance/connect/system/Connectivity;->getBackgroundConfiguration()Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    move-result-object v3

    .line 869
    :cond_6
    invoke-virtual {v0}, Lcom/nuance/connect/system/Connectivity;->getState()Lcom/nuance/connect/system/NetworkState;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/nuance/connect/system/NetworkState;->hasConnectivity(Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 870
    const/4 v1, 0x1

    .line 873
    :cond_7
    if-nez v1, :cond_8

    invoke-interface {v5}, Lcom/nuance/connect/service/comm/Transaction;->wifiOnly()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {v0}, Lcom/nuance/connect/system/Connectivity;->getState()Lcom/nuance/connect/system/NetworkState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nuance/connect/system/NetworkState;->isWifi()Z

    move-result v7

    if-nez v7, :cond_8

    invoke-virtual {v3}, Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;->isWifiEnabled()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 875
    const/4 v1, 0x1

    .line 879
    .end local v0    # "conn":Lcom/nuance/connect/system/Connectivity;
    .end local v3    # "networkConfig":Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;
    :cond_8
    iget-object v7, p0, Lcom/nuance/connect/service/comm/CommandQueue;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "processQueue idx: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/nuance/connect/service/comm/CommandQueue;->pendingQueue:Ljava/util/List;

    invoke-interface {v10, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " transaction: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v5}, Lcom/nuance/connect/service/comm/Transaction;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " requireDevice="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v5}, Lcom/nuance/connect/service/comm/Transaction;->requiresDeviceId()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " requireSession="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v5}, Lcom/nuance/connect/service/comm/Transaction;->requiresSessionId()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " sessionId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/nuance/connect/service/comm/CommandQueue;->sessionId:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " type="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " delay="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v9}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 886
    if-nez v1, :cond_1

    .line 887
    iget-object v7, p0, Lcom/nuance/connect/service/comm/CommandQueue;->executor:Lcom/nuance/connect/service/comm/CommandQueue$ConnectionPool;

    invoke-virtual {v7, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 888
    iget-object v7, p0, Lcom/nuance/connect/service/comm/CommandQueue;->pendingQueue:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 892
    .end local v1    # "delay":Z
    .end local v4    # "t":Lcom/nuance/connect/service/comm/CommandQueue$TransactionRunnable;
    .end local v5    # "transaction":Lcom/nuance/connect/service/comm/Transaction;
    .end local v6    # "type":Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;
    :cond_9
    monitor-exit v8

    goto/16 :goto_0

    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7
.end method

.method private processTransaction(Lcom/nuance/connect/service/comm/CommandQueue$TransactionRunnable;)V
    .locals 7
    .param p1, "transactionRunnable"    # Lcom/nuance/connect/service/comm/CommandQueue$TransactionRunnable;

    .prologue
    .line 646
    invoke-virtual {p1}, Lcom/nuance/connect/service/comm/CommandQueue$TransactionRunnable;->getTransaction()Lcom/nuance/connect/service/comm/Transaction;

    move-result-object v3

    .line 647
    .local v3, "transaction":Lcom/nuance/connect/service/comm/Transaction;
    iget-object v4, p0, Lcom/nuance/connect/service/comm/CommandQueue;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "processTransaction Transaction: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v3}, Lcom/nuance/connect/service/comm/Transaction;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 649
    const/4 v1, 0x1

    .line 650
    .local v1, "processed":Z
    invoke-interface {v3}, Lcom/nuance/connect/service/comm/Transaction;->getNextCommand()Lcom/nuance/connect/service/comm/Command;

    move-result-object v0

    .line 651
    .end local v1    # "processed":Z
    .local v0, "c":Lcom/nuance/connect/service/comm/Command;
    :cond_0
    :goto_0
    iget-boolean v4, p0, Lcom/nuance/connect/service/comm/CommandQueue;->active:Z

    if-eqz v4, :cond_3

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 652
    invoke-virtual {p0}, Lcom/nuance/connect/service/comm/CommandQueue;->isOnline()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 653
    iget-object v4, p0, Lcom/nuance/connect/service/comm/CommandQueue;->commandsInProgress:Ljava/util/Set;

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 654
    const/4 v2, 0x0

    .line 655
    .local v2, "processedMQTT":Z
    iget-boolean v4, v0, Lcom/nuance/connect/service/comm/Command;->realTimeEnabled:Z

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/nuance/connect/service/comm/CommandQueue;->mqttEnabled:Z

    if-eqz v4, :cond_1

    .line 659
    :cond_1
    if-nez v2, :cond_2

    iget-boolean v4, v0, Lcom/nuance/connect/service/comm/Command;->realTimeOnly:Z

    if-nez v4, :cond_2

    .line 661
    iget-object v4, p0, Lcom/nuance/connect/service/comm/CommandQueue;->httpConnector:Lcom/nuance/connect/service/comm/HttpConnector;

    new-instance v5, Lcom/nuance/connect/service/comm/CommandQueue$NetworkExpirer;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/nuance/connect/service/comm/CommandQueue$NetworkExpirer;-><init>(Lcom/nuance/connect/service/comm/CommandQueue;Lcom/nuance/connect/service/comm/CommandQueue$1;)V

    invoke-virtual {v4, v0, v3, v5}, Lcom/nuance/connect/service/comm/HttpConnector;->processCommand(Lcom/nuance/connect/service/comm/Command;Lcom/nuance/connect/service/comm/Transaction;Lcom/nuance/connect/service/comm/CommandQueue$NetworkExpirer;)Z

    move-result v1

    .line 668
    :goto_1
    iget-object v4, p0, Lcom/nuance/connect/service/comm/CommandQueue;->commandsInProgress:Ljava/util/Set;

    invoke-interface {v4, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 669
    if-eqz v1, :cond_0

    .line 670
    invoke-interface {v3}, Lcom/nuance/connect/service/comm/Transaction;->getNextCommand()Lcom/nuance/connect/service/comm/Command;

    move-result-object v0

    goto :goto_0

    .line 664
    :cond_2
    move v1, v2

    .local v1, "processed":I
    goto :goto_1

    .line 675
    .end local v1    # "processed":I
    .end local v2    # "processedMQTT":Z
    :cond_3
    if-nez v1, :cond_4

    iget-boolean v4, p0, Lcom/nuance/connect/service/comm/CommandQueue;->active:Z

    if-nez v4, :cond_5

    .line 677
    :cond_4
    invoke-direct {p0, v3}, Lcom/nuance/connect/service/comm/CommandQueue;->removeTransaction(Lcom/nuance/connect/service/comm/Transaction;)Z

    .line 685
    :goto_2
    iget-object v4, p0, Lcom/nuance/connect/service/comm/CommandQueue;->connectionHandler:Lcom/nuance/connect/service/comm/CommandQueue$MessageHandler;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 686
    return-void

    .line 680
    :cond_5
    iget-object v4, p0, Lcom/nuance/connect/service/comm/CommandQueue;->pendingQueue:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private removeTransaction(Lcom/nuance/connect/service/comm/Transaction;)Z
    .locals 5
    .param p1, "t"    # Lcom/nuance/connect/service/comm/Transaction;

    .prologue
    .line 620
    const/4 v1, 0x0

    .line 622
    .local v1, "foundTransaction":Lcom/nuance/connect/service/comm/Transaction;
    :try_start_0
    iget-object v4, p0, Lcom/nuance/connect/service/comm/CommandQueue;->activeTransactions:Ljava/util/List;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 623
    :try_start_1
    iget-object v3, p0, Lcom/nuance/connect/service/comm/CommandQueue;->activeTransactions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/comm/CommandQueue$TransactionRunnable;

    .line 624
    .local v0, "c":Lcom/nuance/connect/service/comm/CommandQueue$TransactionRunnable;
    invoke-virtual {v0}, Lcom/nuance/connect/service/comm/CommandQueue$TransactionRunnable;->getTransaction()Lcom/nuance/connect/service/comm/Transaction;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 625
    iget-object v3, p0, Lcom/nuance/connect/service/comm/CommandQueue;->pendingQueue:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 626
    iget-object v3, p0, Lcom/nuance/connect/service/comm/CommandQueue;->activeTransactions:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 627
    invoke-virtual {v0}, Lcom/nuance/connect/service/comm/CommandQueue$TransactionRunnable;->getTransaction()Lcom/nuance/connect/service/comm/Transaction;

    move-result-object v1

    .line 628
    const/4 v3, 0x1

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 633
    if-eqz v1, :cond_1

    .line 634
    invoke-interface {v1}, Lcom/nuance/connect/service/comm/Transaction;->onEndProcessing()V

    .line 637
    .end local v0    # "c":Lcom/nuance/connect/service/comm/CommandQueue$TransactionRunnable;
    :cond_1
    :goto_0
    return v3

    .line 631
    :cond_2
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 633
    if-eqz v1, :cond_3

    .line 634
    invoke-interface {v1}, Lcom/nuance/connect/service/comm/Transaction;->onEndProcessing()V

    .line 637
    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    .line 631
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 633
    :catchall_1
    move-exception v3

    if-eqz v1, :cond_4

    .line 634
    invoke-interface {v1}, Lcom/nuance/connect/service/comm/Transaction;->onEndProcessing()V

    :cond_4
    throw v3
.end method

.method private resetTimers()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 699
    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue;->connectionHandler:Lcom/nuance/connect/service/comm/CommandQueue$MessageHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue;->executor:Lcom/nuance/connect/service/comm/CommandQueue$ConnectionPool;

    # getter for: Lcom/nuance/connect/service/comm/CommandQueue$ConnectionPool;->isPaused:Z
    invoke-static {v0}, Lcom/nuance/connect/service/comm/CommandQueue$ConnectionPool;->access$2400(Lcom/nuance/connect/service/comm/CommandQueue$ConnectionPool;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 700
    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue;->connectionHandler:Lcom/nuance/connect/service/comm/CommandQueue$MessageHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 701
    iput v2, p0, Lcom/nuance/connect/service/comm/CommandQueue;->backdownCounter:I

    .line 702
    iput v2, p0, Lcom/nuance/connect/service/comm/CommandQueue;->backdownDelay:I

    .line 703
    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue;->executor:Lcom/nuance/connect/service/comm/CommandQueue$ConnectionPool;

    invoke-virtual {v0}, Lcom/nuance/connect/service/comm/CommandQueue$ConnectionPool;->resume()V

    .line 705
    :cond_0
    return-void
.end method


# virtual methods
.method public alarmNotification(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "alarmType"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 900
    iget-boolean v0, p0, Lcom/nuance/connect/service/comm/CommandQueue;->mqttEnabled:Z

    if-eqz v0, :cond_0

    .line 903
    :cond_0
    return-void
.end method

.method protected handleMessage(Lcom/nuance/connect/service/comm/CommandQueue$MessageHandler;Landroid/os/Message;)V
    .locals 7
    .param p1, "handle"    # Lcom/nuance/connect/service/comm/CommandQueue$MessageHandler;
    .param p2, "message"    # Landroid/os/Message;

    .prologue
    .line 578
    const/4 v0, 0x1

    .line 579
    .local v0, "checkQueue":Z
    iget v5, p2, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 613
    :goto_0
    if-eqz v0, :cond_0

    .line 615
    invoke-direct {p0}, Lcom/nuance/connect/service/comm/CommandQueue;->processQueue()V

    .line 617
    :cond_0
    return-void

    .line 581
    :pswitch_0
    const/4 v0, 0x0

    .line 582
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/nuance/connect/service/comm/CommandQueue;->goodConnection:Z

    .line 583
    iget-object v5, p0, Lcom/nuance/connect/service/comm/CommandQueue;->executor:Lcom/nuance/connect/service/comm/CommandQueue$ConnectionPool;

    invoke-virtual {v5}, Lcom/nuance/connect/service/comm/CommandQueue$ConnectionPool;->pause()V

    .line 585
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 586
    .local v1, "data":Landroid/os/Bundle;
    const-string v5, "delay"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 587
    .local v2, "duration":I
    if-nez v2, :cond_1

    .line 588
    invoke-direct {p0}, Lcom/nuance/connect/service/comm/CommandQueue;->getBackdownDelay()I

    move-result v2

    .line 590
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MESSAGE_QUEUE_PAUSE for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " seconds"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 594
    .local v4, "notificationMessage":Ljava/lang/String;
    const/4 v5, 0x2

    invoke-virtual {p1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 595
    .local v3, "msg":Landroid/os/Message;
    iput v2, v3, Landroid/os/Message;->arg1:I

    .line 596
    invoke-virtual {p1, v3, v2}, Lcom/nuance/connect/service/comm/CommandQueue$MessageHandler;->sendMessageDelayedSeconds(Landroid/os/Message;I)V

    .line 597
    iget-object v5, p0, Lcom/nuance/connect/service/comm/CommandQueue;->log:Lcom/nuance/connect/util/Logger$Log;

    invoke-interface {v5, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto :goto_0

    .line 601
    .end local v1    # "data":Landroid/os/Bundle;
    .end local v2    # "duration":I
    .end local v3    # "msg":Landroid/os/Message;
    .end local v4    # "notificationMessage":Ljava/lang/String;
    :pswitch_1
    iget v5, p2, Landroid/os/Message;->arg1:I

    if-nez v5, :cond_2

    .line 602
    invoke-direct {p0}, Lcom/nuance/connect/service/comm/CommandQueue;->incrementBackdownDelay()V

    .line 604
    :cond_2
    iget-object v5, p0, Lcom/nuance/connect/service/comm/CommandQueue;->executor:Lcom/nuance/connect/service/comm/CommandQueue$ConnectionPool;

    invoke-virtual {v5}, Lcom/nuance/connect/service/comm/CommandQueue$ConnectionPool;->resume()V

    goto :goto_0

    .line 579
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isIdle()Z
    .locals 4

    .prologue
    .line 771
    iget-object v1, p0, Lcom/nuance/connect/service/comm/CommandQueue;->executor:Lcom/nuance/connect/service/comm/CommandQueue$ConnectionPool;

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->getActiveCount()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 772
    .local v0, "idle":Z
    :goto_0
    iget-object v1, p0, Lcom/nuance/connect/service/comm/CommandQueue;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isIdle="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 773
    return v0

    .line 771
    .end local v0    # "idle":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOnline()Z
    .locals 1

    .prologue
    .line 708
    iget-boolean v0, p0, Lcom/nuance/connect/service/comm/CommandQueue;->hasConnectivity:Z

    return v0
.end method

.method public registerResponseListener(Lcom/nuance/connect/service/ConnectClient$ResponseListener;)V
    .locals 0
    .param p1, "l"    # Lcom/nuance/connect/service/ConnectClient$ResponseListener;

    .prologue
    .line 896
    iput-object p1, p0, Lcom/nuance/connect/service/comm/CommandQueue;->responseListener:Lcom/nuance/connect/service/ConnectClient$ResponseListener;

    .line 897
    return-void
.end method

.method public retryConnection()V
    .locals 2

    .prologue
    .line 766
    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue;->connectionHandler:Lcom/nuance/connect/service/comm/CommandQueue$MessageHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 767
    return-void
.end method

.method public sendCommand(Lcom/nuance/connect/service/comm/Command;)V
    .locals 1
    .param p1, "cmd"    # Lcom/nuance/connect/service/comm/Command;

    .prologue
    .line 777
    new-instance v0, Lcom/nuance/connect/service/comm/SingleCommandTransaction;

    invoke-direct {v0, p1}, Lcom/nuance/connect/service/comm/SingleCommandTransaction;-><init>(Lcom/nuance/connect/service/comm/Command;)V

    .line 778
    .local v0, "t":Lcom/nuance/connect/service/comm/Transaction;
    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/comm/CommandQueue;->sendTransaction(Lcom/nuance/connect/service/comm/Transaction;)V

    .line 779
    return-void
.end method

.method public sendTransaction(Lcom/nuance/connect/service/comm/Transaction;)V
    .locals 7
    .param p1, "transaction"    # Lcom/nuance/connect/service/comm/Transaction;

    .prologue
    .line 782
    iget-object v4, p0, Lcom/nuance/connect/service/comm/CommandQueue;->activeTransactions:Ljava/util/List;

    monitor-enter v4

    .line 783
    :try_start_0
    iget-object v3, p0, Lcom/nuance/connect/service/comm/CommandQueue;->executor:Lcom/nuance/connect/service/comm/CommandQueue$ConnectionPool;

    invoke-virtual {v3}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 784
    iget-object v3, p0, Lcom/nuance/connect/service/comm/CommandQueue;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v5, "sendCommand after shutdown!"

    invoke-interface {v3, v5}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    .line 785
    monitor-exit v4

    .line 807
    :goto_0
    return-void

    .line 789
    :cond_0
    invoke-interface {p1}, Lcom/nuance/connect/service/comm/Transaction;->allowDuplicates()Z

    move-result v3

    if-nez v3, :cond_2

    .line 790
    iget-object v3, p0, Lcom/nuance/connect/service/comm/CommandQueue;->activeTransactions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/connect/service/comm/CommandQueue$TransactionRunnable;

    .line 791
    .local v2, "t":Lcom/nuance/connect/service/comm/CommandQueue$TransactionRunnable;
    invoke-virtual {v2, p1}, Lcom/nuance/connect/service/comm/CommandQueue$TransactionRunnable;->isSame(Lcom/nuance/connect/service/comm/Transaction;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 792
    iget-object v3, p0, Lcom/nuance/connect/service/comm/CommandQueue;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring duplicate of transaction: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1}, Lcom/nuance/connect/service/comm/Transaction;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 793
    monitor-exit v4

    goto :goto_0

    .line 806
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "t":Lcom/nuance/connect/service/comm/CommandQueue$TransactionRunnable;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 798
    :cond_2
    :try_start_1
    invoke-interface {p1}, Lcom/nuance/connect/service/comm/Transaction;->getRequestType()Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    move-result-object v3

    sget-object v5, Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;->USER:Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    if-ne v3, v5, :cond_3

    .line 799
    invoke-direct {p0}, Lcom/nuance/connect/service/comm/CommandQueue;->resetTimers()V

    .line 802
    :cond_3
    new-instance v1, Lcom/nuance/connect/service/comm/CommandQueue$TransactionRunnable;

    invoke-direct {v1, p0, p1}, Lcom/nuance/connect/service/comm/CommandQueue$TransactionRunnable;-><init>(Lcom/nuance/connect/service/comm/CommandQueue;Lcom/nuance/connect/service/comm/Transaction;)V

    .line 803
    .local v1, "r":Lcom/nuance/connect/service/comm/CommandQueue$TransactionRunnable;
    iget-object v3, p0, Lcom/nuance/connect/service/comm/CommandQueue;->activeTransactions:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 804
    iget-object v3, p0, Lcom/nuance/connect/service/comm/CommandQueue;->pendingQueue:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 805
    invoke-direct {p0}, Lcom/nuance/connect/service/comm/CommandQueue;->processQueue()V

    .line 806
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public start()V
    .locals 2

    .prologue
    .line 745
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/connect/service/comm/CommandQueue;->active:Z

    .line 746
    iget-boolean v0, p0, Lcom/nuance/connect/service/comm/CommandQueue;->mqttEnabled:Z

    if-eqz v0, :cond_0

    .line 750
    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getConnectivity()Lcom/nuance/connect/system/Connectivity;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/service/comm/CommandQueue;->networkListener:Lcom/nuance/connect/system/NetworkListener;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/system/Connectivity;->registerNetworkListener(Lcom/nuance/connect/system/NetworkListener;)V

    .line 751
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 754
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/connect/service/comm/CommandQueue;->active:Z

    .line 755
    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue;->connectionHandler:Lcom/nuance/connect/service/comm/CommandQueue$MessageHandler;

    if-eqz v0, :cond_0

    .line 756
    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue;->connectionHandler:Lcom/nuance/connect/service/comm/CommandQueue$MessageHandler;

    invoke-virtual {v0}, Lcom/nuance/connect/service/comm/CommandQueue$MessageHandler;->stop()V

    .line 760
    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getConnectivity()Lcom/nuance/connect/system/Connectivity;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/service/comm/CommandQueue;->networkListener:Lcom/nuance/connect/system/NetworkListener;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/system/Connectivity;->unregisterNetworkListener(Lcom/nuance/connect/system/NetworkListener;)V

    .line 762
    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue;->executor:Lcom/nuance/connect/service/comm/CommandQueue$ConnectionPool;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 763
    return-void
.end method
