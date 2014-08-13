.class Lcom/android/server/ssrm/Monitor$25;
.super Ljava/lang/Object;
.source "Monitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ssrm/Monitor;->onSipChanged(Landroid/content/Intent;)V
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
    .line 1408
    iput-object p1, p0, Lcom/android/server/ssrm/Monitor$25;->this$0:Lcom/android/server/ssrm/Monitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1411
    invoke-static {}, Lcom/android/server/ssrm/Monitor$SIPStatusInfo;->getInstance()Lcom/android/server/ssrm/Monitor$SIPStatusInfo;

    move-result-object v1

    .line 1412
    .local v1, "sipStatusInfo":Lcom/android/server/ssrm/Monitor$SIPStatusInfo;
    if-nez v1, :cond_0

    .line 1434
    :goto_0
    return-void

    .line 1417
    :cond_0
    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1425
    :goto_1
    iget-boolean v2, v1, Lcom/android/server/ssrm/Monitor$SIPStatusInfo;->isSIPVisible:Z

    iget-boolean v3, v1, Lcom/android/server/ssrm/Monitor$SIPStatusInfo;->latestSIPVisibleReport:Z

    if-eq v2, v3, :cond_1

    .line 1426
    iget-boolean v2, v1, Lcom/android/server/ssrm/Monitor$SIPStatusInfo;->latestSIPVisibleReport:Z

    iput-boolean v2, v1, Lcom/android/server/ssrm/Monitor$SIPStatusInfo;->isSIPVisible:Z

    .line 1427
    iget-boolean v2, v1, Lcom/android/server/ssrm/Monitor$SIPStatusInfo;->isSIPVisible:Z

    invoke-static {v2}, Lcom/android/server/ssrm/fgapps/FgAppListener;->onSIPVisibilityChangedForAll(Z)V

    .line 1428
    iget-object v2, p0, Lcom/android/server/ssrm/Monitor$25;->this$0:Lcom/android/server/ssrm/Monitor;

    iget-boolean v3, v1, Lcom/android/server/ssrm/Monitor$SIPStatusInfo;->isSIPVisible:Z

    invoke-virtual {v2, v3}, Lcom/android/server/ssrm/Monitor;->updateFallbackTime(Z)V

    .line 1433
    :goto_2
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/ssrm/Monitor$SIPStatusInfo;->isSIPEventFilterThreadRunning:Z

    goto :goto_0

    .line 1418
    :catch_0
    move-exception v0

    .line 1419
    .local v0, "e":Ljava/lang/InterruptedException;
    sget-object v2, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSIPIntentReceived:: InterruptedException = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1430
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_1
    sget-object v2, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    const-string v3, "onSIPIntentReceived:: Redundant SIP visibility update will be ignored."

    invoke-static {v2, v3}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method
