.class Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager$MissedCallCoverReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MissedCallCoverManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MissedCallCoverReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager$MissedCallCoverReceiver;->this$0:Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;
    .param p2, "x1"    # Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager$1;

    .prologue
    .line 202
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager$MissedCallCoverReceiver;-><init>(Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 205
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, "action":Ljava/lang/String;
    const-string v1, "MissedCallCoverManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CallDetailReceiver, onReceive action : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 222
    const-string v1, "MissedCallCoverManager"

    const-string v2, "onReceive SCREEN_OFF_INTENT finish app"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager$MissedCallCoverReceiver;->this$0:Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;

    # getter for: Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;->access$000(Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 226
    :cond_0
    return-void
.end method
