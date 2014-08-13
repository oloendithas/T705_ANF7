.class Lcom/android/systemui/recent/RecentTasksLoader$3;
.super Landroid/os/AsyncTask;
.source "RecentTasksLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recent/RecentTasksLoader;->loadTasksInBackground(Z)V
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
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/systemui/recent/TaskDescription;",
        ">;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/RecentTasksLoader;

.field final synthetic val$tasksWaitingForThumbnails:Ljava/util/concurrent/LinkedBlockingQueue;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/RecentTasksLoader;Ljava/util/concurrent/LinkedBlockingQueue;)V
    .locals 0

    .prologue
    .line 472
    iput-object p1, p0, Lcom/android/systemui/recent/RecentTasksLoader$3;->this$0:Lcom/android/systemui/recent/RecentTasksLoader;

    iput-object p2, p0, Lcom/android/systemui/recent/RecentTasksLoader$3;->val$tasksWaitingForThumbnails:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 472
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/recent/RecentTasksLoader$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 22
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 494
    const-string v1, "STATUSBAR-RecentTasksLoader"

    const-string v2, "loadTasksInBackground -doInBackground()"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v17

    .line 498
    .local v17, "origPri":I
    const/16 v1, 0xa

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 499
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/RecentTasksLoader$3;->this$0:Lcom/android/systemui/recent/RecentTasksLoader;

    # getter for: Lcom/android/systemui/recent/RecentTasksLoader;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/recent/RecentTasksLoader;->access$700(Lcom/android/systemui/recent/RecentTasksLoader;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    .line 500
    .local v18, "pm":Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/RecentTasksLoader$3;->this$0:Lcom/android/systemui/recent/RecentTasksLoader;

    # getter for: Lcom/android/systemui/recent/RecentTasksLoader;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/recent/RecentTasksLoader;->access$700(Lcom/android/systemui/recent/RecentTasksLoader;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager;

    .line 503
    .local v7, "am":Landroid/app/ActivityManager;
    const/16 v1, 0x15

    const/4 v2, 0x2

    const/4 v3, -0x2

    invoke-virtual {v7, v1, v2, v3}, Landroid/app/ActivityManager;->getRecentTasksForUser(III)Ljava/util/List;

    move-result-object v20

    .line 506
    .local v20, "recentTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    const/16 v16, 0x0

    .line 507
    .local v16, "numTasks":I
    if-eqz v20, :cond_0

    .line 508
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v16

    .line 509
    :cond_0
    const-string v1, "STATUSBAR-RecentTasksLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    recentTasks.size():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v10

    .line 513
    .local v10, "homeInfo":Landroid/content/pm/ActivityInfo;
    const/4 v9, 0x1

    .line 514
    .local v9, "firstScreenful":Z
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 517
    .local v21, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recent/TaskDescription;>;"
    const/4 v8, 0x0

    .line 518
    .local v8, "first":I
    const/4 v11, 0x0

    .local v11, "i":I
    const/4 v12, 0x0

    .local v12, "index":I
    :goto_0
    move/from16 v0, v16

    if-ge v11, v0, :cond_1

    const/16 v1, 0x15

    if-ge v12, v1, :cond_1

    .line 519
    invoke-virtual/range {p0 .. p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 520
    const-string v1, "STATUSBAR-RecentTasksLoader"

    const-string v2, "    isCancelled - break"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 574
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/ArrayList;

    const/4 v2, 0x0

    aput-object v21, v1, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 575
    if-eqz v9, :cond_2

    .line 577
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/ArrayList;

    const/4 v2, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    aput-object v3, v1, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 583
    :cond_2
    :goto_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/RecentTasksLoader$3;->val$tasksWaitingForThumbnails:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v2, Lcom/android/systemui/recent/TaskDescription;

    invoke-direct {v2}, Lcom/android/systemui/recent/TaskDescription;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 589
    invoke-static/range {v17 .. v17}, Landroid/os/Process;->setThreadPriority(I)V

    .line 590
    const/4 v1, 0x0

    return-object v1

    .line 523
    :cond_3
    move-object/from16 v0, v20

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 525
    .local v19, "recentInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    new-instance v13, Landroid/content/Intent;

    move-object/from16 v0, v19

    iget-object v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-direct {v13, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 526
    .local v13, "intent":Landroid/content/Intent;
    move-object/from16 v0, v19

    iget-object v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    if-eqz v1, :cond_4

    .line 527
    move-object/from16 v0, v19

    iget-object v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v13, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 531
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/RecentTasksLoader$3;->this$0:Lcom/android/systemui/recent/RecentTasksLoader;

    invoke-virtual {v13}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    # invokes: Lcom/android/systemui/recent/RecentTasksLoader;->isCurrentHomeActivity(Landroid/content/ComponentName;Landroid/content/pm/ActivityInfo;)Z
    invoke-static {v1, v2, v10}, Lcom/android/systemui/recent/RecentTasksLoader;->access$800(Lcom/android/systemui/recent/RecentTasksLoader;Landroid/content/ComponentName;Landroid/content/pm/ActivityInfo;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 518
    :cond_5
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 536
    :cond_6
    invoke-virtual {v13}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/RecentTasksLoader$3;->this$0:Lcom/android/systemui/recent/RecentTasksLoader;

    # getter for: Lcom/android/systemui/recent/RecentTasksLoader;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/systemui/recent/RecentTasksLoader;->access$700(Lcom/android/systemui/recent/RecentTasksLoader;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 543
    invoke-virtual {v13}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v2, 0x800000

    and-int/2addr v1, v2

    if-eqz v1, :cond_7

    const/4 v14, 0x1

    .line 544
    .local v14, "isExclude":Z
    :goto_3
    if-eqz v14, :cond_8

    .line 545
    const-string v1, "STATUSBAR-RecentTasksLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Don\'t load excludeFromRecents : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v19

    iget v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 543
    .end local v14    # "isExclude":Z
    :cond_7
    const/4 v14, 0x0

    goto :goto_3

    .line 550
    .restart local v14    # "isExclude":Z
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/RecentTasksLoader$3;->this$0:Lcom/android/systemui/recent/RecentTasksLoader;

    move-object/from16 v0, v19

    iget v2, v0, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    move-object/from16 v0, v19

    iget v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    move-object/from16 v0, v19

    iget-object v4, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    move-object/from16 v0, v19

    iget-object v5, v0, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    move-object/from16 v0, v19

    iget-object v6, v0, Landroid/app/ActivityManager$RecentTaskInfo;->description:Ljava/lang/CharSequence;

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/recent/RecentTasksLoader;->createTaskDescription(IILandroid/content/Intent;Landroid/content/ComponentName;Ljava/lang/CharSequence;)Lcom/android/systemui/recent/TaskDescription;

    move-result-object v15

    .line 554
    .local v15, "item":Lcom/android/systemui/recent/TaskDescription;
    if-eqz v15, :cond_5

    .line 557
    :goto_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/RecentTasksLoader$3;->val$tasksWaitingForThumbnails:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1, v15}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 562
    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 563
    if-eqz v9, :cond_9

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/RecentTasksLoader$3;->this$0:Lcom/android/systemui/recent/RecentTasksLoader;

    # getter for: Lcom/android/systemui/recent/RecentTasksLoader;->mNumTasksInFirstScreenful:I
    invoke-static {v2}, Lcom/android/systemui/recent/RecentTasksLoader;->access$900(Lcom/android/systemui/recent/RecentTasksLoader;)I

    move-result v2

    if-ne v1, v2, :cond_9

    .line 564
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/ArrayList;

    const/4 v2, 0x0

    aput-object v21, v1, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 565
    new-instance v21, Ljava/util/ArrayList;

    .end local v21    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recent/TaskDescription;>;"
    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 566
    .restart local v21    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recent/TaskDescription;>;"
    const/4 v9, 0x0

    .line 569
    :cond_9
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2

    .line 585
    .end local v13    # "intent":Landroid/content/Intent;
    .end local v14    # "isExclude":Z
    .end local v15    # "item":Lcom/android/systemui/recent/TaskDescription;
    .end local v19    # "recentInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    :catch_0
    move-exception v1

    goto/16 :goto_1

    .line 559
    .restart local v13    # "intent":Landroid/content/Intent;
    .restart local v14    # "isExclude":Z
    .restart local v15    # "item":Lcom/android/systemui/recent/TaskDescription;
    .restart local v19    # "recentInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    :catch_1
    move-exception v1

    goto :goto_4
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 472
    check-cast p1, [Ljava/util/ArrayList;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/recent/RecentTasksLoader$3;->onProgressUpdate([Ljava/util/ArrayList;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recent/TaskDescription;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "values":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Lcom/android/systemui/recent/TaskDescription;>;"
    const/4 v3, 0x0

    .line 475
    const-string v1, "STATUSBAR-RecentTasksLoader"

    const-string v2, "loadTasksInBackground-onProgressUpdate()"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 477
    aget-object v0, p1, v3

    .line 480
    .local v0, "newTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recent/TaskDescription;>;"
    iget-object v1, p0, Lcom/android/systemui/recent/RecentTasksLoader$3;->this$0:Lcom/android/systemui/recent/RecentTasksLoader;

    # getter for: Lcom/android/systemui/recent/RecentTasksLoader;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;
    invoke-static {v1}, Lcom/android/systemui/recent/RecentTasksLoader;->access$400(Lcom/android/systemui/recent/RecentTasksLoader;)Lcom/android/systemui/recent/RecentsPanelView;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 481
    iget-object v1, p0, Lcom/android/systemui/recent/RecentTasksLoader$3;->this$0:Lcom/android/systemui/recent/RecentTasksLoader;

    # getter for: Lcom/android/systemui/recent/RecentTasksLoader;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;
    invoke-static {v1}, Lcom/android/systemui/recent/RecentTasksLoader;->access$400(Lcom/android/systemui/recent/RecentTasksLoader;)Lcom/android/systemui/recent/RecentsPanelView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/recent/RecentTasksLoader$3;->this$0:Lcom/android/systemui/recent/RecentTasksLoader;

    # getter for: Lcom/android/systemui/recent/RecentTasksLoader;->mFirstScreenful:Z
    invoke-static {v2}, Lcom/android/systemui/recent/RecentTasksLoader;->access$500(Lcom/android/systemui/recent/RecentTasksLoader;)Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/recent/RecentsPanelView;->onTasksLoaded(Ljava/util/ArrayList;Z)V

    .line 485
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/recent/RecentTasksLoader$3;->this$0:Lcom/android/systemui/recent/RecentTasksLoader;

    # getter for: Lcom/android/systemui/recent/RecentTasksLoader;->mLoadedTasks:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/systemui/recent/RecentTasksLoader;->access$600(Lcom/android/systemui/recent/RecentTasksLoader;)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_0

    .line 486
    iget-object v1, p0, Lcom/android/systemui/recent/RecentTasksLoader$3;->this$0:Lcom/android/systemui/recent/RecentTasksLoader;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/android/systemui/recent/RecentTasksLoader;->mLoadedTasks:Ljava/util/ArrayList;
    invoke-static {v1, v2}, Lcom/android/systemui/recent/RecentTasksLoader;->access$602(Lcom/android/systemui/recent/RecentTasksLoader;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 488
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recent/RecentTasksLoader$3;->this$0:Lcom/android/systemui/recent/RecentTasksLoader;

    # getter for: Lcom/android/systemui/recent/RecentTasksLoader;->mLoadedTasks:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/systemui/recent/RecentTasksLoader;->access$600(Lcom/android/systemui/recent/RecentTasksLoader;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 489
    iget-object v1, p0, Lcom/android/systemui/recent/RecentTasksLoader$3;->this$0:Lcom/android/systemui/recent/RecentTasksLoader;

    # setter for: Lcom/android/systemui/recent/RecentTasksLoader;->mFirstScreenful:Z
    invoke-static {v1, v3}, Lcom/android/systemui/recent/RecentTasksLoader;->access$502(Lcom/android/systemui/recent/RecentTasksLoader;Z)Z

    .line 491
    .end local v0    # "newTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recent/TaskDescription;>;"
    :cond_1
    return-void

    .line 483
    .restart local v0    # "newTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recent/TaskDescription;>;"
    :cond_2
    const-string v1, "STATUSBAR-RecentTasksLoader"

    const-string v2, " error - mRecentsPanel == null"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
