.class public Lcom/nuance/connect/util/InstallMetadata;
.super Ljava/lang/Object;
.source "InstallMetadata.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/util/InstallMetadata$WeakReferenceHandlerCallback;,
        Lcom/nuance/connect/util/InstallMetadata$MetaDataClient;
    }
.end annotation


# static fields
.field private static final DATA_EXPIRED:I = 0x64

.field private static final DATA_EXPIRED_TIMEOUT:I = 0x7530

.field public static final INSTALL_AVAILABLE:I = 0x0

.field public static final INSTALL_CANCELED:I = 0x8

.field public static final INSTALL_DOWNLOAD:I = 0x3

.field public static final INSTALL_DOWNLOAD_COMPLETE:I = 0x4

.field public static final INSTALL_DOWNLOAD_VERIFIED:I = 0x5

.field public static final INSTALL_FAILED:I = 0x9

.field public static final INSTALL_INSTALLED:I = 0x7

.field public static final INSTALL_PENDING:I = 0x1

.field public static final INSTALL_PENDING_LICENSING:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final INSTALL_REMOVED:I = 0xa

.field public static final INSTALL_REQUEST:I = 0x2

.field public static final INSTALL_UNKNOWN:I = 0xb


# instance fields
.field private callback:Landroid/os/Handler$Callback;

.field private context:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/nuance/connect/util/InstallMetadata$MetaDataClient;",
            ">;"
        }
    .end annotation
.end field

.field private dataStoreKey:Ljava/lang/String;

.field private flagTransaction:Z

.field private ignoreTimer:Z

.field private installMetadata:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private log:Lcom/nuance/connect/util/Logger$Log;

.field private metadataChanged:Z

.field private queue:Landroid/os/Handler;

