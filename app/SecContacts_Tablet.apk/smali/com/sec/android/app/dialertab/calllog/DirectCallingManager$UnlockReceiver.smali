.class Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$UnlockReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DirectCallingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnlockReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$UnlockReceiver;->this$0:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;
    .param p2, "x1"    # Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$1;

    .prologue
    .line 256
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$UnlockReceiver;-><init>(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 260
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 261
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 262
    const-string v1, "Logs/DirectCallingManager"

    const-string v2, "onReceive - unlocked"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$UnlockReceiver;->this$0:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    # invokes: Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->registerMotionRecognition()V
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->access$800(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;)V

    .line 268
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$UnlockReceiver;->this$0:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    # invokes: Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->setTextToSpeech()V
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->access$900(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;)V

    .line 270
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$UnlockReceiver;->this$0:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    # getter for: Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->unlockReceiver:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$UnlockReceiver;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->access$1000(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;)Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$UnlockReceiver;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 271
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$UnlockReceiver;->this$0:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    # getter for: Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->access$1100(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$UnlockReceiver;->this$0:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    # getter for: Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->unlockReceiver:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$UnlockReceiver;
    invoke-static {v2}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->access$1000(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;)Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$UnlockReceiver;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 272
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$UnlockReceiver;->this$0:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    const/4 v2, 0x0

    # setter for: Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->unlockReceiver:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$UnlockReceiver;
    invoke-static {v1, v2}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->access$1002(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$UnlockReceiver;)Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$UnlockReceiver;

    .line 275
    :cond_0
    return-void
.end method
