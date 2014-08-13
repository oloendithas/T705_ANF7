.class Lcom/android/server/ssrm/EmergencyMode;
.super Ljava/lang/Object;
.source "EmergencyMode.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field EmergencyMode:Z

.field final MSG_TYPE_CHECK_EMERGENCY_MODE:I

.field mContext:Landroid/content/Context;

.field mCpuMaxHelper:Landroid/os/DVFSHelper;

.field mEmergencyCheckRunnable:Ljava/lang/Runnable;

.field mFpsMaxHelper:Landroid/os/DVFSHelper;

.field mHandler:Landroid/os/Handler;

.field mIntentReceiver:Landroid/content/BroadcastReceiver;

.field mIsExecutedTouchReportRateRunnable:Z

.field mTouchReportRateRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-string v0, "SSRMv2:EmergencyMode"

    sput-object v0, Lcom/android/server/ssrm/EmergencyMode;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v13, 0x0

    const/4 v12, 0x1

    const/4 v10, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-boolean v10, p0, Lcom/android/server/ssrm/EmergencyMode;->EmergencyMode:Z

    .line 49
    iput v12, p0, Lcom/android/server/ssrm/EmergencyMode;->MSG_TYPE_CHECK_EMERGENCY_MODE:I

    .line 86
    new-instance v0, Lcom/android/server/ssrm/EmergencyMode$1;

    invoke-direct {v0, p0}, Lcom/android/server/ssrm/EmergencyMode$1;-><init>(Lcom/android/server/ssrm/EmergencyMode;)V

    iput-object v0, p0, Lcom/android/server/ssrm/EmergencyMode;->mEmergencyCheckRunnable:Ljava/lang/Runnable;

    .line 95
    new-instance v0, Lcom/android/server/ssrm/EmergencyMode$2;

    invoke-direct {v0, p0}, Lcom/android/server/ssrm/EmergencyMode$2;-><init>(Lcom/android/server/ssrm/EmergencyMode;)V

    iput-object v0, p0, Lcom/android/server/ssrm/EmergencyMode;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 156
    iput-boolean v10, p0, Lcom/android/server/ssrm/EmergencyMode;->mIsExecutedTouchReportRateRunnable:Z

    .line 158
    new-instance v0, Lcom/android/server/ssrm/EmergencyMode$3;

    invoke-direct {v0, p0}, Lcom/android/server/ssrm/EmergencyMode$3;-><init>(Lcom/android/server/ssrm/EmergencyMode;)V

    iput-object v0, p0, Lcom/android/server/ssrm/EmergencyMode;->mTouchReportRateRunnable:Ljava/lang/Runnable;

    .line 52
    iput-object p1, p0, Lcom/android/server/ssrm/EmergencyMode;->mContext:Landroid/content/Context;

    .line 53
    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/server/ssrm/EmergencyMode;->mContext:Landroid/content/Context;

    const-string v2, "SSRM_EMERGENCY_MODE"

    const/16 v3, 0xd

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/ssrm/EmergencyMode;->mCpuMaxHelper:Landroid/os/DVFSHelper;

    .line 54
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_KF:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_TF:Z

    if-eqz v0, :cond_2

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/android/server/ssrm/EmergencyMode;->mCpuMaxHelper:Landroid/os/DVFSHelper;

    const-string v1, "CPU"

    const-wide/32 v10, 0x16da00

    invoke-virtual {v0, v1, v10, v11}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 72
    :cond_1
    :goto_0
    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/server/ssrm/EmergencyMode;->mContext:Landroid/content/Context;

    const-string v2, "PSM_FPS_MAX"

    const/16 v3, 0x15

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/ssrm/EmergencyMode;->mFpsMaxHelper:Landroid/os/DVFSHelper;

    .line 73
    iget-object v0, p0, Lcom/android/server/ssrm/EmergencyMode;->mFpsMaxHelper:Landroid/os/DVFSHelper;

    const-string v1, "FPS"

    const-wide/16 v4, 0x21

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 75
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 76
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 77
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/android/server/ssrm/EmergencyMode;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/ssrm/EmergencyMode;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v4, v13

    move-object v5, v13

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 80
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/android/server/ssrm/Monitor;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/ssrm/EmergencyMode;->mHandler:Landroid/os/Handler;

    .line 81
    iget-object v0, p0, Lcom/android/server/ssrm/EmergencyMode;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v9

    .line 82
    .local v9, "msg":Landroid/os/Message;
    iput v12, v9, Landroid/os/Message;->what:I

    .line 83
    iget-object v0, p0, Lcom/android/server/ssrm/EmergencyMode;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/ssrm/EmergencyMode;->mEmergencyCheckRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x2710

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 84
    return-void

    .line 56
    .end local v3    # "filter":Landroid/content/IntentFilter;
    .end local v9    # "msg":Landroid/os/Message;
    :cond_2
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_KA:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_KQ:Z

    if-eqz v0, :cond_4

    .line 57
    :cond_3
    iget-object v0, p0, Lcom/android/server/ssrm/EmergencyMode;->mCpuMaxHelper:Landroid/os/DVFSHelper;

    const-string v1, "CPU"

    const-wide/32 v10, 0x16e360

    invoke-virtual {v0, v1, v10, v11}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto :goto_0

    .line 59
    :cond_4
    iget-object v0, p0, Lcom/android/server/ssrm/EmergencyMode;->mCpuMaxHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUFrequencyForSSRM()[I

    move-result-object v8

    .line 60
    .local v8, "mCpuFreqTable":[I
    const/4 v6, -0x1

    .line 61
    .local v6, "freq":I
    if-eqz v8, :cond_1

    array-length v0, v8

    if-lez v0, :cond_1

    .line 62
    array-length v0, v8

    add-int/lit8 v7, v0, -0x1

    .local v7, "i":I
    :goto_1
    if-ltz v7, :cond_5

    .line 63
    aget v0, v8, v10

    mul-int/lit8 v0, v0, 0x6

    div-int/lit8 v0, v0, 0xa

    aget v1, v8, v7

    if-gt v0, v1, :cond_6

    .line 64
    aget v6, v8, v7

    .line 68
    :cond_5
    iget-object v0, p0, Lcom/android/server/ssrm/EmergencyMode;->mCpuMaxHelper:Landroid/os/DVFSHelper;

    const-string v1, "CPU"

    int-to-long v10, v6

    invoke-virtual {v0, v1, v10, v11}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 62
    :cond_6
    add-int/lit8 v7, v7, -0x1

    goto :goto_1
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/android/server/ssrm/EmergencyMode;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static executeCommand(Ljava/lang/String;)V
    .locals 8
    .param p0, "cmd"    # Ljava/lang/String;

    .prologue
    .line 185
    sget-object v5, Lcom/android/server/ssrm/EmergencyMode;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "executeCommand:: cmd = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    .line 189
    .local v3, "runtime":Ljava/lang/Runtime;
    :try_start_0
    invoke-virtual {v3, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 190
    .local v2, "process":Ljava/lang/Process;
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 192
    .local v0, "br":Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, "str":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 193
    sget-object v5, Lcom/android/server/ssrm/EmergencyMode;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "str = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 195
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "process":Ljava/lang/Process;
    .end local v4    # "str":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 196
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 198
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method


# virtual methods
.method onSettingChanged(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 118
    sput-boolean p1, Lcom/android/server/ssrm/DeviceStatus;->sEmergencyMode:Z

    .line 120
    if-eqz p1, :cond_5

    .line 121
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_KF:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_TF:Z

    if-eqz v0, :cond_1

    .line 122
    :cond_0
    const-string/jumbo v0, "stop mpdecision"

    invoke-static {v0}, Lcom/android/server/ssrm/EmergencyMode;->executeCommand(Ljava/lang/String;)V

    .line 123
    sget-object v0, Lcom/android/server/ssrm/EmergencyMode;->TAG:Ljava/lang/String;

    const-string v1, "/sys/devices/system/cpu/cpu0/online"

    const-string v2, "1"

    invoke-static {v0, v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->writeSysfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    sget-object v0, Lcom/android/server/ssrm/EmergencyMode;->TAG:Ljava/lang/String;

    const-string v1, "/sys/devices/system/cpu/cpu1/online"

    const-string v2, "0"

    invoke-static {v0, v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->writeSysfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    sget-object v0, Lcom/android/server/ssrm/EmergencyMode;->TAG:Ljava/lang/String;

    const-string v1, "/sys/devices/system/cpu/cpu2/online"

    const-string v2, "0"

    invoke-static {v0, v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->writeSysfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    sget-object v0, Lcom/android/server/ssrm/EmergencyMode;->TAG:Ljava/lang/String;

    const-string v1, "/sys/devices/system/cpu/cpu3/online"

    const-string v2, "1"

    invoke-static {v0, v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->writeSysfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :cond_1
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_K:Z

    if-nez v0, :cond_2

    .line 130
    iget-object v0, p0, Lcom/android/server/ssrm/EmergencyMode;->mFpsMaxHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    .line 132
    :cond_2
    iget-object v0, p0, Lcom/android/server/ssrm/EmergencyMode;->mCpuMaxHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    .line 144
    :goto_0
    iget-object v0, p0, Lcom/android/server/ssrm/EmergencyMode;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.intent.action.EMERGENCY_MODE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 146
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->SSRM_TOUCH_REPORT_RATE_CHANGE:Z

    if-nez v0, :cond_4

    .line 147
    iget-boolean v0, p0, Lcom/android/server/ssrm/EmergencyMode;->mIsExecutedTouchReportRateRunnable:Z

    if-eqz v0, :cond_3

    .line 148
    iget-object v0, p0, Lcom/android/server/ssrm/EmergencyMode;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/ssrm/EmergencyMode;->mTouchReportRateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 149
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ssrm/EmergencyMode;->mIsExecutedTouchReportRateRunnable:Z

    .line 151
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ssrm/EmergencyMode;->mIsExecutedTouchReportRateRunnable:Z

    .line 152
    iget-object v0, p0, Lcom/android/server/ssrm/EmergencyMode;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/ssrm/EmergencyMode;->mTouchReportRateRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 154
    :cond_4
    return-void

    .line 134
    :cond_5
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_KF:Z

    if-nez v0, :cond_6

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_TF:Z

    if-eqz v0, :cond_7

    .line 135
    :cond_6
    const-string/jumbo v0, "start mpdecision"

    invoke-static {v0}, Lcom/android/server/ssrm/EmergencyMode;->executeCommand(Ljava/lang/String;)V

    .line 138
    :cond_7
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_K:Z

    if-nez v0, :cond_8

    .line 139
    iget-object v0, p0, Lcom/android/server/ssrm/EmergencyMode;->mFpsMaxHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    .line 141
    :cond_8
    iget-object v0, p0, Lcom/android/server/ssrm/EmergencyMode;->mCpuMaxHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    goto :goto_0
.end method
