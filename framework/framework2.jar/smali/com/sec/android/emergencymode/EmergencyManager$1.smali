.class Lcom/sec/android/emergencymode/EmergencyManager$1;
.super Landroid/content/BroadcastReceiver;
.source "EmergencyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/emergencymode/EmergencyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/emergencymode/EmergencyManager;


# direct methods
.method constructor <init>(Lcom/sec/android/emergencymode/EmergencyManager;)V
    .registers 2

    .prologue
    .line 90
    iput-object p1, p0, Lcom/sec/android/emergencymode/EmergencyManager$1;->this$0:Lcom/sec/android/emergencymode/EmergencyManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    const/4 v6, -0x1

    .line 93
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_9

    .line 109
    :cond_8
    :goto_8
    return-void

    .line 96
    :cond_9
    const-string v3, "EmergencyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onReceive : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v3, "android.intent.action.EMERGENCY_START_SERVICE_BY_ORDER"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 98
    const-string v3, "enabled"

    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 99
    .local v1, "enabled":Z
    const-string v3, "flag"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 100
    .local v2, "flag":I
    iget-object v3, p0, Lcom/sec/android/emergencymode/EmergencyManager$1;->this$0:Lcom/sec/android/emergencymode/EmergencyManager;

    const-string/jumbo v4, "tipsurl"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    # setter for: Lcom/sec/android/emergencymode/EmergencyManager;->tipsUrl:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/sec/android/emergencymode/EmergencyManager;->access$002(Lcom/sec/android/emergencymode/EmergencyManager;Ljava/lang/String;)Ljava/lang/String;

    .line 101
    if-eq v2, v6, :cond_8

    .line 102
    iget-object v3, p0, Lcom/sec/android/emergencymode/EmergencyManager$1;->this$0:Lcom/sec/android/emergencymode/EmergencyManager;

    # invokes: Lcom/sec/android/emergencymode/EmergencyManager;->triggerEmergencyMode(ZI)V
    invoke-static {v3, v1, v2}, Lcom/sec/android/emergencymode/EmergencyManager;->access$100(Lcom/sec/android/emergencymode/EmergencyManager;ZI)V

    goto :goto_8

    .line 104
    .end local v1    # "enabled":Z
    .end local v2    # "flag":I
    :cond_4a
    const-string v3, "com.nttdocomo.android.epsmodecontrol.action.CHANGE_MODE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 105
    iget-object v3, p0, Lcom/sec/android/emergencymode/EmergencyManager$1;->this$0:Lcom/sec/android/emergencymode/EmergencyManager;

    # getter for: Lcom/sec/android/emergencymode/EmergencyManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/emergencymode/EmergencyManager;->access$200(Lcom/sec/android/emergencymode/EmergencyManager;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_5f

    const/4 v1, 0x1

    .line 106
    .restart local v1    # "enabled":Z
    :cond_5f
    const/16 v2, 0x10

    .line 107
    .restart local v2    # "flag":I
    iget-object v3, p0, Lcom/sec/android/emergencymode/EmergencyManager$1;->this$0:Lcom/sec/android/emergencymode/EmergencyManager;

    # invokes: Lcom/sec/android/emergencymode/EmergencyManager;->triggerEmergencyMode(ZI)V
    invoke-static {v3, v1, v2}, Lcom/sec/android/emergencymode/EmergencyManager;->access$100(Lcom/sec/android/emergencymode/EmergencyManager;ZI)V

    goto :goto_8
.end method
