.class Lcom/android/server/ssrm/Monitor$24;
.super Landroid/app/IProcessObserver$Stub;
.source "Monitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/Monitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/Monitor;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/Monitor;)V
    .locals 0

    .prologue
    .line 1311
    iput-object p1, p0, Lcom/android/server/ssrm/Monitor$24;->this$0:Lcom/android/server/ssrm/Monitor;

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method getPackageNameFromPID(I)Ljava/lang/String;
    .locals 3
    .param p1, "pid"    # I

    .prologue
    .line 1313
    iget-object v2, p0, Lcom/android/server/ssrm/Monitor$24;->this$0:Lcom/android/server/ssrm/Monitor;

    iget-object v2, v2, Lcom/android/server/ssrm/Monitor;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1314
    .local v1, "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v2, p1, :cond_0

    .line 1315
    iget-object v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 1318
    .end local v1    # "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :goto_0
    return-object v2

    :cond_1
    const-string v2, ""

    goto :goto_0
.end method

.method public onForegroundActivitiesChanged(IIZ)V
    .locals 9
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "foregroundActivities"    # Z

    .prologue
    const/4 v6, 0x1

    const/16 v8, 0x8

    .line 1323
    const/4 v3, 0x0

    .line 1325
    .local v3, "packageName":Ljava/lang/String;
    const/4 v5, -0x1

    if-eq p1, v5, :cond_2

    .line 1326
    if-eqz p3, :cond_1

    .line 1327
    invoke-virtual {p0, p1}, Lcom/android/server/ssrm/Monitor$24;->getPackageNameFromPID(I)Ljava/lang/String;

    move-result-object v3

    .line 1352
    :goto_0
    if-eqz v3, :cond_0

    iget-object v5, p0, Lcom/android/server/ssrm/Monitor$24;->this$0:Lcom/android/server/ssrm/Monitor;

    iget-object v5, v5, Lcom/android/server/ssrm/Monitor;->mHandler:Landroid/os/Handler;

    if-eqz v5, :cond_0

    .line 1353
    iget-object v5, p0, Lcom/android/server/ssrm/Monitor$24;->this$0:Lcom/android/server/ssrm/Monitor;

    iget-object v5, v5, Lcom/android/server/ssrm/Monitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1354
    .local v0, "msg":Landroid/os/Message;
    iput v6, v0, Landroid/os/Message;->what:I

    .line 1355
    iput-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1356
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1357
    iget-object v5, p0, Lcom/android/server/ssrm/Monitor$24;->this$0:Lcom/android/server/ssrm/Monitor;

    iget-object v5, v5, Lcom/android/server/ssrm/Monitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1359
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    :goto_1
    return-void

    .line 1329
    :cond_1
    iget-object v5, p0, Lcom/android/server/ssrm/Monitor$24;->this$0:Lcom/android/server/ssrm/Monitor;

    iget-object v5, v5, Lcom/android/server/ssrm/Monitor;->mHandler:Landroid/os/Handler;

    if-eqz v5, :cond_0

    .line 1332
    iget-object v5, p0, Lcom/android/server/ssrm/Monitor$24;->this$0:Lcom/android/server/ssrm/Monitor;

    iget-object v5, v5, Lcom/android/server/ssrm/Monitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 1334
    iget-object v5, p0, Lcom/android/server/ssrm/Monitor$24;->this$0:Lcom/android/server/ssrm/Monitor;

    iget-object v5, v5, Lcom/android/server/ssrm/Monitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 1335
    .local v1, "msg1":Landroid/os/Message;
    iput v8, v1, Landroid/os/Message;->what:I

    .line 1336
    iget-object v5, p0, Lcom/android/server/ssrm/Monitor$24;->this$0:Lcom/android/server/ssrm/Monitor;

    iget-object v5, v5, Lcom/android/server/ssrm/Monitor;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x12c

    invoke-virtual {v5, v1, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1338
    iget-object v5, p0, Lcom/android/server/ssrm/Monitor$24;->this$0:Lcom/android/server/ssrm/Monitor;

    iget-object v5, v5, Lcom/android/server/ssrm/Monitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 1339
    .local v2, "msg2":Landroid/os/Message;
    iput v8, v2, Landroid/os/Message;->what:I

    .line 1340
    iget-object v5, p0, Lcom/android/server/ssrm/Monitor$24;->this$0:Lcom/android/server/ssrm/Monitor;

    iget-object v5, v5, Lcom/android/server/ssrm/Monitor;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x3e8

    invoke-virtual {v5, v2, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 1344
    .end local v1    # "msg1":Landroid/os/Message;
    .end local v2    # "msg2":Landroid/os/Message;
    :cond_2
    iget-object v5, p0, Lcom/android/server/ssrm/Monitor$24;->this$0:Lcom/android/server/ssrm/Monitor;

    iget-object v5, v5, Lcom/android/server/ssrm/Monitor;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v5, v6}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v4

    .line 1345
    .local v4, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 1346
    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public onImportanceChanged(III)V
    .locals 0
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "importance"    # I

    .prologue
    .line 1364
    return-void
.end method

.method public onProcessDied(II)V
    .locals 0
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .prologue
    .line 1369
    return-void
.end method
