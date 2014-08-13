.class public Lcom/android/contacts/list/ProviderStatusWatcher;
.super Landroid/database/ContentObserver;
.source "ProviderStatusWatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/list/ProviderStatusWatcher$LoaderTask;,
        Lcom/android/contacts/list/ProviderStatusWatcher$Status;,
        Lcom/android/contacts/list/ProviderStatusWatcher$ProviderStatusListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOAD_WAIT_TIMEOUT_MS:I = 0x3e8

.field private static final PROJECTION:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "ProviderStatusWatcher"

.field private static sInstance:Lcom/android/contacts/list/ProviderStatusWatcher;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/list/ProviderStatusWatcher$ProviderStatusListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLoaderTask:Lcom/android/contacts/list/ProviderStatusWatcher$LoaderTask;

.field private mProviderStatus:Lcom/android/contacts/list/ProviderStatusWatcher$Status;

.field private final mSignal:Ljava/lang/Object;

.field private final mStartLoadingRunnable:Ljava/lang/Runnable;

.field private mStartRequestedCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 83
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "status"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "data1"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/list/ProviderStatusWatcher;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 130
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 100
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/list/ProviderStatusWatcher;->mHandler:Landroid/os/Handler;

    .line 102
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/list/ProviderStatusWatcher;->mSignal:Ljava/lang/Object;

    .line 112
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/ProviderStatusWatcher;->mListeners:Ljava/util/ArrayList;

    .line 113
    new-instance v0, Lcom/android/contacts/list/ProviderStatusWatcher$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/list/ProviderStatusWatcher$1;-><init>(Lcom/android/contacts/list/ProviderStatusWatcher;)V

    iput-object v0, p0, Lcom/android/contacts/list/ProviderStatusWatcher;->mStartLoadingRunnable:Ljava/lang/Runnable;

    .line 131
    iput-object p1, p0, Lcom/android/contacts/list/ProviderStatusWatcher;->mContext:Landroid/content/Context;

    .line 132
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/list/ProviderStatusWatcher;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/list/ProviderStatusWatcher;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/contacts/list/ProviderStatusWatcher;->startLoading()V

    return-void
.end method

.method static synthetic access$200()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/android/contacts/list/ProviderStatusWatcher;->PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/contacts/list/ProviderStatusWatcher;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/ProviderStatusWatcher;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/contacts/list/ProviderStatusWatcher;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/contacts/list/ProviderStatusWatcher;Lcom/android/contacts/list/ProviderStatusWatcher$Status;)Lcom/android/contacts/list/ProviderStatusWatcher$Status;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/list/ProviderStatusWatcher;
    .param p1, "x1"    # Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/contacts/list/ProviderStatusWatcher;->mProviderStatus:Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/contacts/list/ProviderStatusWatcher;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/ProviderStatusWatcher;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/contacts/list/ProviderStatusWatcher;->mSignal:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/contacts/list/ProviderStatusWatcher;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/list/ProviderStatusWatcher;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/contacts/list/ProviderStatusWatcher;->notifyListeners()V

    return-void
.end method

.method static synthetic access$702(Lcom/android/contacts/list/ProviderStatusWatcher;Lcom/android/contacts/list/ProviderStatusWatcher$LoaderTask;)Lcom/android/contacts/list/ProviderStatusWatcher$LoaderTask;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/list/ProviderStatusWatcher;
    .param p1, "x1"    # Lcom/android/contacts/list/ProviderStatusWatcher$LoaderTask;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/contacts/list/ProviderStatusWatcher;->mLoaderTask:Lcom/android/contacts/list/ProviderStatusWatcher$LoaderTask;

    return-object p1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/contacts/list/ProviderStatusWatcher;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 123
    const-class v1, Lcom/android/contacts/list/ProviderStatusWatcher;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/contacts/list/ProviderStatusWatcher;->sInstance:Lcom/android/contacts/list/ProviderStatusWatcher;

    if-nez v0, :cond_0

    .line 124
    new-instance v0, Lcom/android/contacts/list/ProviderStatusWatcher;

    invoke-direct {v0, p0}, Lcom/android/contacts/list/ProviderStatusWatcher;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/contacts/list/ProviderStatusWatcher;->sInstance:Lcom/android/contacts/list/ProviderStatusWatcher;

    .line 126
    :cond_0
    sget-object v0, Lcom/android/contacts/list/ProviderStatusWatcher;->sInstance:Lcom/android/contacts/list/ProviderStatusWatcher;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private isStarted()Z
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lcom/android/contacts/list/ProviderStatusWatcher;->mStartRequestedCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyListeners()V
    .locals 3

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/android/contacts/list/ProviderStatusWatcher;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 146
    iget-object v2, p0, Lcom/android/contacts/list/ProviderStatusWatcher;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/list/ProviderStatusWatcher$ProviderStatusListener;

    .line 147
    .local v1, "listener":Lcom/android/contacts/list/ProviderStatusWatcher$ProviderStatusListener;
    invoke-interface {v1}, Lcom/android/contacts/list/ProviderStatusWatcher$ProviderStatusListener;->onProviderStatusChange()V

    goto :goto_0

    .line 150
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lcom/android/contacts/list/ProviderStatusWatcher$ProviderStatusListener;
    :cond_0
    return-void
