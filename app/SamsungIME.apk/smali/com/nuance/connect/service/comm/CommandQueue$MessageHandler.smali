.class Lcom/nuance/connect/service/comm/CommandQueue$MessageHandler;
.super Landroid/os/Handler;
.source "CommandQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/service/comm/CommandQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MessageHandler"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mgrRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/nuance/connect/service/comm/CommandQueue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 376
    const-class v0, Lcom/nuance/connect/service/comm/CommandQueue;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/nuance/connect/service/comm/CommandQueue$MessageHandler;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/nuance/connect/service/comm/CommandQueue;)V
    .locals 1
    .param p1, "mgr"    # Lcom/nuance/connect/service/comm/CommandQueue;

    .prologue
    .line 380
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 381
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue$MessageHandler;->mgrRef:Ljava/lang/ref/WeakReference;

    .line 382
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 393
    sget-boolean v1, Lcom/nuance/connect/service/comm/CommandQueue$MessageHandler;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x3

    if-le v1, v2, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 394
    :cond_0
    iget-object v1, p0, Lcom/nuance/connect/service/comm/CommandQueue$MessageHandler;->mgrRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/comm/CommandQueue;

    .line 395
    .local v0, "ime":Lcom/nuance/connect/service/comm/CommandQueue;
    if-eqz v0, :cond_1

    .line 396
    invoke-virtual {v0, p0, p1}, Lcom/nuance/connect/service/comm/CommandQueue;->handleMessage(Lcom/nuance/connect/service/comm/CommandQueue$MessageHandler;Landroid/os/Message;)V

    .line 398
    :cond_1
    return-void
.end method

.method public sendMessageDelayedSeconds(Landroid/os/Message;I)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "seconds"    # I

    .prologue
    .line 401
    mul-int/lit16 v0, p2, 0x3e8

    .line 402
    .local v0, "milliseconds":I
    int-to-long v1, v0

    invoke-virtual {p0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 403
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 385
    iget-object v1, p0, Lcom/nuance/connect/service/comm/CommandQueue$MessageHandler;->mgrRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->clear()V

    .line 386
    const/4 v0, 0x0

    .local v0, "what":I
    :goto_0
    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 387
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 386
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 389
    :cond_0
    return-void
.end method
