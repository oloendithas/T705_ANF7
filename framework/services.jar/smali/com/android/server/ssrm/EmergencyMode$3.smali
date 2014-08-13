.class Lcom/android/server/ssrm/EmergencyMode$3;
.super Ljava/lang/Object;
.source "EmergencyMode.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 158
    iput-object p1, p0, Lcom/android/server/ssrm/EmergencyMode$3;->this$0:Lcom/android/server/ssrm/EmergencyMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 161
    sget-boolean v0, Lcom/android/server/ssrm/DeviceStatus;->sEmergencyMode:Z

    if-eqz v0, :cond_3

    .line 162
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_KM:Z

    if-eqz v0, :cond_1

    .line 163
    # getter for: Lcom/android/server/ssrm/EmergencyMode;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/ssrm/EmergencyMode;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "report_rate,1"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->sendTspCmd(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    :goto_0
    sget-boolean v0, Lcom/android/server/ssrm/SSRMUtil;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 168
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_KM:Z

    if-eqz v0, :cond_2

    .line 169
    const-string v0, "dev.ssrm.report_rate"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/server/ssrm/EmergencyMode$3;->this$0:Lcom/android/server/ssrm/EmergencyMode;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/ssrm/EmergencyMode;->mIsExecutedTouchReportRateRunnable:Z

    .line 181
    return-void

    .line 165
    :cond_1
    # getter for: Lcom/android/server/ssrm/EmergencyMode;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/ssrm/EmergencyMode;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "report_rate,2"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->sendTspCmd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 171
    :cond_2
    const-string v0, "dev.ssrm.report_rate"

    const-string v1, "2"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 175
    :cond_3
    # getter for: Lcom/android/server/ssrm/EmergencyMode;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/ssrm/EmergencyMode;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "report_rate,0"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->sendTspCmd(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    sget-boolean v0, Lcom/android/server/ssrm/SSRMUtil;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 177
    const-string v0, "dev.ssrm.report_rate"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
