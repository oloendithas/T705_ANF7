.class public final Landroid/view/accessibility/AccessibilityManager;
.super Ljava/lang/Object;
.source "AccessibilityManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/accessibility/AccessibilityManager$MyHandler;,
        Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;,
        Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DO_SET_STATE:I = 0xa

.field private static final LOG_TAG:Ljava/lang/String; = "AccessibilityManager"

.field public static final STATE_FLAG_ACCESSIBILITY_ENABLED:I = 0x1

.field public static final STATE_FLAG_TOUCH_EXPLORATION_ENABLED:I = 0x2

.field private static sInstance:Landroid/view/accessibility/AccessibilityManager;

.field static final sInstanceSync:Ljava/lang/Object;

.field static final sListenerSync:Ljava/lang/Object;


# instance fields
.field private final mAccessibilityStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field final mClient:Landroid/view/accessibility/IAccessibilityManagerClient$Stub;

.field final mHandler:Landroid/os/Handler;

.field mIsEnabled:Z

.field mIsTouchExplorationEnabled:Z

.field final mService:Landroid/view/accessibility/IAccessibilityManager;

.field private final mTouchExplorationStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field final mUserId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 79
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/accessibility/AccessibilityManager;->sInstanceSync:Ljava/lang/Object;

    .line 81
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/accessibility/AccessibilityManager;->sListenerSync:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/accessibility/IAccessibilityManager;I)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/view/accessibility/IAccessibilityManager;
    .param p3, "userId"    # I

    .prologue
    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 101
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mTouchExplorationStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 136
    new-instance v2, Landroid/view/accessibility/AccessibilityManager$1;

    invoke-direct {v2, p0}, Landroid/view/accessibility/AccessibilityManager$1;-><init>(Landroid/view/accessibility/AccessibilityManager;)V

    iput-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mClient:Landroid/view/accessibility/IAccessibilityManagerClient$Stub;

    .line 200
    new-instance v2, Landroid/view/accessibility/AccessibilityManager$MyHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Landroid/view/accessibility/AccessibilityManager$MyHandler;-><init>(Landroid/view/accessibility/AccessibilityManager;Landroid/os/Looper;)V

    iput-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mHandler:Landroid/os/Handler;

    .line 201
    iput-object p2, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;

    .line 202
    iput p3, p0, Landroid/view/accessibility/AccessibilityManager;->mUserId:I

    .line 205
    :try_start_27
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;

    iget-object v3, p0, Landroid/view/accessibility/AccessibilityManager;->mClient:Landroid/view/accessibility/IAccessibilityManagerClient$Stub;

    invoke-interface {v2, v3, p3}, Landroid/view/accessibility/IAccessibilityManager;->addClient(Landroid/view/accessibility/IAccessibilityManagerClient;I)I

    move-result v1

    .line 206
    .local v1, "stateFlags":I
    invoke-direct {p0, v1}, Landroid/view/accessibility/AccessibilityManager;->setState(I)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_32} :catch_33

    .line 210
    .end local v1    # "stateFlags":I
    :goto_32
    return-void

    .line 207
    :catch_33
    move-exception v0

    .line 208
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "AccessibilityManager"

    const-string v3, "AccessibilityManagerService is dead"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_32
.end method

