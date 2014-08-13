.class Lcom/android/server/ssrm/EmergencyMode$2;
.super Landroid/content/BroadcastReceiver;
.source "EmergencyMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/EmergencyMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/EmergencyMode;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/EmergencyMode;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/server/ssrm/EmergencyMode$2;->this$0:Lcom/android/server/ssrm/EmergencyMode;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 98
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "action":Ljava/lang/String;
    const-string v4, "android.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 100
    const-string v4, "reason"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 101
    .local v1, "reason":I
    if-eq v1, v5, :cond_0

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    .line 103
    :cond_0
    iget-object v4, p0, Lcom/android/server/ssrm/EmergencyMode$2;->this$0:Lcom/android/server/ssrm/EmergencyMode;

    if-ne v1, v5, :cond_2

    :goto_0
    invoke-virtual {v4, v2}, Lcom/android/server/ssrm/EmergencyMode;->onSettingChanged(Z)V

    .line 114
    .end local v1    # "reason":I
    :cond_1
    :goto_1
    return-void

    .restart local v1    # "reason":I
    :cond_2
    move v2, v3

    .line 103
    goto :goto_0

    .line 105
    .end local v1    # "reason":I
    :cond_3
    sget-boolean v4, Lcom/android/server/ssrm/Feature;->SSRM_TOUCH_REPORT_RATE_CHANGE:Z

    if-nez v4, :cond_1

    const-string v4, "android.intent.action.SCREEN_ON"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 107
    iget-object v4, p0, Lcom/android/server/ssrm/EmergencyMode$2;->this$0:Lcom/android/server/ssrm/EmergencyMode;

    iget-boolean v4, v4, Lcom/android/server/ssrm/EmergencyMode;->mIsExecutedTouchReportRateRunnable:Z

    if-eqz v4, :cond_4

    .line 108
    iget-object v4, p0, Lcom/android/server/ssrm/EmergencyMode$2;->this$0:Lcom/android/server/ssrm/EmergencyMode;

    iget-object v4, v4, Lcom/android/server/ssrm/EmergencyMode;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/ssrm/EmergencyMode$2;->this$0:Lcom/android/server/ssrm/EmergencyMode;

    iget-object v5, v5, Lcom/android/server/ssrm/EmergencyMode;->mTouchReportRateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 109
    iget-object v4, p0, Lcom/android/server/ssrm/EmergencyMode$2;->this$0:Lcom/android/server/ssrm/EmergencyMode;

    iput-boolean v3, v4, Lcom/android/server/ssrm/EmergencyMode;->mIsExecutedTouchReportRateRunnable:Z

    .line 111
    :cond_4
    iget-object v3, p0, Lcom/android/server/ssrm/EmergencyMode$2;->this$0:Lcom/android/server/ssrm/EmergencyMode;

    iput-boolean v2, v3, Lcom/android/server/ssrm/EmergencyMode;->mIsExecutedTouchReportRateRunnable:Z

    .line 112
    iget-object v2, p0, Lcom/android/server/ssrm/EmergencyMode$2;->this$0:Lcom/android/server/ssrm/EmergencyMode;

    iget-object v2, v2, Lcom/android/server/ssrm/EmergencyMode;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/ssrm/EmergencyMode$2;->this$0:Lcom/android/server/ssrm/EmergencyMode;

    iget-object v3, v3, Lcom/android/server/ssrm/EmergencyMode;->mTouchReportRateRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method
