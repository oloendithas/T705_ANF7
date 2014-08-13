.class Lcom/sec/android/app/contacts/util/MotionCallManager$UnlockReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MotionCallManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/util/MotionCallManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnlockReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/util/MotionCallManager;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/contacts/util/MotionCallManager;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/sec/android/app/contacts/util/MotionCallManager$UnlockReceiver;->this$0:Lcom/sec/android/app/contacts/util/MotionCallManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/contacts/util/MotionCallManager;Lcom/sec/android/app/contacts/util/MotionCallManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/android/app/contacts/util/MotionCallManager;
    .param p2, "x1"    # Lcom/sec/android/app/contacts/util/MotionCallManager$1;

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/util/MotionCallManager$UnlockReceiver;-><init>(Lcom/sec/android/app/contacts/util/MotionCallManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 86
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 88
    iget-object v2, p0, Lcom/sec/android/app/contacts/util/MotionCallManager$UnlockReceiver;->this$0:Lcom/sec/android/app/contacts/util/MotionCallManager;

    # getter for: Lcom/sec/android/app/contacts/util/MotionCallManager;->unlockReceiver:Lcom/sec/android/app/contacts/util/MotionCallManager$UnlockReceiver;
    invoke-static {v2}, Lcom/sec/android/app/contacts/util/MotionCallManager;->access$100(Lcom/sec/android/app/contacts/util/MotionCallManager;)Lcom/sec/android/app/contacts/util/MotionCallManager$UnlockReceiver;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 90
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/contacts/util/MotionCallManager$UnlockReceiver;->this$0:Lcom/sec/android/app/contacts/util/MotionCallManager;

    # getter for: Lcom/sec/android/app/contacts/util/MotionCallManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/app/contacts/util/MotionCallManager;->access$200(Lcom/sec/android/app/contacts/util/MotionCallManager;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/contacts/util/MotionCallManager$UnlockReceiver;->this$0:Lcom/sec/android/app/contacts/util/MotionCallManager;

    # getter for: Lcom/sec/android/app/contacts/util/MotionCallManager;->unlockReceiver:Lcom/sec/android/app/contacts/util/MotionCallManager$UnlockReceiver;
    invoke-static {v3}, Lcom/sec/android/app/contacts/util/MotionCallManager;->access$100(Lcom/sec/android/app/contacts/util/MotionCallManager;)Lcom/sec/android/app/contacts/util/MotionCallManager$UnlockReceiver;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/contacts/util/MotionCallManager$UnlockReceiver;->this$0:Lcom/sec/android/app/contacts/util/MotionCallManager;

    const/4 v3, 0x0

    # setter for: Lcom/sec/android/app/contacts/util/MotionCallManager;->unlockReceiver:Lcom/sec/android/app/contacts/util/MotionCallManager$UnlockReceiver;
    invoke-static {v2, v3}, Lcom/sec/android/app/contacts/util/MotionCallManager;->access$102(Lcom/sec/android/app/contacts/util/MotionCallManager;Lcom/sec/android/app/contacts/util/MotionCallManager$UnlockReceiver;)Lcom/sec/android/app/contacts/util/MotionCallManager$UnlockReceiver;

    .line 96
    iget-object v2, p0, Lcom/sec/android/app/contacts/util/MotionCallManager$UnlockReceiver;->this$0:Lcom/sec/android/app/contacts/util/MotionCallManager;

    # getter for: Lcom/sec/android/app/contacts/util/MotionCallManager;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;
    invoke-static {v2}, Lcom/sec/android/app/contacts/util/MotionCallManager;->access$300(Lcom/sec/android/app/contacts/util/MotionCallManager;)Landroid/hardware/motion/MotionRecognitionManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 97
    iget-object v2, p0, Lcom/sec/android/app/contacts/util/MotionCallManager$UnlockReceiver;->this$0:Lcom/sec/android/app/contacts/util/MotionCallManager;

    # getter for: Lcom/sec/android/app/contacts/util/MotionCallManager;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;
    invoke-static {v2}, Lcom/sec/android/app/contacts/util/MotionCallManager;->access$300(Lcom/sec/android/app/contacts/util/MotionCallManager;)Landroid/hardware/motion/MotionRecognitionManager;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/contacts/util/MotionCallManager$UnlockReceiver;->this$0:Lcom/sec/android/app/contacts/util/MotionCallManager;

    # getter for: Lcom/sec/android/app/contacts/util/MotionCallManager;->mMotionListener:Landroid/hardware/motion/MRListener;
    invoke-static {v3}, Lcom/sec/android/app/contacts/util/MotionCallManager;->access$400(Lcom/sec/android/app/contacts/util/MotionCallManager;)Landroid/hardware/motion/MRListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    .line 98
    iget-object v2, p0, Lcom/sec/android/app/contacts/util/MotionCallManager$UnlockReceiver;->this$0:Lcom/sec/android/app/contacts/util/MotionCallManager;

    # getter for: Lcom/sec/android/app/contacts/util/MotionCallManager;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;
    invoke-static {v2}, Lcom/sec/android/app/contacts/util/MotionCallManager;->access$300(Lcom/sec/android/app/contacts/util/MotionCallManager;)Landroid/hardware/motion/MotionRecognitionManager;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/contacts/util/MotionCallManager$UnlockReceiver;->this$0:Lcom/sec/android/app/contacts/util/MotionCallManager;

    # getter for: Lcom/sec/android/app/contacts/util/MotionCallManager;->mMotionListener:Landroid/hardware/motion/MRListener;
    invoke-static {v3}, Lcom/sec/android/app/contacts/util/MotionCallManager;->access$400(Lcom/sec/android/app/contacts/util/MotionCallManager;)Landroid/hardware/motion/MRListener;

    move-result-object v3

    const/16 v4, 0x400

    invoke-virtual {v2, v3, v4}, Landroid/hardware/motion/MotionRecognitionManager;->registerListenerEvent(Landroid/hardware/motion/MRListener;I)V

    .line 103
    :cond_0
    return-void

    .line 91
    :catch_0
    move-exception v1

    .line 92
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "MotionCallManager"

    const-string v3, "unlock receiver is not registered."

    invoke-static {v2, v3, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
