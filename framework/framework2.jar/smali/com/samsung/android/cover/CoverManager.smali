.class public Lcom/samsung/android/cover/CoverManager;
.super Ljava/lang/Object;
.source "CoverManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/cover/CoverManager$CoverStateListener;,
        Lcom/samsung/android/cover/CoverManager$StateListener;,
        Lcom/samsung/android/cover/CoverManager$CoverStateListenerDelegate;,
        Lcom/samsung/android/cover/CoverManager$CoverListenerDelegate;
    }
.end annotation


# static fields
.field public static final COVER_MODE_HIDE_SVIEW_ONCE:I = 0x2

.field public static final COVER_MODE_NONE:I = 0x0

.field public static final COVER_MODE_SVIEW:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CoverManager"

.field private static sIsFilpCoverSystemFeatureEnabled:Z

.field private static sIsSViewCoverSystemFeatureEnabled:Z

.field private static sIsSystemFeatureQueried:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mCoverStateListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/android/cover/CoverManager$CoverStateListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/android/cover/CoverManager$CoverListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lcom/samsung/android/cover/ICoverManager;

.field private mToken:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 104
    sput-boolean v0, Lcom/samsung/android/cover/CoverManager;->sIsSystemFeatureQueried:Z

    .line 110
    sput-boolean v0, Lcom/samsung/android/cover/CoverManager;->sIsFilpCoverSystemFeatureEnabled:Z

    .line 116
    sput-boolean v0, Lcom/samsung/android/cover/CoverManager;->sIsSViewCoverSystemFeatureEnabled:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cover/CoverManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 76
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cover/CoverManager;->mCoverStateListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 118
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cover/CoverManager;->mToken:Landroid/os/IBinder;

    .line 126
    iput-object p1, p0, Lcom/samsung/android/cover/CoverManager;->mContext:Landroid/content/Context;

    .line 127
    invoke-direct {p0}, Lcom/samsung/android/cover/CoverManager;->initSystemFeature()V

    .line 128
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/cover/CoverManager;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/cover/CoverManager;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/samsung/android/cover/CoverManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private declared-synchronized getService()Lcom/samsung/android/cover/ICoverManager;
    .registers 3

    .prologue
    .line 189
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/cover/CoverManager;->mService:Lcom/samsung/android/cover/ICoverManager;

    if-nez v0, :cond_1d

    .line 190
    const-string v0, "cover"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/cover/ICoverManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/ICoverManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/cover/CoverManager;->mService:Lcom/samsung/android/cover/ICoverManager;

    .line 191
    iget-object v0, p0, Lcom/samsung/android/cover/CoverManager;->mService:Lcom/samsung/android/cover/ICoverManager;

    if-nez v0, :cond_1d

    .line 192
    const-string v0, "CoverManager"

    const-string/jumbo v1, "warning: no COVER_MANAGER_SERVICE"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_1d
    iget-object v0, p0, Lcom/samsung/android/cover/CoverManager;->mService:Lcom/samsung/android/cover/ICoverManager;
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_21

    monitor-exit p0

    return-object v0

    .line 189
    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private initSystemFeature()V
    .registers 3

    .prologue
    .line 134
    sget-boolean v0, Lcom/samsung/android/cover/CoverManager;->sIsSystemFeatureQueried:Z

    if-nez v0, :cond_23

    .line 135
    iget-object v0, p0, Lcom/samsung/android/cover/CoverManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.cover.flip"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/cover/CoverManager;->sIsFilpCoverSystemFeatureEnabled:Z

    .line 137
    iget-object v0, p0, Lcom/samsung/android/cover/CoverManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.cover.sview"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/cover/CoverManager;->sIsSViewCoverSystemFeatureEnabled:Z

    .line 139
    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/cover/CoverManager;->sIsSystemFeatureQueried:Z

    .line 141
    :cond_23
    return-void
.end method


