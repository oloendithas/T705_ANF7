.class Lcom/android/systemui/recent/RecentTasksLoader$4;
.super Landroid/os/AsyncTask;
.source "RecentTasksLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recent/RecentTasksLoader;->loadThumbnailsAndIconsInBackground(Ljava/util/concurrent/BlockingQueue;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Lcom/android/systemui/recent/TaskDescription;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/RecentTasksLoader;

.field final synthetic val$tasksWaitingForThumbnails:Ljava/util/concurrent/BlockingQueue;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/RecentTasksLoader;Ljava/util/concurrent/BlockingQueue;)V
    .locals 0

    .prologue
    .line 604
    iput-object p1, p0, Lcom/android/systemui/recent/RecentTasksLoader$4;->this$0:Lcom/android/systemui/recent/RecentTasksLoader;

    iput-object p2, p0, Lcom/android/systemui/recent/RecentTasksLoader$4;->val$tasksWaitingForThumbnails:Ljava/util/concurrent/BlockingQueue;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 604
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/recent/RecentTasksLoader$4;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 9
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 623
    const-string v4, "STATUSBAR-RecentTasksLoader"

    const-string v5, "loadThumbnailsAndIconsInBackground-doInBackground()"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v4

    invoke-static {v4}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v2

    .line 625
    .local v2, "origPri":I
    const/16 v4, 0xa

    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    .line 628
    :goto_0
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 652
    :goto_1
    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 653
    :goto_2
    return-object v8

    .line 631
    :cond_0
    const/4 v3, 0x0

    .line 632
    .local v3, "td":Lcom/android/systemui/recent/TaskDescription;
    :cond_1
    :goto_3
    if-nez v3, :cond_2

    .line 634
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/recent/RecentTasksLoader$4;->val$tasksWaitingForThumbnails:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v4}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/systemui/recent/TaskDescription;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 635
    :catch_0
    move-exception v1

    .line 636
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string v4, "STATUSBAR-RecentTasksLoader"

    const-string v5, "InterruptedException"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 638
    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    goto :goto_2

    .line 643
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_2
    invoke-virtual {v3}, Lcom/android/systemui/recent/TaskDescription;->isNull()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 644
    new-array v4, v7, [Lcom/android/systemui/recent/TaskDescription;

    aput-object v3, v4, v6

    invoke-virtual {p0, v4}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    goto :goto_1

    .line 647
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/recent/RecentTasksLoader$4;->this$0:Lcom/android/systemui/recent/RecentTasksLoader;

    invoke-virtual {v4, v3}, Lcom/android/systemui/recent/RecentTasksLoader;->loadThumbnailAndIcon(Lcom/android/systemui/recent/TaskDescription;)V

    .line 649
    new-array v4, v7, [Lcom/android/systemui/recent/TaskDescription;

    aput-object v3, v4, v6

    invoke-virtual {p0, v4}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected varargs onProgressUpdate([Lcom/android/systemui/recent/TaskDescription;)V
    .locals 3
    .param p1, "values"    # [Lcom/android/systemui/recent/TaskDescription;

    .prologue
    .line 607
    const-string v1, "STATUSBAR-RecentTasksLoader"

    const-string v2, "loadThumbnailsAndIconsInBackground-onProgressUpdate()"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 609
    const-string v1, "STATUSBAR-RecentTasksLoader"

    const-string v2, "    !isCancelled()"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    const/4 v1, 0x0

    aget-object v0, p1, v1

    .line 611
    .local v0, "td":Lcom/android/systemui/recent/TaskDescription;
    invoke-virtual {v0}, Lcom/android/systemui/recent/TaskDescription;->isNull()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 612
    iget-object v1, p0, Lcom/android/systemui/recent/RecentTasksLoader$4;->this$0:Lcom/android/systemui/recent/RecentTasksLoader;

    sget-object v2, Lcom/android/systemui/recent/RecentTasksLoader$State;->LOADED:Lcom/android/systemui/recent/RecentTasksLoader$State;

    # setter for: Lcom/android/systemui/recent/RecentTasksLoader;->mState:Lcom/android/systemui/recent/RecentTasksLoader$State;
    invoke-static {v1, v2}, Lcom/android/systemui/recent/RecentTasksLoader;->access$1002(Lcom/android/systemui/recent/RecentTasksLoader;Lcom/android/systemui/recent/RecentTasksLoader$State;)Lcom/android/systemui/recent/RecentTasksLoader$State;

    .line 613
    const-string v1, "STATUSBAR-RecentTasksLoader"

    const-string v2, "mState = State.LOADED"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    .end local v0    # "td":Lcom/android/systemui/recent/TaskDescription;
    :cond_0
    :goto_0
    return-void

    .line 615
    .restart local v0    # "td":Lcom/android/systemui/recent/TaskDescription;
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/recent/RecentTasksLoader$4;->this$0:Lcom/android/systemui/recent/RecentTasksLoader;

    # getter for: Lcom/android/systemui/recent/RecentTasksLoader;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;
    invoke-static {v1}, Lcom/android/systemui/recent/RecentTasksLoader;->access$400(Lcom/android/systemui/recent/RecentTasksLoader;)Lcom/android/systemui/recent/RecentsPanelView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 616
    iget-object v1, p0, Lcom/android/systemui/recent/RecentTasksLoader$4;->this$0:Lcom/android/systemui/recent/RecentTasksLoader;

    # getter for: Lcom/android/systemui/recent/RecentTasksLoader;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;
    invoke-static {v1}, Lcom/android/systemui/recent/RecentTasksLoader;->access$400(Lcom/android/systemui/recent/RecentTasksLoader;)Lcom/android/systemui/recent/RecentsPanelView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/recent/RecentsPanelView;->onTaskThumbnailLoaded(Lcom/android/systemui/recent/TaskDescription;)V

    goto :goto_0
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 604
    check-cast p1, [Lcom/android/systemui/recent/TaskDescription;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/recent/RecentTasksLoader$4;->onProgressUpdate([Lcom/android/systemui/recent/TaskDescription;)V

    return-void
.end method
