.class public final Landroid/webkitsec/NotificationPermissions;
.super Ljava/lang/Object;
.source "NotificationPermissions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkitsec/NotificationPermissions$Callback;
    }
.end annotation


# static fields
.field static final CLEAR_ALL:I

.field private static sInstance:Landroid/webkitsec/NotificationPermissions;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mQueuedMessages:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mUIHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()V
    .registers 0

    .prologue
    .line 39
    invoke-static {}, Landroid/webkitsec/NotificationPermissions;->nativeClearAll()V

    return-void
.end method

.method public static getInstance()Landroid/webkitsec/NotificationPermissions;
    .registers 1

    .prologue
    .line 66
    sget-object v0, Landroid/webkitsec/NotificationPermissions;->sInstance:Landroid/webkitsec/NotificationPermissions;

    if-nez v0, :cond_b

    .line 67
    new-instance v0, Landroid/webkitsec/NotificationPermissions;

    invoke-direct {v0}, Landroid/webkitsec/NotificationPermissions;-><init>()V

    sput-object v0, Landroid/webkitsec/NotificationPermissions;->sInstance:Landroid/webkitsec/NotificationPermissions;

    .line 69
    :cond_b
    sget-object v0, Landroid/webkitsec/NotificationPermissions;->sInstance:Landroid/webkitsec/NotificationPermissions;

    return-object v0
.end method

.method private static native nativeClearAll()V
.end method

.method private declared-synchronized postMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 105
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/webkitsec/NotificationPermissions;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_17

    .line 106
    iget-object v0, p0, Landroid/webkitsec/NotificationPermissions;->mQueuedMessages:Ljava/util/Vector;

    if-nez v0, :cond_10

    .line 107
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid/webkitsec/NotificationPermissions;->mQueuedMessages:Ljava/util/Vector;

    .line 109
    :cond_10
    iget-object v0, p0, Landroid/webkitsec/NotificationPermissions;->mQueuedMessages:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_1d

    .line 113
    :goto_15
    monitor-exit p0

    return-void

    .line 111
    :cond_17
    :try_start_17
    iget-object v0, p0, Landroid/webkitsec/NotificationPermissions;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1c
    .catchall {:try_start_17 .. :try_end_1c} :catchall_1d

    goto :goto_15

    .line 105
    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public clearAll()V
    .registers 3

    .prologue
    .line 121
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/webkitsec/NotificationPermissions;->postMessage(Landroid/os/Message;)V

    .line 122
    return-void
.end method

.method public declared-synchronized createHandler()V
    .registers 4

    .prologue
    .line 78
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/webkitsec/NotificationPermissions;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_2d

    .line 79
    new-instance v0, Landroid/webkitsec/NotificationPermissions$1;

    invoke-direct {v0, p0}, Landroid/webkitsec/NotificationPermissions$1;-><init>(Landroid/webkitsec/NotificationPermissions;)V

    iput-object v0, p0, Landroid/webkitsec/NotificationPermissions;->mHandler:Landroid/os/Handler;

    .line 92
    iget-object v0, p0, Landroid/webkitsec/NotificationPermissions;->mQueuedMessages:Ljava/util/Vector;

    if-eqz v0, :cond_2d

    .line 93
    :goto_10
    iget-object v0, p0, Landroid/webkitsec/NotificationPermissions;->mQueuedMessages:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 94
    iget-object v1, p0, Landroid/webkitsec/NotificationPermissions;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Landroid/webkitsec/NotificationPermissions;->mQueuedMessages:Ljava/util/Vector;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_27

    goto :goto_10

    .line 78
    :catchall_27
    move-exception v0

    monitor-exit p0

    throw v0

    .line 96
    :cond_2a
    const/4 v0, 0x0

    :try_start_2b
    iput-object v0, p0, Landroid/webkitsec/NotificationPermissions;->mQueuedMessages:Ljava/util/Vector;
    :try_end_2d
    .catchall {:try_start_2b .. :try_end_2d} :catchall_27

    .line 99
    :cond_2d
    monitor-exit p0

    return-void
.end method
