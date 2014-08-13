.class public Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ProgressBarThread;
.super Ljava/lang/Thread;
.source "ACDownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/framework/acmanager/ACDownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ProgressBarThread"
.end annotation


# instance fields
.field mDownloadCB:Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;

.field mIsStop:Z

.field final synthetic this$0:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;


# direct methods
.method public constructor <init>(Lcom/diotek/ime/framework/acmanager/ACDownloadManager;Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;)V
    .locals 1
    .param p2, "cb"    # Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;

    .prologue
    .line 1058
    iput-object p1, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ProgressBarThread;->this$0:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1057
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ProgressBarThread;->mIsStop:Z

    .line 1059
    iput-object p2, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ProgressBarThread;->mDownloadCB:Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;

    .line 1060
    return-void
.end method


# virtual methods
.method public declared-synchronized requestStop()V
    .locals 1

    .prologue
    .line 1072
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ProgressBarThread;->mIsStop:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1073
    monitor-exit p0

    return-void

    .line 1072
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1064
    const/4 v1, 0x0

    .local v1, "progress":I
    :goto_0
    const/16 v2, 0x64

    if-gt v1, v2, :cond_0

    iget-boolean v2, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ProgressBarThread;->mIsStop:Z

    if-nez v2, :cond_0

    .line 1065
    iget-object v2, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ProgressBarThread;->this$0:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    iget-object v2, v2, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ProgressBarThread;->mDownloadCB:Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;

    invoke-virtual {v2, v4, v1, v4, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1066
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ProgressBarThread;->this$0:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    iget-object v2, v2, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1067
    const-wide/16 v2, 0x14

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 1064
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1069
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method
