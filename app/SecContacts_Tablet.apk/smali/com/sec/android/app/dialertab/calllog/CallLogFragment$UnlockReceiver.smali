.class Lcom/sec/android/app/dialertab/calllog/CallLogFragment$UnlockReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CallLogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/calllog/CallLogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnlockReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)V
    .locals 0

    .prologue
    .line 3808
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$UnlockReceiver;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;Lcom/sec/android/app/dialertab/calllog/CallLogFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/android/app/dialertab/calllog/CallLogFragment;
    .param p2, "x1"    # Lcom/sec/android/app/dialertab/calllog/CallLogFragment$1;

    .prologue
    .line 3808
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$UnlockReceiver;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 3812
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3813
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3814
    const-string v1, "CallLogFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive - unlocked, mResetMissedCheck : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$UnlockReceiver;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mResetMissedCheck:Z
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$2500(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3816
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$UnlockReceiver;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mResetMissedCheck:Z
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$2500(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3817
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$UnlockReceiver;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mCallLogQueryHandler:Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$200(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;->markNewCallsAsOld()V

    .line 3818
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$UnlockReceiver;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    # invokes: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->removeMissedCallNotifications()V
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$300(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)V

    .line 3819
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$UnlockReceiver;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    # invokes: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->updateVoicemailNotifications()V
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$400(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)V

    .line 3822
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$UnlockReceiver;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    const/4 v2, 0x0

    # setter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mResetMissedCheck:Z
    invoke-static {v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$2502(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;Z)Z

    .line 3824
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$UnlockReceiver;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->unlockReceiver:Lcom/sec/android/app/dialertab/calllog/CallLogFragment$UnlockReceiver;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$2600(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Lcom/sec/android/app/dialertab/calllog/CallLogFragment$UnlockReceiver;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3825
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$UnlockReceiver;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$1500(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$UnlockReceiver;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->unlockReceiver:Lcom/sec/android/app/dialertab/calllog/CallLogFragment$UnlockReceiver;
    invoke-static {v2}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$2600(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Lcom/sec/android/app/dialertab/calllog/CallLogFragment$UnlockReceiver;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3826
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$UnlockReceiver;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    const/4 v2, 0x0

    # setter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->unlockReceiver:Lcom/sec/android/app/dialertab/calllog/CallLogFragment$UnlockReceiver;
    invoke-static {v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$2602(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;Lcom/sec/android/app/dialertab/calllog/CallLogFragment$UnlockReceiver;)Lcom/sec/android/app/dialertab/calllog/CallLogFragment$UnlockReceiver;

    .line 3829
    :cond_1
    return-void
.end method