.method static synthetic access$000(Landroid/view/accessibility/AccessibilityManager;I)V
    .registers 2
    .param p0, "x0"    # Landroid/view/accessibility/AccessibilityManager;
    .param p1, "x1"    # I

    .prologue
    .line 68
    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityManager;->setState(I)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 168
    sget-object v4, Landroid/view/accessibility/AccessibilityManager;->sInstanceSync:Ljava/lang/Object;

    monitor-enter v4

    .line 169
    :try_start_3
    sget-object v3, Landroid/view/accessibility/AccessibilityManager;->sInstance:Landroid/view/accessibility/AccessibilityManager;

    if-nez v3, :cond_31

    .line 171
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/16 v5, 0x3e8

    if-eq v3, v5, :cond_1f

    const-string v3, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {p0, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1f

    const-string v3, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {p0, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_35

    .line 178
    :cond_1f
    const/4 v2, -0x2

    .line 182
    .local v2, "userId":I
    :goto_20
    const-string v3, "accessibility"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 183
    .local v0, "iBinder":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 184
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    new-instance v3, Landroid/view/accessibility/AccessibilityManager;

    invoke-direct {v3, p0, v1, v2}, Landroid/view/accessibility/AccessibilityManager;-><init>(Landroid/content/Context;Landroid/view/accessibility/IAccessibilityManager;I)V

    sput-object v3, Landroid/view/accessibility/AccessibilityManager;->sInstance:Landroid/view/accessibility/AccessibilityManager;

    .line 186
    .end local v0    # "iBinder":Landroid/os/IBinder;
    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    .end local v2    # "userId":I
    :cond_31
    monitor-exit v4
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_3a

    .line 187
    sget-object v3, Landroid/view/accessibility/AccessibilityManager;->sInstance:Landroid/view/accessibility/AccessibilityManager;

    return-object v3

    .line 180
    :cond_35
    :try_start_35
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .restart local v2    # "userId":I
    goto :goto_20

    .line 186
    .end local v2    # "userId":I
    :catchall_3a
    move-exception v3

    monitor-exit v4
    :try_end_3c
    .catchall {:try_start_35 .. :try_end_3c} :catchall_3a

    throw v3
.end method

.method private notifyAccessibilityStateChangedLh()V
    .registers 6

    .prologue
    .line 448
    sget-object v3, Landroid/view/accessibility/AccessibilityManager;->sListenerSync:Ljava/lang/Object;

    monitor-enter v3

    .line 449
    :try_start_3
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    .line 450
    .local v1, "listenerCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    if-ge v0, v1, :cond_1c

    .line 451
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;

    iget-boolean v4, p0, Landroid/view/accessibility/AccessibilityManager;->mIsEnabled:Z

    invoke-interface {v2, v4}, Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;->onAccessibilityStateChanged(Z)V

    .line 450
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 453
    :cond_1c
    monitor-exit v3

    .line 454
    return-void

    .line 453
    .end local v0    # "i":I
    .end local v1    # "listenerCount":I
    :catchall_1e
    move-exception v2

    monitor-exit v3
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v2
.end method

.method private notifyTouchExplorationStateChangedLh()V
    .registers 5

    .prologue
    .line 462
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mTouchExplorationStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    .line 463
    .local v1, "listenerCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    if-ge v0, v1, :cond_19

    .line 464
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mTouchExplorationStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    iget-boolean v3, p0, Landroid/view/accessibility/AccessibilityManager;->mIsTouchExplorationEnabled:Z

    invoke-interface {v2, v3}, Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;->onTouchExplorationStateChanged(Z)V

    .line 463
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 467
    :cond_19
    return-void
.end method

.method private setState(I)V
    .registers 8
    .param p1, "stateFlags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 421
    and-int/lit8 v5, p1, 0x1

    if-eqz v5, :cond_22

    move v0, v1

    .line 422
    .local v0, "enabled":Z
    :goto_7
    and-int/lit8 v5, p1, 0x2

    if-eqz v5, :cond_24

    .line 424
    .local v1, "touchExplorationEnabled":Z
    :goto_b
    iget-object v5, p0, Landroid/view/accessibility/AccessibilityManager;->mHandler:Landroid/os/Handler;

    monitor-enter v5

    .line 425
    :try_start_e
    iget-boolean v2, p0, Landroid/view/accessibility/AccessibilityManager;->mIsEnabled:Z

    .line 426
    .local v2, "wasEnabled":Z
    iget-boolean v3, p0, Landroid/view/accessibility/AccessibilityManager;->mIsTouchExplorationEnabled:Z

    .line 429
    .local v3, "wasTouchExplorationEnabled":Z
    iput-boolean v0, p0, Landroid/view/accessibility/AccessibilityManager;->mIsEnabled:Z

    .line 430
    iput-boolean v1, p0, Landroid/view/accessibility/AccessibilityManager;->mIsTouchExplorationEnabled:Z

    .line 432
    if-eq v2, v0, :cond_1b

    .line 433
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->notifyAccessibilityStateChangedLh()V

    .line 436
    :cond_1b
    if-eq v3, v1, :cond_20

    .line 437
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->notifyTouchExplorationStateChangedLh()V

    .line 439
    :cond_20
    monitor-exit v5

    .line 440
    return-void

    .end local v0    # "enabled":Z
    .end local v1    # "touchExplorationEnabled":Z
    .end local v2    # "wasEnabled":Z
    .end local v3    # "wasTouchExplorationEnabled":Z
    :cond_22
    move v0, v4

    .line 421
    goto :goto_7

    .restart local v0    # "enabled":Z
    :cond_24
    move v1, v4

    .line 422
    goto :goto_b

    .line 439
    .restart local v1    # "touchExplorationEnabled":Z
    :catchall_26
    move-exception v4

    monitor-exit v5
    :try_end_28
    .catchall {:try_start_e .. :try_end_28} :catchall_26

    throw v4
.end method


# virtual methods
.method public addAccessibilityInteractionConnection(Landroid/view/IWindow;Landroid/view/accessibility/IAccessibilityInteractionConnection;)I
    .registers 6
    .param p1, "windowToken"    # Landroid/view/IWindow;
    .param p2, "connection"    # Landroid/view/accessibility/IAccessibilityInteractionConnection;

    .prologue
    .line 479
    :try_start_0
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;

    iget v2, p0, Landroid/view/accessibility/AccessibilityManager;->mUserId:I

    invoke-interface {v1, p1, p2, v2}, Landroid/view/accessibility/IAccessibilityManager;->addAccessibilityInteractionConnection(Landroid/view/IWindow;Landroid/view/accessibility/IAccessibilityInteractionConnection;I)I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result v1

    .line 483
    :goto_8
    return v1

    .line 480
    :catch_9
    move-exception v0

    .line 481
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "AccessibilityManager"

    const-string v2, "Error while adding an accessibility interaction connection. "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 483
    const/4 v1, -0x1

    goto :goto_8
.end method

.method public addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z
    .registers 4
    .param p1, "listener"    # Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;

    .prologue
    .line 374
    sget-object v1, Landroid/view/accessibility/AccessibilityManager;->sListenerSync:Ljava/lang/Object;

    monitor-enter v1

    .line 375
    :try_start_3
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 376
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z
    .registers 3
    .param p1, "listener"    # Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    .prologue
    .line 401
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mTouchExplorationStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public assistantMenuRegister(Landroid/os/IBinder;)V
    .registers 5
    .param p1, "iBinder"    # Landroid/os/IBinder;

    .prologue
    .line 511
    :try_start_0
    const-string v1, "AccessibilityManager"

    const-string v2, "assistantMenuRegister invoking from manager start:"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;

    invoke-interface {v1, p1}, Landroid/view/accessibility/IAccessibilityManager;->assistantMenuRegister(Landroid/os/IBinder;)V

    .line 513
    const-string v1, "AccessibilityManager"

    const-string v2, "assistantMenuRegister invoking from manager end:"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_14

    .line 517
    :goto_13
    return-void

    .line 514
    :catch_14
    move-exception v0

    .line 515
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "AccessibilityManager"

    const-string v2, "assistantMenuRegister Exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_13
.end method

.method public assistantMenuUpdate(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 530
    :try_start_0
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;

    invoke-interface {v1, p1}, Landroid/view/accessibility/IAccessibilityManager;->assistantMenuUpdate(Landroid/os/Bundle;)V

    .line 531
    const-string v1, "AccessibilityManager"

    const-string v2, "assistantMenuUpdate invoking from manager:"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    .line 535
    :goto_c
    return-void

    .line 532
    :catch_d
    move-exception v0

    .line 533
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "AccessibilityManager"

    const-string v2, "assistantMenuUpdate Exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c
.end method

.method public getAccessibilityServiceList()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ServiceInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 310
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v3

    .line 311
    .local v3, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 312
    .local v4, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ServiceInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 313
    .local v2, "infoCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_e
    if-ge v0, v2, :cond_22

    .line 314
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 315
    .local v1, "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    invoke-virtual {v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 317
    .end local v1    # "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :cond_22
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    return-object v5
.end method

.method public getClient()Landroid/view/accessibility/IAccessibilityManagerClient;
    .registers 2

    .prologue
    .line 243
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mClient:Landroid/view/accessibility/IAccessibilityManagerClient$Stub;

    invoke-virtual {v0}, Landroid/view/accessibility/IAccessibilityManagerClient$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/IAccessibilityManagerClient;

    return-object v0
.end method

.method public getEnabledAccessibilityServiceList(I)Ljava/util/List;
    .registers 6
    .param p1, "feedbackTypeFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 353
    const/4 v1, 0x0

    .line 355
    .local v1, "services":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    :try_start_1
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;

    iget v3, p0, Landroid/view/accessibility/AccessibilityManager;->mUserId:I

    invoke-interface {v2, p1, v3}, Landroid/view/accessibility/IAccessibilityManager;->getEnabledAccessibilityServiceList(II)Ljava/util/List;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_e

    move-result-object v1

    .line 362
    :goto_9
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 359
    :catch_e
    move-exception v0

    .line 360
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "AccessibilityManager"

    const-string v3, "Error while obtaining the installed AccessibilityServices. "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public getInstalledAccessibilityServiceList()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 326
    const/4 v1, 0x0

    .line 328
    .local v1, "services":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    :try_start_1
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;

    iget v3, p0, Landroid/view/accessibility/AccessibilityManager;->mUserId:I

    invoke-interface {v2, v3}, Landroid/view/accessibility/IAccessibilityManager;->getInstalledAccessibilityServiceList(I)Ljava/util/List;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_e

    move-result-object v1

    .line 335
    :goto_9
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 332
    :catch_e
    move-exception v0

    .line 333
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "AccessibilityManager"

    const-string v3, "Error while obtaining the installed AccessibilityServices. "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public interrupt()V
    .registers 4

    .prologue
    .line 288
    iget-boolean v1, p0, Landroid/view/accessibility/AccessibilityManager;->mIsEnabled:Z

    if-nez v1, :cond_c

    .line 289
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Accessibility off. Did you forget to check that?"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 292
    :cond_c
    :try_start_c
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;

    iget v2, p0, Landroid/view/accessibility/AccessibilityManager;->mUserId:I

    invoke-interface {v1, v2}, Landroid/view/accessibility/IAccessibilityManager;->interrupt(I)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_13} :catch_14

    .line 299
    :goto_13
    return-void

    .line 296
    :catch_14
    move-exception v0

    .line 297
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "AccessibilityManager"

    const-string v2, "Error while requesting interrupt from all services. "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_13
.end method

.method public isEnabled()Z
    .registers 3

    .prologue
    .line 218
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mHandler:Landroid/os/Handler;

    monitor-enter v1

    .line 219
    :try_start_3
    iget-boolean v0, p0, Landroid/view/accessibility/AccessibilityManager;->mIsEnabled:Z

    monitor-exit v1

    return v0

    .line 220
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public isTouchExplorationEnabled()Z
    .registers 3

    .prologue
    .line 229
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mHandler:Landroid/os/Handler;

    monitor-enter v1

    .line 230
    :try_start_3
    iget-boolean v0, p0, Landroid/view/accessibility/AccessibilityManager;->mIsTouchExplorationEnabled:Z

    monitor-exit v1

    return v0

    .line 231
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public removeAccessibilityInteractionConnection(Landroid/view/IWindow;)V
    .registers 5
    .param p1, "windowToken"    # Landroid/view/IWindow;

    .prologue
    .line 494
    :try_start_0
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;

    invoke-interface {v1, p1}, Landroid/view/accessibility/IAccessibilityManager;->removeAccessibilityInteractionConnection(Landroid/view/IWindow;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 498
    :goto_5
    return-void

    .line 495
    :catch_6
    move-exception v0

    .line 496
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "AccessibilityManager"

    const-string v2, "Error while removing an accessibility interaction connection. "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public removeAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z
    .registers 4
    .param p1, "listener"    # Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;

    .prologue
    .line 387
    sget-object v1, Landroid/view/accessibility/AccessibilityManager;->sListenerSync:Ljava/lang/Object;

    monitor-enter v1

    .line 388
    :try_start_3
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 389
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public removeTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z
    .registers 3
    .param p1, "listener"    # Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    .prologue
    .line 412
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mTouchExplorationStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 9
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 260
    iget-boolean v4, p0, Landroid/view/accessibility/AccessibilityManager;->mIsEnabled:Z

    if-nez v4, :cond_c

    .line 261
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Accessibility off. Did you forget to check that?"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 263
    :cond_c
    const/4 v0, 0x0

    .line 265
    .local v0, "doRecycle":Z
    :try_start_d
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Landroid/view/accessibility/AccessibilityEvent;->setEventTime(J)V

    .line 269
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 270
    .local v1, "identityToken":J
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;

    iget v5, p0, Landroid/view/accessibility/AccessibilityManager;->mUserId:I

    invoke-interface {v4, p1, v5}, Landroid/view/accessibility/IAccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;I)Z

    move-result v0

    .line 271
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_23} :catch_29
    .catchall {:try_start_d .. :try_end_23} :catchall_4b

    .line 278
    if-eqz v0, :cond_28

    .line 279
    .end local v1    # "identityToken":J
    :goto_25
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    .line 282
    :cond_28
    return-void

    .line 275
    :catch_29
    move-exception v3

    .line 276
    .local v3, "re":Landroid/os/RemoteException;
    :try_start_2a
    const-string v4, "AccessibilityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error during sending "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_48
    .catchall {:try_start_2a .. :try_end_48} :catchall_4b

    .line 278
    if-eqz v0, :cond_28

    goto :goto_25

    .end local v3    # "re":Landroid/os/RemoteException;
    :catchall_4b
    move-exception v4

    if-eqz v0, :cond_51

    .line 279
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    .line 278
    :cond_51
    throw v4
.end method

.method public setmDNIeColorBlind(Z[I)Z
    .registers 7
    .param p1, "enable"    # Z
    .param p2, "result"    # [I

    .prologue
    .line 546
    const/4 v1, 0x0

    .line 548
    .local v1, "retVal":Z
    :try_start_1
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;

    invoke-interface {v2, p1, p2}, Landroid/view/accessibility/IAccessibilityManager;->setmDNIeColorBlind(Z[I)Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_6} :catch_8

    move-result v1

    .line 552
    :goto_7
    return v1

    .line 549
    :catch_8
    move-exception v0

    .line 550
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "AccessibilityManager"

    const-string/jumbo v3, "setmDNIeColorBlind Exception:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method

.method public setmDNIeNegative(Z)Z
    .registers 6
    .param p1, "enable"    # Z

    .prologue
    .line 564
    const/4 v1, 0x0

    .line 566
    .local v1, "retVal":Z
    :try_start_1
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;

    invoke-interface {v2, p1}, Landroid/view/accessibility/IAccessibilityManager;->setmDNIeNegative(Z)Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_6} :catch_8

    move-result v1

    .line 570
    :goto_7
    return v1

    .line 567
    :catch_8
    move-exception v0

    .line 568
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "AccessibilityManager"

    const-string/jumbo v3, "setmDNIeNegative Exception:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method
