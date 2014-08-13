.class Lcom/android/server/EthernetService$2;
.super Landroid/content/BroadcastReceiver;
.source "EthernetService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/EthernetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/EthernetService;


# direct methods
.method constructor <init>(Lcom/android/server/EthernetService;)V
    .locals 0

    .prologue
    .line 654
    .local p0, "this":Lcom/android/server/EthernetService$2;, "Lcom/android/server/EthernetService.2;"
    iput-object p1, p0, Lcom/android/server/EthernetService$2;->this$0:Lcom/android/server/EthernetService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 657
    .local p0, "this":Lcom/android/server/EthernetService$2;, "Lcom/android/server/EthernetService.2;"
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 658
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 659
    const-string v1, "EthernetService"

    const-string v2, "ACTION_SCREEN_ON"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    iget-object v1, p0, Lcom/android/server/EthernetService$2;->this$0:Lcom/android/server/EthernetService;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/EthernetService;->mScreenOff:Z
    invoke-static {v1, v2}, Lcom/android/server/EthernetService;->access$1602(Lcom/android/server/EthernetService;Z)Z

    .line 661
    iget-object v1, p0, Lcom/android/server/EthernetService$2;->this$0:Lcom/android/server/EthernetService;

    # invokes: Lcom/android/server/EthernetService;->evaluateTrafficStatsPolling()V
    invoke-static {v1}, Lcom/android/server/EthernetService;->access$1500(Lcom/android/server/EthernetService;)V

    .line 667
    :cond_0
    :goto_0
    return-void

    .line 662
    :cond_1
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 663
    const-string v1, "EthernetService"

    const-string v2, "ACTION_SCREEN_OFF"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    iget-object v1, p0, Lcom/android/server/EthernetService$2;->this$0:Lcom/android/server/EthernetService;

    const/4 v2, 0x1

    # setter for: Lcom/android/server/EthernetService;->mScreenOff:Z
    invoke-static {v1, v2}, Lcom/android/server/EthernetService;->access$1602(Lcom/android/server/EthernetService;Z)Z

    .line 665
    iget-object v1, p0, Lcom/android/server/EthernetService$2;->this$0:Lcom/android/server/EthernetService;

    # invokes: Lcom/android/server/EthernetService;->evaluateTrafficStatsPolling()V
    invoke-static {v1}, Lcom/android/server/EthernetService;->access$1500(Lcom/android/server/EthernetService;)V

    goto :goto_0
.end method
