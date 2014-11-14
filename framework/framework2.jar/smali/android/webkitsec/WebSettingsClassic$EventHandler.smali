.class Landroid/webkitsec/WebSettingsClassic$EventHandler;
.super Ljava/lang/Object;
.source "WebSettingsClassic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkitsec/WebSettingsClassic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# static fields
.field static final PRIORITY:I = 0x1

.field static final SET_DOUBLE_TAP_TOAST_COUNT:I = 0x2

.field static final SYNC:I


# instance fields
.field private mHandler:Landroid/os/Handler;

.field final synthetic this$0:Landroid/webkitsec/WebSettingsClassic;


# direct methods
.method private constructor <init>(Landroid/webkitsec/WebSettingsClassic;)V
    .registers 2

    .prologue
    .line 273
    iput-object p1, p0, Landroid/webkitsec/WebSettingsClassic$EventHandler;->this$0:Landroid/webkitsec/WebSettingsClassic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/webkitsec/WebSettingsClassic;Landroid/webkitsec/WebSettingsClassic$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/webkitsec/WebSettingsClassic;
    .param p2, "x1"    # Landroid/webkitsec/WebSettingsClassic$1;

    .prologue
    .line 273
    invoke-direct {p0, p1}, Landroid/webkitsec/WebSettingsClassic$EventHandler;-><init>(Landroid/webkitsec/WebSettingsClassic;)V

    return-void
.end method

.method static synthetic access$300(Landroid/webkitsec/WebSettingsClassic$EventHandler;)V
    .registers 1
    .param p0, "x0"    # Landroid/webkitsec/WebSettingsClassic$EventHandler;

    .prologue
    .line 273
    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic$EventHandler;->setRenderPriority()V

    return-void
.end method

.method static synthetic access$800(Landroid/webkitsec/WebSettingsClassic$EventHandler;Landroid/os/Message;)Z
    .registers 3
    .param p0, "x0"    # Landroid/webkitsec/WebSettingsClassic$EventHandler;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 273
    invoke-direct {p0, p1}, Landroid/webkitsec/WebSettingsClassic$EventHandler;->sendMessage(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Landroid/webkitsec/WebSettingsClassic$EventHandler;)V
    .registers 1
    .param p0, "x0"    # Landroid/webkitsec/WebSettingsClassic$EventHandler;

    .prologue
    .line 273
    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic$EventHandler;->createHandler()V

    return-void
.end method

.method private declared-synchronized createHandler()V
    .registers 2

    .prologue
    .line 285
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic$EventHandler;->setRenderPriority()V

    .line 288
    new-instance v0, Landroid/webkitsec/WebSettingsClassic$EventHandler$1;

    invoke-direct {v0, p0}, Landroid/webkitsec/WebSettingsClassic$EventHandler$1;-><init>(Landroid/webkitsec/WebSettingsClassic$EventHandler;)V

    iput-object v0, p0, Landroid/webkitsec/WebSettingsClassic$EventHandler;->mHandler:Landroid/os/Handler;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 318
    monitor-exit p0

    return-void

    .line 285
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized sendMessage(Landroid/os/Message;)Z
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 340
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/webkitsec/WebSettingsClassic$EventHandler;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_d

    .line 341
    iget-object v0, p0, Landroid/webkitsec/WebSettingsClassic$EventHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_f

    .line 342
    const/4 v0, 0x1

    .line 344
    :goto_b
    monitor-exit p0

    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_b

    .line 340
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setRenderPriority()V
    .registers 4

    .prologue
    .line 321
    iget-object v1, p0, Landroid/webkitsec/WebSettingsClassic$EventHandler;->this$0:Landroid/webkitsec/WebSettingsClassic;

    monitor-enter v1

    .line 322
    :try_start_3
    iget-object v0, p0, Landroid/webkitsec/WebSettingsClassic$EventHandler;->this$0:Landroid/webkitsec/WebSettingsClassic;

    # getter for: Landroid/webkitsec/WebSettingsClassic;->mRenderPriority:Landroid/webkitsec/WebSettings$RenderPriority;
    invoke-static {v0}, Landroid/webkitsec/WebSettingsClassic;->access$600(Landroid/webkitsec/WebSettingsClassic;)Landroid/webkitsec/WebSettings$RenderPriority;

    move-result-object v0

    sget-object v2, Landroid/webkitsec/WebSettings$RenderPriority;->NORMAL:Landroid/webkitsec/WebSettings$RenderPriority;

    if-ne v0, v2, :cond_13

    .line 323
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 333
    :cond_11
    :goto_11
    monitor-exit v1

    .line 334
    return-void

    .line 325
    :cond_13
    iget-object v0, p0, Landroid/webkitsec/WebSettingsClassic$EventHandler;->this$0:Landroid/webkitsec/WebSettingsClassic;

    # getter for: Landroid/webkitsec/WebSettingsClassic;->mRenderPriority:Landroid/webkitsec/WebSettings$RenderPriority;
    invoke-static {v0}, Landroid/webkitsec/WebSettingsClassic;->access$600(Landroid/webkitsec/WebSettingsClassic;)Landroid/webkitsec/WebSettings$RenderPriority;

    move-result-object v0

    sget-object v2, Landroid/webkitsec/WebSettings$RenderPriority;->HIGH:Landroid/webkitsec/WebSettings$RenderPriority;

    if-ne v0, v2, :cond_25

    .line 326
    const/4 v0, -0x1

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    goto :goto_11

    .line 333
    :catchall_22
    move-exception v0

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw v0

    .line 329
    :cond_25
    :try_start_25
    iget-object v0, p0, Landroid/webkitsec/WebSettingsClassic$EventHandler;->this$0:Landroid/webkitsec/WebSettingsClassic;

    # getter for: Landroid/webkitsec/WebSettingsClassic;->mRenderPriority:Landroid/webkitsec/WebSettings$RenderPriority;
    invoke-static {v0}, Landroid/webkitsec/WebSettingsClassic;->access$600(Landroid/webkitsec/WebSettingsClassic;)Landroid/webkitsec/WebSettings$RenderPriority;

    move-result-object v0

    sget-object v2, Landroid/webkitsec/WebSettings$RenderPriority;->LOW:Landroid/webkitsec/WebSettings$RenderPriority;

    if-ne v0, v2, :cond_11

    .line 330
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_34
    .catchall {:try_start_25 .. :try_end_34} :catchall_22

    goto :goto_11
.end method