.field private rwLock:[I

.field private final transactionLock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method public constructor <init>(Lcom/nuance/connect/util/InstallMetadata$MetaDataClient;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Lcom/nuance/connect/util/InstallMetadata$MetaDataClient;
    .param p2, "persistentStorageKey"    # Ljava/lang/String;

    .prologue
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const/4 v0, 0x0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/nuance/connect/util/InstallMetadata;->rwLock:[I

    .line 121
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/util/InstallMetadata;->transactionLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 127
    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/util/InstallMetadata;->log:Lcom/nuance/connect/util/Logger$Log;

    .line 130
    new-instance v0, Lcom/nuance/connect/util/InstallMetadata$1;

    invoke-direct {v0, p0}, Lcom/nuance/connect/util/InstallMetadata$1;-><init>(Lcom/nuance/connect/util/InstallMetadata;)V

    iput-object v0, p0, Lcom/nuance/connect/util/InstallMetadata;->callback:Landroid/os/Handler$Callback;

    .line 141
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/nuance/connect/util/InstallMetadata$WeakReferenceHandlerCallback;

    iget-object v2, p0, Lcom/nuance/connect/util/InstallMetadata;->callback:Landroid/os/Handler$Callback;

    invoke-direct {v1, v2}, Lcom/nuance/connect/util/InstallMetadata$WeakReferenceHandlerCallback;-><init>(Landroid/os/Handler$Callback;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/nuance/connect/util/InstallMetadata;->queue:Landroid/os/Handler;

    .line 164
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/nuance/connect/util/InstallMetadata;->context:Ljava/lang/ref/WeakReference;

    .line 165
    iput-object p2, p0, Lcom/nuance/connect/util/InstallMetadata;->dataStoreKey:Ljava/lang/String;

    .line 166
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/connect/util/InstallMetadata;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/connect/util/InstallMetadata;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/nuance/connect/util/InstallMetadata;->flush()V

    return-void
.end method

.method private checkLoaded()V
    .locals 1

    .prologue
    .line 948
    iget-object v0, p0, Lcom/nuance/connect/util/InstallMetadata;->installMetadata:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 949
    invoke-direct {p0}, Lcom/nuance/connect/util/InstallMetadata;->loadMetadata()V

    .line 951
    :cond_0
    invoke-direct {p0}, Lcom/nuance/connect/util/InstallMetadata;->resetExpirationTimer()V

    .line 952
    return-void
.end method

.method private flush()V
    .locals 2

    .prologue
    .line 959
    invoke-virtual {p0}, Lcom/nuance/connect/util/InstallMetadata;->saveMetadata()V

    .line 960
    iget-object v1, p0, Lcom/nuance/connect/util/InstallMetadata;->rwLock:[I

    monitor-enter v1

    .line 961
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/nuance/connect/util/InstallMetadata;->installMetadata:Ljava/util/HashMap;

    .line 962
    monitor-exit v1

    .line 963
    return-void

    .line 962
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getPackageList(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p2, "rowSeparator"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 870
    .local p1, "steps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 871
    .local v2, "list":Ljava/lang/StringBuilder;
    const-string v4, ""

    .line 872
    .local v4, "separator":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 873
    const-string p2, ","

    .line 875
    :cond_0
    invoke-virtual {p0, p1}, Lcom/nuance/connect/util/InstallMetadata;->listFromSteps(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 876
    .local v3, "matches":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 877
    .local v1, "lang":Ljava/lang/String;
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 878
    move-object v4, p2

    goto :goto_0

    .line 880
    .end local v1    # "lang":Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private loadMetadata()V
    .locals 3

    .prologue
    .line 226
    iget-object v2, p0, Lcom/nuance/connect/util/InstallMetadata;->rwLock:[I

    monitor-enter v2

    .line 227
    :try_start_0
    iget-object v1, p0, Lcom/nuance/connect/util/InstallMetadata;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/util/InstallMetadata$MetaDataClient;

    .line 228
    .local v0, "client":Lcom/nuance/connect/util/InstallMetadata$MetaDataClient;
    if-eqz v0, :cond_0

    .line 229
    invoke-direct {p0, v0}, Lcom/nuance/connect/util/InstallMetadata;->loadPersistentData(Lcom/nuance/connect/util/InstallMetadata$MetaDataClient;)Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/connect/util/InstallMetadata;->installMetadata:Ljava/util/HashMap;

    .line 231
    :cond_0
    monitor-exit v2

    .line 232
    return-void

    .line 231
    .end local v0    # "client":Lcom/nuance/connect/util/InstallMetadata$MetaDataClient;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private loadPersistentData(Lcom/nuance/connect/util/InstallMetadata$MetaDataClient;)Ljava/util/HashMap;
    .locals 5
    .param p1, "client"    # Lcom/nuance/connect/util/InstallMetadata$MetaDataClient;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nuance/connect/util/InstallMetadata$MetaDataClient;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 245
    invoke-interface {p1}, Lcom/nuance/connect/util/InstallMetadata$MetaDataClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v1

    .line 246
    .local v1, "store":Lcom/nuance/connect/store/PersistentDataStore;
    iget-object v3, p0, Lcom/nuance/connect/util/InstallMetadata;->dataStoreKey:Ljava/lang/String;

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Lcom/nuance/connect/store/PersistentDataStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/connect/util/Data;->unserializeObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 247
    .local v2, "temp":Ljava/lang/Object;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 248
    .local v0, "meta":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-eqz v2, :cond_0

    move-object v0, v2

    .line 249
    check-cast v0, Ljava/util/HashMap;

    .line 251
    :cond_0
    return-object v0
.end method

.method private pauseExpirationTimer()V
    .locals 2

    .prologue
    .line 980
    iget-object v0, p0, Lcom/nuance/connect/util/InstallMetadata;->queue:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 981
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/connect/util/InstallMetadata;->ignoreTimer:Z

    .line 982
    return-void
.end method

.method private propWrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "property"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "save"    # Z

    .prologue
    .line 482
    invoke-direct {p0}, Lcom/nuance/connect/util/InstallMetadata;->checkLoaded()V

    .line 483
    iget-object v2, p0, Lcom/nuance/connect/util/InstallMetadata;->rwLock:[I

    monitor-enter v2

    .line 484
    :try_start_0
    iget-object v1, p0, Lcom/nuance/connect/util/InstallMetadata;->installMetadata:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 486
    invoke-virtual {p0, p1}, Lcom/nuance/connect/util/InstallMetadata;->getProps(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 487
    .local v0, "props":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v0, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    iget-object v1, p0, Lcom/nuance/connect/util/InstallMetadata;->installMetadata:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    .end local v0    # "props":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 491
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/nuance/connect/util/InstallMetadata;->metadataChanged:Z

    .line 492
    if-eqz p4, :cond_1

    .line 493
    invoke-virtual {p0}, Lcom/nuance/connect/util/InstallMetadata;->saveMetadata()V

    .line 495
    :cond_1
    return-void

    .line 490
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private resetExpirationTimer()V
    .locals 4

    .prologue
    const/16 v2, 0x64

    .line 969
    iget-boolean v1, p0, Lcom/nuance/connect/util/InstallMetadata;->ignoreTimer:Z

    if-nez v1, :cond_0

    .line 970
    iget-object v1, p0, Lcom/nuance/connect/util/InstallMetadata;->queue:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 971
    iget-object v1, p0, Lcom/nuance/connect/util/InstallMetadata;->queue:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 972
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Lcom/nuance/connect/util/InstallMetadata;->queue:Landroid/os/Handler;

    const-wide/16 v2, 0x7530

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 974
    .end local v0    # "m":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private testPackageInstallsInRange(II)Z
    .locals 7
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 827
    invoke-direct {p0}, Lcom/nuance/connect/util/InstallMetadata;->checkLoaded()V

    .line 828
    const/4 v2, 0x0

    .line 829
    .local v2, "inRange":Z
    if-le p1, p2, :cond_0

    .line 830
    move v4, p1

    .line 831
    .local v4, "tmp":I
    move p1, p2

    .line 832
    move p2, v4

    .line 834
    .end local v4    # "tmp":I
    :cond_0
    iget-object v5, p0, Lcom/nuance/connect/util/InstallMetadata;->installMetadata:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 835
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v3, 0x0

    .line 837
    .local v3, "step":I
    :try_start_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    const-string v6, "STEP"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 841
    :goto_1
    if-lt v3, p1, :cond_1

    if-gt v3, p2, :cond_1

    .line 842
    const/4 v2, 0x1

    goto :goto_0

    .line 845
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v3    # "step":I
    :cond_2
    return v2

    .line 838
    .restart local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v3    # "step":I
    :catch_0
    move-exception v5

    goto :goto_1
.end method


# virtual methods
.method public addPackage(Ljava/lang/String;)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 277
    invoke-direct {p0}, Lcom/nuance/connect/util/InstallMetadata;->checkLoaded()V

    .line 279
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 280
    .local v0, "props":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/nuance/connect/util/InstallMetadata;->installMetadata:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 282
    iget-object v2, p0, Lcom/nuance/connect/util/InstallMetadata;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "package already known: ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 292
    :goto_0
    return v1

    .line 285
    :cond_0
    iget-object v3, p0, Lcom/nuance/connect/util/InstallMetadata;->rwLock:[I

    monitor-enter v3

    .line 286
    :try_start_0
    const-string v1, "STARTED"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    const-string v1, "STEP"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    iget-object v1, p0, Lcom/nuance/connect/util/InstallMetadata;->installMetadata:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    iput-boolean v2, p0, Lcom/nuance/connect/util/InstallMetadata;->metadataChanged:Z

    .line 291
    invoke-virtual {p0}, Lcom/nuance/connect/util/InstallMetadata;->saveMetadata()V

    move v1, v2

    .line 292
    goto :goto_0

    .line 289
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public allPackages()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 338
    invoke-direct {p0}, Lcom/nuance/connect/util/InstallMetadata;->checkLoaded()V

    .line 339
    iget-object v1, p0, Lcom/nuance/connect/util/InstallMetadata;->rwLock:[I

    monitor-enter v1

    .line 340
    :try_start_0
    iget-object v0, p0, Lcom/nuance/connect/util/InstallMetadata;->installMetadata:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 341
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public beginTransaction()V
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/connect/util/InstallMetadata;->flagTransaction:Z

    .line 189
    iget-object v0, p0, Lcom/nuance/connect/util/InstallMetadata;->transactionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 190
    invoke-direct {p0}, Lcom/nuance/connect/util/InstallMetadata;->checkLoaded()V

    .line 191
    invoke-direct {p0}, Lcom/nuance/connect/util/InstallMetadata;->pauseExpirationTimer()V

    .line 192
    return-void
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 937
    iget-object v1, p0, Lcom/nuance/connect/util/InstallMetadata;->rwLock:[I

    monitor-enter v1

    .line 938
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/util/InstallMetadata;->installMetadata:Ljava/util/HashMap;

    .line 939
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 940
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/connect/util/InstallMetadata;->metadataChanged:Z

    .line 941
    invoke-virtual {p0}, Lcom/nuance/connect/util/InstallMetadata;->saveMetadata()V

    .line 942
    return-void

    .line 939
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public commitTransaction()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 199
    iput-boolean v1, p0, Lcom/nuance/connect/util/InstallMetadata;->flagTransaction:Z

    .line 200
    invoke-virtual {p0}, Lcom/nuance/connect/util/InstallMetadata;->saveMetadata()V

    .line 201
    iget-object v0, p0, Lcom/nuance/connect/util/InstallMetadata;->transactionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 204
    iput-boolean v1, p0, Lcom/nuance/connect/util/InstallMetadata;->ignoreTimer:Z

    .line 205
    invoke-direct {p0}, Lcom/nuance/connect/util/InstallMetadata;->resetExpirationTimer()V

    .line 206
    return-void
.end method

.method public deletePackage(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 304
    invoke-direct {p0}, Lcom/nuance/connect/util/InstallMetadata;->checkLoaded()V

    .line 305
    iget-object v0, p0, Lcom/nuance/connect/util/InstallMetadata;->installMetadata:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    iget-object v1, p0, Lcom/nuance/connect/util/InstallMetadata;->rwLock:[I

    monitor-enter v1

    .line 307
    :try_start_0
    iget-object v0, p0, Lcom/nuance/connect/util/InstallMetadata;->installMetadata:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 309
    invoke-virtual {p0}, Lcom/nuance/connect/util/InstallMetadata;->saveMetadata()V

    .line 310
    const/4 v0, 0x1

    .line 312
    :goto_0
    return v0

    .line 308
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 312
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAllMetadata()Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 692
    invoke-direct {p0}, Lcom/nuance/connect/util/InstallMetadata;->checkLoaded()V

    .line 693
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 694
    .local v2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    iget-object v4, p0, Lcom/nuance/connect/util/InstallMetadata;->rwLock:[I

    monitor-enter v4

    .line 695
    :try_start_0
    iget-object v3, p0, Lcom/nuance/connect/util/InstallMetadata;->installMetadata:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 696
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v2, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 698
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 699
    return-object v2
.end method

.method public getBoolProp(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "property"    # Ljava/lang/String;

    .prologue
    .line 436
    invoke-virtual {p0, p1, p2}, Lcom/nuance/connect/util/InstallMetadata;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getInstalledPackageList()Ljava/lang/String;
    .locals 3

    .prologue
    .line 853
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, ","

    invoke-direct {p0, v0, v1}, Lcom/nuance/connect/util/InstallMetadata;->getPackageList(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIntProp(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "property"    # Ljava/lang/String;

    .prologue
    .line 404
    const/high16 v0, -0x80000000

    .line 406
    .local v0, "value":I
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/nuance/connect/util/InstallMetadata;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 411
    :goto_0
    return v0

    .line 407
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getLongProp(Ljava/lang/String;Ljava/lang/String;)J
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "property"    # Ljava/lang/String;

    .prologue
    .line 425
    const-wide/high16 v0, -0x8000000000000000L

    .line 427
    .local v0, "value":J
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/nuance/connect/util/InstallMetadata;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 432
    :goto_0
    return-wide v0

    .line 428
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "property"    # Ljava/lang/String;

    .prologue
    .line 355
    invoke-direct {p0}, Lcom/nuance/connect/util/InstallMetadata;->checkLoaded()V

    .line 356
    const/4 v0, 0x0

    .line 357
    .local v0, "value":Ljava/lang/String;
    iget-object v1, p0, Lcom/nuance/connect/util/InstallMetadata;->installMetadata:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 358
    iget-object v1, p0, Lcom/nuance/connect/util/InstallMetadata;->installMetadata:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "value":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 360
    .restart local v0    # "value":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getProps(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 373
    invoke-direct {p0}, Lcom/nuance/connect/util/InstallMetadata;->checkLoaded()V

    .line 374
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 375
    .local v0, "values":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/nuance/connect/util/InstallMetadata;->installMetadata:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 376
    iget-object v1, p0, Lcom/nuance/connect/util/InstallMetadata;->installMetadata:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "values":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    check-cast v0, Ljava/util/HashMap;

    .line 378
    .restart local v0    # "values":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-object v0
.end method

.method public getStep(Ljava/lang/String;)I
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 390
    const-string v0, "STEP"

    invoke-virtual {p0, p1, v0}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public hasMoreInstalls()Z
    .locals 4

    .prologue
    .line 785
    const/4 v1, 0x1

    const/4 v2, 0x5

    invoke-direct {p0, v1, v2}, Lcom/nuance/connect/util/InstallMetadata;->testPackageInstallsInRange(II)Z

    move-result v0

    .line 787
    .local v0, "moreInstalls":Z
    iget-object v1, p0, Lcom/nuance/connect/util/InstallMetadata;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasMoreInstalls() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 788
    return v0
.end method

.method public hasMoreRemoves()Z
    .locals 4

    .prologue
    const/16 v1, 0xa

    .line 797
    invoke-direct {p0, v1, v1}, Lcom/nuance/connect/util/InstallMetadata;->testPackageInstallsInRange(II)Z

    move-result v0

    .line 798
    .local v0, "moreRemoves":Z
    iget-object v1, p0, Lcom/nuance/connect/util/InstallMetadata;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasMoreRemoves() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 799
    return v0
.end method

.method public hasPackage(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 263
    invoke-direct {p0}, Lcom/nuance/connect/util/InstallMetadata;->checkLoaded()V

    .line 264
    iget-object v0, p0, Lcom/nuance/connect/util/InstallMetadata;->installMetadata:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasPackages()Z
    .locals 1

    .prologue
    .line 808
    invoke-direct {p0}, Lcom/nuance/connect/util/InstallMetadata;->checkLoaded()V

    .line 809
    iget-object v0, p0, Lcom/nuance/connect/util/InstallMetadata;->installMetadata:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAvailable(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 707
    const/4 v0, 0x0

    .line 708
    .local v0, "available":Z
    invoke-virtual {p0, p1}, Lcom/nuance/connect/util/InstallMetadata;->getStep(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 709
    const/4 v0, 0x1

    .line 711
    :cond_0
    return v0
.end method

.method public isDownloading(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 724
    const/4 v0, 0x0

    .line 725
    .local v0, "downloading":Z
    invoke-virtual {p0, p1}, Lcom/nuance/connect/util/InstallMetadata;->getStep(Ljava/lang/String;)I

    move-result v1

    .line 726
    .local v1, "status":I
    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    const/4 v2, 0x5

    if-gt v1, v2, :cond_0

    .line 727
    const/4 v0, 0x1

    .line 729
    :cond_0
    return v0
.end method

.method public isInstalled(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 757
    const/4 v0, 0x0

    .line 758
    .local v0, "installed":Z
    invoke-virtual {p0, p1}, Lcom/nuance/connect/util/InstallMetadata;->getStep(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    .line 759
    const/4 v0, 0x1

    .line 761
    :cond_0
    return v0
.end method

.method public isInstalling()Z
    .locals 4

    .prologue
    .line 772
    const/4 v1, 0x2

    const/4 v2, 0x5

    invoke-direct {p0, v1, v2}, Lcom/nuance/connect/util/InstallMetadata;->testPackageInstallsInRange(II)Z

    move-result v0

    .line 773
    .local v0, "installing":Z
    iget-object v1, p0, Lcom/nuance/connect/util/InstallMetadata;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isInstalling() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 774
    return v0
.end method

.method public isInstalling(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 741
    const/4 v0, 0x0

    .line 742
    .local v0, "installing":Z
    invoke-virtual {p0, p1}, Lcom/nuance/connect/util/InstallMetadata;->getStep(Ljava/lang/String;)I

    move-result v1

    .line 743
    .local v1, "status":I
    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    const/4 v2, 0x7

    if-ge v1, v2, :cond_0

    .line 744
    const/4 v0, 0x1

    .line 746
    :cond_0
    return v0
.end method

.method public listFromPropEquals(Ljava/lang/String;I)Ljava/util/List;
    .locals 6
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 918
    invoke-direct {p0}, Lcom/nuance/connect/util/InstallMetadata;->checkLoaded()V

    .line 919
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 920
    .local v3, "l":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/nuance/connect/util/InstallMetadata;->rwLock:[I

    monitor-enter v5

    .line 921
    :try_start_0
    iget-object v4, p0, Lcom/nuance/connect/util/InstallMetadata;->installMetadata:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 923
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    :try_start_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 924
    .local v0, "currentValue":I
    if-ne v0, p2, :cond_0

    .line 925
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 927
    .end local v0    # "currentValue":I
    :catch_0
    move-exception v4

    goto :goto_0

    .line 929
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_1
    :try_start_2
    monitor-exit v5

    .line 930
    return-object v3

    .line 929
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4
.end method

.method public listFromSteps(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 894
    .local p1, "steps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Lcom/nuance/connect/util/InstallMetadata;->checkLoaded()V

    .line 895
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 896
    .local v2, "l":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/nuance/connect/util/InstallMetadata;->rwLock:[I

    monitor-enter v5

    .line 897
    :try_start_0
    iget-object v4, p0, Lcom/nuance/connect/util/InstallMetadata;->installMetadata:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 898
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    const-string v6, "STEP"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 899
    .local v3, "step":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 900
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 903
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "step":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 904
    return-object v2
.end method

.method public propsWrite(Ljava/lang/String;Ljava/util/HashMap;Z)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p3, "save"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 561
    .local p2, "props":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/nuance/connect/util/InstallMetadata;->checkLoaded()V

    .line 562
    iget-object v1, p0, Lcom/nuance/connect/util/InstallMetadata;->rwLock:[I

    monitor-enter v1

    .line 563
    :try_start_0
    iget-object v0, p0, Lcom/nuance/connect/util/InstallMetadata;->installMetadata:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 565
    iget-object v0, p0, Lcom/nuance/connect/util/InstallMetadata;->installMetadata:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 568
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/connect/util/InstallMetadata;->metadataChanged:Z

    .line 569
    if-eqz p3, :cond_1

    .line 570
    invoke-virtual {p0}, Lcom/nuance/connect/util/InstallMetadata;->saveMetadata()V

    .line 572
    :cond_1
    return-void

    .line 567
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public removeProp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "property"    # Ljava/lang/String;

    .prologue
    .line 506
    invoke-direct {p0}, Lcom/nuance/connect/util/InstallMetadata;->checkLoaded()V

    .line 507
    iget-object v2, p0, Lcom/nuance/connect/util/InstallMetadata;->rwLock:[I

    monitor-enter v2

    .line 508
    :try_start_0
    iget-object v1, p0, Lcom/nuance/connect/util/InstallMetadata;->installMetadata:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 510
    invoke-virtual {p0, p1}, Lcom/nuance/connect/util/InstallMetadata;->getProps(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 511
    .local v0, "props":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    iget-object v1, p0, Lcom/nuance/connect/util/InstallMetadata;->installMetadata:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    .end local v0    # "props":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 515
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/nuance/connect/util/InstallMetadata;->metadataChanged:Z

    .line 516
    invoke-virtual {p0}, Lcom/nuance/connect/util/InstallMetadata;->saveMetadata()V

    .line 517
    return-void

    .line 514
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public saveMetadata()V
    .locals 5

    .prologue
    .line 212
    iget-object v1, p0, Lcom/nuance/connect/util/InstallMetadata;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/util/InstallMetadata$MetaDataClient;

    .line 213
    .local v0, "client":Lcom/nuance/connect/util/InstallMetadata$MetaDataClient;
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/nuance/connect/util/InstallMetadata;->flagTransaction:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/nuance/connect/util/InstallMetadata;->metadataChanged:Z

    if-eqz v1, :cond_0

    .line 214
    iget-object v2, p0, Lcom/nuance/connect/util/InstallMetadata;->rwLock:[I

    monitor-enter v2

    .line 215
    :try_start_0
    invoke-interface {v0}, Lcom/nuance/connect/util/InstallMetadata$MetaDataClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v1

    iget-object v3, p0, Lcom/nuance/connect/util/InstallMetadata;->dataStoreKey:Ljava/lang/String;

    iget-object v4, p0, Lcom/nuance/connect/util/InstallMetadata;->installMetadata:Ljava/util/HashMap;

    invoke-static {v4}, Lcom/nuance/connect/util/Data;->serializeObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/nuance/connect/store/PersistentDataStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 217
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/nuance/connect/util/InstallMetadata;->metadataChanged:Z

    .line 218
    monitor-exit v2

    .line 220
    :cond_0
    return-void

    .line 218
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setProp(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "property"    # Ljava/lang/String;
    .param p3, "value"    # I

    .prologue
    .line 612
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    return-void
.end method

.method public setProp(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "property"    # Ljava/lang/String;
    .param p3, "value"    # J

    .prologue
    .line 642
    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    return-void
.end method

.method public setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "property"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 450
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/nuance/connect/util/InstallMetadata;->propWrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 451
    return-void
.end method

.method public setProp(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "property"    # Ljava/lang/String;
    .param p3, "value"    # Z

    .prologue
    .line 672
    invoke-static {p3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    return-void
.end method

.method public setProps(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 530
    .local p2, "props":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/nuance/connect/util/InstallMetadata;->propsWrite(Ljava/lang/String;Ljava/util/HashMap;Z)V

    .line 531
    return-void
.end method

.method public setStep(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "step"    # I

    .prologue
    .line 584
    const-string v0, "STEP"

    invoke-virtual {p0, p1, v0, p2}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;I)V

    .line 585
    return-void
.end method

.method public setUnsavedProp(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "property"    # Ljava/lang/String;
    .param p3, "value"    # I

    .prologue
    .line 627
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/nuance/connect/util/InstallMetadata;->setUnsavedProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    return-void
.end method

.method public setUnsavedProp(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "property"    # Ljava/lang/String;
    .param p3, "value"    # J

    .prologue
    .line 657
    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/nuance/connect/util/InstallMetadata;->setUnsavedProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    return-void
.end method

.method public setUnsavedProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "property"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 467
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/nuance/connect/util/InstallMetadata;->propWrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 468
    return-void
.end method

.method public setUnsavedProp(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "property"    # Ljava/lang/String;
    .param p3, "value"    # Z

    .prologue
    .line 687
    invoke-static {p3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/nuance/connect/util/InstallMetadata;->setUnsavedProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    return-void
.end method

.method public setUnsavedProps(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 546
    .local p2, "props":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/nuance/connect/util/InstallMetadata;->propsWrite(Ljava/lang/String;Ljava/util/HashMap;Z)V

    .line 547
    return-void
.end method

.method public setUnsavedStep(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "step"    # I

    .prologue
    .line 597
    const-string v0, "STEP"

    invoke-virtual {p0, p1, v0, p2}, Lcom/nuance/connect/util/InstallMetadata;->setUnsavedProp(Ljava/lang/String;Ljava/lang/String;I)V

    .line 598
    return-void
.end method

.method public uninstallPackage(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 322
    invoke-virtual {p0, p1}, Lcom/nuance/connect/util/InstallMetadata;->getProps(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 323
    .local v0, "props":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "STEP"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    const-string v1, "CHECKSUM"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    const-string v1, "FILE_LOCATION"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    const-string v1, "TRANSACTION_ID"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    const-string v1, "URL"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    invoke-virtual {p0, p1, v0}, Lcom/nuance/connect/util/InstallMetadata;->setProps(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 329
    return-void
.end method
