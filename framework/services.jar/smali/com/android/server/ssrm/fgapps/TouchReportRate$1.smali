.class Lcom/android/server/ssrm/fgapps/TouchReportRate$1;
.super Ljava/lang/Object;
.source "TouchReportRate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/fgapps/TouchReportRate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/fgapps/TouchReportRate;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/fgapps/TouchReportRate;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/server/ssrm/fgapps/TouchReportRate$1;->this$0:Lcom/android/server/ssrm/fgapps/TouchReportRate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 92
    const/4 v0, 0x0

    .line 94
    .local v0, "newValue":I
    invoke-static {}, Lcom/android/server/ssrm/DeviceStatus;->isPowerSavingMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 95
    const/4 v0, 0x1

    .line 104
    :goto_0
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/TouchReportRate$1;->this$0:Lcom/android/server/ssrm/fgapps/TouchReportRate;

    iget v1, v1, Lcom/android/server/ssrm/fgapps/TouchReportRate;->mLastReportRate:I

    if-eq v1, v0, :cond_0

    .line 105
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/TouchReportRate$1;->this$0:Lcom/android/server/ssrm/fgapps/TouchReportRate;

    iput v0, v1, Lcom/android/server/ssrm/fgapps/TouchReportRate;->mLastReportRate:I

    .line 106
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/TouchReportRate$1;->this$0:Lcom/android/server/ssrm/fgapps/TouchReportRate;

    iget-object v1, v1, Lcom/android/server/ssrm/fgapps/TouchReportRate;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "report_rate,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->sendTspCmd(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    sget-boolean v1, Lcom/android/server/ssrm/SSRMUtil;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 108
    const-string v1, "dev.ssrm.report_rate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :cond_0
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/TouchReportRate$1;->this$0:Lcom/android/server/ssrm/fgapps/TouchReportRate;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/ssrm/fgapps/TouchReportRate;->mIsExecutedTouchReportRateRunnable:Z

    .line 112
    return-void

    .line 96
    :cond_1
    invoke-static {}, Lcom/android/server/ssrm/DeviceStatus;->isUltraPowerSavingMode()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/android/server/ssrm/DeviceStatus;->isEmergencyMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 97
    :cond_2
    const/4 v0, 0x2

    goto :goto_0

    .line 98
    :cond_3
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/TouchReportRate$1;->this$0:Lcom/android/server/ssrm/fgapps/TouchReportRate;

    iget-boolean v1, v1, Lcom/android/server/ssrm/fgapps/TouchReportRate;->mIsBrowserForeground:Z

    if-eqz v1, :cond_4

    .line 99
    const/4 v0, 0x1

    goto :goto_0

    .line 101
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method
