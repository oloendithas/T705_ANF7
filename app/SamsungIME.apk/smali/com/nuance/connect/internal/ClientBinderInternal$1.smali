.class Lcom/nuance/connect/internal/ClientBinderInternal$1;
.super Ljava/lang/Object;
.source "ClientBinderInternal.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/internal/ClientBinderInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/internal/ClientBinderInternal;


# direct methods
.method constructor <init>(Lcom/nuance/connect/internal/ClientBinderInternal;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/nuance/connect/internal/ClientBinderInternal$1;->this$0:Lcom/nuance/connect/internal/ClientBinderInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    const/4 v3, 0x0

    .line 75
    if-nez p2, :cond_1

    .line 76
    iget-object v1, p0, Lcom/nuance/connect/internal/ClientBinderInternal$1;->this$0:Lcom/nuance/connect/internal/ClientBinderInternal;

    # invokes: Lcom/nuance/connect/internal/ClientBinderInternal;->setConnectBoundState(Z)V
    invoke-static {v1, v3}, Lcom/nuance/connect/internal/ClientBinderInternal;->access$000(Lcom/nuance/connect/internal/ClientBinderInternal;Z)V

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/nuance/connect/internal/ClientBinderInternal$1;->this$0:Lcom/nuance/connect/internal/ClientBinderInternal;

    new-instance v2, Landroid/os/Messenger;

    invoke-direct {v2, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    # setter for: Lcom/nuance/connect/internal/ClientBinderInternal;->mOutboundMessenger:Landroid/os/Messenger;
    invoke-static {v1, v2}, Lcom/nuance/connect/internal/ClientBinderInternal;->access$102(Lcom/nuance/connect/internal/ClientBinderInternal;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 82
    iget-object v1, p0, Lcom/nuance/connect/internal/ClientBinderInternal$1;->this$0:Lcom/nuance/connect/internal/ClientBinderInternal;

    const/4 v2, 0x1

    # invokes: Lcom/nuance/connect/internal/ClientBinderInternal;->setConnectBoundState(Z)V
    invoke-static {v1, v2}, Lcom/nuance/connect/internal/ClientBinderInternal;->access$000(Lcom/nuance/connect/internal/ClientBinderInternal;Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :goto_1
    iget-object v1, p0, Lcom/nuance/connect/internal/ClientBinderInternal$1;->this$0:Lcom/nuance/connect/internal/ClientBinderInternal;

    # getter for: Lcom/nuance/connect/internal/ClientBinderInternal;->connectBound:Z
    invoke-static {v1}, Lcom/nuance/connect/internal/ClientBinderInternal;->access$200(Lcom/nuance/connect/internal/ClientBinderInternal;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    iget-object v1, p0, Lcom/nuance/connect/internal/ClientBinderInternal$1;->this$0:Lcom/nuance/connect/internal/ClientBinderInternal;

    # getter for: Lcom/nuance/connect/internal/ClientBinderInternal;->lifecycleCallback:Lcom/nuance/connect/internal/ClientBinderLifecycleCallback;
    invoke-static {v1}, Lcom/nuance/connect/internal/ClientBinderInternal;->access$300(Lcom/nuance/connect/internal/ClientBinderInternal;)Lcom/nuance/connect/internal/ClientBinderLifecycleCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/nuance/connect/internal/ClientBinderLifecycleCallback;->onBound()V

    .line 89
    iget-object v1, p0, Lcom/nuance/connect/internal/ClientBinderInternal$1;->this$0:Lcom/nuance/connect/internal/ClientBinderInternal;

    # setter for: Lcom/nuance/connect/internal/ClientBinderInternal;->restart:Z
    invoke-static {v1, v3}, Lcom/nuance/connect/internal/ClientBinderInternal;->access$402(Lcom/nuance/connect/internal/ClientBinderInternal;Z)Z

    goto :goto_0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "ex":Ljava/lang/NullPointerException;
    iget-object v1, p0, Lcom/nuance/connect/internal/ClientBinderInternal$1;->this$0:Lcom/nuance/connect/internal/ClientBinderInternal;

    # invokes: Lcom/nuance/connect/internal/ClientBinderInternal;->setConnectBoundState(Z)V
    invoke-static {v1, v3}, Lcom/nuance/connect/internal/ClientBinderInternal;->access$000(Lcom/nuance/connect/internal/ClientBinderInternal;Z)V

    goto :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/nuance/connect/internal/ClientBinderInternal$1;->this$0:Lcom/nuance/connect/internal/ClientBinderInternal;

    const/4 v1, 0x0

    # setter for: Lcom/nuance/connect/internal/ClientBinderInternal;->mOutboundMessenger:Landroid/os/Messenger;
    invoke-static {v0, v1}, Lcom/nuance/connect/internal/ClientBinderInternal;->access$102(Lcom/nuance/connect/internal/ClientBinderInternal;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 98
    iget-object v0, p0, Lcom/nuance/connect/internal/ClientBinderInternal$1;->this$0:Lcom/nuance/connect/internal/ClientBinderInternal;

    const/4 v1, 0x0

    # invokes: Lcom/nuance/connect/internal/ClientBinderInternal;->setConnectBoundState(Z)V
    invoke-static {v0, v1}, Lcom/nuance/connect/internal/ClientBinderInternal;->access$000(Lcom/nuance/connect/internal/ClientBinderInternal;Z)V

    .line 99
    iget-object v0, p0, Lcom/nuance/connect/internal/ClientBinderInternal$1;->this$0:Lcom/nuance/connect/internal/ClientBinderInternal;

    # getter for: Lcom/nuance/connect/internal/ClientBinderInternal;->lifecycleCallback:Lcom/nuance/connect/internal/ClientBinderLifecycleCallback;
    invoke-static {v0}, Lcom/nuance/connect/internal/ClientBinderInternal;->access$300(Lcom/nuance/connect/internal/ClientBinderInternal;)Lcom/nuance/connect/internal/ClientBinderLifecycleCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/connect/internal/ClientBinderLifecycleCallback;->onUnbound()V

    .line 100
    return-void
.end method
