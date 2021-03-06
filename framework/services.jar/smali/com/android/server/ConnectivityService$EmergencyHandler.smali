.class Lcom/android/server/ConnectivityService$EmergencyHandler;
.super Landroid/os/Handler;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EmergencyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method public constructor <init>(Lcom/android/server/ConnectivityService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 7589
    iput-object p1, p0, Lcom/android/server/ConnectivityService$EmergencyHandler;->this$0:Lcom/android/server/ConnectivityService;

    .line 7590
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 7591
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 7594
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 7605
    :cond_0
    :goto_0
    return-void

    .line 7596
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService$EmergencyHandler;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mEmergencyMgr:Lcom/sec/android/emergencymode/EmergencyManager;
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$6100(Lcom/android/server/ConnectivityService;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/ConnectivityService$EmergencyHandler;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mEmergencyMgr:Lcom/sec/android/emergencymode/EmergencyManager;
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$6100(Lcom/android/server/ConnectivityService;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/ConnectivityService$EmergencyHandler;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->emergencyDataOpened:Z
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$6600(Lcom/android/server/ConnectivityService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7597
    iget-object v0, p0, Lcom/android/server/ConnectivityService$EmergencyHandler;->this$0:Lcom/android/server/ConnectivityService;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/ConnectivityService;->emergencyDataOpened:Z
    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->access$6602(Lcom/android/server/ConnectivityService;Z)Z

    .line 7598
    iget-object v0, p0, Lcom/android/server/ConnectivityService$EmergencyHandler;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mEmergencyMgr:Lcom/sec/android/emergencymode/EmergencyManager;
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$6100(Lcom/android/server/ConnectivityService;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/emergencymode/EmergencyManager;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_1

    .line 7599
    iget-object v0, p0, Lcom/android/server/ConnectivityService$EmergencyHandler;->this$0:Lcom/android/server/ConnectivityService;

    const/4 v1, 0x1

    # invokes: Lcom/android/server/ConnectivityService;->routeTableFlush(Z)V
    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->access$6300(Lcom/android/server/ConnectivityService;Z)V

    .line 7601
    :cond_1
    const-string v0, "ConnectivityService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Emergency Timeout end. Screen["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ConnectivityService$EmergencyHandler;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mEmergencyMgr:Lcom/sec/android/emergencymode/EmergencyManager;
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$6100(Lcom/android/server/ConnectivityService;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/emergencymode/EmergencyManager;->isScreenOn()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/emergencymode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7594
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