# virtual methods
.method public disableCoverManager(Z)V
    .registers 6
    .param p1, "disable"    # Z

    .prologue
    .line 477
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/cover/CoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v1

    .line 478
    .local v1, "svc":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v1, :cond_11

    .line 479
    iget-object v2, p0, Lcom/samsung/android/cover/CoverManager;->mToken:Landroid/os/IBinder;

    iget-object v3, p0, Lcom/samsung/android/cover/CoverManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, p1, v2, v3}, Lcom/samsung/android/cover/ICoverManager;->disableCoverManager(ZLandroid/os/IBinder;Ljava/lang/String;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_12

    .line 484
    .end local v1    # "svc":Lcom/samsung/android/cover/ICoverManager;
    :cond_11
    :goto_11
    return-void

    .line 481
    :catch_12
    move-exception v0

    .line 482
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "CoverManager"

    const-string v3, "RemoteException in disalbeCoverManager : "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_11
.end method

.method public getCoverState()Lcom/samsung/android/cover/CoverState;
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 439
    invoke-virtual {p0}, Lcom/samsung/android/cover/CoverManager;->isSupportCover()Z

    move-result v4

    if-nez v4, :cond_10

    .line 440
    const-string v4, "CoverManager"

    const-string v5, "getCoverState : This device is not supported cover"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v3

    .line 459
    :cond_f
    :goto_f
    return-object v0

    .line 443
    :cond_10
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    const/16 v5, 0x3e8

    if-eq v4, v5, :cond_20

    .line 444
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "CoverManager only available from system UID."

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 447
    :cond_20
    :try_start_20
    invoke-direct {p0}, Lcom/samsung/android/cover/CoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v2

    .line 448
    .local v2, "svc":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v2, :cond_33

    .line 449
    invoke-interface {v2}, Lcom/samsung/android/cover/ICoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    .line 450
    .local v0, "coverState":Lcom/samsung/android/cover/CoverState;
    if-nez v0, :cond_f

    .line 453
    const-string v4, "CoverManager"

    const-string v5, "getCoverState : coverState is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_33} :catch_35

    .end local v0    # "coverState":Lcom/samsung/android/cover/CoverState;
    .end local v2    # "svc":Lcom/samsung/android/cover/ICoverManager;
    :cond_33
    :goto_33
    move-object v0, v3

    .line 459
    goto :goto_f

    .line 456
    :catch_35
    move-exception v1

    .line 457
    .local v1, "e":Landroid/os/RemoteException;
    const-string v4, "CoverManager"

    const-string v5, "RemoteException in getCoverState: "

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_33
.end method

.method public isCoverManagerDisabled()Z
    .registers 6

    .prologue
    .line 463
    const/4 v0, 0x0

    .line 465
    .local v0, "disabled":Z
    :try_start_1
    invoke-direct {p0}, Lcom/samsung/android/cover/CoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v2

    .line 466
    .local v2, "svc":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v2, :cond_b

    .line 467
    invoke-interface {v2}, Lcom/samsung/android/cover/ICoverManager;->isCoverManagerDisabled()Z
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_c

    move-result v0

    .line 472
    .end local v2    # "svc":Lcom/samsung/android/cover/ICoverManager;
    :cond_b
    :goto_b
    return v0

    .line 469
    :catch_c
    move-exception v1

    .line 470
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "CoverManager"

    const-string v4, "RemoteException in isCoverManagerDisabled : "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b
.end method

.method isSupportCover()Z
    .registers 2

    .prologue
    .line 150
    sget-boolean v0, Lcom/samsung/android/cover/CoverManager;->sIsFilpCoverSystemFeatureEnabled:Z

    if-nez v0, :cond_8

    sget-boolean v0, Lcom/samsung/android/cover/CoverManager;->sIsSViewCoverSystemFeatureEnabled:Z

    if-eqz v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method isSupportSViewCover()Z
    .registers 2

    .prologue
    .line 160
    sget-boolean v0, Lcom/samsung/android/cover/CoverManager;->sIsSViewCoverSystemFeatureEnabled:Z

    return v0
.end method

.method isSupportTypeOfCover(I)Z
    .registers 3
    .param p1, "type"    # I

    .prologue
    .line 171
    sparse-switch p1, :sswitch_data_c

    .line 179
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 173
    :sswitch_5
    sget-boolean v0, Lcom/samsung/android/cover/CoverManager;->sIsFilpCoverSystemFeatureEnabled:Z

    goto :goto_4

    .line 177
    :sswitch_8
    sget-boolean v0, Lcom/samsung/android/cover/CoverManager;->sIsSViewCoverSystemFeatureEnabled:Z

    goto :goto_4

    .line 171
    nop

    :sswitch_data_c
    .sparse-switch
        0x0 -> :sswitch_5
        0x1 -> :sswitch_8
        0x3 -> :sswitch_8
        0x63 -> :sswitch_8
    .end sparse-switch
.end method

.method public registerListener(Lcom/samsung/android/cover/CoverManager$CoverStateListener;)V
    .registers 12
    .param p1, "listener"    # Lcom/samsung/android/cover/CoverManager$CoverStateListener;

    .prologue
    .line 283
    const-string v7, "CoverManager"

    const-string/jumbo v8, "registerListener"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    invoke-virtual {p0}, Lcom/samsung/android/cover/CoverManager;->isSupportCover()Z

    move-result v7

    if-nez v7, :cond_17

    .line 285
    const-string v7, "CoverManager"

    const-string/jumbo v8, "registerListener : This device is not supported cover"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :goto_16
    return-void

    .line 289
    :cond_17
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v7

    const/16 v8, 0x3e8

    if-eq v7, v8, :cond_27

    .line 290
    new-instance v7, Ljava/lang/SecurityException;

    const-string v8, "CoverManager only available from system UID."

    invoke-direct {v7, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 293
    :cond_27
    if-nez p1, :cond_32

    .line 294
    const-string v7, "CoverManager"

    const-string/jumbo v8, "registerListener : listener is null"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    .line 297
    :cond_32
    iget-object v8, p0, Lcom/samsung/android/cover/CoverManager;->mCoverStateListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v8

    .line 298
    const/4 v1, 0x0

    .line 300
    .local v1, "coverListener":Lcom/samsung/android/cover/CoverManager$CoverStateListenerDelegate;
    :try_start_36
    iget-object v7, p0, Lcom/samsung/android/cover/CoverManager;->mCoverStateListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 301
    .local v5, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/cover/CoverManager$CoverStateListenerDelegate;>;"
    :cond_3c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_95

    .line 302
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/cover/CoverManager$CoverStateListenerDelegate;

    .line 303
    .local v3, "delegate":Lcom/samsung/android/cover/CoverManager$CoverStateListenerDelegate;
    invoke-virtual {v3}, Lcom/samsung/android/cover/CoverManager$CoverStateListenerDelegate;->getListener()Lcom/samsung/android/cover/CoverManager$CoverStateListener;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_4f
    .catchall {:try_start_36 .. :try_end_4f} :catchall_84

    move-result v7

    if-eqz v7, :cond_3c

    .line 304
    move-object v1, v3

    move-object v2, v1

    .line 309
    .end local v1    # "coverListener":Lcom/samsung/android/cover/CoverManager$CoverStateListenerDelegate;
    .end local v3    # "delegate":Lcom/samsung/android/cover/CoverManager$CoverStateListenerDelegate;
    .local v2, "coverListener":Lcom/samsung/android/cover/CoverManager$CoverStateListenerDelegate;
    :goto_54
    if-nez v2, :cond_93

    .line 310
    :try_start_56
    new-instance v1, Lcom/samsung/android/cover/CoverManager$CoverStateListenerDelegate;

    const/4 v7, 0x0

    invoke-direct {v1, p0, p1, v7}, Lcom/samsung/android/cover/CoverManager$CoverStateListenerDelegate;-><init>(Lcom/samsung/android/cover/CoverManager;Lcom/samsung/android/cover/CoverManager$CoverStateListener;Landroid/os/Handler;)V
    :try_end_5c
    .catchall {:try_start_56 .. :try_end_5c} :catchall_90

    .line 311
    .end local v2    # "coverListener":Lcom/samsung/android/cover/CoverManager$CoverStateListenerDelegate;
    .restart local v1    # "coverListener":Lcom/samsung/android/cover/CoverManager$CoverStateListenerDelegate;
    :try_start_5c
    iget-object v7, p0, Lcom/samsung/android/cover/CoverManager;->mCoverStateListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z
    :try_end_61
    .catchall {:try_start_5c .. :try_end_61} :catchall_84

    .line 315
    :goto_61
    :try_start_61
    invoke-direct {p0}, Lcom/samsung/android/cover/CoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v6

    .line 316
    .local v6, "svc":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v6, :cond_82

    .line 317
    new-instance v0, Landroid/content/ComponentName;

    iget-object v7, p0, Lcom/samsung/android/cover/CoverManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v7, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    .local v0, "cm":Landroid/content/ComponentName;
    if-eqz v1, :cond_82

    if-eqz v0, :cond_82

    .line 320
    const/4 v7, 0x2

    invoke-interface {v6, v1, v0, v7}, Lcom/samsung/android/cover/ICoverManager;->registerListenerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;I)V
    :try_end_82
    .catch Landroid/os/RemoteException; {:try_start_61 .. :try_end_82} :catch_87
    .catchall {:try_start_61 .. :try_end_82} :catchall_84

    .line 327
    .end local v0    # "cm":Landroid/content/ComponentName;
    .end local v6    # "svc":Lcom/samsung/android/cover/ICoverManager;
    :cond_82
    :goto_82
    :try_start_82
    monitor-exit v8

    goto :goto_16

    .end local v5    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/cover/CoverManager$CoverStateListenerDelegate;>;"
    :catchall_84
    move-exception v7

    :goto_85
    monitor-exit v8
    :try_end_86
    .catchall {:try_start_82 .. :try_end_86} :catchall_84

    throw v7

    .line 324
    .restart local v5    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/cover/CoverManager$CoverStateListenerDelegate;>;"
    :catch_87
    move-exception v4

    .line 325
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_88
    const-string v7, "CoverManager"

    const-string v9, "RemoteException in registerListener: "

    invoke-static {v7, v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8f
    .catchall {:try_start_88 .. :try_end_8f} :catchall_84

    goto :goto_82

    .line 327
    .end local v1    # "coverListener":Lcom/samsung/android/cover/CoverManager$CoverStateListenerDelegate;
    .end local v4    # "e":Landroid/os/RemoteException;
    .restart local v2    # "coverListener":Lcom/samsung/android/cover/CoverManager$CoverStateListenerDelegate;
    :catchall_90
    move-exception v7

    move-object v1, v2

    .end local v2    # "coverListener":Lcom/samsung/android/cover/CoverManager$CoverStateListenerDelegate;
    .restart local v1    # "coverListener":Lcom/samsung/android/cover/CoverManager$CoverStateListenerDelegate;
    goto :goto_85

    .end local v1    # "coverListener":Lcom/samsung/android/cover/CoverManager$CoverStateListenerDelegate;
    .restart local v2    # "coverListener":Lcom/samsung/android/cover/CoverManager$CoverStateListenerDelegate;
    :cond_93
    move-object v1, v2

    .end local v2    # "coverListener":Lcom/samsung/android/cover/CoverManager$CoverStateListenerDelegate;
    .restart local v1    # "coverListener":Lcom/samsung/android/cover/CoverManager$CoverStateListenerDelegate;
    goto :goto_61

    :cond_95
    move-object v2, v1

    .end local v1    # "coverListener":Lcom/samsung/android/cover/CoverManager$CoverStateListenerDelegate;
    .restart local v2    # "coverListener":Lcom/samsung/android/cover/CoverManager$CoverStateListenerDelegate;
    goto :goto_54
.end method

.method public registerListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V
    .registers 12
    .param p1, "listener"    # Lcom/samsung/android/cover/CoverManager$StateListener;

    .prologue
    .line 230
    const-string v7, "CoverManager"

    const-string/jumbo v8, "registerListener"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    invoke-virtual {p0}, Lcom/samsung/android/cover/CoverManager;->isSupportCover()Z

    move-result v7

    if-nez v7, :cond_17

    .line 232
    const-string v7, "CoverManager"

    const-string/jumbo v8, "registerListener : This device is not supported cover"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :goto_16
    return-void

    .line 236
    :cond_17
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v7

    const/16 v8, 0x3e8

    if-eq v7, v8, :cond_27

    .line 237
    new-instance v7, Ljava/lang/SecurityException;

    const-string v8, "CoverManager only available from system UID."

    invoke-direct {v7, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 240
    :cond_27
    if-nez p1, :cond_32

    .line 241
    const-string v7, "CoverManager"

    const-string/jumbo v8, "registerListener : listener is null"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    .line 244
    :cond_32
    iget-object v8, p0, Lcom/samsung/android/cover/CoverManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v8

    .line 245
    const/4 v1, 0x0

    .line 247
    .local v1, "coverListener":Lcom/samsung/android/cover/CoverManager$CoverListenerDelegate;
    :try_start_36
    iget-object v7, p0, Lcom/samsung/android/cover/CoverManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 248
    .local v5, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/cover/CoverManager$CoverListenerDelegate;>;"
    :cond_3c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_94

    .line 249
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/cover/CoverManager$CoverListenerDelegate;

    .line 250
    .local v3, "delegate":Lcom/samsung/android/cover/CoverManager$CoverListenerDelegate;
    invoke-virtual {v3}, Lcom/samsung/android/cover/CoverManager$CoverListenerDelegate;->getListener()Lcom/samsung/android/cover/CoverManager$StateListener;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_4f
    .catchall {:try_start_36 .. :try_end_4f} :catchall_83

    move-result v7

    if-eqz v7, :cond_3c

    .line 251
    move-object v1, v3

    move-object v2, v1

    .line 256
    .end local v1    # "coverListener":Lcom/samsung/android/cover/CoverManager$CoverListenerDelegate;
    .end local v3    # "delegate":Lcom/samsung/android/cover/CoverManager$CoverListenerDelegate;
    .local v2, "coverListener":Lcom/samsung/android/cover/CoverManager$CoverListenerDelegate;
    :goto_54
    if-nez v2, :cond_92

    .line 257
    :try_start_56
    new-instance v1, Lcom/samsung/android/cover/CoverManager$CoverListenerDelegate;

    const/4 v7, 0x0

    invoke-direct {v1, p0, p1, v7}, Lcom/samsung/android/cover/CoverManager$CoverListenerDelegate;-><init>(Lcom/samsung/android/cover/CoverManager;Lcom/samsung/android/cover/CoverManager$StateListener;Landroid/os/Handler;)V
    :try_end_5c
    .catchall {:try_start_56 .. :try_end_5c} :catchall_8f

    .line 258
    .end local v2    # "coverListener":Lcom/samsung/android/cover/CoverManager$CoverListenerDelegate;
    .restart local v1    # "coverListener":Lcom/samsung/android/cover/CoverManager$CoverListenerDelegate;
    :try_start_5c
    iget-object v7, p0, Lcom/samsung/android/cover/CoverManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z
    :try_end_61
    .catchall {:try_start_5c .. :try_end_61} :catchall_83

    .line 262
    :goto_61
    :try_start_61
    invoke-direct {p0}, Lcom/samsung/android/cover/CoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v6

    .line 263
    .local v6, "svc":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v6, :cond_81

    .line 264
    new-instance v0, Landroid/content/ComponentName;

    iget-object v7, p0, Lcom/samsung/android/cover/CoverManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v7, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    .local v0, "cm":Landroid/content/ComponentName;
    if-eqz v1, :cond_81

    if-eqz v0, :cond_81

    .line 267
    invoke-interface {v6, v1, v0}, Lcom/samsung/android/cover/ICoverManager;->registerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;)V
    :try_end_81
    .catch Landroid/os/RemoteException; {:try_start_61 .. :try_end_81} :catch_86
    .catchall {:try_start_61 .. :try_end_81} :catchall_83

    .line 273
    .end local v0    # "cm":Landroid/content/ComponentName;
    .end local v6    # "svc":Lcom/samsung/android/cover/ICoverManager;
    :cond_81
    :goto_81
    :try_start_81
    monitor-exit v8

    goto :goto_16

    .end local v5    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/cover/CoverManager$CoverListenerDelegate;>;"
    :catchall_83
    move-exception v7

    :goto_84
    monitor-exit v8
    :try_end_85
    .catchall {:try_start_81 .. :try_end_85} :catchall_83

    throw v7

    .line 270
    .restart local v5    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/cover/CoverManager$CoverListenerDelegate;>;"
    :catch_86
    move-exception v4

    .line 271
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_87
    const-string v7, "CoverManager"

    const-string v9, "RemoteException in registerListener: "

    invoke-static {v7, v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8e
    .catchall {:try_start_87 .. :try_end_8e} :catchall_83

    goto :goto_81

    .line 273
    .end local v1    # "coverListener":Lcom/samsung/android/cover/CoverManager$CoverListenerDelegate;
    .end local v4    # "e":Landroid/os/RemoteException;
    .restart local v2    # "coverListener":Lcom/samsung/android/cover/CoverManager$CoverListenerDelegate;
    :catchall_8f
    move-exception v7

    move-object v1, v2

    .end local v2    # "coverListener":Lcom/samsung/android/cover/CoverManager$CoverListenerDelegate;
    .restart local v1    # "coverListener":Lcom/samsung/android/cover/CoverManager$CoverListenerDelegate;
    goto :goto_84

    .end local v1    # "coverListener":Lcom/samsung/android/cover/CoverManager$CoverListenerDelegate;
    .restart local v2    # "coverListener":Lcom/samsung/android/cover/CoverManager$CoverListenerDelegate;
    :cond_92
    move-object v1, v2

    .end local v2    # "coverListener":Lcom/samsung/android/cover/CoverManager$CoverListenerDelegate;
    .restart local v1    # "coverListener":Lcom/samsung/android/cover/CoverManager$CoverListenerDelegate;
    goto :goto_61

    :cond_94
    move-object v2, v1

    .end local v1    # "coverListener":Lcom/samsung/android/cover/CoverManager$CoverListenerDelegate;
    .restart local v2    # "coverListener":Lcom/samsung/android/cover/CoverManager$CoverListenerDelegate;
    goto :goto_54
.end method

.method public setCoverModeToWindow(Landroid/view/Window;I)V
    .registers 6
    .param p1, "window"    # Landroid/view/Window;
    .param p2, "coverMode"    # I

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/samsung/android/cover/CoverManager;->isSupportSViewCover()Z

    move-result v1

    if-nez v1, :cond_f

    .line 210
    const-string v1, "CoverManager"

    const-string/jumbo v2, "setSViewCoverModeToWindow : This device is not supported s view cover"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_e
    :goto_e
    return-void

    .line 213
    :cond_f
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_1f

    .line 214
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "CoverManager only available from system UID."

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 216
    :cond_1f
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 217
    .local v0, "wlp":Landroid/view/WindowManager$LayoutParams;
    if-eqz v0, :cond_e

    .line 218
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->coverMode:I

    .line 219
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_e
.end method

.method public unregisterListener(Lcom/samsung/android/cover/CoverManager$CoverStateListener;)V
    .registers 10
    .param p1, "listener"    # Lcom/samsung/android/cover/CoverManager$CoverStateListener;

    .prologue
    .line 388
    const-string v5, "CoverManager"

    const-string/jumbo v6, "unregisterListener"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    invoke-virtual {p0}, Lcom/samsung/android/cover/CoverManager;->isSupportCover()Z

    move-result v5

    if-nez v5, :cond_17

    .line 390
    const-string v5, "CoverManager"

    const-string/jumbo v6, "unregisterListener : This device is not supported cover"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    :goto_16
    return-void

    .line 394
    :cond_17
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    const/16 v6, 0x3e8

    if-eq v5, v6, :cond_27

    .line 395
    new-instance v5, Ljava/lang/SecurityException;

    const-string v6, "CoverManager only available from system UID."

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 398
    :cond_27
    if-nez p1, :cond_32

    .line 399
    const-string v5, "CoverManager"

    const-string/jumbo v6, "unregisterListener : listener is null"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    .line 403
    :cond_32
    iget-object v6, p0, Lcom/samsung/android/cover/CoverManager;->mCoverStateListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v6

    .line 404
    const/4 v0, 0x0

    .line 406
    .local v0, "coverListener":Lcom/samsung/android/cover/CoverManager$CoverStateListenerDelegate;
    :try_start_36
    iget-object v5, p0, Lcom/samsung/android/cover/CoverManager;->mCoverStateListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 407
    .local v3, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/cover/CoverManager$CoverStateListenerDelegate;>;"
    :cond_3c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_53

    .line 408
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/cover/CoverManager$CoverStateListenerDelegate;

    .line 409
    .local v1, "delegate":Lcom/samsung/android/cover/CoverManager$CoverStateListenerDelegate;
    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverManager$CoverStateListenerDelegate;->getListener()Lcom/samsung/android/cover/CoverManager$CoverStateListener;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3c

    .line 410
    move-object v0, v1

    .line 415
    .end local v1    # "delegate":Lcom/samsung/android/cover/CoverManager$CoverStateListenerDelegate;
    :cond_53
    if-nez v0, :cond_5a

    .line 416
    monitor-exit v6

    goto :goto_16

    .line 429
    .end local v3    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/cover/CoverManager$CoverStateListenerDelegate;>;"
    :catchall_57
    move-exception v5

    monitor-exit v6
    :try_end_59
    .catchall {:try_start_36 .. :try_end_59} :catchall_57

    throw v5

    .line 420
    .restart local v3    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/cover/CoverManager$CoverStateListenerDelegate;>;"
    :cond_5a
    :try_start_5a
    invoke-direct {p0}, Lcom/samsung/android/cover/CoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v4

    .line 421
    .local v4, "svc":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v4, :cond_6b

    .line 422
    invoke-interface {v4, v0}, Lcom/samsung/android/cover/ICoverManager;->unregisterCallback(Landroid/os/IBinder;)Z

    move-result v5

    if-eqz v5, :cond_6b

    .line 423
    iget-object v5, p0, Lcom/samsung/android/cover/CoverManager;->mCoverStateListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_6b
    .catch Landroid/os/RemoteException; {:try_start_5a .. :try_end_6b} :catch_6d
    .catchall {:try_start_5a .. :try_end_6b} :catchall_57

    .line 429
    .end local v4    # "svc":Lcom/samsung/android/cover/ICoverManager;
    :cond_6b
    :goto_6b
    :try_start_6b
    monitor-exit v6

    goto :goto_16

    .line 426
    :catch_6d
    move-exception v2

    .line 427
    .local v2, "e":Landroid/os/RemoteException;
    const-string v5, "CoverManager"

    const-string v7, "RemoteException in unregisterListener: "

    invoke-static {v5, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_75
    .catchall {:try_start_6b .. :try_end_75} :catchall_57

    goto :goto_6b
.end method

.method public unregisterListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V
    .registers 10
    .param p1, "listener"    # Lcom/samsung/android/cover/CoverManager$StateListener;

    .prologue
    .line 337
    const-string v5, "CoverManager"

    const-string/jumbo v6, "unregisterListener"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    invoke-virtual {p0}, Lcom/samsung/android/cover/CoverManager;->isSupportCover()Z

    move-result v5

    if-nez v5, :cond_17

    .line 339
    const-string v5, "CoverManager"

    const-string/jumbo v6, "unregisterListener : This device is not supported cover"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    :goto_16
    return-void

    .line 343
    :cond_17
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    const/16 v6, 0x3e8

    if-eq v5, v6, :cond_27

    .line 344
    new-instance v5, Ljava/lang/SecurityException;

    const-string v6, "CoverManager only available from system UID."

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 347
    :cond_27
    if-nez p1, :cond_32

    .line 348
    const-string v5, "CoverManager"

    const-string/jumbo v6, "unregisterListener : listener is null"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    .line 352
    :cond_32
    iget-object v6, p0, Lcom/samsung/android/cover/CoverManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v6

    .line 353
    const/4 v0, 0x0

    .line 355
    .local v0, "coverListener":Lcom/samsung/android/cover/CoverManager$CoverListenerDelegate;
    :try_start_36
    iget-object v5, p0, Lcom/samsung/android/cover/CoverManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 356
    .local v3, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/cover/CoverManager$CoverListenerDelegate;>;"
    :cond_3c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_53

    .line 357
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/cover/CoverManager$CoverListenerDelegate;

    .line 358
    .local v1, "delegate":Lcom/samsung/android/cover/CoverManager$CoverListenerDelegate;
    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverManager$CoverListenerDelegate;->getListener()Lcom/samsung/android/cover/CoverManager$StateListener;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3c

    .line 359
    move-object v0, v1

    .line 364
    .end local v1    # "delegate":Lcom/samsung/android/cover/CoverManager$CoverListenerDelegate;
    :cond_53
    if-nez v0, :cond_5a

    .line 365
    monitor-exit v6

    goto :goto_16

    .line 378
    .end local v3    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/cover/CoverManager$CoverListenerDelegate;>;"
    :catchall_57
    move-exception v5

    monitor-exit v6
    :try_end_59
    .catchall {:try_start_36 .. :try_end_59} :catchall_57

    throw v5

    .line 369
    .restart local v3    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/cover/CoverManager$CoverListenerDelegate;>;"
    :cond_5a
    :try_start_5a
    invoke-direct {p0}, Lcom/samsung/android/cover/CoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v4

    .line 370
    .local v4, "svc":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v4, :cond_6b

    .line 371
    invoke-interface {v4, v0}, Lcom/samsung/android/cover/ICoverManager;->unregisterCallback(Landroid/os/IBinder;)Z

    move-result v5

    if-eqz v5, :cond_6b

    .line 372
    iget-object v5, p0, Lcom/samsung/android/cover/CoverManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_6b
    .catch Landroid/os/RemoteException; {:try_start_5a .. :try_end_6b} :catch_6d
    .catchall {:try_start_5a .. :try_end_6b} :catchall_57

    .line 378
    .end local v4    # "svc":Lcom/samsung/android/cover/ICoverManager;
    :cond_6b
    :goto_6b
    :try_start_6b
    monitor-exit v6

    goto :goto_16

    .line 375
    :catch_6d
    move-exception v2

    .line 376
    .local v2, "e":Landroid/os/RemoteException;
    const-string v5, "CoverManager"

    const-string v7, "RemoteException in unregisterListener: "

    invoke-static {v5, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_75
    .catchall {:try_start_6b .. :try_end_75} :catchall_57

    goto :goto_6b
.end method
