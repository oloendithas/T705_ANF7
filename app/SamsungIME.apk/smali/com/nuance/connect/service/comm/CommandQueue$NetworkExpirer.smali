.class Lcom/nuance/connect/service/comm/CommandQueue$NetworkExpirer;
.super Ljava/lang/Object;
.source "CommandQueue.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/service/comm/CommandQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NetworkExpirer"
.end annotation


# instance fields
.field private dispose:Ljava/lang/Runnable;

.field private expired:Z

.field final synthetic this$0:Lcom/nuance/connect/service/comm/CommandQueue;


# direct methods
.method private constructor <init>(Lcom/nuance/connect/service/comm/CommandQueue;)V
    .locals 0

    .prologue
    .line 276
    iput-object p1, p0, Lcom/nuance/connect/service/comm/CommandQueue$NetworkExpirer;->this$0:Lcom/nuance/connect/service/comm/CommandQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    return-void
.end method

.method synthetic constructor <init>(Lcom/nuance/connect/service/comm/CommandQueue;Lcom/nuance/connect/service/comm/CommandQueue$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/nuance/connect/service/comm/CommandQueue;
    .param p2, "x1"    # Lcom/nuance/connect/service/comm/CommandQueue$1;

    .prologue
    .line 271
    invoke-direct {p0, p1}, Lcom/nuance/connect/service/comm/CommandQueue$NetworkExpirer;-><init>(Lcom/nuance/connect/service/comm/CommandQueue;)V

    return-void
.end method

.method private sendTimeoutMessage()V
    .locals 3

    .prologue
    .line 280
    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue$NetworkExpirer;->this$0:Lcom/nuance/connect/service/comm/CommandQueue;

    # getter for: Lcom/nuance/connect/service/comm/CommandQueue;->mainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/nuance/connect/service/comm/CommandQueue;->access$1300(Lcom/nuance/connect/service/comm/CommandQueue;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 281
    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue$NetworkExpirer;->this$0:Lcom/nuance/connect/service/comm/CommandQueue;

    # getter for: Lcom/nuance/connect/service/comm/CommandQueue;->mainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/nuance/connect/service/comm/CommandQueue;->access$1300(Lcom/nuance/connect/service/comm/CommandQueue;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/service/comm/CommandQueue$NetworkExpirer;->this$0:Lcom/nuance/connect/service/comm/CommandQueue;

    # getter for: Lcom/nuance/connect/service/comm/CommandQueue;->delayTimeoutSeconds:I
    invoke-static {v1}, Lcom/nuance/connect/service/comm/CommandQueue;->access$300(Lcom/nuance/connect/service/comm/CommandQueue;)I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 282
    return-void
.end method


# virtual methods
.method public complete()V
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue$NetworkExpirer;->this$0:Lcom/nuance/connect/service/comm/CommandQueue;

    # getter for: Lcom/nuance/connect/service/comm/CommandQueue;->mainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/nuance/connect/service/comm/CommandQueue;->access$1300(Lcom/nuance/connect/service/comm/CommandQueue;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 310
    return-void
.end method

.method public getInterval()I
    .locals 1

    .prologue
    .line 313
    const/16 v0, 0x1000

    return v0
.end method

.method public isExpired()Z
    .locals 1

    .prologue
    .line 305
    iget-boolean v0, p0, Lcom/nuance/connect/service/comm/CommandQueue$NetworkExpirer;->expired:Z

    return v0
.end method

.method public run()V
    .locals 1

    .prologue
    .line 298
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/connect/service/comm/CommandQueue$NetworkExpirer;->expired:Z

    .line 299
    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue$NetworkExpirer;->dispose:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue$NetworkExpirer;->dispose:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 302
    :cond_0
    return-void
.end method

.method public setExpirer(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 293
    iput-object p1, p0, Lcom/nuance/connect/service/comm/CommandQueue$NetworkExpirer;->dispose:Ljava/lang/Runnable;

    .line 294
    return-void
.end method

.method public start()V
    .locals 0

    .prologue
    .line 285
    invoke-direct {p0}, Lcom/nuance/connect/service/comm/CommandQueue$NetworkExpirer;->sendTimeoutMessage()V

    .line 286
    return-void
.end method

.method public tick()V
    .locals 0

    .prologue
    .line 289
    invoke-direct {p0}, Lcom/nuance/connect/service/comm/CommandQueue$NetworkExpirer;->sendTimeoutMessage()V

    .line 290
    return-void
.end method