.end method

.method public static retryUpgrade(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 302
    const-string v1, "ProviderStatusWatcher"

    const-string v2, "retryUpgrade"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    new-instance v0, Lcom/android/contacts/list/ProviderStatusWatcher$2;

    invoke-direct {v0, p0}, Lcom/android/contacts/list/ProviderStatusWatcher$2;-><init>(Landroid/content/Context;)V

    .line 312
    .local v0, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 313
    return-void
.end method

.method private startLoading()V
    .locals 3

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/contacts/list/ProviderStatusWatcher;->mLoaderTask:Lcom/android/contacts/list/ProviderStatusWatcher$LoaderTask;

    if-eqz v0, :cond_0

    .line 235
    :goto_0
    return-void

    .line 233
    :cond_0
    new-instance v0, Lcom/android/contacts/list/ProviderStatusWatcher$LoaderTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/list/ProviderStatusWatcher$LoaderTask;-><init>(Lcom/android/contacts/list/ProviderStatusWatcher;Lcom/android/contacts/list/ProviderStatusWatcher$1;)V

    iput-object v0, p0, Lcom/android/contacts/list/ProviderStatusWatcher;->mLoaderTask:Lcom/android/contacts/list/ProviderStatusWatcher$LoaderTask;

    .line 234
    iget-object v0, p0, Lcom/android/contacts/list/ProviderStatusWatcher;->mLoaderTask:Lcom/android/contacts/list/ProviderStatusWatcher$LoaderTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private waitForLoaded()V
    .locals 4

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/contacts/list/ProviderStatusWatcher;->mProviderStatus:Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    if-nez v0, :cond_1

    .line 212
    iget-object v0, p0, Lcom/android/contacts/list/ProviderStatusWatcher;->mLoaderTask:Lcom/android/contacts/list/ProviderStatusWatcher$LoaderTask;

    if-nez v0, :cond_0

    .line 215
    invoke-direct {p0}, Lcom/android/contacts/list/ProviderStatusWatcher;->startLoading()V

    .line 217
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/list/ProviderStatusWatcher;->mSignal:Ljava/lang/Object;

    monitor-enter v1

    .line 219
    :try_start_0
    iget-object v0, p0, Lcom/android/contacts/list/ProviderStatusWatcher;->mSignal:Ljava/lang/Object;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    :goto_0
    :try_start_1
    monitor-exit v1

    .line 224
    :cond_1
    return-void

    .line 222
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 220
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public addListener(Lcom/android/contacts/list/ProviderStatusWatcher$ProviderStatusListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/contacts/list/ProviderStatusWatcher$ProviderStatusListener;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/contacts/list/ProviderStatusWatcher;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    return-void
.end method

.method public getProviderStatus()Lcom/android/contacts/list/ProviderStatusWatcher$Status;
    .locals 3

    .prologue
    .line 204
    invoke-direct {p0}, Lcom/android/contacts/list/ProviderStatusWatcher;->waitForLoaded()V

    .line 205
    iget-object v0, p0, Lcom/android/contacts/list/ProviderStatusWatcher;->mProviderStatus:Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    if-nez v0, :cond_0

    .line 206
    new-instance v0, Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/list/ProviderStatusWatcher$Status;-><init>(ILjava/lang/String;)V

    .line 208
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ProviderStatusWatcher;->mProviderStatus:Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    goto :goto_0
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 2
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 287
    sget-object v0, Landroid/provider/ContactsContract$ProviderStatus;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 295
    :goto_0
    return-void

    .line 291
    :cond_0
    const-string v0, "ProviderStatusWatcher"

    const-string v1, "Provider status changed."

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object v0, p0, Lcom/android/contacts/list/ProviderStatusWatcher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/contacts/list/ProviderStatusWatcher;->mStartLoadingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 294
    iget-object v0, p0, Lcom/android/contacts/list/ProviderStatusWatcher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/contacts/list/ProviderStatusWatcher;->mStartLoadingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public removeListener(Lcom/android/contacts/list/ProviderStatusWatcher$ProviderStatusListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/contacts/list/ProviderStatusWatcher$ProviderStatusListener;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/contacts/list/ProviderStatusWatcher;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 140
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    .line 159
    iget v0, p0, Lcom/android/contacts/list/ProviderStatusWatcher;->mStartRequestedCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/contacts/list/ProviderStatusWatcher;->mStartRequestedCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 160
    iget-object v0, p0, Lcom/android/contacts/list/ProviderStatusWatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$ProviderStatus;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 162
    invoke-direct {p0}, Lcom/android/contacts/list/ProviderStatusWatcher;->startLoading()V

    .line 167
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/android/contacts/list/ProviderStatusWatcher;->isStarted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 174
    const-string v0, "ProviderStatusWatcher"

    const-string v1, "Already stopped"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 177
    :cond_1
    iget v0, p0, Lcom/android/contacts/list/ProviderStatusWatcher;->mStartRequestedCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/contacts/list/ProviderStatusWatcher;->mStartRequestedCount:I

    if-nez v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/android/contacts/list/ProviderStatusWatcher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/contacts/list/ProviderStatusWatcher;->mStartLoadingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 179
    iget-object v0, p0, Lcom/android/contacts/list/ProviderStatusWatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0
.end method
