.class Lcom/android/server/ssrm/CustomFrequencyManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "CustomFrequencyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/CustomFrequencyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/CustomFrequencyManagerService;)V
    .locals 0

    .prologue
    .line 2260
    iput-object p1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$1;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 2263
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2264
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2265
    iget-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$1;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    iput-boolean v3, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mBootComplete:Z

    .line 2267
    iget-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$1;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    iget-object v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPreMonitor:Lcom/android/server/ssrm/PreMonitor;

    invoke-virtual {v2}, Lcom/android/server/ssrm/PreMonitor;->bootComplete()V

    .line 2269
    const/16 v2, 0x64

    invoke-static {v2}, Lcom/android/server/ssrm/Limiter;->limitChargingCurrent(I)V

    .line 2271
    iget-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$1;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    sget-object v3, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$1;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    iget-object v4, v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mActivityManager:Landroid/app/IActivityManager;

    invoke-static {v3, v4}, Lcom/android/server/ssrm/Monitor;->getMonitorInstance(Landroid/content/Context;Landroid/app/IActivityManager;)Lcom/android/server/ssrm/Monitor;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mMonitor:Lcom/android/server/ssrm/Monitor;

    .line 2272
    iget-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$1;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    iget-object v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mMonitor:Lcom/android/server/ssrm/Monitor;

    invoke-virtual {v2}, Lcom/android/server/ssrm/Monitor;->initHandlerThread()V

    .line 2273
    iget-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$1;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    iget-object v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mMonitor:Lcom/android/server/ssrm/Monitor;

    iget-object v2, v2, Lcom/android/server/ssrm/Monitor;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v5, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 2275
    iget-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$1;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    iget-boolean v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mScreenOn:Z

    if-eqz v2, :cond_1

    .line 2276
    iget-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$1;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    iget-object v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mMonitor:Lcom/android/server/ssrm/Monitor;

    iget-object v2, v2, Lcom/android/server/ssrm/Monitor;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v5, "android.intent.action.SCREEN_ON"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 2278
    iget-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$1;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    iget-boolean v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mUserPresent:Z

    if-eqz v2, :cond_0

    .line 2279
    iget-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$1;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    iget-object v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mMonitor:Lcom/android/server/ssrm/Monitor;

    iget-object v2, v2, Lcom/android/server/ssrm/Monitor;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v5, "android.intent.action.USER_PRESENT"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 2301
    :cond_0
    :goto_0
    return-void

    .line 2283
    :cond_1
    iget-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$1;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    iget-object v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mMonitor:Lcom/android/server/ssrm/Monitor;

    iget-object v2, v2, Lcom/android/server/ssrm/Monitor;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v5, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 2286
    :cond_2
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2287
    iget-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$1;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    iput-boolean v3, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mScreenOn:Z

    goto :goto_0

    .line 2288
    :cond_3
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2289
    iget-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$1;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    iput-boolean v5, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mScreenOn:Z

    .line 2290
    iget-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$1;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    iput-boolean v5, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mUserPresent:Z

    goto :goto_0

    .line 2291
    :cond_4
    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2292
    iget-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$1;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    iput-boolean v3, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mUserPresent:Z

    goto :goto_0

    .line 2293
    :cond_5
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2294
    const-string v2, "level"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 2295
    .local v1, "remain":I
    const-string v2, "CustomFrequencyManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BatteryManager.EXTRA_LEVEL : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 2296
    iget-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$1;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    iget-boolean v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mBootComplete:Z

    if-nez v2, :cond_0

    const/16 v2, 0x14

    if-le v1, v2, :cond_0

    .line 2297
    invoke-static {v5}, Lcom/android/server/ssrm/Limiter;->limitChargingCurrent(I)V

    .line 2298
    const-string v2, "CustomFrequencyManagerService"

    const-string v3, "Limit charging for booting-up time overheating."

    invoke-static {v2, v3}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
